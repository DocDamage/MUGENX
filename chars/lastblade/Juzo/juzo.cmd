;-| 超必殺技 |--------------------------------------------------------
;ここには超必殺技を記述してください、同じ名前を「name =」欄に書けますが
;コマンドは絶対に違ったものにしてください。
;カンフーマンは弱パンチと強パンチで技が出せるように同じ名前のコマンドで
;内容が弱と強になっています。
;「time=20」と書くことで「コマンドを20フレーム以内に入力」と設定できます。

;-| CPU |------------------------------------------------------
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

[Command]
name = "CPU11"
command = D, D, D, D, D, D
time = 1

[Command]
name = "CPU12"
command = D, D, D, D, D, D
time = 1

[Command]
name = "CPU13"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU14"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU15"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU16"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU17"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU18"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU19"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU20"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU21"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU21"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU22"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU23"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU24"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU25"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU26"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU27"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU28"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU29"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU30"
command = D, D, D, D, D, D, D
time = 1

;-| 超必殺技 |------------------------------------------------------
[Command]
name = "tyouyure"
command = ~D, F, D, F, x+y
time = 25

[Command]
name = "geki"
command = ~D, F, D, F, y
time = 25

[Command]
name = "ikude"
command = ~F, DF, D, DB, F, DF, D, DB, B, y
time = 50

;ショートカット

[Command]
name = "tyouyure"
command = /F, c
time = 1

[Command]
name = "geki"
command = /B , c
time = 1

[Command]
name = "ikude"
command = b+c 
time = 1

;-| 必殺技 |------------------------------------------------------

;弾き
[Command]
name = "a"
command = a
time = 1

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "zutuki"
command =  ~D, F, z

;大揺れじゃい（弱）
[Command]
name = "Ooyure1"
command =  ~F,D,DF, x
time = 14

;大揺れじゃい（強）
[Command]
name = "Ooyure2"
command =  ~F,D,DF, y
time = 14

[Command]
name = "DBX"
command = ~D, B, x
time = 10

[Command]
name = "DBY"
command = ~D, B, y
time = 10

[Command]
name = "DBZ"
command = ~D, B, z
time = 10

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

[Command]
name = "ooburi"
command = y+z
time = 1

[Command]
name = "uenage"
command =  x+z
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
name = "hold_a"
command = /a
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
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
trigger21 = command = "CPU21"
trigger22 = command = "CPU22"
trigger23 = command = "CPU23"
trigger24 = command = "CPU24"
trigger25 = command = "CPU25"
trigger26 = command = "CPU26"
trigger27 = command = "CPU27"
trigger28 = command = "CPU28"
trigger29 = command = "CPU29"
trigger30 = command = "CPU30"
v = 21
value = 1
;---------------------------------------------------------------------------
;AI Commands

