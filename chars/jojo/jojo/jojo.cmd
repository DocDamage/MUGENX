;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;単発
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

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
name = "s"
command = s
time = 1

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;二度押し
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[Command]
name = "FF"       ;変更不可
command = F, F
time = 10

[Command]
name = "BB" 
command = B, B
time = 10

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;同時押し
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = c
time = 1

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;押しっぱなし
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[Command]
name = "holdfwd"  ;変更不可
command = /$F
time = 1

[Command]
name = "holdback" ;変更不可
command = /$B
time = 1

[Command]
name = "holdup"   ;変更不可
command = /$U
time = 1

[Command]
name = "holddown" ;変更不可
command = /$D
time = 1

[Command]
name = "U"
command = $U
time = 1

[Command]
name = "holdx"
command = /x
time = 2

[Command]
name = "holdy"
command = /y
time = 2

[Command]
name = "holdz"
command = /z
time = 2

[Command]
name = "holda"
command = /a
time = 2

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;特殊コマンド
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[Command]
name = "FWy" 
command = /F,y
time = 1

[Command]
name = "FWz" 
command = /F,z
time = 1

[Command]
name = "hf"
command = /F
time = 1

[Command]
name = "hb"
command = /B
time = 1

[Command]
name = "attkstand"
command = ~D,DF,F,a

[Command]
name = "xx"
command = x,x

[Command]
name = "yy"
command = y,y

[Command]
name = "zz"
command = z,z

;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
;必殺技
;＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

[Command]
name = "oraora1"
command = ~D,DF,F,x

[Command]
name = "oraora2"
command = ~D,DF,F,y

[Command]
name = "oraora3"
command = ~D,DF,F,z

[Command]
name = "mahhaora1"
command = ~D,DB,B,x

[Command]
name = "mahhaora2"
command = ~D,DB,B,y

[Command]
name = "mahhaora3"
command = ~D,DB,B,z

[Command]
name = "starf"
command = ~F,D,DF,x

[Command]
name = "starf"
command = ~F,D,DF,y

[Command]
name = "starf"
command = ~F,D,DF,z

[Command]
name = "kawasi"
command = x+y+z

;=================================
;行動
;=================================

[Statedef -1]

;--------------------
;オラオラ弱（通常時）
;--------------------
[State -1]
type = changestate
value = 1000
triggerall = var(31) = 0
triggerall = command = "oraora1"
triggerall = numhelper(10000) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 420
trigger9 = statetype != A
trigger9 = hitdefattr = SC, NA, SA
trigger9 = movecontact = 1

;--------------------
;オラオラ中（通常時）
;--------------------
[State -1]
type = changestate
value = 1010
triggerall = var(31) = 0
triggerall = command = "oraora2"
triggerall = numhelper(10000) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 420
trigger9 = statetype != A
trigger9 = hitdefattr = SC, NA, SA
trigger9 = movecontact = 1

;--------------------
;オラオラ強（通常時）
;--------------------
[State -1]
type = changestate
value = 1020
triggerall = var(31) = 0
triggerall = command = "oraora3"
triggerall = numhelper(10000) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 420
trigger9 = statetype != A
trigger9 = hitdefattr = SC, NA, SA
trigger9 = movecontact = 1

;----------------------
;マッハオラ弱（通常時）
;----------------------
[State -1]
type = changestate
value = 1100
triggerall = var(31) = 0
triggerall = command = "mahhaora1"
triggerall = numhelper(10000) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 420
trigger9 = statetype != A
trigger9 = hitdefattr = SC, NA, SA
trigger9 = movecontact = 1
trigger10 = stateno = 201

;----------------------
;マッハオラ中（通常時）
;----------------------
[State -1]
type = changestate
value = 1110
triggerall = var(31) = 0
triggerall = command = "mahhaora2"
triggerall = numhelper(10000) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 420
trigger9 = statetype != A
trigger9 = hitdefattr = SC, NA, SA
trigger9 = movecontact = 1

;----------------------
;マッハオラ強（通常時）
;----------------------
[State -1]
type = changestate
value = 1120
triggerall = var(31) = 0
triggerall = command = "mahhaora3"
triggerall = numhelper(10000) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 400
trigger7 = stateno = 410
trigger8 = stateno = 420
trigger9 = statetype != A
trigger9 = hitdefattr = SC, NA, SA
trigger9 = movecontact = 1

