;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "合体変身!チェンジ・アトミックガイ・ネオス"
command = ~D,DF,F,DF,D,DB,B, x+z
time = 25


[Command]
name = "超ド級ステータスアップ"
command = ~D,DF,F,D,DF,F, b
time = 25

[Command]
name = "超ド級ステータスアップ"
command = ~D,DF,F,D,DF,F, a
time = 25


[Command]
name = "超ド級MAX330メガビーム"
command = ~D,DB,B,D,DB,B, y+z
time = 25

[Command]
name = "超ド級MAX330メガビーム"
command = ~D,DB,B,D,DB,B, x+y+a
time = 25


[Command]
name = "超ド級ネオジオ乱舞"
command = ~D,DF,F,DF,D,DB,B, y
time = 25

[Command]
name = "超ド級ネオジオ乱舞"
command = ~D,DF,F,DF,D,DB,B, x
time = 25


[Command]
name = "超ド級100メガビーム"
command = ~D,DB,B,D,DB,B, y
time = 25

[Command]
name = "超ド級100メガビーム"
command = ~D,DB,B,D,DB,B, x
time = 25


;-| 必殺技 |------------------------------------------------------
[Command]
name = "ファイヤースープレックスホールド"
command = ~F,DF,D,DB,B,F, y
time = 25

[Command]
name = "ファイヤースープレックスホールド"
command = ~F,DF,D,DB,B,F, x
time = 25


[Command]
name = "ライディングヒーロー"
command = ~D,DB,B, y

[Command]
name = "ライディングヒーロー"
command = ~D,DB,B, x


[Command]
name = "雷神拳"
command = ~D,DB,B, b

[Command]
name = "雷神拳"
command = ~D,DB,B, a


[Command]
name = "SE・N・GO・KU伝承"
command = ~F,DF,D,DB,B, b

[Command]
name = "SE・N・GO・KU伝承"
command = ~F,DF,D,DB,B, a


[Command]
name = "サブマリンスクリュー"
command = ~F,D,DF, y

[Command]
name = "サブマリンスクリュー"
command = ~F,D,DF, x


[Command]
name = "ビーストバスター"
command = ~D,DF,F, y

[Command]
name = "ビーストバスター"
command = ~D,DF,F, x



[Command]
name = "メモリーカードスラッシュ"
command = ~D,D, s

[Command]
name = "メモリーカードスラッシュ"
command = ~D,D, b

[Command]
name = "メモリーカードスラッシュ"
command = ~D,D, y

[Command]
name = "メモリーカードスラッシュ"
command = ~D,D, a

[Command]
name = "メモリーカードスラッシュ"
command = ~D,D, x


[Command]
name = "緊急回避前"
command = x+a
time = 1

[Command]
name = "緊急回避前"
command = z
time = 1

[Command]
name = "緊急回避後"
command = /$B,x+a
time = 1

[Command]
name = "緊急回避後"
command = /$B,z
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
name = "メガトンスパーク"
command = x+y+a
time = 1

[Command]
name = "メガトンスパーク"
command = y+z
time = 1

[Command]
name = "ゲージ溜め発動"
command = z+c
time = 1

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "投げ"
command = y+b
time = 1

[Command]
name = "ふっ飛ばし"
command = c
time = 1

[Command]
name = "おしっぱなしx"
command = /$x
time = 1

[Command]
name = "おしっぱなしy"
command = /$y
time = 1

[Command]
name = "おしっぱなしa"
command = /$a
time = 1

[Command]
name = "おしっぱなしb"
command = /$b
time = 1

[Command]
name = "おしっぱなしz"
command = /$z
time = 1

[Command]
name = "おしっぱなしc"
command = /$c
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "龍殺脚"
command = /$F,a
time = 1

[Command]
name = "怒号層拳"
command = /$F,y
time = 1

[Command]
name = "コンビネーション1"
command = /$F,x
time = 1

[Command]
name = "コンビネーション2"
command = /$DF,y
time = 1

[Command]
name = "コンビネーション3"
command = /$B,a
time = 1

[Command]
name = "コンビネーション4"
command = /$F,b
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


; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================
;基本コマンド
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;合体変身!チェンジ・アトミックガイ・ネオス
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2400
triggerall = command = "合体変身!チェンジ・アトミックガイ・ネオス"
triggerall = power >= 2000
triggerall = var(25) >= 1
triggerall = var(20) >= 1
triggerall = var(21) >= 1
triggerall = var(24) >= 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 1500
trigger10= stateno = 245
;---------------------------------------------------------------------------
;超ド級ステータスアップ
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2300
triggerall = command = "超ド級ステータスアップ"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 1500
trigger10= stateno = 245

;---------------------------------------------------------------------------
;超ド級MAX330メガビーム
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2200
triggerall = command = "超ド級MAX330メガビーム"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 1500
trigger10= stateno = 245

