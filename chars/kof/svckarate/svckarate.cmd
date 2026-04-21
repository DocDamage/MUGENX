;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "ranbu1"
command = ~D, DF, F, DF, D, DB, B, x
time = 25

[Command]
name = "ranbu2"
command = ~D, DF, F, DF, D, DB, B, y
time = 25

[Command]
name = "ranbu3"
command = ~D, DF, F, DF, D, DB, B, x+y
time = 25

[Command]
name = "kijin_s"
command = ~D, DB, B, D, DB, x+y
time = 21

[Command]
name = "kohou_s"
command = ~D, DF, F, D, DF, a
time = 21

[Command]
name = "kohou_s"
command = ~D, DF, F, D, DF, b
time = 21

[Command]
name = "sikou3"
command = ~F, B, DB, D, DF, F, x+y
time = 21

;-| 必殺技 |------------------------------------------------------
[Command]
name = "sikou1"
command = ~F, B, DB, D, DF, F, x
time = 21

[Command]
name = "sikou2"
command = ~F, B, DB, D, DF, F, y
time = 21

[Command]
name = "kijin"
command = ~D, DB, B, D, DB, x
time = 21

[Command]
name = "kijin"
command = ~D, DB, B, D, DB, y
time = 21

[Command]
name = "koou1"
command = ~D, DF, F, x
time = 12

[Command]
name = "koou2"
command = ~D, DF, F, y
time = 12

[Command]
name = "kohou1"
command = ~F, D, DF, x
time = 12

[Command]
name = "kohou2"
command = ~F, D, DF, y
time = 12

[Command]
name = "burai1"
command = ~D, DB, B, x
time = 12

[Command]
name = "burai2"
command = ~D, DB, B, y
time = 12

[Command]
name = "zanretsu1"
command = ~F, B, F, x
time = 15

[Command]
name = "zanretsu2"
command = ~F, B, F, y
time = 15

[Command]
name = "hien1"
command = ~18$DB, F, a
time = 12

[Command]
name = "hien2"
command = ~18$DB, F, b
time = 12

[Command]
name = "shoran1"
command = ~F, DF, D, DB, B, a
time = 18

[Command]
name = "shoran2"
command = ~F, DF, D, DB, B, b
time = 18

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "longjump"
command = D, $U
time = 12

[Command]
name = "FF"     
command = F, F
time = 12

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 10

[Command]
name = "throw_1"
command = x+a
time = 10

[Command]
name = "throw_2"
command = y+b
time = 10

[Command]
name = "gc_step"
command = y+a
time = 10

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

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "chargex"
command = /x
time = 1

[Command]
name = "chargey"
command = /y
time = 1

[Command]
name = "chargea"
command = /a
time = 1

; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
;超龍虎乱舞
[State -1, gate]
type = ChangeState
value = 3100
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "ranbu3"
triggerall = (100*life/const(data.life))<=50
triggerall = var(53) = 0
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 350 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger17 = stateno = 365 && (var(48) = 1 || var(48) = 2)
trigger18 = stateno = 1400 && (var(48) = 1 || var(48) = 2) && var(46)
trigger19 = stateno = 1500 && (var(48) = 1 || var(48) = 2) && var(46)
trigger20 = stateno = 1700 && (var(48) = 1 || var(48) = 2) && var(46)
trigger21 = stateno = 2200 && (var(48) = 1 || var(48) = 2) && var(46)

;---------------------------------------------------------------------------
;超覇王至高拳（ノーマル）
[State -1, gate]
type = ChangeState
value = 3300
triggerall = var(12) = 10
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "sikou3"
triggerall = (100*life/const(data.life))<=50
triggerall = var(53) = 0
triggerall = statetype != A
triggerall = NumProjID(1005) = 0 && NumProjID(1605) = 0 && NumProjID(1805) = 0 && NumProjID(3005) = 0 && NumProjID(3305) = 0 && NumProjID(3505) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 350 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger17 = stateno = 365 && (var(48) = 1 || var(48) = 2)
trigger18 = stateno = 1400 && (var(48) = 1 || var(48) = 2) && var(46)
trigger19 = stateno = 1500 && (var(48) = 1 || var(48) = 2) && var(46)
trigger20 = stateno = 1700 && (var(48) = 1 || var(48) = 2) && var(46)
trigger21 = stateno = 2200 && (var(48) = 1 || var(48) = 2) && var(46)

