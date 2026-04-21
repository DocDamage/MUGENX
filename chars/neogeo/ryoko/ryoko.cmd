;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "izumo_x"
command = ~F,B,D,F,x
time = 20

[Command]
name = "izumo_y"
command = ~F,B,D,F,y
time = 20

[Command]
name = "izumo_z"
command = ~F,B,D,F,z
time = 20

[Command]
name = "DB_EX"
command = ~D,B,x+y
time = 13

[Command]
name = "DB_EX"
command = ~D,B,y+z
time = 13

[Command]
name = "DB_EX"
command = ~D,B,x+z
time = 13

;-| 必殺技 |------------------------------------------------------
[Command]
name = "tomoe2_c"
command = ~F,D,B,F,c
time = 20

[Command]
name = "tomoe2_b"
command = ~F,D,B,F,b
time = 20

[Command]
name = "tomoe2_a"
command = ~F,D,B,F,a
time = 20

[Command]
name = "nidan_z"
command = ~B,D,F,z
time = 15

[Command]
name = "nidan_y"
command = ~B,D,F,y
time = 15

[Command]
name = "nidan_x"
command = ~B,D,F,x
time = 15

[Command]
name = "kubi_c"
command = ~B,D,F,c
time = 15

[Command]
name = "kubi_b"
command = ~B,D,F,b
time = 15

[Command]
name = "kubi_a"
command = ~B,D,F,a
time = 15

[Command]
name = "iai_c"
command = ~F,D,DF,c
time = 13

[Command]
name = "iai_b"
command = ~F,D,DF,b
time = 13

[Command]
name = "iai_a"
command = ~F,D,DF,a
time = 13

[Command]
name = "DB_z"
command = ~D,B,z
time = 13

[Command]
name = "DB_y"
command = ~D,B,y
time = 13

[Command]
name = "DB_x"
command = ~D,B,x
time = 13

[Command]
name = "DF_x"
command = ~D,F,x
time = 13

[Command]
name = "DF_y"
command = ~D,F,y
time = 13

[Command]
name = "DF_z"
command = ~D,F,z
time = 13

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
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "nagasi"
command = a+b+c
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
;===========================================================================
;---------------------------------------------------------------------------
;出雲流鬼ぐるみ・レベル３
[State -1]
type = ChangeState
value = 2020
triggerall = power >= 3000
triggerall = p2bodydist X < 12
triggerall = command = "izumo_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;出雲流鬼ぐるみ・レベル２
[State -1]
type = ChangeState
value = 2010
triggerall = power >= 2000
triggerall = p2bodydist X < 12
triggerall = command = "izumo_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;出雲流鬼ぐるみ・レベル１
[State -1]
type = ChangeState
value = 2000
triggerall = power >= 1000
triggerall = p2bodydist X < 12
triggerall = command = "izumo_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;巴二段投げ
[State -1]
type = ChangeState
value = 1702
triggerall = command = "tomoe2_c"
triggerall = p2bodydist X < 12
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

[State -1]
type = ChangeState
value = 1701
triggerall = command = "tomoe2_b"
triggerall = p2bodydist X < 12
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

[State -1]
type = ChangeState
value = 1700
triggerall = command = "tomoe2_a"
triggerall = p2bodydist X < 12
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;出雲流受け流し投げ・下段
[State -1]
type = ChangeState
value = 1500
triggerall = command = "holddown"
triggerall = command = "nagasi"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;出雲流受け流し投げ・上段
[State -1]
type = ChangeState
value = 1400
triggerall = command != "holddown"
triggerall = command = "nagasi"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;二段背負い投げ
[State -1]
type = ChangeState
value = 1302
triggerall = command = "nidan_z"
triggerall = p2bodydist X < 12
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

[State -1]
type = ChangeState
value = 1301
triggerall = command = "nidan_y"
triggerall = p2bodydist X < 12
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