;---------------------------------------------------------------------------
;超ド級ネオジオ乱舞
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = command = "超ド級ネオジオ乱舞"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 1500
trigger10= stateno = 245

;---------------------------------------------------------------------------
;超ド級100メガビーム
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "超ド級100メガビーム"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 1500
trigger10= stateno = 245



;===========================================================================
;---------------------------------------------------------------------------
;ファイヤースープレックスホールド
[State -1, a]
type = ChangeState
value = 1600
triggerall = command = "ファイヤースープレックスホールド"
triggerall = statetype != A
triggerall = var(24) >= 1
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 245
;---------------------------------------------------------------------------
;爆裂拳
[State -1, a]
type = ChangeState
value = 1500
triggerall = command = "ライディングヒーロー"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 245
;---------------------------------------------------------------------------
;ライディングヒーロー
[State -1, a]
type = ChangeState
value = 1400
triggerall = command = "ライディングヒーロー"
triggerall = stateno != 1400
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 215
trigger3 = stateno = 240
trigger4 = stateno = 440

;---------------------------------------------------------------------------
;強化版雷神拳
[State -1, a]
type = ChangeState
value = 1350
triggerall = command = "雷神拳"
triggerall = statetype = A
triggerall = var(23) >= 1
trigger1 = ctrl
trigger2 = stateno = 1400

;---------------------------------------------------------------------------
;雷神拳
[State -1, a]
type = ChangeState
value = 1300
triggerall = command = "雷神拳"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1400

;---------------------------------------------------------------------------
;強化版SE・N・GO・KU伝承
[State -1, a]
type = ChangeState
value = 1250
triggerall = command = "SE・N・GO・KU伝承"
triggerall = statetype != A
triggerall = var(21) >= 1
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 245

;---------------------------------------------------------------------------
;SE・N・GO・KU伝承
[State -1, a]
type = ChangeState
value = 1200
triggerall = command = "SE・N・GO・KU伝承"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 245

;---------------------------------------------------------------------------
;強化版サブマリンスクリュー
[State -1, a]
type = ChangeState
value = 1150
triggerall = command = "サブマリンスクリュー"
triggerall = statetype != A
triggerall = var(22) >= 1
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 245

;---------------------------------------------------------------------------
;サブマリンスクリュー
[State -1, a]
type = ChangeState
value = 1100
triggerall = command = "サブマリンスクリュー"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 245

;---------------------------------------------------------------------------
;強化版ビーストバスター
[State -1, a]
type = ChangeState
value = 1050
triggerall = command = "ビーストバスター"
triggerall = statetype != A
triggerall = var(20) >= 1
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 245

;---------------------------------------------------------------------------
;ビーストバスター
[State -1, a]
type = ChangeState
value = 1000
triggerall = command = "ビーストバスター"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 245

;---------------------------------------------------------------------------
;メモリーカードスラッシュ
[State -1, a]
type = ChangeState
value = 1990
triggerall = command = "メモリーカードスラッシュ"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 400
trigger6 = stateno = 430
trigger7 = stateno = 250
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 215
trigger10= stateno = 240
trigger11= stateno = 440
trigger12= stateno = 245

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ファイヤースープレックス
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "投げ"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0

;---------------------------------------------------------------------------
;ガードキャンセルふっ飛ばし攻撃
[State -1, 290]
type = ChangeState
value = 291
triggerall = command = "ふっ飛ばし"
triggerall = power >= 500
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;ミューテイションコンビネーション
[State -1, Stand Light Punch]
type = ChangeState
value = 260
triggerall = command = "コンビネーション1"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ガードキャンセルフロントステップ
[State -1, 700]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = power >= 500
trigger1 = stateno = 150
trigger2 = stateno = 151
;---------------------------------------------------------------------------
;タクティカルステップ
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = command = "緊急回避前"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ガードキャンセルタクティカルステップ
[State -1, 700]
type = ChangeState
value = 700
triggerall = command = "緊急回避前"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151
;---------------------------------------------------------------------------
;ACタクティカルステップ
[State -1, 700]
type = ChangeState
value = 700
triggerall = command = "緊急回避前"
triggerall = power >= 1000
trigger1 = stateno = [200,249]
;---------------------------------------------------------------------------
;ダウン回避
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = command = "緊急回避前"
trigger1 = stateno = 5050
trigger1 = pos y >=-40
;---------------------------------------------------------------------------
;フロントステップ
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

;===========================================================================
;---------------------------------------------------------------------------
;遠距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0
trigger3 = (stateno = 200) && (movehit = 1)
;---------------------------------------------------------------------------
;近距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0
trigger3 = (stateno = 205) && (movehit = 1)

;---------------------------------------------------------------------------
;遠距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0
;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0

;---------------------------------------------------------------------------
;遠距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0
;---------------------------------------------------------------------------
;近距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0
;---------------------------------------------------------------------------
;遠距離立ち強キック1
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0
;---------------------------------------------------------------------------
;近距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0


;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl