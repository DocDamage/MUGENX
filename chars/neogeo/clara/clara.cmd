;-| Super Motions |--------------------------------------------------------

[Command]
name = "ippa"
command = ~B, DB, D, DF, F, DF, D, y
time = 28

[Command]
name = "sdr"
command = ~D, DF, F, D, DF, F, y
time = 28

[Command]
name = "mdk"
command = ~F, B, DB, D, DF, F, a+b
time = 28

;-| Special Motions |------------------------------------------------------

[Command]
name = "dmb_x"
command = ~D, DF, F, x

[Command]
name = "dmb_y"
command = ~D, DF, F, y

[Command]
name = "ma_x"
command = ~D, DB, B, x

[Command]
name = "ma_y"
command = ~D, DB, B, y

[Command]
name = "dta_a"
command = ~D, DB, B, a

[Command]
name = "dta_b"
command = ~D, DB, B, b

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "daij"
command = ~$D, $U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "x+a"
command = x+a
time = 1

[Command]
name = "y+b"
command = y+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
[Statedef -1]

;===========================================================================
;一発奥義
[State -1, ippa]
type = ChangeState
value = 7000
triggerall = power >= 2000
triggerall = NumHelper(7020) = 0
triggerall = command = "ippa"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time < 6 && movecontact = 1
trigger3 = stateno = 210 && time < 12 && movecontact = 1
trigger4 = stateno = 230 && time < 9 && movecontact = 1
trigger5 = stateno = 240 && time < 11 && movecontact = 1
trigger6 = stateno = 300 && time < 6 && movecontact = 1
trigger7 = stateno = 310 && time < 8 && movecontact = 1
trigger8 = stateno = 330 && time < 8 && movecontact = 1
trigger9 = stateno = 340 && time < 10 && movecontact = 1
trigger10 = stateno = 400 && time < 6 && movecontact = 1
trigger11 = stateno = 410 && time < 8 && movecontact = 1
trigger12 = stateno = 430 && time < 6 && movecontact = 1
trigger13 = stateno = 700 && time < 22 && movecontact = 1
trigger14 = stateno = 720 && time < 16 && movecontact = 1
trigger15 = stateno = 730 && time < 15 && movecontact = 1
trigger16 = stateno = 750 && time < 24 && movecontact = 1
trigger17 = stateno = 755 && time < 20 && movecontact = 1
;---------------------------------------------------------------------------
;スターダストレボリューション
[State -1, sdr]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "sdr"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time < 6 && movecontact = 1
trigger3 = stateno = 210 && time < 12 && movecontact = 1
trigger4 = stateno = 230 && time < 9 && movecontact = 1
trigger5 = stateno = 240 && time < 11 && movecontact = 1
trigger6 = stateno = 300 && time < 6 && movecontact = 1
trigger7 = stateno = 310 && time < 8 && movecontact = 1
trigger8 = stateno = 330 && time < 8 && movecontact = 1
trigger9 = stateno = 340 && time < 10 && movecontact = 1
trigger10 = stateno = 400 && time < 6 && movecontact = 1
trigger11 = stateno = 410 && time < 8 && movecontact = 1
trigger12 = stateno = 430 && time < 6 && movecontact = 1
trigger13 = stateno = 700 && time < 22 && movecontact = 1
trigger14 = stateno = 720 && time < 16 && movecontact = 1
trigger15 = stateno = 730 && time < 15 && movecontact = 1
trigger16 = stateno = 750 && time < 24 && movecontact = 1
trigger17 = stateno = 755 && time < 20 && movecontact = 1
;---------------------------------------------------------------------------
;ミラクルデスキッス
[State -1, dmb]
type = ChangeState
value = 1600
triggerall = command = "mdk"
triggerall = p2stateno != 1650 && p2movetype != H
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time < 6 && movecontact = 1
trigger3 = stateno = 210 && time < 12 && movecontact = 1
trigger4 = stateno = 230 && time < 9 && movecontact = 1
trigger5 = stateno = 240 && time < 11 && movecontact = 1
trigger6 = stateno = 300 && time < 6 && movecontact = 1
trigger7 = stateno = 310 && time < 8 && movecontact = 1
trigger8 = stateno = 330 && time < 8 && movecontact = 1
trigger9 = stateno = 340 && time < 10 && movecontact = 1
trigger10 = stateno = 400 && time < 6 && movecontact = 1
trigger11 = stateno = 410 && time < 8 && movecontact = 1
trigger12 = stateno = 430 && time < 6 && movecontact = 1
trigger13 = stateno = 700 && time < 22 && movecontact = 1
trigger14 = stateno = 720 && time < 16 && movecontact = 1
trigger15 = stateno = 730 && time < 15 && movecontact = 1
trigger16 = stateno = 750 && time < 24 && movecontact = 1
trigger17 = stateno = 755 && time < 20 && movecontact = 1

;---------------------------------------------------------------------------
;ドリームマインドブーメラン
[State -1, dmb]
type = ChangeState
value = 1000
triggerall = (command = "dmb_x") || (command = "dmb_y")
triggerall = NumProjID(1000) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time < 6 && movecontact = 1
trigger3 = stateno = 210 && time < 12 && movecontact = 1
trigger4 = stateno = 230 && time < 9 && movecontact = 1
trigger5 = stateno = 240 && time < 11 && movecontact = 1
trigger6 = stateno = 300 && time < 6 && movecontact = 1
trigger7 = stateno = 310 && time < 8 && movecontact = 1
trigger8 = stateno = 330 && time < 8 && movecontact = 1
trigger9 = stateno = 340 && time < 10 && movecontact = 1
trigger10 = stateno = 400 && time < 6 && movecontact = 1
trigger11 = stateno = 410 && time < 8 && movecontact = 1
trigger12 = stateno = 430 && time < 6 && movecontact = 1
trigger13 = stateno = 700 && time < 22 && movecontact = 1
trigger14 = stateno = 720 && time < 16 && movecontact = 1
trigger15 = stateno = 730 && time < 15 && movecontact = 1
trigger16 = stateno = 750 && time < 20 && movecontact = 1
trigger17 = stateno = 755 && time < 15 && movecontact = 1
;---------------------------------------------------------------------------
;ミラクルアタック弱
[State -1, dmb]
type = ChangeState
value = 1200
triggerall = command = "ma_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time < 6 && movecontact = 1
trigger3 = stateno = 210 && time < 12 && movecontact = 1
trigger4 = stateno = 230 && time < 9 && movecontact = 1
trigger5 = stateno = 240 && time < 11 && movecontact = 1
trigger6 = stateno = 300 && time < 6 && movecontact = 1
trigger7 = stateno = 310 && time < 8 && movecontact = 1
trigger8 = stateno = 330 && time < 8 && movecontact = 1
trigger9 = stateno = 340 && time < 10 && movecontact = 1
trigger10 = stateno = 400 && time < 6 && movecontact = 1
trigger11 = stateno = 410 && time < 8 && movecontact = 1
trigger12 = stateno = 430 && time < 6 && movecontact = 1
trigger13 = stateno = 700 && time < 22 && movecontact = 1
trigger14 = stateno = 720 && time < 16 && movecontact = 1
trigger15 = stateno = 730 && time < 15 && movecontact = 1
trigger16 = stateno = 750 && time < 20 && movecontact = 1
trigger17 = stateno = 755 && time < 15 && movecontact = 1

;ミラクルアタック強
[State -1, dmb]
type = ChangeState
value = 1210
triggerall = command = "ma_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time < 6 && movecontact = 1
trigger3 = stateno = 210 && time < 12 && movecontact = 1
trigger4 = stateno = 230 && time < 9 && movecontact = 1
trigger5 = stateno = 240 && time < 11 && movecontact = 1
trigger6 = stateno = 300 && time < 6 && movecontact = 1
trigger7 = stateno = 310 && time < 8 && movecontact = 1
trigger8 = stateno = 330 && time < 8 && movecontact = 1
trigger9 = stateno = 340 && time < 10 && movecontact = 1
trigger10 = stateno = 400 && time < 6 && movecontact = 1
trigger11 = stateno = 410 && time < 8 && movecontact = 1
trigger12 = stateno = 430 && time < 6 && movecontact = 1
trigger13 = stateno = 700 && time < 22 && movecontact = 1
trigger14 = stateno = 720 && time < 16 && movecontact = 1
trigger15 = stateno = 730 && time < 15 && movecontact = 1
trigger16 = stateno = 750 && time < 20 && movecontact = 1
trigger17 = stateno = 755 && time < 15 && movecontact = 1
;---------------------------------------------------------------------------
;ドリームターンアタックダッシュ
[State -1, dmb]
type = ChangeState
value = 1420
triggerall = (command = "dta_a") || (command = "dta_b")
triggerall = statetype != A
trigger1 = stateno = [100,101]
trigger2 = stateno = 720 && time < 16 && movecontact = 1
trigger3 = stateno = 730 && time < 16 && movecontact = 1


;ドリームターンアタック弱
[State -1, dmb]
type = ChangeState
value = 1400
triggerall = command = "dta_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time < 6 && movecontact = 1
trigger3 = stateno = 210 && time < 12 && movecontact = 1
trigger4 = stateno = 230 && time < 9 && movecontact = 1
trigger5 = stateno = 240 && time < 11 && movecontact = 1
trigger6 = stateno = 300 && time < 6 && movecontact = 1
trigger7 = stateno = 310 && time < 8 && movecontact = 1
trigger8 = stateno = 330 && time < 8 && movecontact = 1
trigger9 = stateno = 340 && time < 10 && movecontact = 1
trigger10 = stateno = 400 && time < 6 && movecontact = 1
trigger11 = stateno = 410 && time < 8 && movecontact = 1
trigger12 = stateno = 430 && time < 6 && movecontact = 1
trigger13 = stateno = 700 && time < 22 && movecontact = 1
trigger14 = stateno = 720 && time < 16 && movecontact = 1
trigger15 = stateno = 730 && time < 15 && movecontact = 1
trigger16 = stateno = 750 && time < 20 && movecontact = 1
trigger17 = stateno = 755 && time < 15 && movecontact = 1


;ドリームターンアタック強
[State -1, dmb]
type = ChangeState
value = 1410
triggerall = command = "dta_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time < 6 && movecontact = 1
trigger3 = stateno = 210 && time < 12 && movecontact = 1
trigger4 = stateno = 230 && time < 9 && movecontact = 1
trigger5 = stateno = 240 && time < 11 && movecontact = 1
trigger6 = stateno = 300 && time < 6 && movecontact = 1
trigger7 = stateno = 310 && time < 8 && movecontact = 1
trigger8 = stateno = 330 && time < 8 && movecontact = 1
trigger9 = stateno = 340 && time < 10 && movecontact = 1
trigger10 = stateno = 400 && time < 6 && movecontact = 1
trigger11 = stateno = 410 && time < 8 && movecontact = 1
trigger12 = stateno = 430 && time < 6 && movecontact = 1
trigger13 = stateno = 700 && time < 22 && movecontact = 1
trigger14 = stateno = 720 && time < 16 && movecontact = 1
trigger15 = stateno = 730 && time < 15 && movecontact = 1
trigger16 = stateno = 750 && time < 20 && movecontact = 1
trigger17 = stateno = 755 && time < 15 && movecontact = 1

;ドリームターンアタック空中弱
[State -1, dmb]
type = ChangeState
value = 1430
triggerall = command = "dta_a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && time < 6 && movecontact = 1
trigger3 = stateno = 610 && time < 8 && movecontact = 1
trigger4 = stateno = 620 && time < 14 && movecontact = 1
trigger5 = stateno = 630 && time < 6 && movecontact = 1
trigger6 = stateno = 640 && time < 8 && movecontact = 1
trigger7 = stateno = 650 && time < 8 && movecontact = 1

;ドリームターンアタック空中強
[State -1, dmb]
type = ChangeState
value = 1450
triggerall = command = "dta_b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && time < 6 && movecontact = 1
trigger3 = stateno = 610 && time < 8 && movecontact = 1
trigger4 = stateno = 620 && time < 14 && movecontact = 1
trigger5 = stateno = 630 && time < 6 && movecontact = 1
trigger6 = stateno = 640 && time < 8 && movecontact = 1
trigger7 = stateno = 650 && time < 8 && movecontact = 1
;===========================================================================
;===========================================================================
;前入れ立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 700
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time < 6 && movecontact = 1
trigger3 = stateno = 210 && time < 12 && movecontact = 1
trigger4 = stateno = 230 && time < 9 && movecontact = 1
trigger5 = stateno = 240 && time < 11 && movecontact = 1
trigger6 = stateno = 300 && time < 6 && movecontact = 1
trigger7 = stateno = 310 &&  time < 8 && movecontact = 1
;trigger7 = (stateno = 310) && movecontact && time = [8,10]
trigger8 = stateno = 330 && time < 8 && movecontact = 1
trigger9 = stateno = 340 && time < 10 && movecontact = 1
trigger10 = (stateno = [100,101])
trigger11 = stateno = 410 && time < 8 && movecontact = 1
;---------------------------------------------------------------------------
;ダッシュパンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 720
triggerall = command = "x" || command = "y"
triggerall = command != "holddown"
triggerall = (stateno = [100,101])
trigger1 = statetype = S
;trigger1 = ctrl

;ダッシュキック
[State -1, Stand Light Punch]
type = ChangeState
value = 730
triggerall = command = "a" || command = "b"
triggerall = command != "holddown"
triggerall = (stateno = [100,101])
trigger1 = statetype = S
;trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;後転
[State -1, usiro]
type = ChangeState
value = 770
triggerall = command != "holddown"
triggerall = command = "holdback"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "x+a"
trigger2 = command = "z"

;前転
[State -1, sake]
type = ChangeState
value = 760
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "x+a"
trigger2 = command = "z"

;---------------------------------------------------------------------------
;ガードキャンセル
[State -1, g]
type = ChangeState
value = 790
triggerall = stateno = [150,153];ガーキャン
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = command = "c"
trigger2 = command = "y+b"

;ふっとばし
[State -1, comb]
type = ChangeState
value = 750
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "c"
trigger2 = command = "y+b"

;アッパー
[State -1, comb]
type = ChangeState
value = 755
triggerall = statetype = C
triggerall = ctrl
trigger1 = command = "c"
trigger2 = command = "y+b"
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

;空中投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 900
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = p2statetype = A
trigger1 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
;立ち弱パンチ近
[State -1, Stand Light Punch]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist X < 18
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 300) && time > 6

;---------------------------------------------------------------------------
;立ち強パンチ近
[State -1, Stand Strong Punch]
type = ChangeState
value = 310
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X < 18
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち弱キック近
[State -1, Stand Light Kick]
type = ChangeState
value = 330
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X < 18
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち強キック近
[State -1, Standing Strong Kick]
type = ChangeState
value = 340
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち弱パンチ遠
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 6
trigger3 = (stateno = 300) && time > 6

;---------------------------------------------------------------------------
;立ち強パンチ遠
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 300) && time > 5 && movecontact = 1

;---------------------------------------------------------------------------
;立ち弱キック遠
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 330) && time > 10

;---------------------------------------------------------------------------
;立ち強キック遠
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
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
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
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
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;空中下入れ弱キック
[State -1, Jump Light Punch]
type = ChangeState
value = 710
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ強パンチ垂直
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall= Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強パンチ横
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック垂直
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1= Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 620 && time < 14 && movecontact = 1
;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl



