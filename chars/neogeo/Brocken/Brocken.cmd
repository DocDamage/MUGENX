;---------------------------------------------------------------------------
;===========================================================================
; 鉄鋼将軍ブロッケン　コマンド
;===========================================================================
;-| 超必殺技 |--------------------------------------------------------

;ジャーマンエクスプロージョン
[Command]
name = "J-E_x"
command = ~D, DF, F, D, DF, F, x
time = 40

;ベルリンの赤い雨
[Command]
name = "B-A_y"
command = ~D, DF, F, D, DF, F, y
time = 40

;ナチスの科学力は世界一イイィィ
[Command]
name = "N1_a"
command = ~D, DF, F, D, DF, F, a
time = 40

;-| 必殺技 |------------------------------------------------------

;ロングスパークサンダー（弱）
[Command]
name = "LSS_x"
command = ~B, DB, D, DF, F, x
time = 20

;ロングスパークサンダー（強）
[Command]
name = "LSS_y"
command = ~B, DB, D, DF, F, y
time = 20

;ジャーマンファイヤー（弱）
[Command]
name = "JF_a"
command = ~B, DB, D, DF, F, a
time = 20

;ジャーマンファイヤー（強）
[Command]
name = "JF_b"
command = ~B, DB, D, DF, F, b
time = 20

;ハリケーンアーム（弱）
[Command]
name = "H-A_x"
command = ~F, D, DF, x
time = 15

;ハリケーンアーム（強）
[Command]
name = "H-A_y"
command = ~F, D, DF, y
time = 15

;ロケットパンチ（弱）
[Command]
name = "R-P_x"
command = ~D, DF, F, x
time = 10

;ロケットパンチ（強）
[Command]
name = "R-P_y"
command = ~D, DF, F, y
time = 10

;ジャーマンミサイル（弱）
[Command]
name = "J-M_a"
command = ~D, DF, F, a
time = 10

;ジャーマンミサイル（強）
[Command]
name = "J-M_b"
command = ~D, DF, F, b
time = 10

;アームパンチ（弱）
[Command]
name = "A-P_x"
command = ~D, DB, B, x
time = 10

;アームパンチ（強）
[Command]
name = "A-P_y"
command = ~D, DB, B, y
time = 10

;スパークサンダー（弱）
[Command]
name = "SS_x"
command = x, x, x
time = 20

;スパークサンダー（強）
[Command]
name = "SS_y"
command = y, y, y
time = 20

;-| ２回押し技 |-----------------------------------------------------------

; 前ダッシュ
[Command]
name = "FF"     
command = F, F
time = 10

; 後ダッシュ
[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
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

; ストライカー（バイク隊）
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

; メッサーシュミットアタック（飛行）
[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
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

;ローリングヒールキック用
[Command]
name = "DF"
command = /$DF
time = 1

; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;---------------------------------------------------------------------------
;===========================================================================
; 超必殺技
;===========================================================================
;---------------------------------------------------------------------------
;ジャーマンエクスプロージョン
[State -1]
type = ChangeState
value = 3000
triggerall = command = "J-E_x"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;---------------------------------------------------------------------------
; ベルリンの赤い雨
[State -1]
type = ChangeState
value = 3100
triggerall = command = "B-A_y"
triggerall = power >= 2000
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 30
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = stateno = 200
trigger2 = stateno = 210
trigger2 = stateno = 230
trigger2 = stateno = 240
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;ナチスの科学力は世界一イイィィ
[State -1]
type = ChangeState
value = 3200
triggerall = command = "N1_a"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;---------------------------------------------------------------------------
;===========================================================================
; 必殺技
;===========================================================================
;---------------------------------------------------------------------------
;スパークサンダー（弱）
[State -1]
type = ChangeState
value = 1300
triggerall = command = "SS_x"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;スパークサンダー（強）
[State -1]
type = ChangeState
value = 1350
triggerall = command = "SS_y"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ロングスパークサンダー（弱）
[State -1]
type = ChangeState
value = 1400
triggerall = command = "LSS_x"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ロングスパークサンダー（強）
[State -1]
type = ChangeState
value = 1410
triggerall = command = "LSS_y"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャーマンファイヤー（弱）
[State -1]
type = ChangeState
value = 1600
triggerall = command = "JF_a"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャーマンファイヤー（強）
[State -1]
type = ChangeState
value = 1610
triggerall = command = "JF_b"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ハリケーンアーム（弱）
[State -1]
type = ChangeState
value = 1200
triggerall = command = "H-A_x"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ハリケーンアーム（強）
[State -1]
type = ChangeState
value = 1210
triggerall = command = "H-A_y"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ロケットパンチ（弱）
[State -1]
type = ChangeState
value = 1000
triggerall = command ="R-P_x"
triggerall = command != "holddown"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ロケットパンチ（強）
[State -1]
type = ChangeState
value = 1010
triggerall = command = "R-P_y"
triggerall = command != "holddown"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャーマンミサイル（弱）
[State -1]
type = ChangeState
value = 1100
triggerall = command = "J-M_a"
triggerall = command != "holddown"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャーマンミサイル（強）
[State -1]
type = ChangeState
value = 1110
triggerall = command = "J-M_b"
triggerall = command != "holddown"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;アームパンチ（弱）
[State -1]
type = ChangeState
value = 1500
triggerall = command = "A-P_x"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;アームパンチ（強）
[State -1]
type = ChangeState
value = 1510
triggerall = command = "A-P_y"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;メッサーシュミットアタック（飛行）
[State -1]
type = ChangeState
value = 1700
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ストライカー（バイク隊）
[State -1]
type = ChangeState
value = 1800
triggerall = command = "c"
triggerall = numhelper(1800)=0
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;===========================================================================
; ダッシュ＆通常投げ
;===========================================================================
;---------------------------------------------------------------------------
;前ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;超ジャーマンスープレックス
[State -1, Kung Fu Throw]
type = ChangeState
value = 700
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;ノーザンライトスープレックス
[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdback"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;ポイズンストーム
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;===========================================================================
; 特殊攻撃
;===========================================================================
;---------------------------------------------------------------------------
;サーベルストレート
[State -1, Stand Strong Punch]
type = ChangeState
value = 212
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X > 10
trigger2 = command = "holdback"
trigger2 = p2bodydist X > 10

;---------------------------------------------------------------------------
;ローリングキック
[State -1, Standing Strong Kick]
type = ChangeState
value = 242
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X > 10
trigger2 = command = "holdback"
trigger2 = p2bodydist X > 10

;---------------------------------------------------------------------------
;ローリングヒールキック
[State -1, Standing Strong Kick]
type = ChangeState
value = 641
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "DF"

;---------------------------------------------------------------------------
;===========================================================================
; 通常攻撃
;===========================================================================
;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 6

;---------------------------------------------------------------------------
;立ち強パンチ（遠距離）
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 10
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち強パンチ（近距離）
[State -1, Stand Strong Punch]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち強キック（遠距離）
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 10
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち強キック（近距離）
[State -1, Standing Strong Kick]
type = ChangeState
value = 241
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 10
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
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
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

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
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
;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱キック（垂直）
[State -1, Jump Light Kick]
type = ChangeState
value = 631
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0

;---------------------------------------------------------------------------
;空中弱キック（斜め）
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
