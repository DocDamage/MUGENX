;matrimelee 城門光 by.Nyankoro CMD

;-| AI |------------------------------------------------------
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
command = D, D, D, D, D, D
time = 1
[Command]
name = "CPU14"
command = D, D, D, D, D, D
time = 1
[Command]
name = "CPU15"
command = D, D, D, D, D, D
time = 1
[Command]
name = "CPU16"
command = D, D, D, D, D, D
time = 1

;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "Rave2"
command = ~D, DB, B, y+b
time = 30

[Command]
name = "Rave"
command = ~D, DB, B, F, a
time = 20

[Command]
name = "ougi"
command = ~D, D, DF, F, b
time = 20

[Command]
name = "stress"
command =  ~D,B,D,F, x+y
time = 20

[Command]
name = "stressB"
command =  ~D,F,D,B, x+y
time = 20

;-| 必殺技 |------------------------------------------------------
[Command]
name = "dohA"
command = ~B,D,F, x

[Command]
name = "dohB"
command = ~B,D,F, y

[Command]
name = "cronoX"
command =  ~F,D,DF, x
time = 13

[Command]
name = "cronoY"
command =  ~F,D,DF, y
time = 13

[Command]
name = "addressX"
command = ~F, D, B, x
time = 15

[Command]
name = "addressY"
command = ~F, D, B, y
time = 15

[Command]
name = "scharfA"
command = ~F, D, B, a

[Command]
name = "scharfB"
command = ~F, D, B, b
;time = 15

[Command]
name = "incA"
command =  ~F,D,DF, a
time = 13

[Command]
name = "incB"
command =  ~F,D,DF, b
time = 13

[Command]
name = "batA"
command = ~D, DB, B, a
time = 13

[Command]
name = "batAR"
command = ~D, DF, F, a
time = 13

[Command]
name = "batB"
command = ~D, DB, B, b
time = 13

[Command]
name = "batBR"
command = ~D, DF, F, b
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
command = a+b
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = y+b
time = 1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "a+x"
command = a+x
time = 1

[Command]
name = "a+y"
command = a+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[command]
name = "fwd_a"
command = /F, a
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[command]
name = "downfwd_x"
command = /DF, x
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
name = "longjump"
command = D, $U

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;===========================================================================
;AI VarSet
[State -1, AI]
type = VarSet
triggerall = var(20) != 1
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
trigger11  = command = "CPU11"
trigger12  = command = "CPU12"
trigger13  = command = "CPU13"
trigger14  = command = "CPU14"
trigger15  = command = "CPU15"
trigger16  = command = "CPU16"
v =  20
value = 1

;===========================================================================
;ＡＩ
[State -1, Throw]
type = ChangeState
value = 1050
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2movetype != H
triggerall = p2statetype != A
triggerall = p2statetype != L
trigger1 = p2bodydist X < 13
trigger1 = random <= 100
trigger1 = ctrl

[State -1, 立ち弱Ｐ]
type = ChangeState
value = 200
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = P2BodyDist X <= 10
trigger1 = random <= 300
trigger1 = P2MoveType != A && ctrl

[State -1, 立ち弱Ｋ]
type = ChangeState
value = 220
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = P2BodyDist X <= 10
trigger1 = random <= 200
trigger1 = P2MoveType != A && ctrl

[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2movetype != H
triggerall = p2statetype != L
trigger1 = p2bodydist X <= 10
trigger1 = random <= 100
trigger1 = ctrl

;---------------------------------------------------------------------
;禁じ手
[State -3]
type = ChangeState
value = 3300
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = power >= 3000
triggerall = statetype != A
triggerall = p2statetype != L
;trigger1 = random <= 50
;trigger1 = ctrl
trigger1 = (stateno = 215) && MoveHit
trigger2 = (stateno = 216) && MoveHit
trigger3 = (stateno = 220) && MoveHit
trigger4 = (stateno = 225) && MoveHit
trigger5 = (stateno = 235) && MoveHit
trigger6 = (stateno = 236) && MoveHit
trigger7 = (stateno = 260) && MoveHit
trigger8 = (stateno = 270) && MoveHit
trigger9 = (stateno = 400) && MoveHit
trigger10 = (stateno = 405) && MoveHit
trigger11 = (stateno = 410) && MoveHit

[State -3, ２]
type = ChangeState
value = 3405
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2stateno = 3710
trigger1 = (stateno = 3400) && MoveContact
trigger1 = Time >= 8

[State -3, ３]
type = ChangeState
value = 3410
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2stateno = 3720
trigger1 = (stateno = 3405) && MoveContact
trigger1 = Time >= 8


[State -3, ４]
type = ChangeState
value = 3415
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2stateno = 3710
trigger1 = (stateno = 3410) && MoveContact
trigger1 = Time >= 8

[State -3, ５]
type = ChangeState
value = 3420
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2stateno = 3720
trigger1 = (stateno = 3415) && MoveContact
trigger1 = Time >= 8


[State -3, ６]
type = ChangeState
value = 3425
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2stateno = 3710
trigger1 = (stateno = 3420) && MoveContact
trigger1 = Time >= 8

[State -3, ７]
type = ChangeState
value = 3430
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2stateno = 3720
trigger1 = (stateno = 3425) && MoveContact
trigger1 = Time >= 8

[State -3, ８]
type = ChangeState
value = 3435
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2stateno = 3720
trigger1 = (stateno = 3430) && MoveContact
trigger1 = Time >= 8

[State -3, Ｌ]
type = ChangeState
value = 3440
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2stateno = 3725
trigger1 = (stateno = 3435) && MoveContact
trigger1 = Time >= 10

;---------------------------------------------------------------------
; 一発奥義
[State -1]
type = ChangeState
value = 3100
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = power >= 2000
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = P2MoveType = A && p2bodydist X <= 60
trigger1 = random <= 50
trigger1 = ctrl

[State -1, 屈み弱Ｋ]
type = ChangeState
value = 410
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = C
triggerall = p2statetype != L
trigger1 = random <= 240
trigger1 = P2BodyDist X <= 25
trigger1 = ctrl

[State -1, 屈み強Ｐ]
type = ChangeState
value = 405
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = C
triggerall = p2statetype != L
trigger1 = random <= 160
trigger1 = P2BodyDist X <= 60
trigger1 = P2MoveType != A && ctrl
trigger2 = (stateno = 410) && MoveContact

[State -1, 屈み弱Ｐ]
type = ChangeState
value = 400
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = C
triggerall = p2statetype != L
trigger1 = random <= 200
trigger1 = P2BodyDist X <= 25
trigger1 = ctrl

[State -1, 屈みごっつい]
type = ChangeState
value = 260
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = p2statetype != L
trigger1 = P2BodyDist X <= 40
trigger1 = random <= 200
trigger1 = statetype = C && ctrl

;インキュバスＡ
[State -1]
type = ChangeState
value = 1040
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggarall = P2StateType != C
triggerall = p2StateNo !=1031
trigger1 = random <= 40
trigger1 = P2MoveType = A && p2bodydist X = (20,50)
trigger1 = ctrl

;インキュバスＢ
[State -1]
type = ChangeState
value = 1045
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggarall = P2StateType != C
triggerall = p2StateNo !=1031
trigger1 = random <= 50
trigger1 = ctrl
trigger1 = P2MoveType = A
trigger1 = p2bodydist X = (30,65)

[State -1, 立ち強Ｋ近]
type = ChangeState
value = 230
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = P2BodyDist X <= 18
trigger1 = random <= 230
trigger1 = P2MoveType != A && ctrl

[State -1, ガドリングＫ]
type = ChangeState
value = 236
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = StateNo = 230
trigger1 = random <= 300
trigger1 = P2MoveType != A && ctrl

[State -1, 立ち強Ｐ近]
type = ChangeState
value = 210
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = P2BodyDist X <= 18
trigger1 = random <= 260
trigger1 = P2MoveType != A && ctrl

[State -1, ガドリングＰ]
type = ChangeState
value = 216
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = StateNo = 210
trigger1 = random <= 300
trigger1 = P2MoveType != A && ctrl

[State -2, 特殊蹴り]
type = ChangeState
value = 240
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
trigger1 = P2BodyDist X <= 35 && random <= 180
trigger1 = P2statetype = C && ctrl
trigger2 = (stateno = 210) && MoveContact
trigger2 = (stateno = 230) && MoveContact

[State -1, 立ち強Ｐ遠]
type = ChangeState
value = 215
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
trigger1 = p2bodydist X = (19,31)
trigger1 = random <= 230
trigger1 = P2MoveType != A && ctrl

[State -2, ダッシュＰ]
type = ChangeState
value = 270
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = StateNo = [100,101]
trigger1 = p2bodydist X = (10,50)
trigger1 = random <= 300
trigger1 = P2MoveType != A && ctrl

[State -2, ダッシュＫ]
type = ChangeState
value = 280
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = StateNo = [100,101]
trigger1 = p2bodydist X = (10,50)
trigger1 = random <= 300
trigger1 = P2MoveType != A && ctrl

[State -1, 屈み強Ｋ]
type = ChangeState
value = 415
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = C
triggerall = p2statetype != L
trigger1 = random <= 100
trigger1 = P2BodyDist X <= 55
trigger1 = P2MoveType != A && ctrl
trigger2 = (stateno = 410) && MoveContact

;空中ストレスシュート
[State -3]
type = ChangeState
value = 3050
triggerall = var(20) = 1&&(Pos Y<=-80)
triggerall = power >= 1000
triggerall = Facing != enemynear,Facing
triggerall = statetype = A
triggerall = P2StateType != L && P2StateType != A
trigger1 = random <= 30
trigger1 = Pos Y<=-80
trigger1 = p2bodydist X < 70
trigger1 = ctrl
trigger2 = (stateno = 241) && MoveHit
trigger3 = (stateno = 600) && MoveHit
trigger4 = (stateno = 610) && MoveHit
trigger5 = (stateno = 620) && MoveHit
trigger6 = (stateno = 630) && MoveHit
trigger7 = (stateno = 241) && MoveHit

[State -1, 空中弱Ｐ]
type = ChangeState
value = 600
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype != L
trigger1 = random <= 100
trigger1 = P2MoveType != A && ctrl

[State -1, 空中強Ｋ]
type = ChangeState
value = 630
triggerall = var(20) = 1&&(Pos Y<=-60)
trigger1 = p2bodydist X = (30,100)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = p2statetype != L
trigger1 = random <= 100
trigger1 = P2MoveType != A && ctrl

;ストレスシュート
[State -1]
type = ChangeState
value = 3000
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2statetype = S
trigger1 = (stateno = 215) && MoveHit
trigger2 = (stateno = 216) && MoveHit
trigger3 = (stateno = 235) && MoveHit
trigger4 = (stateno = 236) && MoveHit
trigger5 = (stateno = 260) && MoveHit
trigger6 = (stateno = 270) && MoveHit
trigger7 = (stateno = 405) && MoveHit

;クロノグラフＸ
[State -1]
type = ChangeState
value = 1000
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X < 45
trigger1 = random <= 30
trigger1 = ctrl
trigger2 = (stateno = 215) && MoveContact
trigger3 = (stateno = 216) && MoveContact
trigger4 = (stateno = 220) && MoveContact
trigger5 = (stateno = 225) && MoveContact
trigger6 = (stateno = 235) && MoveContact
trigger7 = (stateno = 236) && MoveContact
trigger8 = (stateno = 260) && MoveContact
trigger9 = (stateno = 270) && MoveContact
trigger10 = (stateno = 400) && MoveContact
trigger11 = (stateno = 410) && MoveContact
;trigger12 = (stateno = 405) && MoveContact

;クロノグラフＹ
[State -1]
type = ChangeState
value = 1005
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2bodydist X = (30,60)
trigger1 = random <= 30
trigger1 = ctrl
trigger2 = (stateno = 215) && MoveHit
trigger3 = (stateno = 216) && MoveHit
trigger4 = (stateno = 220) && MoveHit
trigger5 = (stateno = 225) && MoveHit
trigger6 = (stateno = 235) && MoveHit
trigger7 = (stateno = 236) && MoveHit
trigger8 = (stateno = 260) && MoveHit
trigger9 = (stateno = 270) && MoveHit
trigger10 = (stateno = 400) && MoveHit
trigger11 = (stateno = 410) && MoveHit
;trigger12 = (stateno = 405) && MoveHit

;シャルフクロイツＡ
[State -1]
type = ChangeState
value = 1030
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = random <= 50
trigger1 = p2bodydist X = (20,60)
trigger1 = ctrl
trigger2 = (stateno = 215) && MoveContact
trigger3 = (stateno = 216) && MoveContact
trigger4 = (stateno = 220) && MoveContact
trigger5 = (stateno = 225) && MoveContact
trigger6 = (stateno = 235) && MoveContact
trigger7 = (stateno = 236) && MoveContact
trigger8 = (stateno = 405) && MoveContact
trigger8 = random <= 80
trigger9 = (stateno = 400) && MoveContact
trigger10 = (stateno = 410) && MoveContact

;シャルフクロイツＢ
[State -1]
type = ChangeState
value = 1035
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = random <= 40
trigger1 = p2bodydist X = (20,60)
trigger1 = ctrl
trigger2 = (stateno = 215) && MoveContact
trigger3 = (stateno = 216) && MoveContact
trigger4 = (stateno = 220) && MoveContact
trigger5 = (stateno = 225) && MoveContact
trigger6 = (stateno = 235) && MoveContact
trigger7 = (stateno = 236) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger9 = random <= 60
trigger10 = (stateno = 410) && MoveContact

;アドレスインパルスＸ
[State -1]
type = ChangeState
value = 1010
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = p2statetype != A && P2MoveType != A
trigger1 = random <= 50
trigger1 = p2bodydist X = (10,60)
trigger1 = ctrl
trigger2 = (stateno = 215) && MoveContact
trigger3 = (stateno = 216) && MoveContact
trigger4 = (stateno = 225) && MoveContact
trigger5 = (stateno = 235) && MoveContact
trigger6 = (stateno = 236) && MoveContact
trigger7 = (stateno = 260) && MoveContact
trigger8 = (stateno = 270) && MoveContact
trigger10 = (stateno = 410) && MoveContact

;アドレスインパルスＹ
[State -1]
type = ChangeState
value = 1015
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L 
triggerall = p2statetype != A && P2MoveType != A
trigger1 = random <= 40
trigger1 = p2bodydist X = (60,120)
trigger1 = P2MoveType != A
trigger1 = ctrl
trigger2 = (stateno = 405) && MoveContact
trigger2 = random <= 120
trigger3 = (stateno = 215) && MoveContact
trigger4 = (stateno = 216) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 225) && MoveContact
trigger7 = (stateno = 235) && MoveContact
trigger8 = (stateno = 236) && MoveContact
trigger9 = (stateno = 260) && MoveContact
trigger10 = (stateno = 270) && MoveContact
trigger11 = (stateno = 410) && MoveContact

