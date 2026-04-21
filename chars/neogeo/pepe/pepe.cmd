;-| AI |-------------------------------------------------------
[Command]
name = "AI_01"
command = D,D
time = 0

[Command]
name = "AI_02"
command = B,B
time = 0

[Command]
name = "AI_03"
command = F,F
time = 0

[Command]
name = "AI_04"
command = U,U
time = 0

[Command]
name = "AI_05"
command = a,a
time = 0

[Command]
name = "AI_06"
command = b,b
time = 0

[Command]
name = "AI_07"
command = c,c
time = 0

[Command]
name = "AI_08"
command = x,x
time = 0

[Command]
name = "AI_09"
command = y,y
time = 0

[Command]
name = "AI_10"
command = z,z
time = 0

[Command]
name = "AI_11"
command = ~90s
time = 91

;-| 超必殺技 |----------------------------------------------------

[Command]
name = "tyouhi2"
command = D,DF,F,D,DF,F, y
time = 30

[Command]
name = "tyouhi1"
command = D,DF,F,D,DF,F, x
time = 30

[Command]
name = "dup"
command = D,DF,F, c
time = 15

[Command]
name = "dup"
command = D,DF,F, y+a
time = 15

;-| 必殺技 |------------------------------------------------------
[Command]
name = "gyakuyoga-k"
command = ~F, DF, D, DB, B, a
time = 20

[Command]
name = "gyakuyoga-k"
command = ~F, DF, D, DB, B, b
time = 20

[Command]
name = "guri-n"
command = ~F,D, DF, a
time = 15

[Command]
name = "guri-n"
command = ~F,D, DF, b
time = 15

[Command]
name = "isutakku"
command = ~D, DB, B, x
time = 15

[Command]
name = "isutakku"
command = ~D, DB, B, y
time = 15

[Command]
name = "tatusen"
command = ~D, DB, B, a
time = 15

[Command]
name = "tatusen"
command = ~D, DB, B, b
time = 15

;-| ２回押し技 |---------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２個　同時押し技 |--------------------------------------------
[Command];避け
name = "sake"
command = x+a
time = 1

[Command];避け簡易版
name = "sake"
command = z
time = 1

[Command];ファーストインパクト
name = "fi"
command = y+b
time = 1

[Command];ファーストインパクト簡易版
name = "fi"
command = c
time = 1

[Command];キャラチェンジ
name = "kyarathenji"
command = y+a
time = 1

;-| 方向とボタンで出す技 |-----------------------------------------
[Command];特殊Ｐ
name = "flp"
command = /F,x
time = 1

[Command];特殊Ｋ
name = "flk"
command = /DF,a
time = 1

[Command]
name = "recovery"
command = x+y
time = 1
;-| ボタン設定（いじらない）|--------------------------------------

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

;-| 方向ボタン設定（いじらない）|--------------------------------------

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

;================================================================
;================================================================

[Statedef -1]

;================================================================
;================================================================
;ケツアルコアトル
[State -1]
type = ChangeState
triggerall = command = "tyouhi1" && power >= 1000 || command = "tyouhi2" && power >= 2000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = anim = 200 || anim = 201 || anim = 205 || anim = 210  && time > 5 || anim = 215
trigger3 = movecontact = 1
trigger3 = anim = 400 || anim = 405 || anim = 410 || anim = 820 || anim = 834
value = 3000

;----------------------------------------------------------------
;デュプレックスLV1
[State -1]
type = ChangeState
triggerall = statetype != A && command = "dup" && power >= 1000
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = anim = 200 || anim = 201 || anim = 205 || anim = 210  && time > 5 || anim = 215
trigger3 = movecontact = 1
trigger3 = anim = 400 || anim = 405 || anim = 410 || anim = 820 || anim = 834
value = 3100

;----------------------------------------------------------------
;テモック
[State -1]
type = ChangeState
triggerall = statetype = A && command = "tatusen"
trigger1 = ctrl = 1
trigger2 = movecontact = 1 && stateno < 820
trigger3 = movecontact = 1 && anim = 851
value = 1300

