;ROTD アニー by.Nyankoro CMD

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
name = "Xsword1"
command = ~D, B, D, B, x
time = 30

[Command]
name = "Xsword2"
command = ~D, B, D, B, y
time = 30

[Command]
name = "Xsword2"
command = ~D, B, D, B, y
time = 30

[Command]
name = "dup1"
command = ~D, DF, F, a+y

[Command]
name = "dup2"
command = ~D, DB, B, a+y

;-| 必殺技 |------------------------------------------------------
[Command]
name = "zoom1"
command = ~D, DF, F, x
time = 15

[Command]
name = "zoom2"
command = ~D, DF, F, y
time = 15

[Command]
name = "come1"
command = ~D, B, x
time = 15

[Command]
name = "come2"
command = ~D, B, y
time = 15

[Command]
name = "airzoom1"
command =  ~F,D,DF, x
time = 15

[Command]
name = "airzoom2"
command =  ~F,D,DF, y
time = 15

[Command]
name = "neko1"
command = ~F, D, B, x
time = 13

[Command]
name = "neko2"
command = ~F, D, B, y
time = 13

[Command]
name = "123_1"
command = ~F, D, B, a
time = 14

[Command]
name = "123_2"
command = ~F, D, B, b
time = 14

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
;AI VerSet
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
;AI
[State -1, デュプレックス]
type = ChangeState
value = 3500
triggerall = var(20) = 1
triggerall = power >= 2000
triggerall = roundstate = 2
triggerall = NumPartner = 0
triggerall = NumEnemy = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = random <= 200
trigger1 = ctrl 
trigger1 = p2life <= 100 && random <= 200 
trigger2 = (stateno = 2006) && (AnimTime = 0)
trigger3 = PrevStateNo = 2011
trigger4 = (stateno = 1041) && (AnimTime = 0) 
trigger4 = random <= 300 
trigger5 = random <= 50 && ctrl
trigger5 = power >= 2800

[State -1, デュプレックス]
type = ChangeState
value = 3600
triggerall = var(20) = 1
triggerall = power >= 1000 && P2Life != 0
triggerall = random <= 100
trigger1 = AnimElem = 8,13
trigger1 = stateno = 3540

[State -1, 1ndインパクト・空]
type = ChangeState
value = 2010
triggerall = var(20) = 1
triggerall = roundstate = 2
;triggerall = statetype != A
trigger1 = stateno = 2000
trigger1 = p2bodydist X <= 50
trigger1 = ctrl

[State -1, 1ndインパクト・空1]
type = ChangeState
value = 2012
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 2010
trigger1 = p2bodydist X <= 50
trigger1 = ctrl
trigger1 = Time >= 10

[State -1, 1ndインパクト・空2]
type = ChangeState
value = 2013
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2stateno = 2062
trigger1 = p2bodydist X <= 50
trigger1 = (stateno = 2012) && MoveContact
trigger1 = Time >= 9

[State -1, 1ndインパクト・空3]
type = ChangeState
value = 2014
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2stateno = 2062
trigger1 = p2bodydist X <= 50
trigger1 = (stateno = 2013) && MoveContact
trigger1 = Time >= 9

[State -1, 1ndインパクト・空4]
type = ChangeState
value = 2015
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2stateno = 2062
trigger1 = p2bodydist X <= 50
trigger1 = (stateno = 2014) && MoveContact
trigger1 = Time >= 9

[State -1, 1ndインパクト・空5]
type = ChangeState
value = 2016
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2stateno = 2062
trigger1 = p2bodydist X <= 50
trigger1 = (stateno = 2015) && MoveContact
trigger1 = Time >= 9

[State -1, 1ndインパクト2]
type = ChangeState
value = 2003
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2stateno = 2052
trigger1 = (stateno = 2002) && MoveContact
trigger1 = Time >= 9
trigger1 = Time <= 30

[State -1, 1ndインパクト3]
type = ChangeState
value = 2004
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2stateno = 2052
trigger1 = (stateno = 2003) && MoveContact
trigger1 = Time >= 9
trigger1 = Time <= 30

[State -1, 1ndインパクト4]
type = ChangeState
value = 2005
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2stateno = 2052
trigger1 = (stateno = 2004) && MoveContact
trigger1 = Time >= 9
trigger1 = Time <= 30

[State -1, 1ndインパクト5]
type = ChangeState
value = 2006
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2stateno = 2052
trigger1 = (stateno = 2005) && MoveContact
trigger1 = Time >= 9
trigger1 = Time <= 30

;---------------------------------------------------------------------------
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

[State -1, AirThrow]
type = ChangeState
value = 835
triggerall = var(20) = 1
;triggerall = roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = random <= 600
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X = (1,20)
trigger1 = p2statetype = A
trigger1 = p2movetype != H

[State -1, 遠立弱K]
type = ChangeState
value = 225
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = stateno != 130
trigger1 = random <= 100
trigger1 = P2BodyDist X = (20,45)
trigger1 = P2MoveType != A
trigger1 = ctrl

[State -1, 遠立弱P]
type = ChangeState
value = 205
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = stateno != 130
trigger1 = random <= 110
trigger1 = P2BodyDist X = (20,40)
trigger1 = P2MoveType != A
trigger1 = ctrl

[State -1, 立ち弱K]
type = ChangeState
value = 220
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = stateno != 130
trigger1 = random <= 120
trigger1 = P2BodyDist X <= 18
trigger1 = P2MoveType != A
trigger1 = ctrl

[State -1, 立ち弱P]
type = ChangeState
value = 200
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = stateno != 130
trigger1 = random <= 130
trigger1 = P2BodyDist X <= 18
trigger1 = P2MoveType != A
trigger1 = ctrl

[State -1, 屈み強P]
type = ChangeState
value = 405
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = C
triggerall = p2statetype != L
triggerall = stateno != 130
trigger1 = random <= 140
trigger1 = P2BodyDist X <= 45
trigger1 = P2MoveType != A
trigger1 = ctrl

[State -1, 屈み弱P]
type = ChangeState
value = 400
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = C
triggerall = stateno != 130
triggerall = p2statetype != L
trigger1 = random <= 150
trigger1 = P2BodyDist X <= 30
trigger1 = P2MoveType != A
trigger1 = ctrl

[State -1, 屈み弱K]
type = ChangeState
value = 410
triggerall = var(20) = 1
;triggerall = roundstate = 2
triggerall = statetype = C
triggerall = stateno != 130
triggerall = p2statetype != L
triggerall = random <= 160
trigger1 = P2BodyDist X <= 30
trigger1 = P2MoveType != A
trigger1 = ctrl
trigger2 = (stateno = 400) && MoveContact

[State -1, 立ち強P]
type = ChangeState
value = 210
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = stateno != 130
trigger1 = random <= 170
trigger1 = P2BodyDist X <= 18
trigger1 = P2MoveType != A
trigger1 = ctrl

[State -1, 立ち強K]
type = ChangeState
value = 230
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = stateno != 130
trigger1 = random <= 180
trigger1 = P2BodyDist X <= 18
trigger1 = P2MoveType != A
trigger1 = ctrl

[State -1, 屈み強K]
type = ChangeState
value = 415
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = C
triggerall = p2statetype != L
triggerall = stateno != 130
trigger1 = random <= 140
trigger1 = P2BodyDist X <= 45
trigger1 = P2MoveType != A
trigger1 = ctrl

[State -1, 遠立強P]
type = ChangeState
value = 215
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = stateno != 130
trigger1 = random <= 90
trigger1 = P2BodyDist X = (20,40)
trigger1 = P2MoveType != A
trigger1 = ctrl

[State -1, 遠立強K]
type = ChangeState
value = 235
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = stateno != 130
trigger1 = random <= 100
trigger1 = P2BodyDist X = (30,70)
trigger1 = P2MoveType != A
trigger1 = ctrl