;バッテクブランバスＡ
[State -1]
type = ChangeState
value = 1020
triggerall = var(20) = 1
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = p2StateNo !=1031
trigger1 = random <= 60
trigger1 = Pos Y<=-80
trigger1 = p2bodydist X < 60
trigger1 = ctrl
trigger2 = (stateno = 241) && MoveContact
trigger3 = (stateno = 600) && MoveContact
trigger4 = (stateno = 610) && MoveContact
trigger5 = (stateno = 620) && MoveContact
trigger6 = (stateno = 630) && MoveContact
trigger7 = (stateno = 241) && MoveContact

;バッテクブランバスＢ
[State -1]
type = ChangeState
value = 1025
triggerall = var(20) = 1
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = p2StateNo !=1031
trigger1 = random <= 100
trigger1 = p2bodydist X < 90
trigger1 = Pos Y<=-80
trigger1 = ctrl
trigger2 = (stateno = 241) && MoveContact
trigger3 = (stateno = 600) && MoveContact
trigger4 = (stateno = 610) && MoveContact
trigger5 = (stateno = 620) && MoveContact
trigger6 = (stateno = 630) && MoveContact
trigger7 = (stateno = 241) && MoveContact

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(20) = 1
triggerall = power < 3000
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = P2StateType != L
triggerall = P2MoveType != A
triggerall = P2BodyDist X > 200
trigger1 = random <= 80
trigger1 = ctrl

;===========================================================================
; 前避け
[State -1]
type = ChangeState
value = 850
triggerall = command != "holdback"
triggerall = command = "a+x" || command = "z"
trigger1 = statetype = S && ctrl
trigger2 = StateNo = [100,101] 

;---------------------------------------------------------------------------
; 後避け
[State -1]
type = ChangeState
value = 860
triggerall = command = "holdback"
triggerall = command = "a+x" || command = "z"
trigger1 = statetype = S && ctrl
trigger2 = StateNo = [100,101] 

;---------------------------------------------------------------------------
; ガードキャンセル
[State -1]
type = ChangeState
value = 830
triggerall = command = "b+y" || command = "c"
triggerall = power >= 1000
trigger1 = stateno = [150,153]

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
triggerall = command = "BB"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = StateNo = [100,101] 

;---------------------------------------------------------------------------
; ごっつい
[State -1]
type = ChangeState
value = 250
triggerall = command = "b+y" || command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = StateNo = [100,101] 

; 屈みごっつい
[State -1]
type = ChangeState
value = 260
triggerall = command = "b+y" || command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = StateNo = [100,101] 

;---------------------------------------------------------------------------
;ダッシュ'クロノグラフ
[State -1]
type = ChangeState
value = 1007
triggerall = command = "cronoX" || command = "cronoY" 
trigger1 = statetype != A
trigger1 = stateno = [100,101]
trigger2 = stateno = 270 && time < 16 && MoveContact
trigger3 = stateno = 280 && time < 16 && MoveContact

;---------------------------------------------------------------------------
;ダッシュ'アドレスインパルス
[State -1]
type = ChangeState
value = 1017
triggerall = command = "addressX" || command = "addressY" 
trigger1 = statetype != A
trigger1 = stateno = [100,101]
trigger2 = stateno = 270 && time < 16 && MoveContact
trigger3 = stateno = 280 && time < 16 && MoveContact

;---------------------------------------------------------------------------
;ダッシュ'シャルフクロイツ
[State -1]
type = ChangeState
value = 1036
triggerall = command = "scharfB"
trigger1 = statetype != A
trigger1 = stateno = [100,101]
trigger2 = stateno = 270 && time < 16 && MoveContact
trigger3 = stateno = 280 && time < 16 && MoveContact