;------
;かわし
;------
[State -1]
type = ChangeState
value = 300
triggerall = var(31) = 0
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "kawasi"
trigger2 = command = "c"

;----------
;前ダッシュ
;----------
[State -1]
type = changestate
value = 100
triggerall = command = "FF"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno != 100
trigger1 = stateno != 101
trigger2 = stateno = 20000
trigger3 = stateno = 20020

;--------------------------
;後ろダッシュ（スタンド時)
;--------------------------
[State -1]
type = ChangeState
value = 20105
triggerall= var(31) = 1
triggerall = command = "BB"
trigger1 = statetype ! = A
trigger1 = stateno != 105
trigger1 = stateno != 106
trigger1 = stateno = 20021
trigger2 = stateno = 20000

;------------
;後ろダッシュ
;------------
[State -1]
type = changestate
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;----
;挑発
;----
[State -1]
type = changestate
value = 350
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

;------------------
;スタンドモード解除
;------------------
[State -1]
type = changestate
value = 20800
triggerall = var(31) = 1
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 20000
trigger3 = stateno = 20020
trigger4 = anim = 20021

;------------------
;スタンドモード解除
;------------------
[State -1]
type = changestate
value = 20810
triggerall = var(31) = 1
trigger1 = command = "a"
trigger1 = statetype = C
trigger1 = ctrl = 1

;------------------
;スタンドモード解除
;------------------
[State -1]
type = changestate
value = 20820
triggerall = var(31) = 1
trigger1 = command = "a"
trigger1 = stateno !=820 
trigger1 = statetype = A
trigger1 = ctrl = 1

;------------------
;スタンドモード発動
;------------------
[State -1]
type = changestate
value = 830
triggerall = Win = 0
triggerall = numhelper(10000) = 0
triggerall = helper(30000),var(3) > 0
triggerall = var(31) = 0
triggerall = command = "attkstand"
triggerall = ctrl = 1
trigger1 = statetype = S
trigger2 = statetype = C

;------------------
;スタンドモード発動
;------------------
[State -1]
type = changestate
value = 800
triggerall = Win = 0
triggerall = numhelper(10000) = 0
triggerall = helper(30000),var(3) > 0
triggerall = var(31) = 0
trigger1 = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1

;------------------
;スタンドモード発動
;------------------
[State -1]
type = changestate
value = 810
triggerall = Win = 0
triggerall = numhelper(10000) = 0
triggerall = helper(30000),var(3) > 0
triggerall = var(31) = 0
trigger1 = command = "a"
trigger1 = statetype = C
trigger1 = ctrl = 1

;------------------
;スタンドモード発動
;------------------
[State -1]
type = changestate
value = 820
triggerall = Win = 0
triggerall = numhelper(10000) = 0
triggerall = helper(30000),var(3) > 0
triggerall = var(31) = 0
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = stateno !=20820 
trigger1 = ctrl = 1

;--------------------------
;弱攻撃ダッシュ時（通常時）
;--------------------------
[State -1]
type = changestate
value = 201
triggerall = var(31) = 0
triggerall = command = "x"
trigger1 = stateno = 100
trigger2 = stateno = 101
trigger3 = stateno = 105

;----------------
;弱攻撃（通常時）
;----------------
[State -1]
type = changestate
value = 200
triggerall = var(31) = 0
trigger1 = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1

;--------------------------
;中攻撃ダッシュ時（通常時）
;--------------------------
[State -1]
type = changestate
value = 211
triggerall = var(31) = 0
triggerall = command = "y"
trigger1 = stateno = 100
trigger2 = stateno = 101
trigger3 = stateno = 105

;-------------------
;前+中攻撃（通常時）
;-------------------
[State -1]
type = changestate
value = 220
triggerall = var(31) = 0
trigger1 = command = "FWy"
trigger1 = statetype = S
trigger1 = ctrl = 1

;----------------
;中攻撃（通常時）
;----------------
[State -1]
type = changestate
value = 210
triggerall = var(31) = 0
trigger1 = command = "y"
trigger1 = statetype = S
trigger1 = ctrl = 1

