; The CMD file.
;-| ゲージ消費技 |------------------------------------------------------

[Command]
name = "Umichimun"
command = ~D, DF, F, b+y

[Command]
name = "Umichimun"
command = ~D, DF, F, c

;-| 必殺技 |------------------------------------------------------
[Command]
name = "HThrow"
command = ~F, D, B, x

[Command]
name = "TDriver"
command = ~F, D, B, y

[Command]
name = "Nageki_z"
command = ~F, D, FD, a+x

[Command]
name = "Nageki_x"
command = ~F, D, FD, x

[Command]
name = "Nageki_a"
command = ~F, D, FD, a

[Command]
name = "Nageki_z"
command = ~F, D, FD, z

[Command]
name = "Chikyuushin_z"
command = ~80$B, F, a+x

[Command]
name = "Chikyuushin_x"
command = ~80$B, F, x

[Command]
name = "Chikyuushin_a"
command = ~80$B, F, a

[Command]
name = "Chikyuushin_z"
command = ~80$B, F, z

[Command]
name = "Tenkyuushin"
command = ~80$B, F, y

[Command]
name = "SunGan_x"
command = ~B, D, BD, x

[Command]
name = "SunGan_a"
command = ~B, D, BD, a

[Command]
name = "GiveUp"
command = ~B, F, D, s

[Command]
name = "Step"
command = F, ~F, F
time = 10

[Command]
name = "BStep"
command = B, ~B, B
time = 10

;-| ２回押し |-----------------------------------------------------------
[Command]
name = "FF"     ;必須 (削除不可)
command = F, F
time = 10

[Command]
name = "BB"     ;必須 (削除不可)
command = B, B
time = 10

[Command]
name = "High_Jump"
command = $D, $U
time = 3

;-| 同時押し |-----------------------------------------------
[Command]
name = "recovery";必須 (削除不可)
command = x+y

[Command]
name = "c"
command = a+y

[Command]
name = "z"
command = a+x

;-| 方向キーとボタン |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン |---------------------------------------------------------
[Command]
name = "charge_b"
command = /b
time = 1

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

;-| 方向キー |--------------------------------------------------------------
[Command]
name = "forward"
command = /F
time = 1

[Command]
name = "down"
command = /D
time = 1

[Command]
name = "holdfwd";必須 (削除不可)
command = /$F
time = 1

[Command]
name = "holdback";必須 (削除不可)
command = /$B
time = 1

[Command]
name = "holdup" ;必須 (削除不可)
command = /$U
time = 1

[Command]
name = "holddown";必須 (削除不可)
command = /$D
time = 1

[Command]
name = "rereaseU"
command = ~$U
time = 10

[Command]
name = "rereaseD"
command = ~$D
time = 10

[Command]
name = "rereaseF"
command = ~$F
time = 10

[Command]
name = "rereaseB"
command = ~$B
time = 10

;---------------------------------------------------------------------------
; 2. ステートエントリー
; --------------

[Statedef -1]

;===========================================================================
;ウミチムンの怒り
[State -1, Anger of Umichimun]
type = ChangeState
value = 3000
triggerall = Var(5) = 3000 || command = "Umichimun"
triggerall = !Var(20)
triggerall = statetype != A
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;投げ
[State -1, 投げ]
type = ChangeState
value = 800+(command = "holdback")
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl || StateNo = 100
triggerall = p2stateno != [5000, 5210]
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 12
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15

;---------------------------------------------------------------------------
;地弓心（強）
[State -1, Strong Chikyuushin]
type = ChangeState
value = 1020
triggerall = Var(5) = 1020 || command = "Chikyuushin_z"
triggerall = !Var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;地弓心（弱）
[State -1, Light Chikyuushin]
type = ChangeState
value = 1000
triggerall = Var(5) = 1000 || command = "Chikyuushin_x"
triggerall = !Var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;地弓心（中）
[State -1, Medium Chikyuushin]
type = ChangeState
value = 1010
triggerall = Var(5) = 1010 || command = "Chikyuushin_a"
triggerall = !Var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;天弓心
[State -1, Tenkyuushin]
type = ChangeState
value = 1030
triggerall = Var(5) = 1030 || command = "Tenkyuushin"
triggerall = !Var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;シニマブイの嘆き(強)
[State -1, Strong Rear Shoot]
type = ChangeState
value = 1120
triggerall = Var(5) = 1120 || command = "Nageki_z"
triggerall = !Var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;シニマブイの嘆き(弱)
[State -1, Light Rear Shoot]
type = ChangeState
value = 1100
triggerall = Var(5) = 1100 || command = "Nageki_x"
triggerall = !Var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;シニマブイの嘆き(中)
[State -1, Medium Rear Shoot]
type = ChangeState
value = 1110
triggerall = Var(5) = 1110 || command = "Nageki_a"
triggerall = !Var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;スンガンの誘い
[State -1, Temptation of Death]
type = ChangeState
value = 1200
triggerall = Var(5) = 1200 || command = "SunGan_x"
triggerall = !Var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;スンガンの迎え
[State -1, Temptation of Death]
type = ChangeState
value = 1210
triggerall = Var(5) = 1210 || command = "SunGan_a"
triggerall = !Var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;===========================================================================
;---------------------------------------------------------------------------
;踏み込み
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "Step"
triggerall = command != "rereaseU" && command != "rereaseD" && command != "rereaseB"
triggerall = statetype = S
triggerall = ctrl
trigger1 = !Var(20)

;---------------------------------------------------------------------------
;飛び退き
[State -1, Step Back]
type = ChangeState
value = 105
trigger1 = command = "BStep"
trigger1 = command != "rereaseU" && command != "rereaseD" && command != "rereaseF"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = !Var(20)

;---------------------------------------------------------------------------
;b行動
[State -1, bAction]
type = ChangeState
value = 110 + (command = "holdfwd") + (command = "holdback")*2 + (command = "holddown")*3
triggerall = command = "b"
triggerall = (command = "holdfwd") * (command = "holdback") = 0
triggerall = command = "holdfwd" || command = "holdback" || command = "holddown"
triggerall = statetype != A
triggerall = stateno != [110, 115]
triggerall = !Var(20)
trigger1 = ctrl
trigger2 = stateno = 100
trigger2 = Time > 5

;===========================================================================
;---------------------------------------------------------------------------
;ダウン追い討ち
[State -1, Additional Attack]
type = ChangeState
value = 295
trigger1 = command = "c"
trigger1 = command = "holddown"
trigger1 = command = "holdfwd"
trigger1 = statetype != A
trigger1 = P2statetype = L
trigger1 = ctrl

;---------------------------------------------------------------------------
;リープアタック
[State -1, Leap Attack]
type = ChangeState
value = 270
trigger1 = command = "c"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ダッシュ強斬り
[State -1, Dash Strong Slash]
type = ChangeState
value = 290
trigger1 = stateno = 100
trigger1 = Time > 5
trigger1 = command = "z"

;---------------------------------------------------------------------------
;２回転裏拳
[State -1, Duble Back Knuckle]
type = ChangeState
value = 285
trigger1 = stateno = 100
trigger1 = Time > 5
trigger1 = command = "a"

;---------------------------------------------------------------------------
;裏拳
[State -1, Back Knuckle]
type = ChangeState
value = 280
trigger1 = stateno = 100
trigger1 = Time > 5
trigger1 = command = "x"

;---------------------------------------------------------------------------
;６キック
[State -1, 6 Kick]
type = ChangeState
value = 250
triggerall = command = "holdfwd"
triggerall = command != "holdup"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
trigger1 = !Var(20)
trigger1 = command = "y"

;---------------------------------------------------------------------------
;３キック
[State -1, 3 Kick]
type = ChangeState
value = 260
triggerall = statetype != A
triggerall = command = "y"
trigger1 = command = "holdfwd"
trigger1 = command = "holddown"
trigger1 = ctrl
trigger1 = !Var(20)
trigger2 = Time > 5
trigger2 = StateNo = 100

;---------------------------------------------------------------------------
;立ちキック
[State -1, Standing Kick]
type = ChangeState
value = 210
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
trigger1 = !Var(20)
trigger1 = command = "y"

;---------------------------------------------------------------------------
;遠立ち強斬り
[State -1, Standing Strong Shoot]
type = ChangeState
value = 245
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
triggerall = Abs(P2BodyDist X) > 72
trigger1 = !Var(20)
trigger1 = command = "z"

;---------------------------------------------------------------------------
;遠立ち弱斬り
[State -1, Standing Light Shoot]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
trigger1 = Abs(P2BodyDist X) > 72
trigger2 = P2StateType = A

;---------------------------------------------------------------------------
;遠立ち中斬り
[State -1, Standing Light Shoot]
type = ChangeState
value = 225
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
trigger1 = Abs(P2BodyDist X) > 72
trigger2 = P2StateType = A

;---------------------------------------------------------------------------
;近立ち強斬り
[State -1, Standing Strong Slash]
type = ChangeState
value = 240
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
triggerall = Abs(P2BodyDist X) <= 72
trigger1 = !Var(20)
trigger1 = command = "z"

;---------------------------------------------------------------------------
;近立ち中斬り
[State -1, Standing Medium Slash]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = Abs(P2BodyDist X) <= 72
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;近立ち弱斬り
[State -1, Stand Light Slash]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = Abs(P2BodyDist X) <= 72
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;試合放棄
[State -1, GiveUp]
type = ChangeState
value = 196
triggerall = command = "start";"GiveUp"
triggerall = roundstate = 2
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = null;ChangeState
value = 184
triggerall = command = "start"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強斬り
[State -1, Crouching Strong Shoot]
type = ChangeState
value = 430
triggerall = command = "z" 
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠しゃがみ弱斬り
[State -1, Crouching Light Shoot]
type = ChangeState
value = 405
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = ctrl
trigger1 = Abs(P2BodyDist X) > 72
trigger2 = P2StateType = A

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = Abs(P2BodyDist X) <= 72
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 410
trigger1 = ctrl
trigger1 = !Var(20)
trigger1 = command = "y"
trigger1 = command = "holddown"
trigger1 = statetype = C

;---------------------------------------------------------------------------
;しゃがみ中斬り
[State -1, Crouching Medium Slash]
type = ChangeState
value = 420
triggerall = ctrl
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = Abs(P2BodyDist X) <= 72
trigger1 = statetype = C
trigger1 = !Var(20)

;---------------------------------------------------------------------------
;遠しゃがみ中斬り
[State -1, Crouching Medium Shoot]
type = ChangeState
value = 425
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = ctrl
trigger1 = Abs(P2BodyDist X) > 72

;---------------------------------------------------------------------------
;カジフチ
[State -1, Kajufuchi]
type = ChangeState
value = 680
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = A
triggerall = ctrl
triggerall = Pos Y < -10
trigger1 = !Var(20)

;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl
trigger1 = !Var(20)

;---------------------------------------------------------------------------
;ジャンプ強射
[State -1, Jump trong Shoot]
type = ChangeState
value = 640
triggerall = command = "z" 
triggerall = statetype = A
triggerall = ctrl
trigger1 = !Var(20)

;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1, Jump Light Punch]
type = Null;ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
triggerall = ctrl
trigger1 = !Var(20)

;---------------------------------------------------------------------------
;ジャンプ弱射
[State -1, Jump Light Shoot]
type = ChangeState
value = 620
triggerall = command = "x"
triggerall = statetype = A
triggerall = ctrl
trigger1 = !Var(20)

;---------------------------------------------------------------------------
;ジャンプ中射
[State -1, Jump Medium Shoot]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
triggerall = ctrl
trigger1 = !Var(20)
