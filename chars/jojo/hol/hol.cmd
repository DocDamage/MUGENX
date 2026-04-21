;=========================================
;コマンド関連のファイル
;=========================================

;=========================================
;コマンド一覧
;=========================================
[Command]
name = "konbi"
command = ~D,DB,B,x+y

[Command]
name = "konbi"
command = ~D,DB,B,x+z

[Command]
name = "konbi"
command = ~D,DB,B,y+z

[Command]
name = "butimakero1"
command = ~D,DF,F,x+y

[Command]
name = "butimakero2"
command = ~D,DF,F,y+z

[Command]
name = "butimakero3"
command = ~D,DF,F,x+z

[Command]
name = "hajikida1"
command = ~D,DF,F,x

[Command]
name = "hajikida2"
command = ~D,DF,F,y

[Command]
name = "hajikida3"
command = ~D,DF,F,z

[Command]
name = "danna1"
command = ~F,D,DF,x

[Command]
name = "danna2"
command = ~F,D,DF,y

[Command]
name = "danna3"
command = ~F,D,DF,z

[Command]
name = "hangd1"
command = ~D,DB,B,x

[Command]
name = "hangd2"
command = ~D,DB,B,y

[Command]
name = "hangd3"
command = ~D,DB,B,z

[Command]
name = "kawasi"
command = x+y+z

[Command]
name = "nage1"
command = /$F,z

[Command]
name = "nage2"
command = /$B,z

[Command]
name = "BSA"
command = /$B,x

[Command]
name = "BMA"
command = /$B,y

[Command]
name = "BHA"
command = /$B,z

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;二度押し
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B,B
time = 10

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;全方向
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[Command]
name = "bh"
command = /B
time = 10

[Command]
name = "dbh"
command = /DB
time = 10

[Command]
name = "dfh"
command = /DF
time = 10

[Command]
name = "dh"
command = /D
time = 10

[Command]
name = "fu"
command = UF
time = 10

;[Command]
;name = "fd"
;command = /DF
;time = 10

[Command]
name = "fd"
command = DF
time = 10

;[Command]
;name = "bd"
;command = /DB
;time = 10

[Command]
name = "bd"
command = DB
time = 10

;[Command]
;name = "bu"
;command = /UB
;time = 10

[Command]
name = "bu"
command = UB
time = 10

[Command]
name = "u"
command = U
time = 10

[Command]
name = "f"
command = F
time = 10

[Command]
name = "d"
command = D
time = 10

[Command]
name = "b"
command = B
time = 10

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;単発（必須）
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[Command]
name = "a"
command = a
time = 1

[Command]
name = "bb"
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
name = "s"
command = s
time = 1

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;同時押し
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[Command]
name = "recovery"
command = x+y
time = 1

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;押しっぱなし
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

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


;=============================================
;コマンド入力後の処理
;=============================================

[Statedef -1]

;=============================================
;超必殺技
;=============================================

;最強のコンビ
[State -1]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = command = "konbi"
trigger1 = statetype = S
trigger1 = ctrl = 1

;ぶちまけろ！！（上段）
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "butimakero1"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 201
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 211
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 221
trigger7 = movecontact
trigger7 = stateno = 220
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 410
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 905

;ぶちまけろ！！（下段）
[State -1]
type = ChangeState
value = 3001
triggerall = power >= 1000
triggerall = command = "butimakero2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 201
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 211
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 221
trigger7 = movecontact
trigger7 = stateno = 220
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 410
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 905

[State -1]
type = ChangeState
value = 3001
triggerall = power >= 1000
triggerall = command = "butimakero3"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 201
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 211
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 221
trigger7 = movecontact
trigger7 = stateno = 220
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 410
trigger10 = movecontact
trigger10 = stateno = 420
trigger11 = movecontact
trigger11 = stateno = 905

;ぶちまけろ（空中）
[State -1]
type = ChangeState
value = 3010
triggerall = power >= 1000
triggerall = command = "butimakero1"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger3 = stateno = 610

[State -1]
type = ChangeState
value = 3010
triggerall = power >= 1000
triggerall = command = "butimakero2"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger3 = stateno = 610

[State -1]
type = ChangeState
value = 3010
triggerall = power >= 1000
triggerall = command = "butimakero3"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger3 = stateno = 610


;==============================================
;必殺技
;==============================================
[State -1]
type = ChangeState
value = 1200
triggerall = command = "hangd1"
triggerall = NumHelper(12000) != 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 201
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 211
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 221
trigger7 = movecontact
trigger7 = stateno = 220
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 410
trigger10 = movecontact
trigger10 = stateno = 420

[State -1]
type = ChangeState
value = 1201
triggerall = NumHelper(12000) != 1
triggerall = command = "hangd2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 201
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 211
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 221
trigger7 = movecontact
trigger7 = stateno = 220
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 410
trigger10 = movecontact
trigger10 = stateno = 420

[State -1]
type = ChangeState
value = 1202
triggerall = NumHelper(12000) != 1
triggerall = command = "hangd3"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 201
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 211
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 221
trigger7 = movecontact
trigger7 = stateno = 220
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 410
trigger10 = movecontact
trigger10 = stateno = 420

[State -1]
type = ChangeState
value = 1103
triggerall = NumHelper(11000) != 1
triggerall = command = "danna1"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger3 = stateno = 610