;----
;投げ
;----
[State -1]
type = changestate
value = 900
triggerall = p2statetype != A
triggerall = p2movetype != H
triggerall = numhelper(10000) = 0
triggerall = p2bodydist X <= 20
triggerall = command = "z"
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1

;----
;投げ
;----
[State -1]
type = changestate
value = 910
triggerall = p2statetype != A
triggerall = p2movetype != H
triggerall = numhelper(10000) = 0
triggerall = p2bodydist X <= 20
triggerall = command = "z"
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1

;--------------------------
;強攻撃ダッシュ時（通常時）
;--------------------------
[State -1]
type = changestate
value = 211
triggerall = var(31) = 0
triggerall = command = "z"
triggerall = numhelper(10000) = 1
trigger1 = stateno = 100
trigger2 = stateno = 101
trigger3 = stateno = 105

[State -1]
type = changestate
value = 231
triggerall = var(31) = 0
triggerall = command = "z"
trigger1 = stateno = 100
trigger2 = stateno = 101
trigger3 = stateno = 105

;-------------------
;前+強攻撃（通常時）
;-------------------
[State -1]
type = changestate
value = 240
triggerall = var(31) = 0
triggerall = numhelper(10000) = 0
trigger1 = command = "FWz"
trigger1 = statetype = S
trigger1 = ctrl = 1

;----------------
;強攻撃（通常時）
;----------------
[State -1]
type = changestate
value = 230
triggerall = var(31) = 0
trigger1 = numhelper(10000) = 0
trigger1 = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1

;------------------------
;強攻撃（スタンド発生時）
;------------------------
[State -1]
type = changestate
value = 210
triggerall = var(31) = 0
trigger1 = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1

;------------------------
;しゃがみ弱攻撃（通常時）
;------------------------
[State -1]
type = changestate
value = 400
triggerall = var(31) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 13
trigger3 = statetype = S
trigger3 = ctrl = 1

;------------------------
;しゃがみ中攻撃（通常時）
;------------------------
[State -1]
type = changestate
value = 410
triggerall = var(31) = 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = numhelper(10000) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 13

;--------------------------------
;しゃがみ中攻撃（スタンド発生時）
;--------------------------------
[State -1]
type = changestate
value = 400
triggerall = var(31) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 13
trigger3 = statetype = S
trigger3 = ctrl = 1

;------------------------
;しゃがみ強攻撃（通常時）
;------------------------
[State -1]
type = changestate
value = 420
triggerall = var(31) = 0
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = numhelper(10000) = 0
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 13
trigger3 = statetype = S
trigger3 = ctrl = 1

;--------------------------------
;しゃがみ強攻撃（スタンド発生時）
;--------------------------------
[State -1]
type = changestate
value = 400
triggerall = var(31) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 13
trigger3 = statetype = S
trigger3 = ctrl = 1

;----------
;リカバリー
;----------
[State -1]
type = changestate
value = 5210
triggerall = command = "recovery"
trigger1 = vel y >= 0 
trigger1 = stateno = 5040

;------------------------
;ジャンプ弱攻撃（通常時）
;------------------------
[State -1]
type = changestate
value = 600
triggerall = var(31) = 0
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;------------------------
;ジャンプ中攻撃（通常時）
;------------------------
[State -1]
type = changestate
value = 610
triggerall = var(31) = 0
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;------------------------
;ジャンプ強攻撃（通常時）
;------------------------
[State -1]
type = changestate
value = 620
triggerall = var(31) = 0
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1

;===============================
;スタンドモード時
;===============================

[State -1]
type = changestate
value = 21010
triggerall = var(31) = 1
triggerall = command = "oraora1" || command ="oraora2" || command ="oraora3"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno != 21011
trigger3 = stateno = 20600
trigger4 = stateno = 20610
trigger5 = stateno = 20620

[State -1]
type = changestate
value = 21200
triggerall = var(31) = 1
triggerall = command = "starf"
trigger1 = statetype = S
trigger1 = ctrl = 1


;----
;投げ
;----
[State -1]
type = changestate
value = 900
triggerall = p2statetype != A
triggerall = p2movetype != H
triggerall = numhelper(10000) = 0
triggerall = p2bodydist X <= 35
triggerall = command = "z"
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1

;----
;投げ
;----
[State -1]
type = changestate
value = 910
triggerall = p2statetype != A
triggerall = p2movetype != H
triggerall = numhelper(10000) = 0
triggerall = p2bodydist X <= 35
triggerall = command = "z"
trigger1 = command = "holdback"
trigger1 = anim = 20021

;--------------
;弱→弱→弱攻撃
;--------------
[State -1]
type = changestate
value = 20220
triggerall = var(31) = 1
triggerall = command = "x"
triggerall = stateno = 20201
trigger1 = time <= 14
trigger2 = movecontact = 1

;----------
;弱→弱攻撃
;----------
[State -1]
type = changestate
value = 20201
triggerall = var(31) = 1
triggerall = command = "x"
triggerall = stateno = 20200
trigger1 = time <= 14
trigger1 = time >= 5
trigger2 = movecontact = 1

;-------------------
;弱攻撃（スタンド時）
;-------------------
[State -1]
type = changestate
value = 20200
triggerall = var(31) = 1
triggerall = command = "x"
triggerall = statetype = S
trigger1 = ctrl = 1

;--------------
;弱→弱→中→中
;--------------
[State -1]
type = changestate
value = 20215
triggerall = var(31) = 1
triggerall = command = "y"
triggerall = statetype = S
trigger1 = time <= 14
trigger1 = time >= 5
trigger1 = stateno = 20212
trigger2 = stateno = 20212
trigger2 = movecontact = 1

;------
;弱→中
;------
[State -1]
type = changestate
value = 20211
triggerall = var(31) = 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = stateno = 20200
trigger1 = time <= 14
trigger2 = movecontact = 1

;----------
;弱→弱→中
;----------
[State -1]
type = changestate
value = 20212
triggerall = var(31) = 1
triggerall = command = "y"
triggerall = stateno = 20201
trigger1 = time <= 14
trigger2 = movecontact = 1

;------
;中→中
;------
[State -1]
type = changestate
value = 20213
triggerall = var(31) = 1
triggerall = command = "y"
triggerall = stateno = 20210
trigger1 = time <= 18
trigger2 = movecontact = 1

;------
;下弱→中
;------
[State -1]
type = changestate
value = 20214
triggerall = var(31) = 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = stateno = 20400
trigger1 = time >= 8
trigger2 = movecontact = 1

;------------------
;弱→中→弱→中→中
;------------------
[State -1]
type = changestate
value = 20215
triggerall = var(31) = 1
triggerall = command = "y"
triggerall = stateno = 20412
trigger1 = time <= 18
trigger2 = movecontact = 1

;------------------
;弱→中→弱→中→強
;------------------
[State -1]
type = changestate
value = 20225
triggerall = var(31) = 1
triggerall = command = "z"
triggerall = stateno = 20412
trigger1 = time <= 18
trigger2 = movecontact = 1

;---------
;前+中攻撃
;---------
[State -1]
type = changestate
value = 20215
triggerall = var(31) = 1
trigger1 = command = "FWy"
trigger1 = statetype = S
trigger1 = ctrl = 1

;------
;中攻撃
;------
[State -1]
type = changestate
value = 20210
triggerall = var(31) = 1
triggerall = command = "y"
triggerall = statetype = S
trigger1 = ctrl = 1

;----------------
;弱→中→下強
;弱→弱→中→下強
;----------------
[State -1]
type = changestate
value = 20225
triggerall = var(31) = 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = time <= 14
trigger1 = time >= 5
trigger1 = stateno = 20211
trigger2 = time <= 14
trigger2 = time >= 5
trigger2 = stateno = 20212
trigger3 = movecontact = 1
trigger3 = stateno = 20211
trigger4 = movecontact = 1
trigger4 = stateno = 20212

