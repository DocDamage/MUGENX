;-| 超必殺技 |--------------------------------------------------------
;ここには超必殺技を記述してください、同じ名前を「name =」欄に書けますが
;コマンドは絶対に違ったものにしてください。
;カンフーマンは弱パンチと強パンチで技が出せるように同じ名前のコマンドで
;内容が弱と強になっています。
;「time=20」と書くことで「コマンドを20フレーム以内に入力」と設定できます。

;-| 超必殺技 |----------------------------------------------------
[Command]
;ファイナルデスブラッディ
name = "Final_Deth_B"
command = ~D, DF, F, DF, D, DB, B, a
time = 30

[Command]
;ブラッディシャドウ
name = "B_Shadow"
command = ~D, DB, B, DB, D, DF, F, a
time = 30

[Command]
;ブラッディフラッシュ
name = "B_Flash"
command = ~F, B, DB, D, DF, F, a
time = 30

[Command]
;ブラッディマッドブル
name = "B_Bull"
command = ~B, F, DF, D, DB, B, a
time = 30

;-| 必殺技 |------------------------------------------------------
;ブラッディプレス
[Command]
name = "B_Press"
command = ~B, DB, D, DF, F, x
time = 30

;ブラッディスピン（弱）
[Command]
name = "B_Spin_L"
command = ~F, DF, D, DB, B, y
time = 20

;ブラッディスピン（強）
[Command]
name = "B_Spin_H"
command = ~F, DF, D, DB, B, a
time = 20

;ブラッディシューター
[Command]
name = "B_Shooter"
command = ~D, DB, B, y
time = 20

;ブラッディアクセル
[Command]
name = "B_Axel"
command = ~D, DF, F, a
time = 20

;ブラッディアーツ
[Command]
name = "B_Arts"
command = ~D, DF, F, y
time = 30

;ブラッディサーベル
[Command]
name = "B_Saber"
command = ~50$B, F, a
time = 20

;ブラッディミキサー
[Command]
name = "B_Mixer"
command = y, y, y
time = 20

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
name = "recovery"
command = x+y
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
;Cコンビネーション（サーベル攻撃用）
[Command]
name = "fwd_a"
command = /$F,a
time = 1

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

;エリアルサーベル
;スライディング
[Command]
name = "DF"
command = /$DF
time = 1

;エリアルサーベル
[Command]
name = "DB"
command = /$DB
time = 1

; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================
;超必殺技
;===========================================================================
;---------------------------------------------------------------------------
;ブラッディフラッシュ
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "B_Flash"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact

;---------------------------------------------------------------------------
;ファイナルデスブラッディ
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3100
triggerall = command = "Final_Deth_B"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact

;---------------------------------------------------------------------------
;ブラッディシャドウ
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3200
triggerall = command = "B_Shadow"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact

;---------------------------------------------------------------------------
;ブラッディマッドブル
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3300
triggerall = command = "B_Bull"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 250
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact

;===========================================================================
;必殺技
;===========================================================================
;---------------------------------------------------------------------------
;ブラッディスピン
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 1000
triggerall = command = "B_Spin_L"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 250
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact

;---------------------------------------------------------------------------
;ブラッディスピン
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 1010
triggerall = command = "B_Spin_H"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 250
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact

;---------------------------------------------------------------------------
;ブラッディサーベル
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 1100
triggerall = command = "B_Saber"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 250
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact

;---------------------------------------------------------------------------
;ブラッディミキサー
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 1200
triggerall = command = "B_Mixer"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 250
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact

;---------------------------------------------------------------------------
;ブラッディアーツ（1段目）
[State -1]
type = ChangeState
value = 1300
triggerall = stateno != 100
triggerall = command = "B_Arts"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 250
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact

;---------------------------------------------------------------------------
;ブラッディアーツ（2段目）
[State -1]
type = ChangeState
value = 1310
triggerall = command = "B_Arts"
trigger1 = stateno = 1300
trigger1 = AnimElem = 3,> 0
trigger2 = stateno = 1330
trigger2 = AnimElem = 1,> 0
trigger2 = AnimElem = 2,< 7

;---------------------------------------------------------------------------
;ブラッディアーツ（3段目）
[State -1]
type = ChangeState
value = 1320
triggerall = command = "B_Arts"
trigger1 = stateno = 1310
trigger1 = AnimElem = 2,> 0
trigger2 = stateno = 1340
trigger2 = AnimElem = 1,> 0
trigger2 = AnimElem = 2,< 7

;---------------------------------------------------------------------------
;ブラッディシューター
[State -1]
type = ChangeState
value = 1400
triggerall = command = "B_Shooter"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ブラッディプレス
[State -1]
type = ChangeState
value = 1500
triggerall = command = "B_Press"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ブラッディアクセル
[State -1]
type = ChangeState
value = 1600
triggerall = command = "B_Axel"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ブラッディカッター（アクセル上昇中）
[State -1]
type = ChangeState
value = 1610
triggerall = command = "a"
trigger1 = stateno = 1600
trigger1 = vel Y < 0
trigger1 = statetype = A

;---------------------------------------------------------------------------
;ブラッディカッター（アクセル下降中）
[State -1]
type = ChangeState
value = 1620
triggerall = command = "a"
trigger1 = stateno = 1600
trigger1 = vel Y > 0
trigger1 = statetype = A

