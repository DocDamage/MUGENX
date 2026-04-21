;-| 超必殺技 |--------------------------------------------------------
;ここには超必殺技を記述してください、同じ名前を「name =」欄に書けますが
;コマンドは絶対に違ったものにしてください。
;カンフーマンは弱パンチと強パンチで技が出せるように同じ名前のコマンドで
;内容が弱と強になっています。
;「time=20」と書くことで「コマンドを20フレーム以内に入力」と設定できます。

;-| えーあい |------------------------------------------------------
[Command]
name = "CPU1"
command = D, D, D, D, D, D
time = 1

[Command]
name = "CPU2"
command = D, D, D, D, D, D
time = 1

[Command]
name = "CPU3"
command = D, D, D, D, D, D
time = 1

[Command]
name = "CPU4"
command = D, D, D, D, D, D
time = 1

[Command]
name = "CPU5"
command = D, D, D, D, D, D
time = 1

[Command]
name = "CPU6"
command = D, D, D, D, D, D
time = 1

[Command]
name = "CPU7"
command = D, D, D, D, D, D
time = 1

[Command]
name = "CPU8"
command = D, D, D, D, D, D
time = 1

[Command]
name = "CPU9"
command = D, D, D, D, D, D
time = 1

[Command]
name = "CPU10"
command = D, D, D, D, D, D
time = 1
;-| 超必殺技 |------------------------------------------------------

[Command]
name = "houkou"
command = ~F, B, DB, D, DF, F, x+y
time = 30

[Command]
name = "ikari"
command = ~F, B, DB, D, DF, F, y
time = 30

[Command]
name = "houkou"
command = b
time = 1

[Command]
name = "ikari"
command = c
time = 1

;-| 必殺技 |------------------------------------------------------

[Command]
name = "mukou1"
command =  ~B,D,DB, x
time = 14

[Command]
name = "mukou2"
command =  ~B,D,DB, y
time = 14

[Command]
name = "mukou3"
command =  ~B,D,DB, z
time = 14

[Command]
name = "tairyo1"
command =  ~F,D,DF, x
time = 14

[Command]
name = "tairyo2"
command =  ~F,D,DF, y
time = 14

[Command]
name = "tairyo3"
command =  ~F,D,DF, z
time = 14

[Command]
name = "kamebu"
command = ~F, DF, D, DB, z
time = 20

[Command]
name = "kamebu1"
command = ~F, DF, D, DB, x
time = 20

[Command]
name = "kamebu2"
command = ~F, DF, D, DB, y
time = 20

[Command]
name = "kame"
command = ~D, DF, F, x

[Command]
name = "kame2"
command = ~D, DF, F, y

[Command]
name = "kame3"
command = ~D, DF, F, z

;弾き
[Command]
name = "a"
command = a
time = 1

[Command]
name = "recovery"
command = a
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
name = "ooburi"
command = y+z
time = 1

[Command]
name = "nage"
command = z+a
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

[Command]
name = "4x"
command = /B,x
time = 1

[Command]
name = "6y"
command = /F,y
time = 1

[Command]
name = "6z"
command = /F,z
time = 1

[Command]
name = "3z"
command = /DF,z
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
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holddownforward"
command = /$DF
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "holdz"
command = /z
time = 1


; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================
;AI
[State -1, AI]
type = VarSet
triggerall = var(21) != 1
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10  = command = "CPU10"
v =  21
value = 1

;===========================================================================
;AI Commands

[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random <= 200
trigger1 = p2bodydist X = (1,25)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger1 = statetype != A

[State -1,釣果大良・近]
type = ChangeState
value = 1040
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random <= 200
trigger1 = p2bodydist X = (1,25)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = (stateno = 210) && (MoveContact = 1)

[State -1,無功用・人]
type = ChangeState
value = 1070
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random <= 30
trigger1 = p2bodydist X = (30,240)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger1 = statetype != A

[State -1,無功用・地]
type = ChangeState
value = 1075
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random <= 30
trigger1 = p2bodydist X = (30,240)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger1 = statetype != A

[State -1,無功用・天]
type = ChangeState
value = 1080
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random <= 30
trigger1 = p2bodydist X = (30,240)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger1 = statetype != A

[State -1,釣果大良・中 ]
type = ChangeState
value = 1050
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random <=200
trigger1 = p2bodydist X = (90,140)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger1 = statetype != A

[State -1,釣果大良・遠]
type = ChangeState
value = 1060
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random <=100
trigger1 = p2bodydist X = (150,210)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger1 = statetype != A

[State -1,亀舞・天 ]
type = ChangeState
value = 1000
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random <=200
trigger1 = p2bodydist X = (30,120)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger1 = statetype != A

[State -1,亀舞・地 ]
type = ChangeState
value = 1030
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random <=300
trigger1 = p2bodydist X = (30,70)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger1 = statetype != A

[State -1,亀舞・地２ ]
type = ChangeState
value = 1031
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random <=200
trigger1 = p2bodydist X = (30,100)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger1 = statetype != A

[State -1,大五郎・小 ]
type = ChangeState
value = 1005
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random <=200
trigger1 = p2bodydist X = (50,150)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger1 = statetype != A

[State -1,大五郎・大 ]
type = ChangeState
value = 1015
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random <=200
trigger1 = p2bodydist X = (100,220)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger1 = statetype != A

[State -1,福助]
type = ChangeState
value = 1025
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random <=200
trigger1 = p2bodydist X = (100,220)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger1 = statetype != A

[State -1, 立ち弱竿]
type = ChangeState
value = 200
triggerall = var(21) = 1
triggerall = roundstate = 2
triggerall = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist X = (0,20)

[State -1, 立ち弱竿+]
type = ChangeState
value = 201
triggerall = var(21) = 1
triggerall = roundstate = 2
triggerall = statetype = S
;trigger1 = random <= 200
trigger1 = p2bodydist X = (0,20)
trigger1 = ctrl
trigger1 = (stateno = 200) && (MoveContact = 1)

[State -1, 立ち強]
type = ChangeState
value = 210
triggerall = var(21) = 1
triggerall = roundstate = 2
triggerall = statetype = S
;trigger1 = random <= 200
trigger1 = p2bodydist X = (0,25)
trigger1 = ctrl
trigger2 = (stateno = 201) && (MoveContact = 1)

;===========================================================================
；玄武の咆哮
[State -1]
type = ChangeState
triggerall = power >= 1000
value = 3000
triggerall = command = "houkou"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 210)
trigger5 = movecontact && (stateno = 220)
trigger6 = movecontact && (stateno = 225)
trigger7 = movecontact && (stateno = 235)
trigger8 = movecontact && (stateno = 217)
trigger9 = movecontact && (stateno = 240)
trigger10 = movecontact && (stateno = 245)
trigger11 = movecontact && (stateno = 410)

;---------------------------------------------------------------------------
；玄武の怒り
[State -1]
type = ChangeState
triggerall = power >= 3000
value = 3100
triggerall = command = "ikari"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 210)
trigger5 = movecontact && (stateno = 220)
trigger6 = movecontact && (stateno = 235)
trigger7 = movecontact && (stateno = 217)
trigger8 = movecontact && (stateno = 240)
trigger9 = movecontact && (stateno = 245)
trigger10 = movecontact && (stateno = 410)

;---------------------------------------------------------------------------
;ダッシュ
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
;前転起き上がり
[State -1]
type = ChangeState
triggerall = command = "holdfwd"
trigger1 = (stateno = 5110) && (Time >= 25)
value = 5130

;---------------------------------------------------------------------------
;後転起き上がり
[State -1]
type = ChangeState
triggerall = command = "holdback"
trigger1 = (stateno = 5110) && (Time >= 25)
value = 5135

;---------------------------------------------------------------------------
;投げ
[State -1, nage]
type = ChangeState
value = 800
triggerall = command = "nage"
triggerall = statetype = S
triggerall = ctrl
;triggerall = stateno != 100
trigger1 = command = "nage"
trigger1 = (p2statetype = S) || (p2statetype = C)