;===========================================================================
;禁じ手
[State -1]
type = ChangeState
value = 3300
triggerall = power >= 3000
triggerall = command = "Rave"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 210) && MoveContact
trigger4 = (stateno = 215) && MoveContact
trigger5 = (stateno = 216) && MoveContact
trigger6 = (stateno = 220) && MoveContact
trigger7 = (stateno = 225) && MoveContact
trigger8 = (stateno = 230) && MoveContact
trigger9 = (stateno = 235) && MoveContact
trigger10 = (stateno = 236) && MoveContact
trigger11 = (stateno = 250) && MoveContact
trigger12 = (stateno = 260) && MoveContact
trigger13 = (stateno = 270) && MoveContact
trigger14 = (stateno = 280) && MoveContact
trigger15 = (stateno = 400) && MoveContact
trigger16 = (stateno = 405) && MoveContact
trigger17 = (stateno = 410) && MoveContact
trigger18 = (stateno = 415) && MoveContact

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 3400
triggerall != p2life = 0
triggerall = command = "x" 
triggerall = stateno = 3315 && MoveContact
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;立ち弱キックN
[State -1, Stand Light Kick]
type = ChangeState
value = 3405
triggerall != p2life = 0
triggerall = command = "x" 
triggerall = stateno = 3400 && MoveContact
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;立ち強パンチN
[State -1, Stand Strong Punch]
type = ChangeState
value = 3410
triggerall != p2life = 0
triggerall = command = "a" 
triggerall = stateno = 3405 && MoveContact
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;立ち強キックF
[State -1, Standing Strong Kick]
type = ChangeState
value = 3415
triggerall != p2life = 0
triggerall = command = "a"
triggerall = stateno = 3410 && MoveContact
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;立ち強パンチF
[State -1, Stand Strong Punch]
type = ChangeState
value = 3420
triggerall != p2life = 0
triggerall = command = "y"
triggerall = stateno = 3415 && MoveContact
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 3425
triggerall != p2life = 0
triggerall = command = "y"
triggerall = stateno = 3420 && MoveContact
trigger1 = statetype = C && ctrl

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 3430
triggerall != p2life = 0
triggerall = command = "b"
triggerall = stateno = 3425 && MoveContact
trigger1 = statetype = C && ctrl

;---------------------------------------------------------------------------
; 屈みごっつい
[State -1]
type = ChangeState
value = 3435
triggerall != p2life = 0
triggerall = command = "b"
triggerall = stateno = 3430 && MoveContact
trigger1 = statetype = C && ctrl

;---------------------------------------------------------------------------
; とどめ
[State -1]
type = ChangeState
value = 3440
triggerall != p2life = 0
triggerall = command = "Rave2"
triggerall = stateno = 3435 && MoveContact
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;一発奥義
[State -1]
type = ChangeState
value = 3100
triggerall = power >= 2000
triggerall = command = "ougi"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 210) && MoveContact
trigger4 = (stateno = 215) && MoveContact
trigger5 = (stateno = 216) && MoveContact
trigger6 = (stateno = 220) && MoveContact
trigger7 = (stateno = 225) && MoveContact
trigger8 = (stateno = 230) && MoveContact
trigger9 = (stateno = 235) && MoveContact
trigger10 = (stateno = 236) && MoveContact
trigger11 = (stateno = 250) && MoveContact
trigger12 = (stateno = 260) && MoveContact
trigger13 = (stateno = 270) && MoveContact
trigger14 = (stateno = 280) && MoveContact
trigger15 = (stateno = 400) && MoveContact
trigger16 = (stateno = 405) && MoveContact
trigger17 = (stateno = 410) && MoveContact
trigger18 = (stateno = 415) && MoveContact

;ストレスシュート
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "stress"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 210) && MoveContact
trigger4 = (stateno = 215) && MoveContact
trigger5 = (stateno = 216) && MoveContact
trigger6 = (stateno = 220) && MoveContact
trigger7 = (stateno = 225) && MoveContact
trigger8 = (stateno = 230) && MoveContact
trigger9 = (stateno = 235) && MoveContact
trigger10 = (stateno = 236) && MoveContact
trigger11 = (stateno = 250) && MoveContact
trigger12 = (stateno = 260) && MoveContact
trigger13 = (stateno = 270) && MoveContact
trigger14 = (stateno = 280) && MoveContact
trigger15 = (stateno = 400) && MoveContact
trigger16 = (stateno = 405) && MoveContact
trigger17 = (stateno = 410) && MoveContact
trigger18 = (stateno = 415) && MoveContact
trigger19 = stateno = [100,101]

;空中ストレスシュート
[State -1]
type = ChangeState
value = 3050
triggerall = power >= 1000
triggerall = Facing != enemynear,Facing
triggerall = command = "stress"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 620) && MoveContact
trigger5 = (stateno = 630) && MoveContact
trigger6 = (stateno = 241) && MoveContact

;空中ストレスシュート逆
[State -1]
type = ChangeState
value = 3055
triggerall = power >= 1000
triggerall = Facing = enemynear,Facing
triggerall = command = "stressB"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 620) && MoveContact
trigger5 = (stateno = 630) && MoveContact
trigger6 = (stateno = 241) && MoveContact

