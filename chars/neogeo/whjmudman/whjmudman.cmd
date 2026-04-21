
;-| 必殺技 |------------------------------------------------------
;ヘブンズクロス天使
[Command]
name = "hc1"
command = ~F,DF,D,DB,B,F, x+a
time = 40

;ヘブンズクロス天使
[Command]
name = "hc2"
command = ~F,DF,D,DB,B,F, a+y
time = 40

;ヘブンズクロス天使
[Command]
name = "hc3"
command = ~F,DF,D,DB,B,F, y+b
time = 40

;マッドマンアタック弱
[Command]
name = "madatkx"
command = ~D,DF,F,x

;マッドマンアタック強
[Command]
name = "madatky"
command = ~D,DF,F,y

;マッドランチャー弱
[Command]
name = "madrana"
command = ~D,DF,F, a

;マッドランチャー強
[Command]
name = "madranb"
command = ~D,DF,F, b

;マッドカッター弱
[Command]
name = "madcatx"
command = ~D,DB,B, x

;マッドカッター強
[Command]
name = "madcaty"
command = ~D,DB,B, y

;マッドジャイロ弱
[Command]
name = "majx"
command = ~F,D,FD,x

;マッドジャイロ強
[Command]
name = "majy"
command = ~F,D,FD,y

;マッドスライダー
[Command]
name = "mads"
command = /$DF
time = 1

;気絶
[Command]
name = "kizetu"
command = /$D,s
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
;ヘブンズクロス
[State -1, ヘブンズクロス]
type = ChangeState
value = ifelse(power >= 2000,8000,4000)
triggerall = Power >= 1000
triggerall = command = "hc1"
trigger1 = statetype != A
trigger1 = ctrl
;===========================================================================
;ヘブンズクロス
[State -1, ヘブンズクロス]
type = ChangeState
value = ifelse(power >= 2000,8001,4001)
triggerall = Power >= 1000
triggerall = command = "hc2"
trigger1 = statetype != A
trigger1 = ctrl
;===========================================================================
;ヘブンズクロス
[State -1, ヘブンズクロス]
type = ChangeState
value = ifelse(power >= 2000,8002,4002)
triggerall = Power >= 1000
triggerall = command = "hc3"
trigger1 = statetype != A
trigger1 = ctrl
;===========================================================================
;マッドジャイロx
[State -1, マッドジャイロx]
type = ChangeState
value = 3300
triggerall = command = "majx"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
trigger3 = stateno =230
trigger3 = time = [9,13]
;---------------------------------------------------------------------------
;マッドジャイロy
[State -1, マッドジャイロy]
type = ChangeState
value = 3300
triggerall = command = "majy"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
trigger3 = stateno =230
trigger3 = time = [9,13]
trigger4 = stateno =270
trigger4 = time = [14,24]
;---------------------------------------------------------------------------
;マッドマンアタックx
[State -1, マッドマンアタック]
type = ChangeState
value = 3150
triggerall = command = "madatkx"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
trigger3 = stateno =230
trigger3 = time = [9,13]
trigger4 = stateno =270
trigger4 = time = [14,24]
;===========================================================================
;マッドマンアタックy
[State -1, マッドマンアタック]
type = ChangeState
value = 3100
triggerall = command = "madatky"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
trigger3 = stateno =230
trigger3 = time = [9,13]
trigger4 = stateno =270
trigger4 = time = [14,24]
;===========================================================================
;マッドランチャーa
[State -1, マッドランチャーa]
type = ChangeState
value = 3250
triggerall = command = "madrana"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
trigger3 = stateno =230
trigger3 = time = [9,13]
trigger4 = stateno =270
trigger4 = time = [14,24]
;===========================================================================
;マッドランチャーb
[State -1, マッドランチャーb]
type = ChangeState
value = 3200
triggerall = command = "madranb"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
trigger3 = stateno =230
trigger3 = time = [9,13]
trigger4 = stateno =270
trigger4 = time = [14,24]
;---------------------------------------------------------------------------
;マッドカッターx
[State -1, マッドジャイロx]
type = ChangeState
value = 3000
triggerall = command = "madcatx"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
trigger3 = stateno =230
trigger3 = time = [9,13]
trigger4 = stateno =270
trigger4 = time = [14,24]
;---------------------------------------------------------------------------
;マッドカッターy
[State -1, マッドジャイロy]
type = ChangeState
value = 3000
triggerall = command = "madcaty"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
trigger3 = stateno =230
trigger3 = time = [9,13]
trigger4 = stateno =270
trigger4 = time = [14,24]
;---------------------------------------------------------------------------
;マッドスライダー
[State -1, Jump Light Punch]
type = ChangeState
value = 500
triggerall = command = "holddown"
triggerall = command = "b"
triggerall = statetype != A
trigger1 = command = "mads"
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;だきつきパンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 1000
triggerall = command = "holdfwd"
triggerall = P2bodydist X < 3
triggerall = command = "y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno =195
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;仮面ひっかけ
[State -1, Jump Light Punch]
type = ChangeState
value = 1101
triggerall = command = "holdback"
triggerall = P2bodydist X < 4
triggerall = command = "y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno =195
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;マッドマンズダンス
[State -1, Jump Light Punch]
type = ChangeState
value = 1201
triggerall = command = "holdfwd"
triggerall = P2bodydist X < 4
triggerall = command = "b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno =195
trigger2 = animelem = 1> 0
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
;立ち小パンチ遠距離
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X > 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
;===========================================================================
;立ち強パンチ遠距離
[State -1]
type = ChangeState
triggerall = command = "y"
triggerall = P2bodydist X > 10
trigger1 = statetype = S
trigger1 = ctrl
value = IFelse(command = "holdfwd", 280, IFelse(command = "holdback", 280, 210))
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;立ち小キック遠距離
[State -1]
type = ChangeState
value = 240
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X > 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;立ち強キック遠距離コマンド入れ
[State -1]
type = ChangeState
triggerall = command = "b"
triggerall = P2bodydist X > 11
trigger1 = statetype = S
trigger1 = ctrl
value = IFelse(command = "holdfwd", 258, IFelse(command = "holdback", 258, 250))

trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;立ち小パンチ近距離
[State -1]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;立ち大パンチ近距離
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;立ち小キック近距離
[State -1]
type = ChangeState
value = 260
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;立ち大キック近距離
[State -1]
type = ChangeState
value = 270
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;しゃがみ小パンチ
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;しゃがみ大パンチ
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;しゃがみ小キック
[State -1]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;しゃがみ大キック
[State -1]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198
trigger2 = animelem = 1> 0
trigger3 = stateno = 420
trigger3 = time = [10,17]
;---------------------------------------------------------------------------
;空 小パンチ(前後)
[State -1]
type = ChangeState
triggerall = Command = "x"
trigger1 = statetype = A
trigger1 = ctrl
value = IFelse(Vel X = 0,620, 600)
;---------------------------------------------------------------------------
;空中 大パンチ(前後)
[State -1]
type = ChangeState
triggerall = Command = "y"
trigger1 = statetype = A
trigger1 = ctrl
value = IFelse(Vel X = 0,630, 610)
;---------------------------------------------------------------------------
;空中 小キック
[State -1]
value = 650
type = ChangeState
triggerall = Command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中 大キック(前後)
[State -1]
type = ChangeState
triggerall = Command = "b"
trigger1 = statetype = A
trigger1 = ctrl
value = IFelse(Vel X = 0,660, 640)
;---------------------------------------------------------------------------
;挑発2
[State -1, Taunt]
type = ChangeState
value = 197
triggerall = command = "holdback"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198 ||stateno =196 ||stateno =197
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;挑発3
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "holdfwd"
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198 ||stateno =196 ||stateno =197
trigger2 = animelem = 1> 0
;---------------------------------------------------------------------------
;挑発1
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno =195 ||stateno = 100||stateno = 198 ||stateno =196 ||stateno =197
trigger2 = animelem = 1> 0
