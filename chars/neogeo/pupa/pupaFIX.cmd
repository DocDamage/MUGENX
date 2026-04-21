;-| Super Motions |--------------------------------------------------------
[Command]
Name= ""AU1""
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
Name= ""AU2""
command = ~D, DF, F, D, DF, F, b
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
Name= ""Supana_x""
command = ~D, DF, F, x

[Command]
Name= ""Supana_y""
command = ~D, DF, F, y

[Command]
Name= ""FD_a""
command = ~F, D, DF, a

[Command]
Name= ""FD_b""
command = ~F, D, DF, b

[Command]
Name= ""FDB_a""
command = ~F, DF, D, DB, BF, a

[Command]
Name= ""FDB_b""
command = ~F, DF, D, DB, BF, b

[Command]
Name= ""Renda""
command = a, a, a, a
time = 30

[Command]
Name= ""Renda""
command = b, b, b ,b
time = 30

[Command]
Name= ""Renda1""
command = a, a
time = 15

[Command]
Name= ""Renda1""
command = b, b
time = 15

[Command]
Name= ""Renda2""
command = ~D, DF, F, a
time = 15

[Command]
Name= ""Renda2""
command = ~D, DF, F, b
time = 15

[Command]
Name= ""Zenten""
command = /F, x+a
time = 1

[Command]
Name= ""Zenten""
command = /F, z
time = 1

[Command]
Name= ""Kouten""
command = /B, x+a
time = 1

[Command]
Name= ""Kouten""
command = /B, z
time = 1

[Command]
Name= ""Sake""
command = x+a
time = 1

[Command]
Name= ""Sake""
command = z
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
Name= ""FF""
command = F, F
time = 10

[Command]
Name= ""BB""
command = B, B
time = 10

[Command]
Name= ""SJ""
command = ~$D, $U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
Name= ""combo""
command = y+b
time = 1

[Command]
Name= ""combo""
command = c
time = 1

[Command]
Name= ""recovery""
command = x+y
time = 1

[Command]
Name= ""recovery""
command = a+b
time = 1

[Command]
Name= ""recovery""
command = x+a
time = 1

[Command]
Name= ""recovery""
command = y+b
time = 1

[Command]
Name= ""recovery""
command = z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
Name= ""down_a""
command = /$D,a
time = 1

[Command]
Name= ""down_b""
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
Name= ""a""
command = a
time = 1

[Command]
Name= ""b""
command = b
time = 1

[Command]
Name= ""c""
command = c
time = 1

[Command]
Name= ""x""
command = x
time = 1

[Command]
Name= ""y""
command = y
time = 1

[Command]
Name= ""z""
command = z
time = 1

[Command]
Name= ""start""
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
Name= ""holdfwd""
command = /$F
time = 1

[Command]
Name= ""holdback""
command = /$B
time = 1

[Command]
Name= ""holdup""
command = /$U
time = 1

[Command]
Name= ""holddown""
command = /$D
time = 1

[Command]
Name= ""hold_b""
command = /b

[Command]
Name= ""~b""
command = ~b

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
; アウ（潜在
[State -1,]
type = ChangeState
value = 3150
triggerall=command=""AU2""
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 215
trigger2 = stateno != 235
trigger2 = stateno != 245
trigger2 = stateno != 215
trigger2 = stateno != 440
trigger2 = movecontact
trigger3 = stateno = 8105
trigger3 = movecontact

;---------------------------------------------------------------------------
; アウ（超必
[State -1,]
type = ChangeState
value = 3100
triggerall=command=""AU2""
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 215
trigger2 = stateno != 235
trigger2 = stateno != 245
trigger2 = stateno != 215
trigger2 = stateno != 440
trigger2 = movecontact
trigger3 = stateno = 8105
trigger3 = movecontact

;---------------------------------------------------------------------------
; アウ（超必
[State -1,]
type = ChangeState
value = 3100
triggerall=command=""AU1""
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 215
trigger2 = stateno != 235
trigger2 = stateno != 245
trigger2 = stateno != 215
trigger2 = stateno != 440
trigger2 = movecontact
trigger3 = stateno = 8105
trigger3 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
; フライング・ダンス（弱）
[State -1,]
type = ChangeState
value = 1100
triggerall=command=""FD_a""
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 215
trigger2 = stateno != 235
trigger2 = stateno != 245
trigger2 = stateno != 215
trigger2 = stateno != 440
trigger2 = movecontact
trigger3 = stateno = 8105
trigger3 = movecontact

;---------------------------------------------------------------------------
; フライング・ダンス（強）
[State -1,]
type = ChangeState
value = 1110
triggerall=command=""FD_b""
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 215
trigger2 = stateno != 235
trigger2 = stateno != 245
trigger2 = stateno != 215
trigger2 = stateno != 440
trigger2 = movecontact
trigger3 = stateno = 8105
trigger3 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
; ベンソー（弱
[State -1,]
type = ChangeState
value = 1000
triggerall=command=""Supana_x""
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 215
trigger2 = stateno != 235
trigger2 = stateno != 245
trigger2 = stateno != 215
trigger2 = stateno != 440
trigger2 = movecontact
trigger3 = stateno = 8105
trigger3 = movecontact

;---------------------------------------------------------------------------
; ベンソー（強
[State -1,]
type = ChangeState
value = 1010
triggerall=command=""Supana_y""
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 215
trigger2 = stateno != 235
trigger2 = stateno != 245
trigger2 = stateno != 215
trigger2 = stateno != 440
trigger2 = movecontact
trigger3 = stateno = 8105
trigger3 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
; パラフォッツ（弱
[State -1,]
type = ChangeState
value = 1200
triggerall=command=""FDB_a""
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 215
trigger2 = stateno != 235
trigger2 = stateno != 245
trigger2 = stateno != 215
trigger2 = stateno != 440
trigger2 = movecontact
trigger3 = stateno = 8105
trigger3 = movecontact

;---------------------------------------------------------------------------
; パラフォッツ（強
[State -1,]
type = ChangeState
value = 1210
triggerall=command=""FDB_b""
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 215
trigger2 = stateno != 235
trigger2 = stateno != 245
trigger2 = stateno != 215
trigger2 = stateno != 440
trigger2 = movecontact
trigger3 = stateno = 8105
trigger3 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
; 連打？
[State -1,]
type = ChangeState
value = 1300
triggerall=command=""Renda""
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 215
trigger2 = stateno != 235
trigger2 = stateno != 245
trigger2 = stateno != 215
trigger2 = stateno != 440
trigger2 = movecontact
trigger3 = stateno = [230,235]
trigger3 = Time <= 4
trigger4 = stateno = [240,245]
trigger4 = Time <= 4
trigger3 = stateno = 8105
trigger3 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;ＧＣコンボ発動
[State -1, ]
type = ChangeState
value = 390
triggerall=command=""combo""
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
;コンボ発動
[State -1, Taunt]
type = ChangeState
value = 8001
triggerall=command=""combo""
triggerall = statetype != A
triggerall=command=""combo""
triggerall = ctrl
trigger1 = p2Name= ""Pupa Salgueiro"|| p4Name= ""Pupa Salgueiro"""
trigger2 = p2Name= ""Lynn Baker"|| p4Name= ""Lynn Baker"""

;---------------------------------------------------------------------------
;コンボ発動
[State -1,]
type = ChangeState
value = 8000
triggerall=command=""combo""
triggerall = statetype != A
trigger1=command=""combo""
trigger1 = ctrl

;---------------------------------------------------------------------------
; ダウン回避
[State -1]
type = ChangeState
value = 320
trigger1 = StateNo = 5100
trigger1=command=""Sake""
trigger1 = Alive = 1

;---------------------------------------------------------------------------
;前転
[State -1,]
type = ChangeState
value = 310
triggerall = statetype != A
trigger1=command=""Zenten""
trigger1 = ctrl

;---------------------------------------------------------------------------
;後転
[State -1,]
type = ChangeState
value = 320
triggerall = statetype != A
trigger1=command=""Kouten""
trigger1 = ctrl

;---------------------------------------------------------------------------
;攻撃避け
[State -1,]
type = ChangeState
value = 300
triggerall = statetype != A
trigger1=command=""Sake""
trigger1 = ctrl

;---------------------------------------------------------------------------
;レバー入れ弱Ｐ
[State -1,6x]
type = ChangeState
value = 220
triggerall=command=""holdfwd""
triggerall=command=""x""
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,449])
trigger2 = stateno != 215
trigger2 = stateno != 220
trigger2 = stateno != 235
trigger2 = stateno != 245
trigger2 = stateno != 215
trigger2 = stateno != 440
trigger2 = movecontact

;---------------------------------------------------------------------------
; レバー入れしゃがみ弱Ｋ
[State -1,3a]
type = ChangeState
value = 450
triggerall=command=""a""
triggerall=command=""holddown""
triggerall=command=""holdfwd""
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,449])
trigger2 = stateno != 215
trigger2 = stateno != 220
trigger2 = stateno != 235
trigger2 = stateno != 245
trigger2 = stateno != 215
trigger2 = stateno != 440
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;投げ
[State -1,]
type = ChangeState
value = 800
triggerall=command=""y""
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1=command=""holdfwd""
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2=command=""holdback""
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;空中投げ
[State -1,]
type = ChangeState
value = 850
triggerall=command=""y""
triggerall = statetype = A
triggerall = ctrl
triggerall = p2statetype = A
trigger1=command=""holdfwd""
trigger1 = p2bodydist X < 10

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1=command=""FF""
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1=command=""BB""
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;大ジャンプ
[State -1]
type = ChangeState
value = 41
triggerall=command=""SJ""
triggerall = statetype != A
trigger1 = ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;遠距離立ち弱パンチ
[State -1,]
type = ChangeState
value = 205
triggerall=command=""x""
triggerall=command !=""holddown""
triggerall = P2bodydist X >= 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 6

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1,]
type = ChangeState
value = 200
triggerall=command=""x""
triggerall=command !=""holddown""
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 6

;---------------------------------------------------------------------------
;遠距離立ち強パンチ
[State -1,]
type = ChangeState
value = 215
triggerall=command=""y""
triggerall=command !=""holddown""
triggerall = P2bodydist X >= 30
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1,]
type = ChangeState
value = 210
triggerall=command=""y""
triggerall=command !=""holddown""
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち弱キック
[State -1,]
type = ChangeState
value = 235
triggerall=command=""a""
triggerall=command !=""holddown""
triggerall = P2bodydist X >= 15
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall=command=""a""
triggerall=command !=""holddown""
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち強キック
[State -1,]
type = ChangeState
value = 245
triggerall=command=""b""
triggerall=command !=""holddown""
triggerall = P2bodydist X >= 50
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall=command=""b""
triggerall=command !=""holddown""
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall=command=""start""
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall=command=""x""
triggerall=command=""holddown""
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 7

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall=command=""y""
triggerall=command=""holddown""
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall=command=""a""
triggerall=command=""holddown""
trigger1 = statetype = C
trigger1 = ctrl
;trigger2 = (stateno = 430) && time > 11

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall=command=""b""
triggerall=command=""holddown""
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall=command=""x""
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;垂直空中強パンチ
[State -1,]
type = ChangeState
value = 615
triggerall=command=""y""
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = vel X = 0

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall=command=""y""
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall=command=""a""
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;垂直空中強キック
[State -1,]
type = ChangeState
value = 645
triggerall=command=""b""
trigger1 = statetype = A
trigger1 = vel X = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall=command=""b""
trigger1 = statetype = A
trigger1 = ctrl
















































































































