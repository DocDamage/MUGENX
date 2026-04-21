;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "パワーアップ"
command = x+a+y
time = 1

[Command]
name = "パワーアップ"
command = z+y
time = 1

;-| 必殺技 |------------------------------------------------------
[Command]
name = "リフレクター"
command = ~B,D,DB, b

[Command]
name = "リフレクター"
command = ~B,D,DB, y

[Command]
name = "リフレクター"
command = ~B,D,DB, a

[Command]
name = "リフレクター"
command = ~B,D,DB, x


[Command]
name = "猿王・火柱攻撃"
command = ~F,D,DF, b

[Command]
name = "猿王・火柱攻撃"
command = ~F,D,DF, y

[Command]
name = "猿王・火柱攻撃"
command = ~F,D,DF, a

[Command]
name = "猿王・火柱攻撃"
command = ~F,D,DF, x


[Command]
name = "猿王・落下攻撃"
command = ~D,DB,B, b

[Command]
name = "猿王・落下攻撃"
command = ~D,DB,B, y

[Command]
name = "猿王・落下攻撃"
command = ~D,DB,B, a

[Command]
name = "猿王・落下攻撃"
command = ~D,DB,B, x


[Command]
name = "猿王・放物線攻撃"
command = ~D,DF,F, b

[Command]
name = "猿王・放物線攻撃"
command = ~D,DF,F, a

[Command]
name = "猿王・放物線攻撃"
command = ~D,DF,F, y

[Command]
name = "猿王・放物線攻撃"
command = ~D,DF,F, x


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
name = "頭砕脚"
command = /$B,b
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
;パワーアップ
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "パワーアップ"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 210 && movecontact = 1
trigger4 = stateno = 230 && movecontact = 1
trigger5 = stateno = 240 && movecontact = 1
trigger6 = stateno = 700 && animelem = 2,>=0

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;リフレクター
[State -1, a]
type = ChangeState
value = 1100
triggerall = command = "リフレクター"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 210 && movecontact = 1
trigger4 = stateno = 230 && movecontact = 1
trigger5 = stateno = 240 && movecontact = 1
trigger6 = stateno = 700 && animelem = 2,>=0

;---------------------------------------------------------------------------
;猿王・火柱攻撃
[State -1, a]
type = ChangeState
value = 1020
triggerall = command = "猿王・火柱攻撃"
triggerall = statetype != A
triggerall = var(20) = 0
triggerall = var(21) = 0
triggerall = var(22) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 210 && movecontact = 1
trigger4 = stateno = 230 && movecontact = 1
trigger5 = stateno = 240 && movecontact = 1
trigger6 = stateno = 700 && animelem = 2,>=0

;---------------------------------------------------------------------------
;猿王・落下攻撃
[State -1, a]
type = ChangeState
value = 1010
triggerall = command = "猿王・落下攻撃"
triggerall = statetype != A
triggerall = var(20) = 0
triggerall = var(21) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 210 && movecontact = 1
trigger4 = stateno = 230 && movecontact = 1
trigger5 = stateno = 240 && movecontact = 1
trigger6 = stateno = 700 && animelem = 2,>=0

;---------------------------------------------------------------------------
;猿王・放物線攻撃
[State -1, a]
type = ChangeState
value = 1000
triggerall = command = "猿王・放物線攻撃"
triggerall = statetype != A
triggerall = var(20) = 0
triggerall = var(21) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 210 && movecontact = 1
trigger4 = stateno = 230 && movecontact = 1
trigger5 = stateno = 240 && movecontact = 1
trigger6 = stateno = 700 && animelem = 2,>=0



;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ガードキャンセルふっ飛ばし攻撃
[State -1, 290]
type = ChangeState
value = 291
triggerall = command = "ふっ飛ばし"
triggerall = power >= 500
trigger1 = stateno = 150
trigger2 = stateno = 151

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
value = 702
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

;---------------------------------------------------------------------------
;
[State -1, Kung Fu Throw]
type = null;ChangeState
value = 800
triggerall = command = "投げ"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0


;===========================================================================
;---------------------------------------------------------------------------
;弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0
;---------------------------------------------------------------------------
;強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0
;---------------------------------------------------------------------------
;弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0
;---------------------------------------------------------------------------
;強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = statetype != A
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