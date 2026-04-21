;-| 超必殺技 |--------------------------------------------------------
;ここには超必殺技を記述してください、同じ名前を「name =」欄に書けますが
;コマンドは絶対に違ったものにしてください。
;カンフーマンは弱パンチと強パンチで技が出せるように同じ名前のコマンドで
;内容が弱と強になっています。
;「time=20」と書くことで「コマンドを20フレーム以内に入力」と設定できます。
[Command]
name = "sentakki"
command = ~D, DF, F, D, DF, F, x
time = 25

[Command] 
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

;-| 必殺技 |------------------------------------------------------

[Command]
name = "bukichg"
command = ~D, DF, F, a

[Command]
name = "kuru_x"
command = ~F, D, DF, x

[Command]
name = "kuru_y"
command = ~F, D, DF, y

[Command]
name = "kuru_z"
command = ~F, D, DF, z

[Command]
name = "hikiyose_x"
command = ~D, DB, B, x

[Command]
name = "hikiyose_y"
command = ~D, DB, B, y

[Command]
name = "hikiyose_z"
command = ~D, DB, B, z

[Command]
name = "dokukiri_x"
command = ~D, DF, F, x

[Command]
name = "dokukiri_y"
command = ~D, DF, F, y

[Command]
name = "dokukiri_z"
command = ~D, DF, F, z

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_a"
command = ~D, DF, F, a

[Command]
name = "QCB_b"
command = ~D, DF, F, b

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

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
name = "drillc_F"
command = /F, x+y
time = 1

[Command]
name = "drillc_U"
command = /U, x+y
time = 1

[Command]
name = "drillc_B"
command = /B, x+y
time = 1

[Command]
name = "drillc_D"
command = /D, x+y
time = 1

[Command]
name = "recovery"
command = x+y
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
;---------------------------------------------------------------------------
;内臓洗濯機（ゲージレベル１）
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "sentakki"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;===========================================================================

;---------------------------------------------------------------------------
;武器チェンジ
;[State -1, bukichg]
;type = ChangeState
;value = 4000
;triggerall = stateno != 4000
;triggerall = var(1) = 0
;triggerall = command = "bukichg"
;;triggerall = ctrl
;trigger1 = statetype = S
;trigger2 = statetype != A
;---------------------------------------------------------------------------
;武器チェンジ
;[State -1, bukichg]
;type = ChangeState
;value = 4001
;triggerall = stateno != 4001
;triggerall = var(1) = 1
;triggerall = command = "bukichg"
;triggerall = ctrl
;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = statetype != A

;---------------------------------------------------------------------------
;くるくる
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "kuru_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;くるくる
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = command = "kuru_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
;--------------------------------------------------------------------------
;くるくる
[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = command = "kuru_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) || (stateno = [400,410]) ;Cancel ground moves
;trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;空中くるくる
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1030
triggerall = command = "kuru_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger3 = stateno != 440 ;Except for sweep kick
trigger3 = movecontact

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 1100
triggerall = command = "dokukiri_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 1110
triggerall = command = "dokukiri_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 1120
triggerall = command = "dokukiri_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, hikiyose]
type = ChangeState
value = 1200
triggerall = command = "hikiyose_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, hikiyose]
type = ChangeState
value = 1210
triggerall = command = "hikiyose_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, hikiyose]
type = ChangeState
value = 1220
triggerall = command = "hikiyose_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;どりるくろー　みぎ
[State -1, drillc]
type = ChangeState
value = 1300
triggerall = command = "drillc_F"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
trigger3 = statetype = A
trigger3 = stateno = 1030
trigger4 = statetype = A
trigger4 = stateno = 1031
trigger5 = statetype != A
trigger5 = ctrl
;---------------------------------------------------------------------------
;どりるくろー　うえ
[State -1, drillc]
type = ChangeState
value = 1310
triggerall = command = "drillc_U"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
trigger3 = statetype = A
trigger3 = stateno = 1030
trigger4 = statetype = A
trigger4 = stateno = 1031

;---------------------------------------------------------------------------
;どりるくろー　うしろ
[State -1, drillc]
type = ChangeState
value = 1320
triggerall = command = "drillc_B"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = stateno = 1030
trigger3 = statetype = A
trigger3 = stateno = 1031
trigger4 = stateno = [400,450]
trigger5 = statetype = A
trigger5 = ctrl
;---------------------------------------------------------------------------
;どりるくろー　した
[State -1, drillc]
type = ChangeState
value = 1330
triggerall = command = "drillc_D"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
trigger3 = statetype = A
trigger3 = stateno = 1030
trigger4 = statetype = A
trigger4 = stateno = 1031

;===========================================================================
;ジャンプ
[State -1, jump]
type = ChangeState
value = 40
triggerall = command = "holdup"
trigger1 = MoveHit = 1
trigger1 = stateno = 420
trigger2 = stateno = 610
trigger2 = MoveHit = 1
trigger3 = stateno = 640
trigger3 = MoveHit = 1
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;バックステップ
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
triggerall = var(1) = 0
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
;---------------------------------------------------------------------------
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 10800
triggerall = var(1) = 1
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
;---------------------------------------------------------------------------
;投げ２
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "b"
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
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = p2bodydist X >= 40
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;立ち弱パンチ2
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = p2bodydist X < 40
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = time > 6

;---------------------------------------------------------------------------
;立ち中パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = p2bodydist X >= 40
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 4
trigger3 = (stateno = 230) && time > 6
trigger4 = (stateno = 205) && time > 5

;---------------------------------------------------------------------------
;立ち中パンチ2
[State -1, Stand Light Punch]
type = ChangeState
value = 215
triggerall = p2bodydist X < 40
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 4
trigger3 = (stateno = 230) && time > 6
trigger2 = (stateno = 205) && time > 4

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = p2bodydist X >= 75
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
;---------------------------------------------------------------------------
;立ち中キック
[State -1, Stand Light Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 6
;---------------------------------------------------------------------------
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

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
triggerall = p2bodydist X >= 40
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ接近弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 405
triggerall = p2bodydist X < 40
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 4
;---------------------------------------------------------------------------
;しゃがみ中パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = p2bodydist X >= 40
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)
;---------------------------------------------------------------------------
;しゃがみ接近中パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 415
triggerall = p2bodydist X < 40
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 4
trigger3 = (stateno = 405) && time > 4
;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = statetype != A
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger2 = command = "holddown"
trigger3 = p2bodydist X < 75
trigger3 = ctrl
;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;しゃがみ中キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
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
;空中中パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 630
;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 610 || stateno = 640 ;jump_x or jump_a
;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
;---------------------------------------------------------------------------
;空中中キック
[State -1, Jump Light Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger3 = stateno = 610
;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 610 || stateno = 640
trigger4 = stateno = 620