;--------------
;弱→中→強
;弱→弱→中→強
;--------------
[State -1]
type = changestate
value = 20220
triggerall = var(31) = 1
triggerall = command = "z"
triggerall = statetype = S
trigger1 = time <= 14
trigger1 = time >= 5
trigger1 = stateno = 20211
trigger2 = time <= 14
trigger2 = time >= 5
trigger2 = stateno = 20212
trigger3 = movecontact = 1
trigger3 = stateno = 20211
trigger4 = movecontact = 1
trigger4 = stateno = 20212
trigger5 = movecontact = 1
trigger5 = stateno = 20411
trigger5 = command != "holddown"
trigger6 = time >= 10
trigger6 = stateno = 20411
trigger6 = command != "holddown"
trigger7 = movecontact = 1
trigger7 = stateno = 20214
trigger7 = command != "holddown"
trigger8 = time >= 6
trigger8 = stateno = 20214
trigger8 = command != "holddown"

;----------------
;強攻撃（近距離）
;----------------
[State -1]
type = changestate
value = 20230
triggerall = var(31) = 1
triggerall = command = "z"
triggerall = statetype = S
triggerall = p2bodydist X <= 50
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 20214
trigger2 = command = "holddown"
trigger3 = time >= 6
trigger3 = stateno = 20214
trigger3 = command = "holddown"

;------
;強攻撃
;------
[State -1]
type = changestate
value = 20220
triggerall = var(31) = 1
triggerall = command = "z"
triggerall = statetype = S
trigger1 = ctrl = 1

;----------
;弱→中→弱
;----------
[State -1]
type = changestate
value = 20401
triggerall = var(31) = 1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = stateno = 20411
trigger1 = time >= 8
trigger2 = movecontact = 1

;----------------------------
;しゃがみ弱攻撃（スタンド時）
;----------------------------
[State -1]
type = changestate
value = 20400
triggerall = var(31) = 1
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = ctrl = 1
trigger1 = statetype = C
trigger2 = statetype = S

;---------------------------
;中→中→下中
;---------------------------
[State -1]
type = changestate
value = 20413
triggerall = var(31) = 1
triggerall = command = "holddown"
triggerall = command = "y"
triggerall = stateno = 20213
trigger1 = time >= 10
trigger2 = movecontact = 1
;----------
;下弱→下中
;----------
[State -1]
type = changestate
value = 20411
triggerall = var(31) = 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = time >= 5
trigger1 = stateno = 20400
trigger2 = movecontact = 1
trigger2 = stateno = 20400
trigger3 = time <= 14
trigger3 = stateno = 20200
trigger4 = movecontact = 1
trigger4 = stateno = 20200

;----------------
;下弱→中→弱→中
;----------------
[State -1]
type = changestate
value = 20412
triggerall = var(31) = 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = time >= 5
trigger1 = stateno = 20401
trigger2 = movecontact = 1
trigger2 = stateno = 20401

;----------------------------
;しゃがみ中攻撃（スタンド時）
;----------------------------
[State -1]
type = changestate
value = 20410
triggerall = var(31) = 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------
;中→中→中
;下弱→中→強
;---------------------------
[State -1]
type = changestate
value = 20421
triggerall = var(31) = 1
trigger1 = command != "holddown"
trigger1 = command = "y"
trigger1 = stateno = 20213
trigger1 = time >= 10
trigger2 = command = "z"
trigger2 = command = "holddown"
trigger2 = stateno = 20411
trigger2 = time >= 8
trigger3 = command = "z"
trigger3 = command = "holddown"
trigger3 = stateno = 20411
trigger3 = movecontact = 1
trigger4 = command = "y"
trigger4 = command != "holddown"
trigger4 = stateno = 20213
trigger4 = movecontact = 1

;----------------------------
;しゃがみ強攻撃（スタンド時）
;----------------------------
[State -1]
type = changestate
value = 20420
triggerall = var(31) = 1
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;--------------
;ジャンプ弱攻撃
;--------------
[State -1]
type = changestate
value = 20600
triggerall = var(31) = 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;--------------
;ジャンプ中攻撃
;--------------
[State -1]
type = changestate
value = 20610
triggerall = var(31) = 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;--------------
;ジャンプ強攻撃
;--------------
[State -1]
type = changestate
value = 20620
triggerall = var(31) = 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1

;--------------
;前進＆後退
;--------------
[State -1]
type = changestate
value = 20
triggerall = statetype = S
triggerall = ctrl =1
triggerall = stateno = [800,1500]
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"