[State -1, ヒザアタック]
type = ChangeState
value = 240
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = random <= 80
trigger1 = P2BodyDist X <= 50
trigger1 = P2MoveType != A
trigger1 = ctrl
trigger2 = (stateno = 210) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 410) && MoveContact
trigger5 = (stateno = 405) && MoveContact

;---------------------------------------------------------------------------
[State -1,コメット弱]
type = ChangeState
value = 1060
triggerall = var(20) = 1&&(Pos Y<=-60)
triggerall = ctrl
triggerall = random <= 100
trigger1 = p2bodydist X = (20,110)
trigger1 = statetype = A
trigger2 = (stateno = 615) && MoveContact
trigger3 = (stateno = 635) && MoveContact

[State -1,コメット強]
type = ChangeState
value = 1065
triggerall = var(20) = 1&&(Pos Y<=-60)
triggerall = ctrl
triggerall = random <= 100
trigger1 = p2bodydist X = (110,170)
trigger1 = statetype = A
trigger2 = (stateno = 625) && MoveContact
trigger3 = (stateno = 635) && MoveContact

[State -1, ズーム弱]
type = ChangeState
value = 1000
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = S
triggerall = p2statetype != L
triggerall = P2MoveType != A
triggerall = ctrl
triggerall = random <= 160
trigger1 = p2bodydist X <= 70
trigger2 = (stateno = 210) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 200) && MoveContact
trigger5 = (stateno = 205) && MoveContact
trigger6 = (stateno = 220) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact

[State -1, ズーム強]
type = ChangeState
value = 1005
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = S
triggerall = p2statetype != L
triggerall = P2MoveType != A
triggerall = ctrl
trigger1 = random <= 140
trigger1 = p2bodydist X = (70,160)

[State -1, ズームクロス弱]
type = ChangeState
value = 1010
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = P2MoveType != A
triggerall = ctrl
triggerall = random <= 165
trigger1 = p2bodydist X = (5,80)
trigger1 = p2bodydist Y = (-180,0)
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact
trigger11 = (stateno = 2006) && MoveContact

[State -1, ズームクロス強]
type = ChangeState
value = 1015
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = ctrl
triggerall = random <= 145
trigger1 = p2bodydist X = (5,80)
trigger1 = p2bodydist Y = (-180,0)
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact
trigger11 = (stateno = 2006) && MoveContact
trigger12 = stateno = 52

[State -1, 1nd_発動]
type = ChangeState
value = 250
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = S
triggerall = p2statetype != L
triggerall = P2MoveType != A
triggerall = ctrl
trigger1 = random <= 160
trigger1 = p2bodydist X = (15,65)

[State -1, １２３弱]
type = ChangeState
value = 1040
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = S
triggerall = p2statetype != L
triggerall = ctrl
triggerall = random <= 165
trigger1 = p2bodydist X = (40,80)
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact

[State -1, １２３強]
type = ChangeState
value = 1050
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype = S
triggerall = p2statetype != L
triggerall = ctrl
trigger1 = random <= 145
trigger1 = p2bodydist X = (120,160)

[State -1, ネコアタック弱]
type = ChangeState
value = 1020
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = random <= 160
trigger1 = p2bodydist X = (20,70)
trigger1 = ctrl

[State -1, ネコアタック強]
type = ChangeState
value = 1030
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = random <=140
trigger1 = p2bodydist X = (120,160)
trigger1 = ctrl

[State -1, クロスソード]
type = ChangeState
value = 3000
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = power >= 1500
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = ctrl
trigger1 = random <= 50
trigger1 = p2bodydist X = (10,120)
trigger2 = (stateno = 2006) && MoveContact
trigger3 = p2life <= 50 && random <= 50