;---------------------------------------------------------------------------
;超覇王至高拳（本気）
[State -1, gate]
type = ChangeState
value = 3000
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "sikou3"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = NumProjID(1005) = 0 && NumProjID(1605) = 0 && NumProjID(1805) = 0 && NumProjID(3005) = 0 && NumProjID(3305) = 0 && NumProjID(3505) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 350 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger17 = stateno = 365 && (var(48) = 1 || var(48) = 2)
trigger18 = stateno = 1400 && (var(48) = 1 || var(48) = 2) && var(46)
trigger19 = stateno = 1500 && (var(48) = 1 || var(48) = 2) && var(46)
trigger20 = stateno = 1700 && (var(48) = 1 || var(48) = 2) && var(46)
trigger21 = stateno = 2200 && (var(48) = 1 || var(48) = 2) && var(46)

;---------------------------------------------------------------------------
;真・鬼神撃
[State -1, gate]
type = ChangeState
value = 3200
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "kijin_s"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2bodydist X < 30
triggerall = p2statetype = S || p2statetype = C
;triggerall = p2movetype != H
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 350 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger17 = stateno = 365 && (var(48) = 1 || var(48) = 2)
trigger18 = stateno = 1400 && (var(48) = 1 || var(48) = 2) && var(46)
trigger19 = stateno = 1500 && (var(48) = 1 || var(48) = 2) && var(46)
trigger20 = stateno = 1700 && (var(48) = 1 || var(48) = 2) && var(46)
trigger21 = stateno = 2200 && (var(48) = 1 || var(48) = 2) && var(46)

;---------------------------------------------------------------------------
;極限虎砲（ノーマル）
[State -1, gate]
type = ChangeState
value = 3400
triggerall = var(12) = 10
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "kohou_s"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 350 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger17 = stateno = 365 && (var(48) = 1 || var(48) = 2)
trigger18 = stateno = 1400 && (var(48) = 1 || var(48) = 2) && var(46)
trigger19 = stateno = 1500 && (var(48) = 1 || var(48) = 2) && var(46)
trigger20 = stateno = 1700 && (var(48) = 1 || var(48) = 2) && var(46)
trigger21 = stateno = 2200 && (var(48) = 1 || var(48) = 2) && var(46)

;---------------------------------------------------------------------------
;覇王至高拳（ノーマル）
[State -1, gate]
type = ChangeState
value = 3500
triggerall = var(12) = 10
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "sikou1" || Command = "sikou2"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = NumProjID(1005) = 0 && NumProjID(1605) = 0 && NumProjID(1805) = 0 && NumProjID(3005) = 0 && NumProjID(3305) = 0 && NumProjID(3505) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 350 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger17 = stateno = 365 && (var(48) = 1 || var(48) = 2)
trigger18 = stateno = 1400 && (var(48) = 1 || var(48) = 2) && var(46)
trigger19 = stateno = 1500 && (var(48) = 1 || var(48) = 2) && var(46)
trigger20 = stateno = 1700 && (var(48) = 1 || var(48) = 2) && var(46)
trigger21 = stateno = 2200 && (var(48) = 1 || var(48) = 2) && var(46)

;---------------------------------------------------------------------------
;鬼神撃
[State -1, gate]
type = ChangeState
value = 1700
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "kijin"
triggerall = statetype != A
triggerall = p2bodydist X < 30
triggerall = p2statetype = S || p2statetype = C
;triggerall = p2movetype != H
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 365 && (var(48) = 1 || var(48) = 2)
trigger17 = stateno = 200 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger18 = stateno = 201 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger19 = stateno = 211 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger20 = stateno = 221 && (animelem=5,<0 || animelem=6,>0) && var(46)
trigger21 = stateno = 400 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger22 = stateno = 410 && (animelem=3,<0 || animelem=6,>0) && var(46)
trigger23 = stateno = 420 && (animelem=5,<0 || animelem=7,>0) && var(46) && !var(12)
trigger24 = stateno = 420 && (animelem=2,<0 || animelem=3,>0) && var(46) && var(12)
trigger25 = stateno = 430 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger26 = stateno = 210 && var(46)
trigger27 = stateno = 220 && var(46)
trigger28 = stateno = 230 && var(46)
trigger29 = stateno = 231 && var(46)
trigger30 = stateno = 300 && (var(48) = 1 || var(48) = 2) && var(46)
trigger31 = stateno = 310 && (var(48) = 1 || var(48) = 2) && var(46)
trigger32 = stateno = 320 && (var(48) = 1 || var(48) = 2) && var(46)
trigger33 = stateno = 330 && (var(48) = 1 || var(48) = 2) && var(46)
trigger34 = stateno = 350 && (var(48) = 1 || var(48) = 2) && var(46)
trigger35 = stateno = 370 && (var(48) = 1 || var(48) = 2) && var(46)
trigger36 = stateno = 1400 && (var(48) = 1 || var(48) = 2) && var(46)
trigger37 = stateno = 1500 && (var(48) = 1 || var(48) = 2) && var(46)
trigger38 = stateno = 1900 && (var(48) = 1 || var(48) = 2) && var(46)
trigger39 = stateno = 2200 && (var(48) = 1 || var(48) = 2) && var(46)

;---------------------------------------------------------------------------
;覇王至高拳（本気）
[State -1, gate]
type = ChangeState
value = 1600
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "sikou1" || Command = "sikou2"
triggerall = statetype != A
triggerall = NumProjID(1005) = 0 && NumProjID(1605) = 0 && NumProjID(1805) = 0 && NumProjID(3005) = 0 && NumProjID(3305) = 0 && NumProjID(3505) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 365 && (var(48) = 1 || var(48) = 2)
trigger17 = stateno = 200 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger18 = stateno = 201 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger19 = stateno = 211 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger20 = stateno = 221 && (animelem=5,<0 || animelem=6,>0) && var(46)
trigger21 = stateno = 400 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger22 = stateno = 410 && (animelem=3,<0 || animelem=6,>0) && var(46)
trigger23 = stateno = 420 && (animelem=5,<0 || animelem=7,>0) && var(46) && !var(12)
trigger24 = stateno = 420 && (animelem=2,<0 || animelem=3,>0) && var(46) && var(12)
trigger25 = stateno = 430 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger26 = stateno = 210 && var(46)
trigger27 = stateno = 220 && var(46)
trigger28 = stateno = 230 && var(46)
trigger29 = stateno = 231 && var(46)
trigger30 = stateno = 300 && (var(48) = 1 || var(48) = 2) && var(46)
trigger31 = stateno = 310 && (var(48) = 1 || var(48) = 2) && var(46)
trigger32 = stateno = 320 && (var(48) = 1 || var(48) = 2) && var(46)
trigger33 = stateno = 330 && (var(48) = 1 || var(48) = 2) && var(46)
trigger34 = stateno = 350 && (var(48) = 1 || var(48) = 2) && var(46)
trigger35 = stateno = 370 && (var(48) = 1 || var(48) = 2) && var(46)
trigger36 = stateno = 1400 && (var(48) = 1 || var(48) = 2) && var(46)
trigger37 = stateno = 1500 && (var(48) = 1 || var(48) = 2) && var(46)
trigger38 = stateno = 1700 && (var(48) = 1 || var(48) = 2) && var(46)
trigger39 = stateno = 1900 && (var(48) = 1 || var(48) = 2) && var(46)
trigger40 = stateno = 2200 && (var(48) = 1 || var(48) = 2) && var(46)

;---------------------------------------------------------------------------
;暫烈拳（本気）
[State -1, gate]
type = ChangeState
value = 1200
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "zanretsu1" || Command = "zanretsu2"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 365 && (var(48) = 1 || var(48) = 2)

;---------------------------------------------------------------------------
;暫烈拳（ノーマル）
[State -1, gate]
type = ChangeState
value = 2100
triggerall = var(12) = 10
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "zanretsu1" || Command = "zanretsu2"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 365 && (var(48) = 1 || var(48) = 2)

;---------------------------------------------------------------------------
;虎砲（本気）
[State -1, gate]
type = ChangeState
value = 1400
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "kohou1" || Command = "kohou2"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 365 && (var(48) = 1 || var(48) = 2)
trigger17 = stateno = 200 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger18 = stateno = 201 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger19 = stateno = 211 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger20 = stateno = 221 && (animelem=5,<0 || animelem=6,>0) && var(46)
trigger21 = stateno = 400 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger22 = stateno = 410 && (animelem=3,<0 || animelem=6,>0) && var(46)
trigger23 = stateno = 420 && (animelem=5,<0 || animelem=7,>0) && var(46) && !var(12)
trigger24 = stateno = 420 && (animelem=2,<0 || animelem=3,>0) && var(46) && var(12)
trigger25 = stateno = 430 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger26 = stateno = 210 && var(46)
trigger27 = stateno = 220 && var(46)
trigger28 = stateno = 230 && var(46)
trigger29 = stateno = 231 && var(46)
trigger30 = stateno = 300 && (var(48) = 1 || var(48) = 2) && var(46)
trigger31 = stateno = 310 && (var(48) = 1 || var(48) = 2) && var(46)
trigger32 = stateno = 320 && (var(48) = 1 || var(48) = 2) && var(46)
trigger33 = stateno = 330 && (var(48) = 1 || var(48) = 2) && var(46)
trigger34 = stateno = 350 && (var(48) = 1 || var(48) = 2) && var(46)
trigger35 = stateno = 370 && (var(48) = 1 || var(48) = 2) && var(46)
trigger36 = stateno = 1500 && (var(48) = 1 || var(48) = 2) && var(46)
trigger37 = stateno = 1700 && (var(48) = 1 || var(48) = 2) && var(46)
trigger38 = stateno = 1900 && (var(48) = 1 || var(48) = 2) && var(46)
trigger39 = stateno = 2200 && (var(48) = 1 || var(48) = 2) && var(46)

;---------------------------------------------------------------------------
;虎砲（ノーマル）
[State -1, gate]
type = ChangeState
value = 1900
triggerall = var(12) = 10
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "kohou1" || Command = "kohou2"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 365 && (var(48) = 1 || var(48) = 2)
trigger17 = stateno = 200 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger18 = stateno = 201 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger19 = stateno = 211 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger20 = stateno = 221 && (animelem=5,<0 || animelem=6,>0) && var(46)
trigger21 = stateno = 400 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger22 = stateno = 410 && (animelem=3,<0 || animelem=6,>0) && var(46)
trigger23 = stateno = 420 && (animelem=5,<0 || animelem=7,>0) && var(46) && !var(12)
trigger24 = stateno = 420 && (animelem=2,<0 || animelem=3,>0) && var(46) && var(12)
trigger25 = stateno = 430 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger26 = stateno = 210 && var(46)
trigger27 = stateno = 220 && var(46)
trigger28 = stateno = 230 && var(46)
trigger29 = stateno = 231 && var(46)
trigger30 = stateno = 300 && (var(48) = 1 || var(48) = 2) && var(46)
trigger31 = stateno = 310 && (var(48) = 1 || var(48) = 2) && var(46)
trigger32 = stateno = 320 && (var(48) = 1 || var(48) = 2) && var(46)
trigger33 = stateno = 330 && (var(48) = 1 || var(48) = 2) && var(46)
trigger34 = stateno = 350 && (var(48) = 1 || var(48) = 2) && var(46)
trigger35 = stateno = 370 && (var(48) = 1 || var(48) = 2) && var(46)
trigger36 = stateno = 1400 && (var(48) = 1 || var(48) = 2) && var(46)
trigger37 = stateno = 1500 && (var(48) = 1 || var(48) = 2) && var(46)
trigger38 = stateno = 1700 && (var(48) = 1 || var(48) = 2) && var(46)
trigger39 = stateno = 2200 && (var(48) = 1 || var(48) = 2) && var(46)

;---------------------------------------------------------------------------
;虎煌拳（本気）
[State -1, gate]
type = ChangeState
value = 1000
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "koou1" || Command = "koou2"
triggerall = statetype != A
triggerall = NumProjID(1005) = 0 && NumProjID(1605) = 0 && NumProjID(1805) = 0 && NumProjID(3005) = 0 && NumProjID(3305) = 0 && NumProjID(3505) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 365 && (var(48) = 1 || var(48) = 2)
trigger17 = stateno = 200 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger18 = stateno = 201 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger19 = stateno = 211 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger20 = stateno = 221 && (animelem=5,<0 || animelem=6,>0) && var(46)
trigger21 = stateno = 400 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger22 = stateno = 410 && (animelem=3,<0 || animelem=6,>0) && var(46)
trigger23 = stateno = 420 && (animelem=5,<0 || animelem=7,>0) && var(46) && !var(12)
trigger24 = stateno = 420 && (animelem=2,<0 || animelem=3,>0) && var(46) && var(12)
trigger25 = stateno = 430 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger26 = stateno = 210 && var(46)
trigger27 = stateno = 220 && var(46)
trigger28 = stateno = 230 && var(46)
trigger29 = stateno = 231 && var(46)
trigger30 = stateno = 300 && (var(48) = 1 || var(48) = 2) && var(46)
trigger31 = stateno = 310 && (var(48) = 1 || var(48) = 2) && var(46)
trigger32 = stateno = 320 && (var(48) = 1 || var(48) = 2) && var(46)
trigger33 = stateno = 330 && (var(48) = 1 || var(48) = 2) && var(46)
trigger34 = stateno = 350 && (var(48) = 1 || var(48) = 2) && var(46)
trigger35 = stateno = 370 && (var(48) = 1 || var(48) = 2) && var(46)
trigger36 = stateno = 1400 && (var(48) = 1 || var(48) = 2) && var(46)
trigger37 = stateno = 1500 && (var(48) = 1 || var(48) = 2) && var(46)
trigger38 = stateno = 1700 && (var(48) = 1 || var(48) = 2) && var(46)
trigger39 = stateno = 1900 && (var(48) = 1 || var(48) = 2) && var(46)
trigger40 = stateno = 2200 && (var(48) = 1 || var(48) = 2) && var(46)

;---------------------------------------------------------------------------
;虎煌拳（ノーマル）
[State -1, gate]
type = ChangeState
value = 1800
triggerall = var(12) = 10
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "koou1" || Command = "koou2"
triggerall = statetype != A
triggerall = NumProjID(1005) = 0 && NumProjID(1605) = 0 && NumProjID(1805) = 0 && NumProjID(3005) = 0 && NumProjID(3305) = 0 && NumProjID(3505) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 365 && (var(48) = 1 || var(48) = 2)
trigger17 = stateno = 200 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger18 = stateno = 201 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger19 = stateno = 211 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger20 = stateno = 221 && (animelem=5,<0 || animelem=6,>0) && var(46)
trigger21 = stateno = 400 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger22 = stateno = 410 && (animelem=3,<0 || animelem=6,>0) && var(46)
trigger23 = stateno = 420 && (animelem=5,<0 || animelem=7,>0) && var(46) && !var(12)
trigger24 = stateno = 420 && (animelem=2,<0 || animelem=3,>0) && var(46) && var(12)
trigger25 = stateno = 430 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger26 = stateno = 210 && var(46)
trigger27 = stateno = 220 && var(46)
trigger28 = stateno = 230 && var(46)
trigger29 = stateno = 231 && var(46)
trigger30 = stateno = 300 && (var(48) = 1 || var(48) = 2) && var(46)
trigger31 = stateno = 310 && (var(48) = 1 || var(48) = 2) && var(46)
trigger32 = stateno = 320 && (var(48) = 1 || var(48) = 2) && var(46)
trigger33 = stateno = 330 && (var(48) = 1 || var(48) = 2) && var(46)
trigger34 = stateno = 350 && (var(48) = 1 || var(48) = 2) && var(46)
trigger35 = stateno = 370 && (var(48) = 1 || var(48) = 2) && var(46)
trigger36 = stateno = 1400 && (var(48) = 1 || var(48) = 2) && var(46)
trigger37 = stateno = 1500 && (var(48) = 1 || var(48) = 2) && var(46)
trigger38 = stateno = 1700 && (var(48) = 1 || var(48) = 2) && var(46)
trigger39 = stateno = 1900 && (var(48) = 1 || var(48) = 2) && var(46)
trigger40 = stateno = 2200 && (var(48) = 1 || var(48) = 2) && var(46)

;---------------------------------------------------------------------------
;猛虎無頼岩
[State -1, gate]
type = ChangeState
value = 2200
triggerall = var(12) = 10
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "burai1" || Command = "burai2"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 365 && (var(48) = 1 || var(48) = 2)
trigger17 = stateno = 200 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger18 = stateno = 201 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger19 = stateno = 211 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger20 = stateno = 221 && (animelem=5,<0 || animelem=6,>0) && var(46)
trigger21 = stateno = 400 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger22 = stateno = 410 && (animelem=3,<0 || animelem=6,>0) && var(46)
trigger23 = stateno = 420 && (animelem=5,<0 || animelem=7,>0) && var(46) && !var(12)
trigger24 = stateno = 420 && (animelem=2,<0 || animelem=3,>0) && var(46) && var(12)
trigger25 = stateno = 430 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger26 = stateno = 210 && var(46)
trigger27 = stateno = 220 && var(46)
trigger28 = stateno = 230 && var(46)
trigger29 = stateno = 231 && var(46)
trigger30 = stateno = 300 && (var(48) = 1 || var(48) = 2) && var(46)
trigger31 = stateno = 310 && (var(48) = 1 || var(48) = 2) && var(46)
trigger32 = stateno = 320 && (var(48) = 1 || var(48) = 2) && var(46)
trigger33 = stateno = 330 && (var(48) = 1 || var(48) = 2) && var(46)
trigger34 = stateno = 350 && (var(48) = 1 || var(48) = 2) && var(46)
trigger35 = stateno = 370 && (var(48) = 1 || var(48) = 2) && var(46)
trigger36 = stateno = 1400 && (var(48) = 1 || var(48) = 2) && var(46)
trigger37 = stateno = 1500 && (var(48) = 1 || var(48) = 2) && var(46)
trigger38 = stateno = 1700 && (var(48) = 1 || var(48) = 2) && var(46)
trigger39 = stateno = 1900 && (var(48) = 1 || var(48) = 2) && var(46)

;---------------------------------------------------------------------------
;極限虎砲（本気）
[State -1, gate]
type = ChangeState
value = 1500
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "kohou_s"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 365 && (var(48) = 1 || var(48) = 2)
trigger17 = stateno = 200 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger18 = stateno = 201 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger19 = stateno = 211 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger20 = stateno = 221 && (animelem=5,<0 || animelem=6,>0) && var(46)
trigger21 = stateno = 400 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger22 = stateno = 410 && (animelem=3,<0 || animelem=6,>0) && var(46)
trigger23 = stateno = 420 && (animelem=5,<0 || animelem=7,>0) && var(46) && !var(12)
trigger24 = stateno = 420 && (animelem=2,<0 || animelem=3,>0) && var(46) && var(12)
trigger25 = stateno = 430 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger26 = stateno = 210 && var(46)
trigger27 = stateno = 220 && var(46)
trigger28 = stateno = 230 && var(46)
trigger29 = stateno = 231 && var(46)
trigger30 = stateno = 300 && (var(48) = 1 || var(48) = 2) && var(46)
trigger31 = stateno = 310 && (var(48) = 1 || var(48) = 2) && var(46)
trigger32 = stateno = 320 && (var(48) = 1 || var(48) = 2) && var(46)
trigger33 = stateno = 330 && (var(48) = 1 || var(48) = 2) && var(46)
trigger34 = stateno = 350 && (var(48) = 1 || var(48) = 2) && var(46)
trigger35 = stateno = 370 && (var(48) = 1 || var(48) = 2) && var(46)
trigger36 = stateno = 1400 && (var(48) = 1 || var(48) = 2) && var(46)
trigger37 = stateno = 1700 && (var(48) = 1 || var(48) = 2) && var(46)
trigger38 = stateno = 1900 && (var(48) = 1 || var(48) = 2) && var(46)
trigger39 = stateno = 2200 && (var(48) = 1 || var(48) = 2) && var(46)

;---------------------------------------------------------------------------
;翔乱脚
[State -1, gate]
type = ChangeState
value = 2300
triggerall = var(12) = 10
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "shoran1" || Command = "shoran2"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 365 && (var(48) = 1 || var(48) = 2)

;---------------------------------------------------------------------------
;飛燕疾風脚（本気）
[State -1, gate]
type = ChangeState
value = 1100
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "hien1" || Command = "hien2"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 365 && (var(48) = 1 || var(48) = 2)
trigger17 = stateno = 200 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger18 = stateno = 201 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger19 = stateno = 211 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger20 = stateno = 221 && (animelem=5,<0 || animelem=6,>0) && var(46)
trigger21 = stateno = 400 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger22 = stateno = 410 && (animelem=3,<0 || animelem=6,>0) && var(46)
trigger23 = stateno = 420 && (animelem=5,<0 || animelem=7,>0) && var(46) && !var(12)
trigger24 = stateno = 420 && (animelem=2,<0 || animelem=3,>0) && var(46) && var(12)
trigger25 = stateno = 430 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger26 = stateno = 210 && var(46)
trigger27 = stateno = 220 && var(46)
trigger28 = stateno = 230 && var(46)
trigger29 = stateno = 231 && var(46)
trigger30 = stateno = 300 && (var(48) = 1 || var(48) = 2) && var(46)
trigger31 = stateno = 310 && (var(48) = 1 || var(48) = 2) && var(46)
trigger32 = stateno = 320 && (var(48) = 1 || var(48) = 2) && var(46)
trigger33 = stateno = 330 && (var(48) = 1 || var(48) = 2) && var(46)
trigger34 = stateno = 350 && (var(48) = 1 || var(48) = 2) && var(46)
trigger35 = stateno = 370 && (var(48) = 1 || var(48) = 2) && var(46)
trigger36 = stateno = 1400 && (var(48) = 1 || var(48) = 2) && var(46)
trigger37 = stateno = 1500 && (var(48) = 1 || var(48) = 2) && var(46)
trigger38 = stateno = 1700 && (var(48) = 1 || var(48) = 2) && var(46)
trigger39 = stateno = 1900 && (var(48) = 1 || var(48) = 2) && var(46)
trigger40 = stateno = 2200 && (var(48) = 1 || var(48) = 2) && var(46)

;---------------------------------------------------------------------------
;飛燕疾風脚（ノーマル）
[State -1, gate]
type = ChangeState
value = 2000
triggerall = var(12) = 10
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "hien1" || Command = "hien2"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 325 && (var(48) = 1 || var(48) = 2)
trigger12 = stateno = 335 && (var(48) = 1 || var(48) = 2)
trigger13 = stateno = 340 && (var(48) = 1 || var(48) = 2)
trigger14 = stateno = 355 && (var(48) = 1 || var(48) = 2)
trigger15 = stateno = 360 && (var(48) = 1 || var(48) = 2)
trigger16 = stateno = 365 && (var(48) = 1 || var(48) = 2)
trigger17 = stateno = 200 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger18 = stateno = 201 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger19 = stateno = 211 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger20 = stateno = 221 && (animelem=5,<0 || animelem=6,>0) && var(46)
trigger21 = stateno = 400 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger22 = stateno = 410 && (animelem=3,<0 || animelem=6,>0) && var(46)
trigger23 = stateno = 420 && (animelem=5,<0 || animelem=7,>0) && var(46) && !var(12)
trigger24 = stateno = 420 && (animelem=2,<0 || animelem=3,>0) && var(46) && var(12)
trigger25 = stateno = 430 && (animelem=3,<0 || animelem=4,>0) && var(46)
trigger26 = stateno = 210 && var(46)
trigger27 = stateno = 220 && var(46)
trigger28 = stateno = 230 && var(46)
trigger29 = stateno = 231 && var(46)
trigger30 = stateno = 300 && (var(48) = 1 || var(48) = 2) && var(46)
trigger31 = stateno = 310 && (var(48) = 1 || var(48) = 2) && var(46)
trigger32 = stateno = 320 && (var(48) = 1 || var(48) = 2) && var(46)
trigger33 = stateno = 330 && (var(48) = 1 || var(48) = 2) && var(46)
trigger34 = stateno = 350 && (var(48) = 1 || var(48) = 2) && var(46)
trigger35 = stateno = 370 && (var(48) = 1 || var(48) = 2) && var(46)
trigger36 = stateno = 1400 && (var(48) = 1 || var(48) = 2) && var(46)
trigger37 = stateno = 1500 && (var(48) = 1 || var(48) = 2) && var(46)
trigger38 = stateno = 1700 && (var(48) = 1 || var(48) = 2) && var(46)
trigger39 = stateno = 1900 && (var(48) = 1 || var(48) = 2) && var(46)
trigger40 = stateno = 2200 && (var(48) = 1 || var(48) = 2) && var(46)

;===========================================================================
;---------------------------------------------------------------------------
;ガードキャンセル攻撃
[State -1]
type = ChangeState
value = ifelse(var(12),345,235)
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Power >= 1000 
triggerall = Command = "throw_2" 
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153

;---------------------------------------------------------------------------
;ガードキャンセルフロントステップ
[State -1]
type = ChangeState
value = 101
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = (Command = "gc_step" && Power >= 600) || (Command = "FF" && Power >= 200)
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153

;---------------------------------------------------------------------------
;パワー溜め
[State -1]
type = ChangeState
value = 1300
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = var(46) = 0
triggerall = statetype != A
triggerall = ctrl
triggerall = (command = "chargex" && command = "chargey" && command = "chargea")
triggerall = roundstate = 2
trigger1 = power < 3000

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)

;---------------------------------------------------------------------------
;フロントグランドステップ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;三角跳び
[State -1, Run Back]
type = ChangeState
value = 48
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = command = "holdup"
triggerall = stateno = 50 && prevstateno != 48
triggerall = pos y < -20
trigger1 = frontedgebodydist < 5 && command = "holdback"
trigger2 = backedgebodydist < 5 && command = "holdfwd"

;---------------------------------------------------------------------------
;投げ
[State -1, Throw]
type = ChangeState
value = 900
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = (command = "throw_1" || command = "throw_2")
triggerall = statetype = S
triggerall = ctrl
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;避け攻撃（パンチ）
[State -1]
type = ChangeState
value = 300
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown" && command = "holdback"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;避け攻撃（キック）
[State -1]
type = ChangeState
value = 310
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown" && command = "holdback"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;ボディーブロー
[State -1]
type = ChangeState
value = 320
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command = "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)

;---------------------------------------------------------------------------
;ボディーブロー（キャンセル版）
[State -1]
type = ChangeState
value = 325
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command = "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger2 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger8 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger9 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;ローキック
[State -1]
type = ChangeState
value = 330
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command = "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)

;---------------------------------------------------------------------------
;ローキック（キャンセル版）
[State -1]
type = ChangeState
value = 335
triggerall = var(12) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command = "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger2 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger8 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger9 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;鬼ごろし
[State -1]
type = ChangeState
value = 340
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;瓦割り
[State -1]
type = ChangeState
value = 350
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)

;---------------------------------------------------------------------------
;瓦割り（キャンセル版）
[State -1]
type = ChangeState
value = 355
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger2 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger8 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger9 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;鬼車
[State -1]
type = ChangeState
value = 360
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)

;---------------------------------------------------------------------------
;鬼車（キャンセル版）
[State -1]
type = ChangeState
value = 365
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger2 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger8 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger9 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;飛車落とし
[State -1]
type = ChangeState
value = 370
triggerall = var(12) = 10
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown" && command = "holdback"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 201 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 211 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 221 && ((animelem=5,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 400 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 410 && ((animelem=3,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 420 && ((animelem=5,>0 && animelem=7,<0) || (var(48) = 1 || var(48) = 2)) && !var(12)
trigger9 = stateno = 420 && ((animelem=2,>0 && animelem=3,<0) || (var(48) = 1 || var(48) = 2)) && var(12)
trigger10 = stateno = 430 && ((animelem=3,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;近距離立ち弱パンチ
[State -1, Taunt]
type = ChangeState
value = 201
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 20
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && animelem=3,>0
trigger3 = stateno = 201 && animelem=3,>0
trigger4 = stateno = 221 && animelem=5,>0
trigger5 = stateno = 400 && animelem=3,>0
trigger6 = stateno = 420 && animelem=2,>0 && var(12)

;---------------------------------------------------------------------------
;遠距離立ち弱パンチ
[State -1, Taunt]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && animelem=3,>0
trigger3 = stateno = 201 && animelem=3,>0
trigger4 = stateno = 221 && animelem=5,>0
trigger5 = stateno = 400 && animelem=3,>0
trigger6 = stateno = 420 && animelem=2,>0 && var(12)

;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State -1, Taunt]
type = ChangeState
value = 211
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 25
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)

;---------------------------------------------------------------------------
;遠距離立ち強パンチ
[State -1, Taunt]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)

;---------------------------------------------------------------------------
;近距離立ち弱キック
[State -1, Taunt]
type = ChangeState
value = 221
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 20
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && animelem=3,>0
trigger3 = stateno = 201 && animelem=3,>0
trigger4 = stateno = 221 && animelem=5,>0
trigger5 = stateno = 400 && animelem=3,>0
trigger6 = stateno = 420 && animelem=2,>0 && var(12)

;---------------------------------------------------------------------------
;遠距離立ち弱キック
[State -1, Taunt]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && animelem=3,>0
trigger3 = stateno = 201 && animelem=3,>0
trigger4 = stateno = 221 && animelem=5,>0
trigger5 = stateno = 400 && animelem=3,>0
trigger6 = stateno = 420 && animelem=2,>0 && var(12)

;---------------------------------------------------------------------------
;近距離立ち強キック
[State -1, Taunt]
type = ChangeState
value = 231
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 25
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)

;---------------------------------------------------------------------------
;遠距離立ち強キック
[State -1, Taunt]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && animelem=3,>0
trigger3 = stateno = 201 && animelem=3,>0
trigger4 = stateno = 221 && animelem=5,>0
trigger5 = stateno = 400 && animelem=3,>0
trigger6 = stateno = 420 && animelem=2,>0 && var(12)

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 200 && animelem=3,>0
trigger3 = stateno = 201 && animelem=3,>0
trigger4 = stateno = 221 && animelem=5,>0
trigger5 = stateno = 400 && animelem=3,>0
trigger6 = stateno = 420 && animelem=2,>0 && var(12)

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)

;---------------------------------------------------------------------------
;垂直ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 601
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = statetype = A
triggerall = vel X = 0 && var(12) = 10
trigger1 = ctrl

;---------------------------------------------------------------------------
;斜めジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = statetype = A
triggerall = (vel X != 0 && var(12) = 10) || var(12) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;垂直ジャンプ弱キック
[State -1]
type = ChangeState
value = 621
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
triggerall = vel X = 0 && var(12) = 10
trigger1 = ctrl

;---------------------------------------------------------------------------
;斜めジャンプ弱キック
[State -1]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
triggerall = (vel X != 0 && var(12) = 10) || var(12) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;垂直ジャンプ強キック
[State -1]
type = ChangeState
value = 631
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = statetype = A
triggerall = vel X = 0
trigger1 = ctrl
 
;---------------------------------------------------------------------------
;斜めジャンプ強キック
[State -1]
type = ChangeState
value = 630
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = statetype = A
triggerall = vel X != 0
trigger1 = ctrl

;---------------------------------------------------------------------------