[State -1]
type = ChangeState
value = 1300
triggerall = command = "nidan_x"
triggerall = p2bodydist X < 12
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;首切り投げ・弱
[State -1]
type = ChangeState
value = 1200
triggerall = command = "kubi_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 215
trigger5 = movecontact
trigger5 = stateno = 220
trigger6 = movecontact
trigger6 = stateno = 245
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 420
trigger9 = movecontact
trigger9 = stateno = 430
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 450
trigger12 = time > 0
trigger12 = stateno = [195,198]

;---------------------------------------------------------------------------
;首切り投げ・中
[State -1]
type = ChangeState
value = 1202
triggerall = command = "kubi_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 215
trigger5 = movecontact
trigger5 = stateno = 220
trigger6 = movecontact
trigger6 = stateno = 245
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 420
trigger9 = movecontact
trigger9 = stateno = 430
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 450
trigger12 = time > 0
trigger12 = stateno = [195,198]

;---------------------------------------------------------------------------
;首切り投げ・強
[State -1]
type = ChangeState
value = 1204
triggerall = command = "kubi_c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 215
trigger5 = movecontact
trigger5 = stateno = 220
trigger6 = movecontact
trigger6 = stateno = 245
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 420
trigger9 = movecontact
trigger9 = stateno = 430
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 450
trigger12 = time > 0
trigger12 = stateno = [195,198]

;---------------------------------------------------------------------------
;居合蹴り・強
[State -1]
type = ChangeState
value = 1120
triggerall = command = "iai_c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 215
trigger5 = movecontact
trigger5 = stateno = 220
trigger6 = movecontact
trigger6 = stateno = 245
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 420
trigger9 = movecontact
trigger9 = stateno = 430
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 450
trigger12 = time > 0
trigger12 = stateno = [195,198]

;---------------------------------------------------------------------------
;居合蹴り・中
[State -1]
type = ChangeState
value = 1110
triggerall = command = "iai_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 215
trigger5 = movecontact
trigger5 = stateno = 220
trigger6 = movecontact
trigger6 = stateno = 245
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 420
trigger9 = movecontact
trigger9 = stateno = 430
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 450
trigger12 = time > 0
trigger12 = stateno = [195,198]

;---------------------------------------------------------------------------
;居合蹴り・弱
[State -1]
type = ChangeState
value = 1100
triggerall = command = "iai_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 215
trigger5 = movecontact
trigger5 = stateno = 220
trigger6 = movecontact
trigger6 = stateno = 245
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 420
trigger9 = movecontact
trigger9 = stateno = 430
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 450
trigger12 = time > 0
trigger12 = stateno = [195,198]

;---------------------------------------------------------------------------
;戊殺掌・EX
[State -1]
type = ChangeState
value = 1800
triggerall = power >= 1000
triggerall = command = "DB_EX"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 215
trigger5 = movecontact
trigger5 = stateno = 220
trigger6 = movecontact
trigger6 = stateno = 245
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 420
trigger9 = movecontact
trigger9 = stateno = 430
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 450
trigger12 = time > 0
trigger12 = stateno = [195,198]

;---------------------------------------------------------------------------
;戊殺掌・強
[State -1]
type = ChangeState
value = 1020
triggerall = command = "DB_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 215
trigger5 = movecontact
trigger5 = stateno = 220
trigger6 = movecontact
trigger6 = stateno = 245
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 420
trigger9 = movecontact
trigger9 = stateno = 430
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 450
trigger12 = time > 0
trigger12 = stateno = [195,198]

;---------------------------------------------------------------------------
;戊殺掌・中
[State -1]
type = ChangeState
value = 1010
triggerall = command = "DB_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 215
trigger5 = movecontact
trigger5 = stateno = 220
trigger6 = movecontact
trigger6 = stateno = 245
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 420
trigger9 = movecontact
trigger9 = stateno = 430
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 450
trigger12 = time > 0
trigger12 = stateno = [195,198]

;---------------------------------------------------------------------------
;戊殺掌・弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "DB_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 210
trigger4 = movecontact
trigger4 = stateno = 215
trigger5 = movecontact
trigger5 = stateno = 220
trigger6 = movecontact
trigger6 = stateno = 245
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = movecontact
trigger8 = stateno = 420
trigger9 = movecontact
trigger9 = stateno = 430
trigger10 = movecontact
trigger10 = stateno = 440
trigger11 = movecontact
trigger11 = stateno = 450
trigger12 = time > 0
trigger12 = stateno = [195,198]

;---------------------------------------------------------------------------
;飛燕拳・強
[State -1]
type = ChangeState
value = 1620
triggerall = command = "DF_z"
triggerall = statetype = A
trigger1 = stateno = 60
trigger1 = ctrl
trigger2 = stateno = 61
trigger2 = ctrl

;---------------------------------------------------------------------------
;飛燕拳・中
[State -1]
type = ChangeState
value = 1610
triggerall = command = "DF_y"
triggerall = statetype = A
trigger1 = stateno = 60
trigger1 = ctrl
trigger2 = stateno = 61
trigger2 = ctrl

;---------------------------------------------------------------------------
;飛燕拳・弱
[State -1]
type = ChangeState
value = 1600
triggerall = command = "DF_x"
triggerall = statetype = A
trigger1 = stateno = 60
trigger1 = ctrl
trigger2 = stateno = 61
trigger2 = ctrl

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
;投げ
[State -1]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;投げ
[State -1]
type = ChangeState
value = 850
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdback"
trigger1 = p2bodydist X < 13
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;投げ
[State -1]
type = ChangeState
value = 900
triggerall = command = "c"
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

;---------------------------------------------------------------------------
;投げ
[State -1]
type = ChangeState
value = 950
triggerall = command = "z"
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 8
trigger1 = p2statetype = A
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;三角飛び
[State -1]
type = ChangeState
trigger1 = stateno = 50
trigger1 = stateno != 60
trigger1 = backedgebodydist < 4
trigger1 = pos y < -15
trigger1 = statetype = A
trigger1 = command = "holdup"
trigger1 = command = "holdfwd"
value = 60

[State -1]
type = ChangeState
trigger1 = stateno = 50
trigger1 = stateno != 60
trigger1 = frontedgebodydist < 4
trigger1 = pos y < -15
trigger1 = statetype = A
trigger1 = command = "holdup"
trigger1 = command = "holdback"
value = 61

;===========================================================================
;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;遠距離立ち中パンチ
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist x > 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;近距離立ち中パンチ
[State -1]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;レバー入れ立ち強パンチ
[State -1]
type = ChangeState
value = 225
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = command != "holdup"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;立ち弱キック
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;遠距離立ち中キック
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = P2bodydist x > 28
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;近距離立ち中キック
[State -1]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;立ち強キック
[State -1]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;レバー入れ中キック
[State -1]
type = ChangeState
value = 260
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;挑発２
[State -1]
type = ChangeState
value = 196
triggerall = command = "start"
triggerall = command != "holdfwd"
triggerall = command = "holdback"
triggerall = command != "holdup"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;挑発３
[State -1]
type = ChangeState
value = 197
triggerall = command = "start"
triggerall = command = "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;挑発４
[State -1]
type = ChangeState
value = 198
triggerall = command = "start"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command != "holdup"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;しゃがみ中パンチ
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;しゃがみ中キック
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = time > 0
trigger2 = stateno = [195,198]

;---------------------------------------------------------------------------
;レバー入れしゃがみ強パンチ
[State -1]
type = ChangeState
value = 460
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;レバー入れしゃがみ強キック
[State -1]
type = ChangeState
value = 470
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = time > 6
trigger2 = stateno = 600

;---------------------------------------------------------------------------
;空中中パンチ
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = time > 6
trigger2 = stateno = 600

;---------------------------------------------------------------------------
;空中強パンチ
[State -1]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = time > 6
trigger2 = stateno = 600

;---------------------------------------------------------------------------
;空中弱キック
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = time > 6
trigger2 = stateno = 600

;---------------------------------------------------------------------------
;空中中キック
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = time > 6
trigger2 = stateno = 600

;---------------------------------------------------------------------------
;空中強キック
[State -1]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = time > 6
trigger2 = stateno = 600