;===========================================================================
;クロノグラフＸ
[State -1]
type = ChangeState
value = 1000
triggerall = command = "cronoX"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 210) && MoveContact
trigger4 = (stateno = 215) && MoveContact
trigger5 = (stateno = 216) && MoveContact
trigger6 = (stateno = 220) && MoveContact
trigger7 = (stateno = 225) && MoveContact
trigger8 = (stateno = 230) && MoveContact
trigger9 = (stateno = 235) && MoveContact
trigger10 = (stateno = 236) && MoveContact
trigger11 = (stateno = 250) && MoveContact
trigger12 = (stateno = 260) && MoveContact
trigger13 = (stateno = 270) && MoveContact
trigger14 = (stateno = 280) && MoveContact
trigger15 = (stateno = 400) && MoveContact
trigger16 = (stateno = 405) && MoveContact
trigger17 = (stateno = 410) && MoveContact
trigger18 = (stateno = 415) && MoveContact

;クロノグラフＹ
[State -1]
type = ChangeState
value = 1005
triggerall = command = "cronoY"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 210) && MoveContact
trigger4 = (stateno = 215) && MoveContact
trigger5 = (stateno = 216) && MoveContact
trigger6 = (stateno = 220) && MoveContact
trigger7 = (stateno = 225) && MoveContact
trigger8 = (stateno = 230) && MoveContact
trigger9 = (stateno = 235) && MoveContact
trigger10 = (stateno = 236) && MoveContact
trigger11 = (stateno = 250) && MoveContact
trigger12 = (stateno = 260) && MoveContact
trigger13 = (stateno = 270) && MoveContact
trigger14 = (stateno = 280) && MoveContact
trigger15 = (stateno = 400) && MoveContact
trigger16 = (stateno = 405) && MoveContact
trigger17 = (stateno = 410) && MoveContact
trigger18 = (stateno = 415) && MoveContact

;---------------------------------------------------------------------------
;アドレスインパルスＸ
[State -1]
type = ChangeState
value = 1010
triggerall = command = "addressX"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 210) && MoveContact
trigger4 = (stateno = 215) && MoveContact
trigger5 = (stateno = 216) && MoveContact
trigger6 = (stateno = 220) && MoveContact
trigger7 = (stateno = 225) && MoveContact
trigger8 = (stateno = 230) && MoveContact
trigger9 = (stateno = 235) && MoveContact
trigger10 = (stateno = 236) && MoveContact
trigger11 = (stateno = 250) && MoveContact
trigger12 = (stateno = 260) && MoveContact
trigger13 = (stateno = 270) && MoveContact
trigger14 = (stateno = 280) && MoveContact
trigger15 = (stateno = 400) && MoveContact
trigger16 = (stateno = 405) && MoveContact
trigger17 = (stateno = 410) && MoveContact
trigger18 = (stateno = 415) && MoveContact

;アドレスインパルスＹ
[State -1]
type = ChangeState
value = 1015
triggerall = command = "addressY"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 210) && MoveContact
trigger4 = (stateno = 215) && MoveContact
trigger5 = (stateno = 216) && MoveContact
trigger6 = (stateno = 220) && MoveContact
trigger7 = (stateno = 225) && MoveContact
trigger8 = (stateno = 230) && MoveContact
trigger9 = (stateno = 235) && MoveContact
trigger10 = (stateno = 236) && MoveContact
trigger11 = (stateno = 250) && MoveContact
trigger12 = (stateno = 260) && MoveContact
trigger13 = (stateno = 270) && MoveContact
trigger14 = (stateno = 280) && MoveContact
trigger15 = (stateno = 400) && MoveContact
trigger16 = (stateno = 405) && MoveContact
trigger17 = (stateno = 410) && MoveContact
trigger18 = (stateno = 415) && MoveContact

;---------------------------------------------------------------------------
;シャルフクロイツＡ
[State -1]
type = ChangeState
value = 1030
triggerall = command = "scharfA"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 210) && MoveContact
trigger4 = (stateno = 215) && MoveContact
trigger5 = (stateno = 216) && MoveContact
trigger6 = (stateno = 220) && MoveContact
trigger7 = (stateno = 225) && MoveContact
trigger8 = (stateno = 230) && MoveContact
trigger9 = (stateno = 235) && MoveContact
trigger10 = (stateno = 236) && MoveContact
trigger11 = (stateno = 250) && MoveContact
trigger12 = (stateno = 260) && MoveContact
trigger13 = (stateno = 270) && MoveContact
trigger14 = (stateno = 280) && MoveContact
trigger15 = (stateno = 400) && MoveContact
trigger16 = (stateno = 405) && MoveContact
trigger17 = (stateno = 410) && MoveContact
trigger18 = (stateno = 415) && MoveContact
trigger19 = stateno = [100,101]

