;-| 超必殺技 |--------------------------------------------------------

;-| 必殺技 |------------------------------------------------------

[Command]
name = "totsu_b"
command = ~D, DF, F, a


[Command]
name = "furi_b"
command = ~F, D, DF, a



; 突き・弱／強
[Command]
name = "tsuki_x"
command = ~x,x,x,x
Time = 30

[Command]
name = "tsuki_a"
command = ~a,a,a,a
Time = 30






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

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
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

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;三烈カンフー突き手（ゲージレベル１）
;[State -1, Triple Kung Fu Palm]
;type = ChangeState
;value = 3000
;triggerall = command = "TripleKFPalm"
;triggerall = power >= 1000
;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = statetype != A
;trigger2 = hitdefattr = SC, NA, SA
;trigger2 = movecontact


;---------------------------------------------------------------------------

;槍振り回し（突撃）
[State -1, Run Back]
type = ChangeState
value = 1200
triggerall = !var(12)
trigger1 = command = "furi_b"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------

;受けてみよ（突撃）
[State -1, Run Back]
type = ChangeState
value = 1100
triggerall = !var(12)
trigger1 = command = "totsu_b"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------

;受けてみよ（突き）弱
[State -1, Run Back]
type = ChangeState
value = 1300
triggerall = !var(12)
trigger1 = command = "tsuki_x"
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "tsuki_x"
triggerall = MoveContact 
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 201
trigger2 = AnimElem = 4, <= 4
trigger3 = StateNo = 210
trigger3 = AnimElem = 3, <= 2
trigger4 = StateNo = 211
trigger4 = AnimElem = 3, <= 4



;受けてみよ（突き）強
[State -1, Run Back]
type = ChangeState
value = 1310
triggerall = !var(12)
trigger1 = command = "tsuki_a"
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 1310
triggerall = Command = "tsuki_a"
triggerall = MoveContact 
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 5
trigger2 = StateNo = 201
trigger2 = AnimElem = 4, <= 5
trigger3 = StateNo = 210
trigger3 = AnimElem = 3, <= 2
trigger4 = StateNo = 211
trigger4 = AnimElem = 3, <= 4


;---------------------------------------------------------------------------
;挑発
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;triggerall = statetype != A
;trigger1 = ctrl


;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(12)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;前転
[State -1, Run Back]
type = ChangeState
value = 800
triggerall = !var(12)
trigger1 = command = "holddown" && command = "holdfwd" && command = "b"
trigger1 = statetype != A
trigger1 = ctrl 

;---------------------------------------------------------------------------
;後転
[State -1, Run Back]
type = ChangeState
value = 805
triggerall = !var(12)
trigger1 = command = "holddown" && command = "holdback" && command = "b"
trigger1 = statetype != A
trigger1 = ctrl 

;---------------------------------------------------------------------------
;小ジャンプ
[State -1, Run Back]
type = ChangeState
value = 810
triggerall = !var(12)
trigger1 = (command = "holdfwd" || command = "holdback") && command = "b"
trigger1 = statetype != A
trigger1 = ctrl 

;---------------------------------------------------------------------------
;伏せ
[State -1, Run Back]
type = ChangeState
value = 820
triggerall = !var(12)
trigger1 = command = "holddown" && command = "b"
trigger1 = statetype != A
trigger1 = ctrl 



;---------------------------------------------------------------------------
;クイック起き上がり
[State -1, Run Back]
type = ChangeState
value = 5120
triggerall = command = "holdup"
trigger1 = stateno = 5110
trigger1 = time > 10

;---------------------------------------------------------------------------
;移動起き上がり（前方）
[State -1, Run Back]
type = ChangeState
value = 880
triggerall = command = "holdfwd"
trigger1 = stateno = 5110
trigger1 = time > 10
trigger2 = stateno = 5120
trigger2 = time = 1

;---------------------------------------------------------------------------
;移動起き上がり（前方）
[State -1, Run Back]
type = ChangeState
value = 885
triggerall = command = "holdback"
trigger1 = stateno = 5110
trigger1 = time > 10
trigger2 = stateno = 5120
trigger2 = time = 1

;---------------------------------------------------------------------------
;防御崩し
[State -1, Throw]
type = ChangeState
value = 900
triggerall = !var(12)
triggerall = roundstate = 2
triggerall = (command = "holdfwd" || command = "holdback") && command = "y"
triggerall = statetype = S
triggerall = P2bodyDist X <= 10
triggerall = p2statetype = S || p2statetype = C
triggerall = p2movetype != H
trigger1 = ctrl 


;===========================================================================

;---------------------------------------------------------------------------
;近距離立ち弱斬り
[State -1, Taunt]
type = ChangeState
value = 201
triggerall = !var(12)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 30;数値が高い程、遠くで出る
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち弱斬り
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;近距離立ち中斬り
[State -1, Taunt]
type = ChangeState
value = 211
triggerall = !var(12)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 30;数値が高い程、遠くで出る
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;遠距離立ち中斬り
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = !var(12)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち中斬り(鎧)
[State -1, Stand Strong Punch]
type = ChangeState
value = 200
triggerall = var(12)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ちキック(下段なぎ払い)
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = !var(12)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl



;---------------------------------------------------------------------------
;しゃがみキック（中段振り下ろし）
[State -1, Crouching Light Kick]
type = ChangeState
value = 420
triggerall = !var(12)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
;鎧（中段振り下ろし）
[State -1, Crouching Light Kick]
type = ChangeState
value = 420
triggerall = var(12)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------

;小賢しい
[State -1, Run Back]
type = ChangeState
value = 1000
triggerall = !var(12)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
;空中弱斬り
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !var(12)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600


;---------------------------------------------------------------------------
;空中強斬り
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = !var(12)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 600
triggerall = !var(12)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl



