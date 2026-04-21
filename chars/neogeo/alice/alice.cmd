[Command]
name = "CPU0"
command = ~B, U, D, F, B, U, D, U, a
time = 0

[Command]
name = "CPU1"
command = ~B, U, D, F, F, B, D, U, a
time = 0

[Command]
name = "CPU2"
command = ~B, U, D, F, F, B, D, U, b
time = 0

[Command]
name = "CPU3"
command = ~B, U, D, F, F, B, D, U, c
time = 0

[Command]
name = "CPU4"
command = ~B, U, D, F, F, B, D, U, x
time = 0

[Command]
name = "CPU5"
command = ~B, U, D, F, F, B, D, U, y
time = 0


;-| Super Motions |--------------------------------------------------------
[Command]
name = "red1" 
command = ~F, DF, D, DB, B, F, x
time = 30

[Command]
name = "red2"
command = ~F, DF, D, DB, B, F, y
time = 30
;-| Special Motions |------------------------------------------------------
[Command]
name = "rising_x"
command = ~F, D, DF, x

[Command]
name = "rising_y"
command = ~F, D, DF, y

[Command]
name = "twinkle_x"
command = ~D, DF, F, x

[Command]
name = "twinkle_y"
command = ~D, DF, F, y

[Command]
name = "head_a"
command = ~D, DB, B, a

[Command]
name = "head_b"
command = ~D, DB, B, b

[Command]
name = "EAT_x"
command = ~D, DB, B, x

[Command]
name = "EAT_y"
command = ~D, DB, B, y


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "daij"
command = ~$D, $U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
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
name = "x+a"
command = x+a
time = 1

[Command]
name = "y+b"
command = y+b
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

;-| Hold Dir |--------------------------------------------------------------
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

;---------------------------------------------------------------------------
[Statedef -1]

;===========================================================================
;===========================================================================

;---------------------------------------------------------------------------
;レッドローズ弱
[State -1, red]
type = ChangeState
value = 3000
triggerall = command = "red1"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = [230,399]) || (stateno = [400,499]) || (stateno = 700) || (stateno = 4140)
trigger2 = movecontact
;---------------------------------------------------------------------------
;レッドローズ強
[State -1, red]
type = ChangeState
value = 3020
triggerall = command = "red2"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = [230,399]) || (stateno = [400,499]) || (stateno = 700) || (stateno = 4140)
trigger2 = movecontact
;---------------------------------------------------------------------------
;イートイットガードキャンセル
[State -1, EATgc]
type = ChangeState
value = 1020
triggerall = command = "y+b"
triggerall = stateno = [150,153];ガーキャン
triggerall = power >= 1000
trigger1 = statetype != A
;---------------------------------------------------------------------------
;イートイット弱
[State -1, EATx]
type = ChangeState
value = 1000
triggerall = command = "EAT_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = [230,399]) || (stateno = [400,499]) || (stateno = 700) || (stateno = 4140)
trigger2 = movecontact

;---------------------------------------------------------------------------
;イートイット強
[State -1, EATy]
type = ChangeState
value = 1010
triggerall = command = "EAT_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = [230,399]) || (stateno = [400,499]) || (stateno = 700) || (stateno = 4140)
trigger2 = movecontact

;---------------------------------------------------------------------------
;ライジングヘル弱
[State -1, risx]
type = ChangeState
value = 1200
triggerall = command = "rising_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = [230,399]) || (stateno = [400,499]) || (stateno = 700) || (stateno = 4140)
trigger2 = movecontact

;ライジングヘル強
[State -1, risx]
type = ChangeState
value = 1210
triggerall = command = "rising_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = [230,399]) || (stateno = [400,499]) || (stateno = 700) || (stateno = 4140)
trigger2 = movecontact
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;トゥインクルトゥインクル弱
[State -1, twix]
type = ChangeState
value = 1400
triggerall = command = "twinkle_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = [230,399]) || (stateno = [400,499]) || (stateno = 700) || (stateno = 4140)
trigger2 = movecontact

;トゥインクルトゥインクル強
[State -1, twix]
type = ChangeState
value = 1410
triggerall = command = "twinkle_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = [230,399]) || (stateno = [400,499]) || (stateno = 700) || (stateno = 4140)
trigger2 = movecontact

;---------------------------------------------------------------------------
;ヘッズオフ弱
[State -1, head_a]
type = ChangeState
value = 1600
triggerall = command = "head_a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) || (stateno = 4740)
trigger2 = movecontact
trigger3 = stateno = 712

;ヘッズオフ強
[State -1, head_a]
type = ChangeState
value = 1610
triggerall = command = "head_b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) || (stateno = 4740)
trigger2 = movecontact
trigger3 = stateno = 712

;===========================================================================
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
;前転
[State -1, mae]
type = ChangeState
value = 760
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "x+a"
trigger2 = command = "z"

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

;避け
[State -1, sake]
type = ChangeState
value = 750
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "x+a"
trigger2 = command = "z"

;裏拳
[State -1, comb]
type = ChangeState
value = 4000
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "c"
trigger2 = command = "y+b"
trigger2 = stateno != [150,153];ガード時はダ、メ、よ☆

;大ジャンプ
[State -1]
type = ChangeState
value = 40
triggerall = command = "daij"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;投げ
[State -1,nage]
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
;前入れ立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 700
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [300,340]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = stateno = 4140
trigger3 = time <= 32
trigger3 = movecontact

;---------------------------------------------------------------------------
;立ち弱パンチ近
[State -1, Stand Light Punch]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;立ち強パンチ近
[State -1, Stand Strong Punch]
type = ChangeState
value = 310
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 9
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;立ち弱キック近
[State -1, Stand Light Kick]
type = ChangeState
value = 330
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 9
trigger3 = (stateno = 230) && time > 9

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
trigger2 = (stateno = 200) && time > 9
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 9

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 9
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 9
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 9
trigger3 = (stateno = 230) && time > 9

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
trigger2 = var(57) != 1
trigger2 = (stateno = [600,650])
trigger2 = movecontact
trigger3 = var(57) = 1
trigger3 = (stateno = [600,650]) || (stateno = 4740);←をキャンセル可能にすると永久コンボが！
trigger3 = movecontact
;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強パンチ垂
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
;空中強キック垂
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall= Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