;シャルフクロイツＢ
[State -1]
type = ChangeState
value = 1035
triggerall = command = "scharfB"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 210) && MoveContact
trigger4 = (stateno = 215) && MoveContact
trigger5 = (stateno = 216) && MoveContact
trigger6 = (stateno = 220) && MoveContact
trigger7 = (stateno = 225) && MoveContact
trigger8 = (stateno = 230) && MoveContact
trigger9 = (stateno = 235) && MoveContact
trigger10 = (stateno = 236) && MoveContact
trigger11 = (stateno = 250) && MoveContact
trigger12 = (stateno = 260) && MoveContact
trigger13 = (stateno = 270) && MoveContact
trigger14 = (stateno = 280) && MoveContact
trigger15 = (stateno = 400) && MoveContact
trigger16 = (stateno = 405) && MoveContact
trigger17 = (stateno = 410) && MoveContact
trigger18 = (stateno = 415) && MoveContact
trigger19 = stateno = [100,101]

;---------------------------------------------------------------------------
;インキュバスＡ
[State -1]
type = ChangeState
value = 1040
triggerall = command = "incA"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 210) && MoveContact
trigger4 = (stateno = 215) && MoveContact
trigger5 = (stateno = 216) && MoveContact
trigger6 = (stateno = 220) && MoveContact
trigger7 = (stateno = 225) && MoveContact
trigger8 = (stateno = 230) && MoveContact
trigger9 = (stateno = 235) && MoveContact
trigger10 = (stateno = 236) && MoveContact
trigger11 = (stateno = 250) && MoveContact
trigger12 = (stateno = 260) && MoveContact
trigger13 = (stateno = 270) && MoveContact
trigger14 = (stateno = 280) && MoveContact
trigger15 = (stateno = 400) && MoveContact
trigger16 = (stateno = 405) && MoveContact
trigger17 = (stateno = 410) && MoveContact
trigger18 = (stateno = 415) && MoveContact
trigger19 = stateno = [100,101]

;インキュバスＢ
[State -1]
type = ChangeState
value = 1045
triggerall = command = "incB"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 210) && MoveContact
trigger4 = (stateno = 215) && MoveContact
trigger5 = (stateno = 216) && MoveContact
trigger6 = (stateno = 220) && MoveContact
trigger7 = (stateno = 225) && MoveContact
trigger8 = (stateno = 230) && MoveContact
trigger9 = (stateno = 235) && MoveContact
trigger10 = (stateno = 236) && MoveContact
trigger11 = (stateno = 250) && MoveContact
trigger12 = (stateno = 260) && MoveContact
trigger13 = (stateno = 270) && MoveContact
trigger14 = (stateno = 280) && MoveContact
trigger15 = (stateno = 400) && MoveContact
trigger16 = (stateno = 405) && MoveContact
trigger17 = (stateno = 410) && MoveContact
trigger18 = (stateno = 415) && MoveContact
trigger19 = stateno = [100,101]

;---------------------------------------------------------------------------
;バッテクブランバスＡ
[State -1]
type = ChangeState
value = 1020
triggerall = Facing != enemynear,Facing
triggerall = command = "batA"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 620) && MoveContact
trigger5 = (stateno = 630) && MoveContact
trigger6 = (stateno = 241) && MoveContact

;バッテクブランバスＡ逆
[State -1]
type = ChangeState
value = 1023
triggerall = Facing = enemynear,Facing
triggerall = command = "batAR"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 620) && MoveContact
trigger5 = (stateno = 630) && MoveContact
trigger6 = (stateno = 241) && MoveContact

;---------------------------------------------------------------------------
;バッテクブランバスＢ
[State -1]
type = ChangeState
value = 1025
triggerall = Facing != enemynear,Facing
triggerall = command = "batB"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 620) && MoveContact
trigger5 = (stateno = 630) && MoveContact
trigger6 = (stateno = 241) && MoveContact

;バッテクブランバスＢ逆
[State -1]
type = ChangeState
value = 1027
triggerall = Facing = enemynear,Facing
triggerall = command = "batBR"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 620) && MoveContact
trigger5 = (stateno = 630) && MoveContact
trigger6 = (stateno = 241) && MoveContact

;---------------------------------------------------------------------------
;トランスポーズ
[State -1]
type = ChangeState
value = 1050
triggerall = command = "dohA" || command = "dohB"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 210) && MoveContact
trigger4 = (stateno = 215) && MoveContact
trigger5 = (stateno = 216) && MoveContact
trigger6 = (stateno = 220) && MoveContact
trigger7 = (stateno = 225) && MoveContact
trigger8 = (stateno = 230) && MoveContact
trigger9 = (stateno = 235) && MoveContact
trigger10 = (stateno = 236) && MoveContact
trigger11 = (stateno = 250) && MoveContact
trigger12 = (stateno = 260) && MoveContact
trigger13 = (stateno = 270) && MoveContact
trigger14 = (stateno = 280) && MoveContact
trigger15 = (stateno = 400) && MoveContact
trigger16 = (stateno = 405) && MoveContact
trigger17 = (stateno = 410) && MoveContact
trigger18 = (stateno = 415) && MoveContact