[State -1]
type = ChangeState
value = 1103
triggerall = NumHelper(11000) != 1
triggerall = command = "danna2"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger3 = stateno = 610

[State -1]
type = ChangeState
value = 1103
triggerall = NumHelper(11000) != 1
triggerall = command = "danna3"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger3 = stateno = 610

;だんな！！（上段）
[State -1]
type = ChangeState
value = 1100
triggerall = NumHelper(11000) != 1
triggerall = command = "danna1"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 201
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 211
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 221
trigger7 = movecontact
trigger7 = stateno = 220
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 410
trigger10 = movecontact
trigger10 = stateno = 420

[State -1]
type = ChangeState
value = 1101
triggerall = NumHelper(11000) != 1
triggerall = command = "danna2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 201
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 211
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 221
trigger7 = movecontact
trigger7 = stateno = 220
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 410
trigger10 = movecontact
trigger10 = stateno = 420

[State -1]
type = ChangeState
value = 1102
triggerall = NumHelper(11000) != 1
triggerall = command = "danna3"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 201
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 211
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 221
trigger7 = movecontact
trigger7 = stateno = 220
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 410
trigger10 = movecontact
trigger10 = stateno = 420

;はじきだっ！！（上段）
[State -1]
type = ChangeState
value = 1000
triggerall = command = "hajikida1"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 201
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 211
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 221
trigger7 = movecontact
trigger7 = stateno = 220
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 410
trigger10 = movecontact
trigger10 = stateno = 420


[State -1]
type = ChangeState
value = 1000
triggerall = command = "hajikida2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 201
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 211
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 221
trigger7 = movecontact
trigger7 = stateno = 220
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 410
trigger10 = movecontact
trigger10 = stateno = 420


;はじきだっ！！（下段）
[State -1]
type = ChangeState
value = 1001
triggerall = command = "hajikida3"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 201
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 211
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 221
trigger7 = movecontact
trigger7 = stateno = 220
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 410
trigger10 = movecontact
trigger10 = stateno = 420

;============================================
;皇帝
;============================================

[State -1]
type = ChangeState
value = 2000
triggerall = command = "a"
triggerall = ctrl = 1
trigger1 = statetype = S
trigger2 = statetype = C

[State -1]
type = ChangeState
value = 2050
triggerall = command = "a"
triggerall = ctrl = 1
trigger1 = statetype = A

;============================================
;通常攻撃
;============================================

[State -1]
type = null;ChangeState
value = 2042
trigger1 = command = "bb"
trigger1 = statetype = S
trigger1 = ctrl = 1

;挑発
[State -1]
type = ChangeState
value = 310
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

;かわし
[State -1]
type = ChangeState
value = 300
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "kawasi"
trigger2 = command = "c"

;投げ
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = P2bodydist X <= 20
triggerall = command = "nage1"
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = p2statetype = C
trigger2 = p2movetype != H

[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = P2bodydist X <= 20
triggerall = command = "nage2"
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = p2statetype = C
trigger2 = p2movetype != H

;立ち後ろ＋弱攻撃
[State -1]
type = ChangeState
value = 201
triggerall = command = "BSA"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 400
trigger3 = movecontact
trigger3 = stateno = 410

;立ち弱攻撃
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 201
trigger2 = time >= 30
trigger3 = movecontact
trigger3 = stateno = 200
trigger3 = time >= 7

;立ち後ろ＋中攻撃
[State -1]
type = ChangeState
value = 211
triggerall = command = "BMA"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 201
trigger2 = time >= 30
trigger3 = movecontact
trigger3 = stateno = 200
trigger3 = time >= 7
trigger4 = movecontact
trigger4 = stateno = 400
trigger5 = movecontact
trigger5 = stateno = 410

;立ち中攻撃
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 201
trigger2 = time >= 30
trigger3 = movecontact
trigger3 = stateno = 200
trigger3 = time >= 7
trigger4 = movecontact
trigger4 = stateno = 400
trigger5 = movecontact
trigger5 = stateno = 410

;立ち後ろ＋強攻撃
[State -1]
type = ChangeState
value = 221
triggerall = command = "BHA"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 201
trigger2 = time >= 30
trigger3 = movecontact
trigger3 = stateno = 200
trigger3 = time >= 7
trigger4 = movecontact
trigger4 = stateno = 400
trigger5 = movecontact
trigger5 = stateno = 410

;立ち強攻撃
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 201
trigger2 = time >= 30
trigger3 = movecontact
trigger3 = stateno = 200
trigger3 = time >= 7
trigger4 = movecontact
trigger4 = stateno = 400
trigger5 = movecontact
trigger5 = stateno = 410


;しゃがみ弱攻撃
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl = 1

;しゃがみ中攻撃
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 400

;しゃがみ強攻撃
[State -1]
type = ChangeState
value = 420
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 400

;ジャンプ弱中攻撃
[State -1]
type = ChangeState
value = 600
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "x"
trigger2 = command = "y"

;ジャンプ強攻撃
[State -1]
type = ChangeState
value = 610
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "z"

;----------
;リカバリー
;----------
[State -1]
type = changestate
value = 5210
triggerall = command = "recovery"
trigger1 = vel y >= 0 
trigger1 = stateno = 5040

;前ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;後ろダッシュ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

