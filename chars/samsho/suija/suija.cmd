;-| 必殺技 |------------------------------------------------------
;自殺
;[Command]
;name = "zisatu"
;command = ~B,F,DF,D,s
;time = 40

;月天法界
[Command]
name = "getuten"
command = ~D,DB,B,y+b

;天昇・水柱波
[Command]
name = "tensyo"
command = ~D,DF,F,y+b

;円月強
[Command]
name = "engetu3"
command = ~F,D,DF,x+a

;円月中
[Command]
name = "engetu2"
command = ~F,D,DF,a

;円月弱
[Command]
name = "engetu1"
command = ~F,D,DF,x

;翔月強
[Command]
name = "syougetu3"
command = ~DB,D,DF,F,x+a

;翔月中
[Command]
name = "syougetu2"
command = ~DB,D,DF,F,a

;翔月弱
[Command]
name = "syougetu1"
command = ~DB,D,DF,F,x

;月輪波
[Command]
name = "geturin3"
command = ~B,D,BD,x+a

;月輪波
[Command]
name = "geturin2"
command = ~B,D,BD,a

;月輪波
[Command]
name = "geturin1"
command = ~B,D,BD,x

;円月強
[Command]
name = "engetu23"
command = ~F,D,DF,FU,x+a

;円月中
[Command]
name = "engetu22"
command = ~F,D,DF,FU,a

;円月弱
[Command]
name = "engetu21"
command = ~F,D,DF,FU,x


;死月3
[Command]
name = "sigetu3"
command = ~D,DB,B,x+a

;死月2
[Command]
name = "sigetu2"
command = ~D,DB,B,a

;死月1
[Command]
name = "sigetu1"
command = ~D,DB,B,x

;襲月
[Command]
name = "syugetu"
command = ~D,DF,F,y

;斜め入力
[Command]
name = "mads"
command = /$DF
time = 20

;斜め入力
[Command]
name = "mads2"
command = /$BD
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
command = F, F, F, F, F, F, F,x+y+z
time = 0
;-| 方向とボタンで出す技 |-----------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_y"
command = /$D,y
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

;-| 押しっぱなし設定（いじらない）---------------------------------------------
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
;必殺技↓
;===========================================================================
;天昇・水柱波
[State -1, Jump Light Punch]
type = ChangeState
value = 4000
triggerall = power = 1000
triggerall = command = "tensyo"
triggerall = statetype = A
trigger1 = ctrl
;===========================================================================
;月天法界
[State -1, Jump Light Punch]
type = ChangeState
value = 4100
triggerall = power = 1000
triggerall = command = "getuten"
triggerall = statetype = A
trigger1 = ctrl
;===========================================================================
;円月強
[State -1, Jump Light Punch]
type = ChangeState
value = 3002
triggerall = var(9) != 1
triggerall = command = "engetu3"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;円月弱
[State -1, Jump Light Punch]
type = ChangeState
value = 3000
triggerall = var(9) != 1
triggerall = command = "engetu1"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;円月中
[State -1, Jump Light Punch]
type = ChangeState
value = 3001
triggerall = var(9) != 1
triggerall = command = "engetu2"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;翔月強
[State -1, Jump Light Punch]
type = ChangeState
value = 3200
triggerall = var(9) != 1
triggerall = command = "syougetu3"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;翔月中
[State -1, Jump Light Punch]
type = ChangeState
value = 3200
triggerall = var(9) != 1
triggerall = command = "syougetu2"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;翔月弱
[State -1, Jump Light Punch]
type = ChangeState
value = 3200
triggerall = var(9) != 1
triggerall = command = "syougetu1"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;月輪波強
[State -1, Jump Light Punch]
type = ChangeState
value = 3170
triggerall = var(9) != 1
triggerall = command = "geturin3"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;月輪波中
[State -1, Jump Light Punch]
type = ChangeState
value = 3160
triggerall = var(9) != 1
triggerall = command = "geturin2"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;月輪波弱
[State -1, Jump Light Punch]
type = ChangeState
value = 3100
triggerall = var(9) != 1
triggerall = command = "geturin1"
triggerall = statetype = A
trigger1 = ctrl
;===========================================================================
;円月強
[State -1, Jump Light Punch]
type = ChangeState
value = 3002
triggerall = var(9) != 1
triggerall = command = "engetu23"
triggerall = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;円月弱
[State -1, Jump Light Punch]
type = ChangeState
value = 3000
triggerall = var(9) != 1
triggerall = command = "engetu21"
triggerall = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;円月中
[State -1, Jump Light Punch]
type = ChangeState
value = 3001
triggerall = var(9) != 1
triggerall = command = "engetu22"
triggerall = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;死月
[State -1, Jump Light Punch]
type = ChangeState
value = 3300
triggerall = var(9) != 1
triggerall = command = "sigetu3"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;死月
[State -1, Jump Light Punch]
type = ChangeState
value = 3300
triggerall = var(9) != 1
triggerall = command = "sigetu2"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;死月
[State -1, Jump Light Punch]
type = ChangeState
value = 3300
triggerall = var(9) != 1
triggerall = command = "sigetu1"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;襲月
[State -1, Jump Light Punch]
type = ChangeState
value = 3400
triggerall = var(9) != 1
triggerall = command = "syugetu"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;後ろ崩し
[State -1, Jump Light Punch]
type = ChangeState
value = 1100
triggerall = command = "holdback"
triggerall = P2bodydist X < 10
triggerall = command = "y"&&command = "b"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;前崩し
[State -1, Jump Light Punch]
type = ChangeState
value = 1000
triggerall = command = "holdfwd"
triggerall = P2bodydist X < 1
triggerall = command = "y"&&command = "b"
triggerall = statetype != A
trigger1 = ctrl