;----------------------------------------------------------------
;クアウトゥリイ
[State -1]
type = ChangeState
triggerall = statetype != A && command = "gyakuyoga-k"
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = anim = 200 || anim = 201 || anim = 205 || anim = 210  && time > 5 || anim = 215
trigger3 = movecontact = 1
trigger3 = anim = 400 || anim = 405 || anim = 410 || anim = 820 || anim = 834
value = 1200

;----------------------------------------------------------------
;イスタック
[State -1]
type = ChangeState
triggerall = statetype != A && command = "isutakku"
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = anim = 200 || anim = 201 || anim = 205 || anim = 210  && time > 5 || anim = 215
trigger3 = movecontact = 1
trigger3 = anim = 400 || anim = 405 || anim = 410 || anim = 820 || anim = 834
value = 1100

;----------------------------------------------------------------
;グリーン・レイジ
[State -1]
type = ChangeState
triggerall = statetype != A && command = "guri-n"
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = anim = 200 || anim = 201 || anim = 205 || anim = 210  && time > 5 || anim = 215
trigger3 = movecontact = 1
trigger3 = anim = 400 || anim = 405 || anim = 410 || anim = 820 || anim = 834
value = 1000

;================================================================
;ダッシュ
[State -1]
type = ChangeState
trigger1 = statetype != A && ctrl = 1 && command = "FF" && var(59) = 0
value = 100

;================================================================
;バックダッシュ
[State -1]
type = ChangeState
trigger1 = statetype != A && ctrl = 1 && command = "BB" && var(59) = 0
value = 105

;================================================================
;特殊P　中段
[State -1]
type = ChangeState
triggerall = statetype != A && command = "flp" && var(59) = 0
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = anim = 200 || anim = 201 || anim = 205 || anim = 210  && time > 5 || anim = 215 || anim = 400 || anim = 405 || anim = 410 || anim = 834
value = 815

;================================================================
;特殊K　２段蹴り
[State -1]
type = ChangeState
triggerall = statetype != A && command = "flk" && var(59) = 0
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = anim = 200 || anim = 201 || anim = 205 || anim = 210  && time > 5 || anim = 215 || anim = 400 || anim = 405 || anim = 410 || anim = 834
value = 820

;================================================================
;ファーストインパクト
[State -1]
type = ChangeState
triggerall = statetype != A && ctrl = 1
trigger1 = var(59) = 0 && command = "fi"
trigger2 = var(59) = 1 && var(58) > 30 && p2bodydist x < 60 && p2movetype != A 
value = 825

;================================================================
;カウンタ
[State -1]
type = ChangeState
triggerall = statetype != A && power >= 1000 && anim = [150,153]
trigger1 = var(59) = 0 && command = "fi" 
trigger2 = var(59) = 1 && var(58) > 70 && p2bodydist x < 50
value = 860

;================================================================
;避け系
[State -1]
type = ChangeState
triggerall = statetype != A && ctrl = 1
trigger1 = var(59) = 0 && command = "sake"
trigger2 = var(59) = 1 && var(58) > 70 && p2bodydist x < 50 && p2movetype = A
value = 805

;================================================================
;ダウン回避
[State -1]
type = ChangeState
triggerall = statetype = A && movetype = H && pos y > -20 && vel y > 2
trigger1 = var(59) = 0 && command = "sake"
trigger2 = var(59) = 1 && var(58) > 70 && p2bodydist x < 50 && p2movetype = A
value = 808

;================================================================
;挑発
[State -1]
type = ChangeState
triggerall = statetype != A && ctrl = 1
trigger1 = var(59) = 0 && command = "start"
trigger2 = var(59) = 1 && var(58) = 95 && p2bodydist x > 200
value = 810

;================================================================
;基本攻撃　プレイヤー用
[State -1]
type = ChangeState
triggerall = var(59) = 0
trigger1 = ctrl = 1
trigger1 = command = "x" || command = "y" || command = "a" || command = "b"
trigger2 = command = "x" && time > 4
trigger2 = anim = 200 || anim = 201 || anim = 400
value = ifelse(statetype = A,600, ifelse(command = "holddown",400,200))
ctrl = 0