;---------------------------------------------------------------------------
; ダッシュ攻撃-手
[State -1]
type = ChangeState
value = 270
triggerall = StateNo = [100,101] 
triggerall = command = "x" || command = "y" || command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S 

;---------------------------------------------------------------------------
; ダッシュ攻撃-足
[State -1]
type = ChangeState
value = 280
triggerall = StateNo = [100,101] 
triggerall = command = "a" || command = "b" || command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S 

;===========================================================================
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;投げ
[State -1,Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = stateno != 100
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;空中投げ
[State -1, Air Throw]
type = ChangeState
value = 835
triggerall = command = "y" && command = "holdfwd"
triggerall = statetype = A
triggerall = stateno != 100 && ctrl
trigger1 = p2bodydist X < 20 && P2BodyDist Y = [-20,20] 
trigger1 = p2statetype = A
;trigger1 = p2movetype != H

;---------------------------------------------------------------------------
; 特殊蹴り
[State -1]
type = ChangeState
value = 240
triggerall = command = "fwd_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 210) && MoveContact
trigger4 = (stateno = 215) && MoveContact
trigger5 = (stateno = 216) && MoveContact
trigger6 = (stateno = 220) && MoveContact
trigger7 = (stateno = 225) && MoveContact
trigger8 = (stateno = 230) && MoveContact
trigger9 = (stateno = 235) && MoveContact
trigger10 = (stateno = 236) && MoveContact
trigger11 = (stateno = 250) && MoveContact
trigger12 = (stateno = 260) && MoveContact
trigger13 = (stateno = 270) && MoveContact
trigger14 = (stateno = 280) && MoveContact
trigger15 = (stateno = 400) && MoveContact
trigger16 = (stateno = 405) && MoveContact
trigger17 = (stateno = 410) && MoveContact
trigger18 = (stateno = 415) && MoveContact

;---------------------------------------------------------------------------
;特殊回避
[State -1]
type = ChangeState
value = 245
triggerall = command = "downfwd_x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 210) && MoveContact
trigger4 = (stateno = 215) && MoveContact
trigger5 = (stateno = 216) && MoveContact
trigger6 = (stateno = 220) && MoveContact
trigger7 = (stateno = 225) && MoveContact
trigger8 = (stateno = 230) && MoveContact
trigger9 = (stateno = 235) && MoveContact
trigger10 = (stateno = 236) && MoveContact
trigger11 = (stateno = 270) && MoveContact
trigger12 = (stateno = 280) && MoveContact

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = StateNo = 200 && (time > 8) 
trigger3 = StateNo = 200 && MoveContact
trigger3 = AnimElem = 3,>= 0 && AnimElem = 5,< 0 

;---------------------------------------------------------------------------
;立ち強パンチN
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = P2BodyDist X <= 18
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl

;ガドリングＰ
[State -1, Gadling P]
type = ChangeState
value = 216
triggerall = command = "y" && command != "holddown"
trigger1 = StateNo = 210
trigger1 = statetype = S && ctrl

;立ち強パンチF
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;立ち弱キックN
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = P2BodyDist X <= 18
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl

;立ち弱キックF
[State -1, Stand Light Kick]
type = ChangeState
value = 225
trigger1 = command = "a" && command != "holddown" && statetype = S && ctrl

;---------------------------------------------------------------------------
;立ち強キックN
[State -1, Standing Strong Kick]
type = ChangeState
value = 230
triggerall = P2BodyDist X <= 18
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl

;ガドリングＫ
[State -1, Gadling K]
type = ChangeState
value = 236
triggerall = command = "b" && command != "holddown"
trigger1 = StateNo = 230
trigger1 = statetype = S && ctrl

;立ち強キックF
[State -1, Standing Strong Kick]
type = ChangeState
value = 235
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown" 
trigger1 = StateType = C && ctrl 
trigger2 = StateNo = 400 && (time > 7) 
trigger3 = StateNo = 400 && MoveContact
trigger3 = AnimElem = 5,>= 0 && AnimElem = 7,< 0 

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 405
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = movecontact && (stateno = 410) && AnimElemNo(0) >= 3

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 410
triggerall = command = "a" && command = "holddown" 
trigger1 = statetype = C && ctrl

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 415
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
trigger1 = command = "x" && statetype = A && ctrl

;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
trigger1 = command = "y" && statetype = A && ctrl

;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 620
trigger1 = command = "a" && statetype = A && ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 630
trigger1 = command = "b" && statetype = A && ctrl

;---------------------------------------------------------------------------
; 2段ジャンプ
[State -1]
type = ChangeState
value = 45
triggerall = command = "holdup"
triggerall = !var(3) && !var(4)
trigger1 = StateType = A && ctrl
trigger2 = StateNo = 600 & AnimElem = 12,> 0
trigger3 = StateNo = 610 & AnimElem = 8,> 0
trigger4 = StateNo = 620 & AnimElem = 4,> 0
trigger5 = StateNo = 630 & AnimElem = 5,> 0