;===========================================================================
;↓その他↓
;===========================================================================
;ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;後退ダッシュ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;追い討ち小
[State -1, Jump Light Punch]
type = ChangeState
value = 500
triggerall = command = "holddown"
trigger1 = command = "mads"
triggerall = command = "a"&&command = "y"
triggerall = statetype != A
triggerall = stateno != 100
trigger1 = ctrl
;---------------------------------------------------------------------------
;追い討ち大
[State -1, Jump Light Punch]
type = ChangeState
value = 1800
triggerall = command = "holdfwd"
triggerall = command = "a"&&command = "y"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;不意打ち
[State -1]
type = ChangeState
value = 1700
triggerall = command = "a"&&command = "y"
trigger1 = statetype != A
trigger1 = ctrl
;===========================================================================
;立ち強パンチ遠距離
[State -1]
type = ChangeState
triggerall = command = "x"&&command = "a"
triggerall = P2bodydist X >= 50
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
value = 220
;===========================================================================
;立ち強パンチ近距離
[State -1]
type = ChangeState
triggerall = command = "x"&&command = "a"
triggerall = P2bodydist X <= 50
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
value = 240
;---------------------------------------------------------------------------
;スライディング
[State -1, Jump Light Punch]
type = ChangeState
value = 260
triggerall = command = "holddown"
trigger1 = command = "mads"
triggerall = command = "y"
triggerall = statetype != A
triggerall = stateno != 100
trigger1 = ctrl
;===========================================================================
;立ち中パンチ遠距離
[State -1]
type = ChangeState
triggerall = command = "a"
triggerall = P2bodydist X >= 20
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
value = 210
;---------------------------------------------------------------------------
;立ち小パンチ
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;立ち中パンチ近距離
[State -1]
type = ChangeState
triggerall = command = "a"
triggerall = P2bodydist X <= 20
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
value = 230
;---------------------------------------------------------------------------
;立ちキック
[State -1]
type = ChangeState
triggerall = command = "y"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
value = 250
;---------------------------------------------------------------------------
;しゃがみ大パンチ
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"&&command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ小パンチ
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
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみキック
[State -1]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;ダッシュ強
[State -1]
type = ChangeState
value = 320
triggerall = command = "x"&&command = "a"
trigger1 = statetype = S
trigger1 = stateno = 100
;---------------------------------------------------------------------------
;ダッシュ弱
[State -1]
type = ChangeState
value = 300
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = stateno = 100
;---------------------------------------------------------------------------
;ダッシュ中
[State -1]
type = ChangeState
value = 310
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = stateno = 100
;---------------------------------------------------------------------------
;ダッシュ蹴り
[State -1]
type = ChangeState
value = 330
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = stateno = 100
;---------------------------------------------------------------------------
;空中 大パンチ(前後)
[State -1]
type = ChangeState
triggerall = var(9) != 1
triggerall = command = "x"&&command = "a"
trigger1 = statetype = A
trigger1 = ctrl
value = 620
;---------------------------------------------------------------------------
;空 小パンチ(前後)
[State -1]
type = ChangeState
triggerall = var(9) != 1
triggerall = Command = "x"
trigger1 = statetype = A
trigger1 = ctrl
value = IFelse(Vel X = 0,600, 630)
;---------------------------------------------------------------------------
;空中 中パンチ(前後)
[State -1]
type = ChangeState
triggerall = var(9) != 1
triggerall = Command = "a"
trigger1 = statetype = A
trigger1 = ctrl
value = IFelse(Vel X = 0,610, 640)
;---------------------------------------------------------------------------
;空中 小キック
[State -1]
value = 650
type = ChangeState
triggerall = var(9) != 1
triggerall = Command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;後転
[State -1]
type = ChangeState
value = 1450
triggerall = command = "holddown"
triggerall = command = "b"
triggerall = statetype != A
trigger1 = command = "mads2"
trigger1 = ctrl
;---------------------------------------------------------------------------
;前転
[State -1]
type = ChangeState
value = 1400
triggerall = command = "holddown"
triggerall = command = "b"
triggerall = statetype != A
trigger1 = command = "mads"
trigger1 = ctrl
;---------------------------------------------------------------------------
;下避け
[State -1]
type = ChangeState
value = 1200
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = command != "mads"

trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;小ジャンプ
[State -1]
type = ChangeState
value = 1300
triggerall = command = "b"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;前ジャンプ
[State -1]
type = ChangeState
value = 1500
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

