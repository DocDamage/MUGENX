;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "飛翔旋風撃"
command = ~F,B,DB,D,DF,F, y
time = 25

[Command]
name = "飛翔旋風撃"
command = ~F,B,DB,D,DF,F, x
time = 25

[Command]
name = "華中昇天飛猿爪"
command = ~D,DB,B,D,DB,B, y
time = 25

[Command]
name = "華中昇天飛猿爪"
command = ~D,DB,B,D,DB,B, x
time = 25

[Command]
name = "華中飛猿爪EX"
command = ~D,DB,B,DB,D,DF,F, y
time = 30

[Command]
name = "華中飛猿爪EX"
command = ~D,DB,B,DB,D,DF,F, x
time = 30

[Command]
name = "華中飛猿爪"
command = ~D,DF,F,D,DF,F, y
time = 25

[Command]
name = "華中飛猿爪"
command = ~D,DF,F,D,DF,F, x
time = 25


;-| 必殺技 |------------------------------------------------------
[Command]
name = "華中猛腕脚"
command = ~F,DF,D,DB,B, b

[Command]
name = "華中猛腕脚"
command = ~F,DF,D,DB,B, a


[Command]
name = "壁掛転身"
command = ~D,DF,F, b

[Command]
name = "壁掛転身"
command = ~D,DF,F, a

[Command]
name = "飛猿壁掛"
command = ~22$D,U, b

[Command]
name = "飛猿壁掛"
command = ~22$D,U, a

[Command]
name = "飛猿壁掛"
command = ~22$D,U, y

[Command]
name = "飛猿壁掛"
command = ~22$D,U, x

[Command]
name = "華中鷹爪激"
command = ~F,D,DF, y

[Command]
name = "華中鷹爪激"
command = ~F,D,DF, x


[Command]
name = "飛猿翻跨"
command = ~F,DF,D,DB,B,F, y
time = 25

[Command]
name = "飛猿翻跨"
command = ~F,DF,D,DB,B,F, x
time = 25

[Command]
name = "百裂脚"
command = ~B,DB,D,DF,F, b

[Command]
name = "百裂脚"
command = ~B,DB,D,DF,F, a


[Command]
name = "百裂フィニッシュ２"
command = ~D,DF,F, y

[Command]
name = "百裂フィニッシュ１"
command = ~D,DF,F, x

[Command]
name = "百裂拳"
command = ~F,B,F, y

[Command]
name = "百裂拳"
command = ~F,B,F, x

[Command]
name = "鉄の爪攻撃・下段"
command = ~D,DF,F, b

[Command]
name = "鉄の爪攻撃・下段"
command = ~D,DF,F, a


[Command]
name = "鉄の爪攻撃"
command = ~D,DF,F, y

[Command]
name = "鉄の爪攻撃"
command = ~D,DF,F, x

[Command]
name = "空転爪"
command = ~30$B,F, y

[Command]
name = "空転爪"
command = ~30$B,F, x


[Command]
name = "キャンセルハイジャンプ"
command = ~D,UF


[Command]
name = "キャンセルハイジャンプ"
command = ~D,UB

[Command]
name = "キャンセルハイジャンプ"
command = ~D,U


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
;---------------------------------------------------------------------------
;飛翔旋風撃(ＥＸモード)
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2300
triggerall = command = "飛翔旋風撃"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact = 1
trigger3 = stateno = 400 && movecontact = 1
trigger4 = stateno = 235 && movecontact = 1
trigger5 = stateno = 430 && movecontact = 1
trigger6 = stateno = 215 && movecontact = 1
trigger7 = stateno = 410 && movecontact = 1
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 251 && movecontact = 1
trigger10= stateno = 245 && movecontact = 1
;---------------------------------------------------------------------------
;華中飛猿爪(ＥＸモード)
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2250
triggerall = command = "華中飛猿爪EX"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact = 1
trigger3 = stateno = 400 && movecontact = 1
trigger4 = stateno = 235 && movecontact = 1
trigger5 = stateno = 430 && movecontact = 1
trigger6 = stateno = 215 && movecontact = 1
trigger7 = stateno = 410 && movecontact = 1
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 251 && movecontact = 1
trigger10= stateno = 245 && movecontact = 1
;---------------------------------------------------------------------------
;真空空転爪
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2200
triggerall = command = "華中飛猿爪"
triggerall = power >= 1000
triggerall = var(1) = 0
trigger1 = stateno = 1401

;---------------------------------------------------------------------------
;真空空転爪(ＥＸモード)
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2150
triggerall = command = "華中飛猿爪"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact = 1
trigger3 = stateno = 400 && movecontact = 1
trigger4 = stateno = 235 && movecontact = 1
trigger5 = stateno = 430 && movecontact = 1
trigger6 = stateno = 215 && movecontact = 1
trigger7 = stateno = 410 && movecontact = 1
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 251 && movecontact = 1
trigger10= stateno = 245 && movecontact = 1

;---------------------------------------------------------------------------
;真空空転爪
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = command = "華中飛猿爪"
triggerall = power >= 1000
triggerall = statetype = A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 1200 && movecontact && var(5) = 1


;---------------------------------------------------------------------------
;華中昇天飛猿爪
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2050
triggerall = command = "華中昇天飛猿爪"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact = 1
trigger3 = stateno = 400 && movecontact = 1
trigger4 = stateno = 235 && movecontact = 1
trigger5 = stateno = 430 && movecontact = 1
trigger6 = stateno = 215 && movecontact = 1
trigger7 = stateno = 410 && movecontact = 1
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 251 && movecontact = 1
trigger10= stateno = 245 && movecontact = 1

;---------------------------------------------------------------------------
;華中飛猿爪
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "華中飛猿爪"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact = 1
trigger3 = stateno = 400 && movecontact = 1
trigger4 = stateno = 235 && movecontact = 1
trigger5 = stateno = 430 && movecontact = 1
trigger6 = stateno = 215 && movecontact = 1
trigger7 = stateno = 410 && movecontact = 1
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 251 && movecontact = 1
trigger10= stateno = 245 && movecontact = 1

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;華中猛腕脚
[State -1, a]
type = ChangeState
value = 1500
triggerall = command = "華中猛腕脚"
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact = 1
trigger3 = stateno = 400 && movecontact = 1
trigger4 = stateno = 235 && movecontact = 1
trigger5 = stateno = 430 && movecontact = 1
trigger6 = stateno = 215 && movecontact = 1
trigger7 = stateno = 410 && movecontact = 1
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 250 && movecontact = 1
trigger10= stateno = 251 && movecontact = 1
;---------------------------------------------------------------------------
;壁掛転身
[State -1, a]
type = ChangeState
value = 1430
triggerall = stateno = 1401 && animelem = 3,>=0
triggerall = prevstateno != 1430
trigger1 = command = "壁掛転身"
;---------------------------------------------------------------------------
;華中猛脚襲
[State -1, a]
type = ChangeState
value = 1420
triggerall = stateno = 1401 && animelem = 3,>=0
trigger1 = command = "a"
trigger2 = command = "b"

;---------------------------------------------------------------------------
;華中鷹爪激
[State -1, a]
type = ChangeState
value = 1411
triggerall = stateno = 1410 && animelem = 2,>=0
trigger1 = command = "x"
trigger2 = command = "y"
;---------------------------------------------------------------------------
;華中飛鷹襲
[State -1, a]
type = ChangeState
value = 1410
triggerall = stateno = 1401 && animelem = 3,>=0
trigger1 = command = "x"
trigger2 = command = "y"

;---------------------------------------------------------------------------
;飛猿壁掛
[State -1, a]
type = ChangeState
value = 1400
triggerall = command = "飛猿壁掛"
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 40
trigger3 = stateno = 205 && movecontact = 1
trigger4 = stateno = 400 && movecontact = 1
trigger5 = stateno = 235 && movecontact = 1
trigger6 = stateno = 430 && movecontact = 1
trigger7 = stateno = 215 && movecontact = 1
trigger8 = stateno = 410 && movecontact = 1
trigger9 = stateno = 700 && animelem = 2,>=0
trigger11= stateno = 250 && movecontact = 1
trigger12= stateno = 251 && movecontact = 1

;---------------------------------------------------------------------------
;華中鷹爪激
[State -1, a]
type = ChangeState
value = 1350
triggerall = command = "華中鷹爪激"
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact = 1
trigger3 = stateno = 400 && movecontact = 1
trigger4 = stateno = 235 && movecontact = 1
trigger5 = stateno = 430 && movecontact = 1
trigger6 = stateno = 215 && movecontact = 1
trigger7 = stateno = 410 && movecontact = 1
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 250 && movecontact = 1
trigger10= stateno = 251 && movecontact = 1

;---------------------------------------------------------------------------
;飛猿翻跨
[State -1, a]
type = ChangeState
value = 1300
triggerall = command = "飛猿翻跨"
triggerall = statetype != A
;triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact = 1
trigger3 = stateno = 400 && movecontact = 1
trigger4 = stateno = 235 && movecontact = 1
trigger5 = stateno = 430 && movecontact = 1
trigger6 = stateno = 215 && movecontact = 1
trigger7 = stateno = 410 && movecontact = 1
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 250 && movecontact = 1
trigger10= stateno = 251 && movecontact = 1

;---------------------------------------------------------------------------
;百裂脚
[State -1, a]
type = ChangeState
value = 1200
triggerall = command = "百裂脚"
triggerall = statetype != A
;triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact = 1
trigger3 = stateno = 400 && movecontact = 1
trigger4 = stateno = 235 && movecontact = 1
trigger5 = stateno = 430 && movecontact = 1
trigger6 = stateno = 215 && movecontact = 1
trigger7 = stateno = 410 && movecontact = 1
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 250 && movecontact = 1
trigger10= stateno = 251 && movecontact = 1

;---------------------------------------------------------------------------
;百裂拳(EXモード)
[State -1, a]
type = ChangeState
value = 1150
triggerall = command = "百裂拳"
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact = 1
trigger3 = stateno = 400 && movecontact = 1
trigger4 = stateno = 235 && movecontact = 1
trigger5 = stateno = 430 && movecontact = 1
trigger6 = stateno = 215 && movecontact = 1
trigger7 = stateno = 410 && movecontact = 1
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 250 && movecontact = 1
trigger10= stateno = 251 && movecontact = 1

;---------------------------------------------------------------------------
;百裂拳
[State -1, a]
type = ChangeState
value = 1100
triggerall = command = "百裂拳"
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact = 1
trigger3 = stateno = 400 && movecontact = 1
trigger4 = stateno = 235 && movecontact = 1
trigger5 = stateno = 430 && movecontact = 1
trigger6 = stateno = 215 && movecontact = 1
trigger7 = stateno = 410 && movecontact = 1
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 250 && movecontact = 1
trigger10= stateno = 251 && movecontact = 1
;---------------------------------------------------------------------------
;鉄の爪攻撃・下段(EXモード)
[State -1, a]
type = ChangeState
value = 1060
triggerall = command = "鉄の爪攻撃・下段"
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact = 1
trigger3 = stateno = 400 && movecontact = 1
trigger4 = stateno = 235 && movecontact = 1
trigger5 = stateno = 430 && movecontact = 1
trigger6 = stateno = 215 && movecontact = 1
trigger7 = stateno = 410 && movecontact = 1
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 250 && movecontact = 1
trigger10= stateno = 251 && movecontact = 1

;---------------------------------------------------------------------------
;鉄の爪攻撃(EXモード)
[State -1, a]
type = ChangeState
value = 1050
triggerall = command = "鉄の爪攻撃"
triggerall = statetype != A
triggerall = var(1) = 1
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact = 1
trigger3 = stateno = 400 && movecontact = 1
trigger4 = stateno = 235 && movecontact = 1
trigger5 = stateno = 430 && movecontact = 1
trigger6 = stateno = 215 && movecontact = 1
trigger7 = stateno = 410 && movecontact = 1
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 250 && movecontact = 1
trigger10= stateno = 251 && movecontact = 1

;---------------------------------------------------------------------------
;空転爪
[State -1, a]
type = ChangeState
value = 1000
triggerall = command = "空転爪"
triggerall = statetype != A
triggerall = var(1) = 0
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact = 1
trigger3 = stateno = 400 && movecontact = 1
trigger4 = stateno = 235 && movecontact = 1
trigger5 = stateno = 430 && movecontact = 1
trigger6 = stateno = 215 && movecontact = 1
trigger7 = stateno = 410 && movecontact = 1
trigger8 = stateno = 700 && animelem = 2,>=0
trigger9 = stateno = 250 && movecontact = 1
trigger10= stateno = 251 && movecontact = 1


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

;---------------------------------------------------------------------------
;狂猿爪襲
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "投げ"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 700 && animelem = 2,>=0


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
;コンビネーションＡ
[State -1, Jump Light Punch]
type = ChangeState
value = 650
triggerall = command = "x"
trigger1 = stateno = 301

;---------------------------------------------------------------------------
;頭砕脚
[State -1, Jump Strong Kick]
type = ChangeState
value = 660
triggerall = command = "頭砕脚"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

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