[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random < 100
trigger1 = p2bodydist X < 10 ;Near P2
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger1 = statetype != A

[State -1, ↑Throw]
type = ChangeState
value = 805
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random < 300
trigger1 = p2bodydist X < 13 ; ;Near P2
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger1 = statetype != A

[State -1, ↓Throw]
type = ChangeState
value = 1030
triggerall = var(21) = 1
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = random < 500
trigger1 = p2bodydist X = (1,30)
trigger1 = p2bodydist Y = (-300,-30)
trigger1 = p2statetype = A
;trigger1 = p2movetype != H

[State -1, ハッパ]
type = ChangeState
value = 1000
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random < 200
trigger1 = p2bodydist X = (30,110)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger2 = stateno = 1
trigger1 = statetype != A

[State -1, ハッパ大]
type = ChangeState
value = 1001
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random < 100
trigger1 = p2bodydist X = (60,270)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger2 = stateno = 1
trigger1 = statetype != A

[State -1, ユラシ]
type = ChangeState
value = 1008
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random < 150
trigger1 = p2bodydist X = (40,130) 
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger2 = stateno = 1
trigger1 = statetype != A

[State -1, ユラシ]
type = ChangeState
value = 1025
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random < 100
trigger1 = p2bodydist X = (70,250)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger2 = stateno = 1
trigger1 = statetype != A

[State -1,連撃弱 ]
type = ChangeState
value = 1015
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random < 200
trigger1 = p2bodydist X = (50,150)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger2 = stateno = 1
trigger1 = statetype != A
trigger1 = movecontact
trigger2 = stateno = 240
trigger1 = movecontact
trigger2 = stateno = 260

[State -1, 連撃強]
type = ChangeState
value = 1020
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random < 200
trigger1 = p2bodydist  X = (60,240)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger2 = stateno = 1
trigger1 = statetype != A
trigger2 = movecontact
trigger2 = stateno = 245

[State -1, 激烈]
type = ChangeState
value = 3004
triggerall = var(21) = 1
triggerall = roundstate = 2
triggerall = power >= 2000
trigger1 = random < 100
trigger1 = p2bodydist X = (10,25) ;Near P2
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger1 = statetype != A

[State -1, 刮目・超激慟]
type = ChangeState
value = 3010
triggerall = var(21) = 1
triggerall = roundstate = 2
triggerall = power >= 3000
trigger1 = random < 300
trigger1 = p2bodydist X = (1,20) ;Near P2
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger1 = statetype != A

[State -1, 大振り]
type = ChangeState
value = 260
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random < 200
trigger1 = p2bodydist  X < 40
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger2 = stateno = 1
trigger1 = statetype != A
trigger1 = movecontact
trigger2 = stateno = 230
trigger1 = movecontact
trigger2 = stateno = 235

[State -1,対空大振り]
type = ChangeState
value = 260
triggerall = var(21) = 1
triggerall = statetype = S
triggerall = ctrl = 1
;trigger1 = random < 500
trigger1 = p2bodydist X = (1,30)
trigger1 = p2bodydist Y = (-200,-30)
trigger1 = p2statetype = A
;trigger1 = p2movetype != H

[State -1, 蹴り飛ばし]
type = ChangeState
value = 240
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random < 200
trigger1 = p2bodydist  X < 50
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger2 = stateno = 1
trigger1 = statetype != A
trigger1 = movecontact
trigger2 = stateno = 230
trigger1 = movecontact
trigger2 = stateno = 235
trigger1 = movecontact
trigger2 = stateno = 1000
trigger1 = movecontact
trigger2 = stateno = 1001

[State -1, 金弱パンチ]
type = ChangeState
value = 230
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random < 150
trigger1 = p2bodydist  X = (1,10)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger2 = stateno = 1
trigger1 = statetype != A
trigger1 = movecontact
trigger2 = stateno = 235

[State -1, パンチ]
type = ChangeState
value = 235
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random < 150
trigger1 = p2bodydist  X = (1,10)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger2 = stateno = 1
trigger1 = statetype != A
trigger1 = movecontact
trigger2 = stateno = 230

[State -1, 前パンチ]
type = ChangeState
value = 245
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random < 130
trigger1 = p2bodydist  X = (40,150)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger2 = stateno = 1
trigger1 = statetype != A

[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random < 150
trigger1 = p2bodydist  X = (1,10)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger2 = stateno = 11
trigger1 = statetype != A

[State -1, しゃがみ弱蹴り]
type = ChangeState
value = 430
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random < 150
trigger1 = p2bodydist  X = (1,10)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger2 = stateno = 11
trigger1 = statetype != A

[State -1, しゃがみ強蹴り]
type = ChangeState
value = 440
triggerall = var(21) = 1
triggerall = roundstate = 2
trigger1 = random < 180
trigger1 = p2bodydist  X = (30,70)
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl = 1
trigger2 = stateno = 11
trigger1 = statetype != A

;===========================================================================
；超大揺れ
[State -1]
type = ChangeState
triggerall = power >= 1000
value = 3000
triggerall = command = "tyouyure"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 210)
trigger4 = movecontact && (stateno = 230)
trigger5 = movecontact && (stateno = 235)

;---------------------------------------------------------------------------
；激烈
[State -1]
type = ChangeState
triggerall = power >= 2000
value = 3004
triggerall = command = "geki"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 210)
trigger4 = movecontact && (stateno = 230)
trigger5 = movecontact && (stateno = 235)

;---------------------------------------------------------------------------
；刮目・超激慟
[State -1]
type = ChangeState
triggerall = power >= 3000
value = 3010
triggerall = command = "ikude"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 235)

;---------------------------------------------------------------------------
;大揺れじゃい（弱）
[State -1]
type = ChangeState
value = 1005
triggerall = command = "Ooyure1"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;大揺れじゃい（強）
[State -1]
type = ChangeState
value = 1008
triggerall = command = "Ooyure2"
trigger1 = statetype = S
trigger1 = ctrl

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
;炎金棒小
[State -1, hono-]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 210)
trigger4 = movecontact && (stateno = 230)
trigger5 = movecontact && (stateno = 235)
trigger6 = movecontact && (stateno = 240)
trigger7 = movecontact && (stateno = 245)
trigger8 = movecontact && (stateno = 260)
trigger10 = movecontact && (stateno = 1001)

;---------------------------------------------------------------------------
;炎金棒大
[State -1, hono-]
type = ChangeState
value = 1001
triggerall = command = "QCF_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 210)
trigger4 = movecontact && (stateno = 230)
trigger5 = movecontact && (stateno = 235)
trigger6 = movecontact && (stateno = 240)
trigger7 = movecontact && (stateno = 245)
trigger8 = movecontact && (stateno = 260)

;---------------------------------------------------------------------------
;超頭突き
[State -1, hono-]
type = ChangeState
value = 1027
triggerall = command = "zutuki"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;連撃弱
[State -1, hono-]
type = ChangeState
value = 1015
triggerall = command = "DBX"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 210)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 245)
trigger6 = movecontact && (stateno = 1000)
trigger7 = movecontact && (stateno = 1005)
trigger8 = movecontact && (stateno = 1008)

;---------------------------------------------------------------------------
;連撃強
[State -1, hono-]
type = ChangeState
value = 1020
triggerall = command = "DBY"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 210)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 245)
trigger6 = movecontact && (stateno = 1000)
trigger7 = movecontact && (stateno = 1005)
trigger8 = movecontact && (stateno = 1008)

;---------------------------------------------------------------------------
;くしゃみ
[State -1, hono-]
type = ChangeState
value = 1025
triggerall = command = "DBZ"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
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

;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
;↑投げ
[State -1, tondeke-]
type = ChangeState
value = 805
triggerall = command = "uenage"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "uenage"
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)

;---------------------------------------------------------------------------
;↓投げ
[State -1, tondeke-]
type = ChangeState
value = 1030
triggerall = command = "uenage"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "uenage"
trigger1 = (p2statetype = A)

;---------------------------------------------------------------------------
;大振り
[State -1]
type = ChangeState
value = 260
triggerall = command = "ooburi"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 210)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 245)
trigger6 = movecontact && (stateno = 1000)

;---------------------------------------------------------------------------
;立ち弱パンチ

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 210)
trigger3 = movecontact && (stateno = 235)
trigger4 = movecontact && (stateno = 245)
trigger5 = movecontact && (stateno = 1000)

;---------------------------------------------------------------------------
;手でパンチ
[State -1]
type = ChangeState
value = 235
triggerall = command = "4x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 210)
trigger4 = movecontact && (stateno = 245)
trigger5 = movecontact && (stateno = 1000)

;---------------------------------------------------------------------------
;立ち→＋強パンチ
[State -1]
type = ChangeState
value = 245
triggerall = command = "6y"
triggerall = command != "holddown"
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 210)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 1000)

;---------------------------------------------------------------------------
 立ち強斬り
[State -1, Stand Strong Panch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 235)
trigger4 = movecontact && (stateno = 245)
trigger5 = movecontact && (stateno = 1000)

;---------------------------------------------------------------------------
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "6z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = movecontact && (stateno = 1000)

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
trigger4 = movecontact && (stateno = 1000)

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
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

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