;---------------------------------------------------------------------------
;弾き 立ち
[State -1]
type = ChangeState
value = 8000
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;弾き しゃがみ
[State -1]
type = ChangeState
value = 8100
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;弾き 空中
[State -1]
type = ChangeState
value = 8200
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;無功用・人
[State -1, hono-]
type = ChangeState
value = 1070
triggerall = command = "mukou1"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 210)
trigger5 = movecontact && (stateno = 217)
trigger6 = movecontact && (stateno = 220)
trigger7 = movecontact && (stateno = 235)
trigger8 = movecontact && (stateno = 245)
trigger9 = movecontact && (stateno = 400)
trigger10 = movecontact && (stateno = 1000)

;---------------------------------------------------------------------------
;無功用・地
[State -1, hono-]
type = ChangeState
value = 1075
triggerall = command = "mukou2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 210)
trigger5 = movecontact && (stateno = 217)
trigger6 = movecontact && (stateno = 220)
trigger7 = movecontact && (stateno = 235)
trigger8 = movecontact && (stateno = 245)
trigger9 = movecontact && (stateno = 400)
trigger10 = movecontact && (stateno = 1000)

;---------------------------------------------------------------------------
;無功用・天
[State -1, hono-]
type = ChangeState
value = 1080
triggerall = command = "mukou3"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 210)
trigger5 = movecontact && (stateno = 217)
trigger6 = movecontact && (stateno = 220)
trigger7 = movecontact && (stateno = 235)
trigger8 = movecontact && (stateno = 245)
trigger9 = movecontact && (stateno = 400)
trigger10 = movecontact && (stateno = 1000)

;---------------------------------------------------------------------------
;釣果大良・近
[State -1, hono-]
type = ChangeState
value = 1040
triggerall = command = "tairyo1"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 210)
trigger5 = movecontact && (stateno = 217)
trigger6 = movecontact && (stateno = 220)
trigger7 = movecontact && (stateno = 235)
trigger8 = movecontact && (stateno = 245)
trigger9 = movecontact && (stateno = 1000)
trigger10 = movecontact && (stateno = 400)

;---------------------------------------------------------------------------
;釣果大良・中
[State -1, hono-]
type = ChangeState
value = 1050
triggerall = command = "tairyo2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 210)
trigger5 = movecontact && (stateno = 217)
trigger6 = movecontact && (stateno = 220)
trigger7 = movecontact && (stateno = 235)
trigger8 = movecontact && (stateno = 245)
trigger9 = movecontact && (stateno = 1000)
trigger10 = movecontact && (stateno = 400)

;---------------------------------------------------------------------------
;釣果大良・遠
[State -1, hono-]
type = ChangeState
value = 1060
triggerall = command = "tairyo3"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 210)
trigger5 = movecontact && (stateno = 217)
trigger6 = movecontact && (stateno = 220)
trigger7 = movecontact && (stateno = 235)
trigger8 = movecontact && (stateno = 245)
trigger9 = movecontact && (stateno = 1000)
trigger10 = movecontact && (stateno = 400)

;---------------------------------------------------------------------------
;亀舞天
[State -1, hono-]
type = ChangeState
value = 1000
triggerall = command = "kamebu"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 210)
trigger5 = movecontact && (stateno = 217)
trigger6 = movecontact && (stateno = 220)
trigger7 = movecontact && (stateno = 235)
trigger8 = movecontact && (stateno = 245)
trigger9 = movecontact && (stateno = 1000)
trigger10 = movecontact && (stateno = 400)

;---------------------------------------------------------------------------
;亀舞地1
[State -1, hono-]
type = ChangeState
value = 1030
triggerall = command = "kamebu1"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 210)
trigger5 = movecontact && (stateno = 217)
trigger6 = movecontact && (stateno = 220)
trigger7 = movecontact && (stateno = 235)
trigger8 = movecontact && (stateno = 245)
trigger9 = movecontact && (stateno = 1000)
trigger10 = movecontact && (stateno = 400)