;===========================================================================
;基本動作
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


;===========================================================================
;通常投げ
;===========================================================================
;---------------------------------------------------------------------------
;マタドールスラッシュ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "a"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 6
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 6
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;マタドールバスター
[State -1, Kung Fu Throw]
type = ChangeState
value = 830
triggerall = command = "a"
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 8
trigger1 = p2statetype = A
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = p2statetype = A
trigger2 = p2movetype != H

;===========================================================================
; 特殊攻撃
;===========================================================================
;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ヒートサーベル
[State -1, Stand Strong Punch]
type = ChangeState
value = 260
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdback"

;---------------------------------------------------------------------------
避け攻撃
[State -1, Stand Strong Punch]
type = ChangeState
value = 270
triggerall = command = "x"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdback"

;---------------------------------------------------------------------------
;スライディング
[State -1, Standing Strong Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = ctrl
trigger1 = command = "DF"

;---------------------------------------------------------------------------
;エリアルサーベル
[State -1]
type = ChangeState
value = 640
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "holddown"
trigger2 = command = "DF"
trigger3 = command = "DB"

;---------------------------------------------------------------------------
;オーレィ！
[State -1, Stand Strong Punch]
type = ChangeState
value = 280
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = ctrl
trigger1 = statetype = S

;===========================================================================
;通常攻撃
;===========================================================================
;---------------------------------------------------------------------------
;遠距離立ちパンチの動作
[State -1]
type = ChangeState
value = 200
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 40
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ちキックの動作
[State -1]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 40
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち強の動作
[State -1]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 40
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ちパンチの動作
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 40
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ちキックの動作
[State -1]
type = ChangeState
value = 240
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 40
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち強の動作
[State -1]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 40
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみパンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみキック
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強攻撃
[State -1, Crouching Light Kick]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 900
trigger2 = animelem = 3,> 0 && animelem = 4,< 3
trigger2 = movecontact
trigger3 = stateno = 910
trigger3 = animelem = 3,> 0 && animelem = 4,< 2
trigger3 = movecontact
trigger4 = stateno = 920
trigger4 = animelem = 3,> 0 && animelem = 4,< 2
trigger4 = movecontact
trigger5 = stateno = 930
trigger5 = animelem = 2,> 0 && animelem = 3,< 5
trigger5 = movecontact

;---------------------------------------------------------------------------
;空中パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中キック（斜め）
[State -1, Jump Light Kick]
type = ChangeState
value = 610
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
triggerall = Vel X != 0

;---------------------------------------------------------------------------
;空中キック（垂直）
[State -1, Jump Light Kick]
type = ChangeState
value = 620
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0

;---------------------------------------------------------------------------
;空中強攻撃
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;===========================================================================
;コンビネーション
;===========================================================================
;---------------------------------------------------------------------------
;立ちパンチコンビネーション
[State -1]
type = ChangeState
value = 900
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelem = 4,> 0 && animelem = 5,< 2
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = animelem = 3,> 0 && animelem = 4,< 2
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = animelem = 3,> 0 && animelem = 4,< 2
trigger4 = movecontact

;---------------------------------------------------------------------------
;立ちキックコンビネーション
[State -1]
type = ChangeState
value = 910
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelem = 4,> 0 && animelem = 5,< 2
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = animelem = 3,> 0 && animelem = 4,< 2
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = animelem = 4,> 0 && animelem = 5,< 2
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = animelem = 3,> 0 && animelem = 4,< 2
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 2,> 0 && animelem = 3,< 5
trigger6 = movecontact

;---------------------------------------------------------------------------
;屈みパンチコンビネーション
[State -1, Crouching Light Punch]
type = ChangeState
value = 920
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelem = 4,> 0 && animelem = 5,< 2
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = animelem = 3,> 0 && animelem = 4,< 2
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = animelem = 3,> 0 && animelem = 4,< 2
trigger4 = movecontact

;---------------------------------------------------------------------------
;屈みキックコンビネーション
[State -1, Crouching Strong Punch]
type = ChangeState
value = 930
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelem = 4,> 0 && animelem = 5,< 2
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = animelem = 3,> 0 && animelem = 4,< 2
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = animelem = 4,> 0 && animelem = 5,< 2
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = animelem = 3,> 0 && animelem = 4,< 2
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = animelem = 2,> 0 && animelem = 3,< 5
trigger6 = movecontact

;---------------------------------------------------------------------------
;立ち強コンビネーション（最後のキック）
[State -1]
type = ChangeState
value = 940
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 900
trigger2 = animelem = 3,> 0 && animelem = 4,< 3
trigger2 = movecontact
trigger3 = stateno = 910
trigger3 = animelem = 3,> 0 && animelem = 4,< 2
trigger3 = movecontact

;---------------------------------------------------------------------------
;立ち強コンビネーション（2発目）
[State -1]
type = ChangeState
value = 950
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 250
trigger2 = AnimElem = 5,< 3
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;立ち強コンビネーション（3発目）
[State -1]
type = ChangeState
value = 960
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 950
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;立ち強コンビネーション（4発目）
[State -1]
type = ChangeState
value = 970
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 960
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;立ち強コンビネーション（5発目）
[State -1]
type = ChangeState
value = 980
triggerall = command = "fwd_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 970
trigger2 = movecontact = 1