[State -1, ＭＡＸクロスソード]
type = ChangeState
value = 3100
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = power >= 2500
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = ctrl
;trigger1 = random <= 50
;trigger1 = p2bodydist X = (20,160)
;trigger1 = statetype != A
trigger1 = p2life <= 70 && random <= 50

[State -1, コメット地上弱]
type = ChangeState
value = 1070
triggerall = var(20) = 1
triggerall = NumProjID(1070) = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = ctrl
triggerall = random <= 55
trigger1 = p2bodydist X = (100,160)
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact

[State -1, コメット地上強]
type = ChangeState
value = 1075
triggerall = var(20) = 1
triggerall = NumProjID(1070) = 0
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = ctrl
triggerall= random <= 50
trigger1 = p2bodydist X = (100,160)
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact

[State -1, 挑発]
type = ChangeState
value = 195
triggerall = var(20) = 1
triggerall = power < 3000
triggerall = roundstate = 2
triggerall = statetype = S
triggerall = p2statetype = L
triggerall = P2MoveType != A
trigger1 = P2BodyDist X > 200
trigger1 = random <= 50
trigger1 = ctrl

;===========================================================================
; 前避け
[State -1]
type = ChangeState
value = 860
trigger1 = command = "a+x" || command = "z"
trigger1 = command = "holdfwd" && statetype = S && ctrl

;---------------------------------------------------------------------------
; 後避け
[State -1]
type = ChangeState
value = 870
trigger1 = command = "a+x" || command = "z"
trigger1 = command = "holdback" && statetype = S && ctrl

;---------------------------------------------------------------------------
; 避け
[State -1]
type = ChangeState
value = 850
trigger1 = command = "a+x" || command = "z"
trigger1 = statetype = S && ctrl

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
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------
;デュプレックス
[State -1]
type = ChangeState
value = 3500
triggerall = Power >= 1000
triggerall = Command = "dup1" || Command = "c+z"
triggerall = NumPartner = 0
triggerall = NumEnemy = 1
trigger1 = StateType != A 
trigger1 = Ctrl

;---------------------------------------------------------------------
;ネコの手を借りる
[State -1]
type = ChangeState
value = 1500
triggerall=NumHelper(6010)=0
triggerall = Power >= 500
triggerall = Command = "a+y"
trigger1 = StateType != A 
trigger1 = Ctrl

;---------------------------------------------------------------------------
;クロスソード
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Xsword1"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact
trigger11 = (stateno = 2006) && MoveContact

;---------------------------------------------------------------------------
;クロスソードMAX
[State -1]
type = ChangeState
value = 3100
triggerall = command = "Xsword2"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact
trigger11 = (stateno = 2006) && MoveContact

;---------------------------------------------------------------------------
;ズームクロス弱
[State -1]
type = ChangeState
value = 1010
triggerall = command = "airzoom1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact
trigger11 = (stateno = 2006) && MoveContact

;---------------------------------------------------------------------------
;ズームクロス強
[State -1]
type = ChangeState
value = 1015
triggerall = command = "airzoom2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact
trigger11 = (stateno = 2006) && MoveContact

;---------------------------------------------------------------------------
;ズーム弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "zoom1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact
trigger11 = (stateno = 2006) && MoveContact

;---------------------------------------------------------------------------
;ズーム強
[State -1]
type = ChangeState
value = 1005
triggerall = command = "zoom2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact
trigger11 = (stateno = 2006) && MoveContact

;---------------------------------------------------------------------------
;ネコアタック弱
[State -1]
type = ChangeState
value = 1020
triggerall = command = "neko1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact
trigger11 = (stateno = 2006) && MoveContact

;---------------------------------------------------------------------------
;ネコアタック強
[State -1]
type = ChangeState
value = 1030
triggerall = command = "neko2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact
trigger11 = (stateno = 2006) && MoveContact

;---------------------------------------------------------------------------
;123弱
[State -1]
type = ChangeState
value = 1040
triggerall = command = "123_1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact
trigger11 = (stateno = 2006) && MoveContact

;---------------------------------------------------------------------------
;123強
[State -1]
type = ChangeState
value = 1050
triggerall = command = "123_2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact
trigger11 = (stateno = 2006) && MoveContact

;---------------------------------------------------------------------------
;コメット地上弱
[State -1]
type = ChangeState
value = 1070
triggerall = command = "come1"
triggerall = NumProjID(1070) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact
trigger11 = (stateno = 2006) && MoveContact

;---------------------------------------------------------------------------
;コメット地上強
[State -1]
type = ChangeState
value = 1075
triggerall = command = "come2"
triggerall = NumProjID(1070) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 240) && MoveContact
trigger8 = (stateno = 400) && MoveContact
trigger9 = (stateno = 405) && MoveContact
trigger10 = (stateno = 410) && MoveContact
trigger11 = (stateno = 2006) && MoveContact

;---------------------------------------------------------------------------
;コメット弱
[State -1]
type = ChangeState
value = 1060
triggerall = command = "zoom1"
triggerall = NumProjID(1070) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 615) && MoveContact
trigger5 = (stateno = 620) && MoveContact
trigger6 = (stateno = 630) && MoveContact
trigger7 = (stateno = 635) && MoveContact
trigger8 = (stateno = 2016) && MoveContact

;---------------------------------------------------------------------------
;コメット強
[State -1]
type = ChangeState
value = 1065
triggerall = command = "zoom2"
triggerall = NumProjID(1070) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 615) && MoveContact
trigger5 = (stateno = 620) && MoveContact
trigger6 = (stateno = 630) && MoveContact
trigger7 = (stateno = 635) && MoveContact
trigger8 = (stateno = 2016) && MoveContact

;---------------------------------------------------------------------------
;投げ
[State -1, Neko Throw]
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
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 20 && P2BodyDist Y = [-20,20] 
trigger1 = p2statetype = A
;trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;膝×２
[State -1]
type = ChangeState
value = 240
triggerall = command = "fwd_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 205) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 220) && MoveContact
trigger6 = (stateno = 230) && MoveContact
trigger7 = (stateno = 400) && MoveContact
trigger8 = (stateno = 405) && MoveContact
trigger9 = (stateno = 410) && MoveContact
trigger10 = (stateno = 2006) && MoveContact

;---------------------------------------------------------------------------
;ヒップアタック
[State -1]
type = ChangeState
value = 250
triggerall = command = "b+y" || command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 850

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = P2BodyDist X <= 18 && command = "x" && command != "holddown"
trigger1 =  statetype = S && ctrl
trigger2 = StateNo = 200 && AnimElemNo(0) >= 2

;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
trigger1 = command = "x" && command != "holddown" && statetype = S && ctrl

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = P2BodyDist X <= 18
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl

;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
trigger1 = command = "y" && command != "holddown" && statetype = S && ctrl

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = P2BodyDist X <= 18
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = movecontact && (stateno = 200)

;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 225
trigger1 = command = "a" && command != "holddown" && statetype = S && ctrl

;---------------------------------------------------------------------------
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 230
triggerall = P2BodyDist X <= 18
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl

;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 235
trigger1 = command = "b" && command != "holddown" && statetype = S && ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown" && statetype = C
trigger1 = ctrl
trigger2 = StateNo = 400 && AnimElemNo(0) >= 3

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 405
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 410
triggerall = command = "a" && command = "holddown" 
trigger1 = statetype = C && ctrl
trigger2 = movecontact && (stateno = 400)

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
value = 615
trigger1 = command = "y" && vel x && statetype = A && ctrl

;---------------------------------------------------------------------------
;空中強パンチ↑
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
value = 635
trigger1 = command = "b" && vel x && statetype = A && ctrl

;---------------------------------------------------------------------------
;空中強キック↑
[State -1, Jump Strong Kick]
type = ChangeState
value = 630
trigger1 = command = "b" && statetype = A && ctrl