;---------------------------------------------------------------------------
;亀舞地2
[State -1, hono-]
type = ChangeState
value = 1031
triggerall = command = "kamebu2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 210)
trigger5 = movecontact && (stateno = 217)
trigger6 = movecontact && (stateno = 220)
trigger7 = movecontact && (stateno = 235)
trigger8 = movecontact && (stateno = 245)
trigger9 = movecontact && (stateno = 1000)
trigger10= movecontact && (stateno = 400)

;---------------------------------------------------------------------------
;大五郎＿小
[State -1, hono-]
type = ChangeState
value = 1005
triggerall = command = "kame"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 210)
trigger5 = movecontact && (stateno = 217)
trigger6 = movecontact && (stateno = 220)
trigger7 = movecontact && (stateno = 400)

;---------------------------------------------------------------------------
;大五郎＿大
[State -1, hono-]
type = ChangeState
value = 1015
triggerall = command = "kame2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 210)
trigger5 = movecontact && (stateno = 217)
trigger6 = movecontact && (stateno = 220)
trigger7 = movecontact && (stateno = 400)

;---------------------------------------------------------------------------
;福助
[State -1, hono-]
type = ChangeState
value = 1025
triggerall = command = "kame3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 210)
trigger5 = movecontact && (stateno = 217)
trigger6 = movecontact && (stateno = 220)
trigger7 = movecontact && (stateno = 400)

;---------------------------------------------------------------------------
;弾き 立ち
[State -1]
type = ChangeState
value = 8000
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;弾き しゃがみ
[State -1]
type = ChangeState
value = 8100
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl

;===========================================================================
;ダッシュ籠
[State -1,dasshu_kiri]
type = ChangeState
value = 217
trigger1 = (command = "y")
trigger1 = command = "holdfwd"
trigger1 = (stateno = 100) && (Time >= 15)

;---------------------------------------------------------------------------
;大振り
[State -1]
type = ChangeState
value = 260
triggerall = command = "ooburi"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 210)
trigger5 = movecontact && (stateno = 217)
trigger6 = movecontact && (stateno = 220)
trigger7 = movecontact && (stateno = 235)
trigger8 = movecontact && (stateno = 245)
trigger9 = movecontact && (stateno = 1000)

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 205)

;---------------------------------------------------------------------------
;立ち弱パンチ+
[State -1]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)

;---------------------------------------------------------------------------
;手でパンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "4x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)

;---------------------------------------------------------------------------
;立ち→＋強パンチ
[State -1]
type = ChangeState
value = 215
triggerall = command = "6y"
triggerall = command != "holddown"
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 205)
trigger5 = movecontact && (stateno = 210)
trigger6 = movecontact && (stateno = 217)
trigger7 = movecontact && (stateno = 220)

;---------------------------------------------------------------------------
 立ち強パンチ
[State -1, Stand Strong Panch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 205)
trigger5 = (stateno = 100) && (Time >= 15)
trigger6 = movecontact && (stateno = 217)

;---------------------------------------------------------------------------
;立ちキック
[State -1, Standing Strong Kick]
type = ChangeState
value = 225
triggerall = command = "6z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 205)
trigger4 = movecontact && (stateno = 210)
trigger5 = movecontact && (stateno = 217)
trigger6 = movecontact && (stateno = 220)
trigger7 = movecontact && (stateno = 1000)

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger4 = movecontact && (stateno = 1000)

;---------------------------------------------------------------------------
;追い討ち 
[State -1,oiuchi]
type = ChangeState
value = 640
triggerall = command = "y"
triggerall = (command = "holdfwd") && (command = "holddown")
triggerall = statetype != A
trigger1 = (p2stateno = 5110) || (p2stateno = 5101)
trigger1 = ctrl = 1

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
trigger2 = movecontact && (stateno = 200)
trigger3 = (stateno = 200) || (stateno = 400)
trigger3 = (time > 20) || (movecontact && time > 13)

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "3z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger3 = movecontact && (stateno = 200)
trigger4 = movecontact && (stateno = 201)
trigger5 = movecontact && (stateno = 205)
trigger6 = movecontact && (stateno = 210)
trigger7 = movecontact && (stateno = 217)
trigger8 = movecontact && (stateno = 410)

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 235)

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl


