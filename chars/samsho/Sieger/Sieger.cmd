;ヴァー

;-| Super Motions |--------------------------------------------------------
[Command]
name = "ope"
command = ~F, D, B, F, a+b
time = 20

[Command]
name = "ope"
command = ~F, D, B, F, c
time = 20

[Command]
name = "gra"
command = ~D, F, D, F, x
time = 25

[Command]
name = "gra"
command = ~D, F, D, F, y
time = 25

[Command]
name = "BX-07R"
command = ~B, D, F, s
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "nu"
command =~F, D, B, F, B, x
time = 25

[Command]
name = "wf"
command =~F, B, D, F, x+y
time = 20

[Command]
name = "wf"
command =~F, B, D, F, z
time = 20

[Command]
name = "bl_c"
command =~F, D, B, a+b

[Command]
name = "bl_c"
command =~F, D, B, c

[Command]
name = "bl_a"
command =~F, D, B, a

[Command]
name = "bl_b"
command =~F, D, B, b

[Command]
name = "el"
command =~F, D, B, x

[Command]
name = "dh"
command =~F, D, B, y

[Command]
name = "shi_x"
command =~B, D, DB, x

[Command]
name = "shi_y"
command =~B, D, DB, y

[Command]
name = "ra_x"
command =~F, D, DF, x

[Command]
name = "ra_y"
command =~F, D, DF, y

[Command]
name = "val"
command =~D, DF, F, x

[Command]
name = "dai"
command =~D, DF, F, y

[Command]
name = "ti"
command =~D, DF, F, a

[Command]
name = "fa"
command =~D, DF, F, y


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
name = "Froll"
command = DF, DF
time = 10

[Command]
name = "Broll"
command = DB, DB
time = 10

[Command]
name = "DD"
command = D, D
time = 10

[Command]
name = "fx"
command = x, x
time = 20

[Command]
name = "xx"
command = x, x
time = 15

[Command]
name = "xxx"
command = x, x, x
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = z
time = 1

[Command]
name = "z"
command = x+y
time = 1

[Command]
name = "c"
command = a+b
time = 1

[Command]
name = "xa"
command = x+a
time = 1

[Command]
name = "yb"
command = y+b
time = 1

[Command]
name = "ya"
command = y+a
time = 1

[Command]
name = "meg"
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fs"
command = /DF,y+a
time = 1

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
name = "boost"
command = z
time = 1

[Command]
name = "boost"
command = b
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

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "boost2"
command = /z
time = 1

[Command]
name = "boost2"
command = /b
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "UF"
command = /UF
time = 1

[Command]
name = "U"
command = /U
time = 1

[Command]
name = "UB"
command = /UB
time = 1

[Command]
name = "F"
command = /F
time = 1

[Command]
name = "B"
command = /B
time = 1

[Command]
name = "DF"
command = /DF
time = 1

[Command]
name = "D"
command = /D
time = 1

[Command]
name = "DB"
command = /DB
time = 1


;---------------------------------------------------------------------------
[Statedef -1] ;この一行は削除しないで下さい

;===========================================================================
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;tes
[State -1]
type = null
;type = ChangeState
value = 5152
;triggerall = var(20) = 0
trigger1 = command = "a"
trigger1 = statetype = S
trigger1 = ctrl

;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;===========================================================================
;搭載
[State -1]
type = ChangeState
value = 3200
triggerall = var(20) = 0
triggerall = power >= 500
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "BX-07R"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [110,111]) && time < 20

;排出
[State -1]
type = ChangeState
value = 3250
triggerall = var(20) = 1
triggerall = stateno != 102 && stateno != 107
triggerall = command = "BX-07R"
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;オペラツィオンティーガー
[State -1]
type = ChangeState
value = 3000
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = power >= 1000
triggerall = command != "xa" && command != "yb"
triggerall = command = "ope"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [110,111]) && time < 20
trigger3 = MoveContact
trigger3 = stateno = 220 || stateno = 260 || stateno = 280 || stateno = 460
trigger4 = MoveContact && stateno = 230
trigger4 = animelem = 5,< 0
trigger5 = MoveContact && stateno = 310
trigger5 = animelem = 7,>= 0 && animelem = 9,< 0
trigger6 = MoveContact && stateno = 430
trigger6 = animelem = 24,>= 0 && animelem = 35,< 0
trigger7 = MoveContact && stateno = 440
trigger7 = animelem = 10,>= 0 && animelem = 11,< 0
trigger8 = stateno = 1600

;---------------------------------------------------------------------------
;ぬいぐるみ
[State -1]
type = ChangeState
value = 1600
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "nu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [110,111]) && time < 20

;---------------------------------------------------------------------------
;ヴォルフ・ファンゲン
[State -1]
type = ChangeState
value = 1400
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "wf"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [110,111]) && time < 20
trigger3 = MoveContact
trigger3 = stateno = 220 || stateno = 260 || stateno = 280 || stateno = 460
trigger4 = MoveContact && stateno = 230
trigger4 = animelem = 5,< 0
trigger5 = MoveContact && stateno = 310
trigger5 = animelem = 7,>= 0 && animelem = 9,< 0
trigger6 = MoveContact && stateno = 430
trigger6 = animelem = 24,>= 0 && animelem = 35,< 0
trigger7 = MoveContact && stateno = 440
trigger7 = animelem = 10,>= 0 && animelem = 11,< 0
trigger8 = stateno = 1600

;---------------------------------------------------------------------------
;ブリッツ・イェーガー
[State -1]
type = ChangeState
value = 1200
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "bl_a" || command = "bl_b" || command = "bl_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [110,111]) && time < 20
trigger3 = MoveContact
trigger3 = stateno = 220 || stateno = 260 || stateno = 280 || stateno = 460
trigger4 = MoveContact && stateno = 230
trigger4 = animelem = 5,< 0
trigger5 = MoveContact && stateno = 310
trigger5 = animelem = 7,>= 0 && animelem = 9,< 0
trigger6 = MoveContact && stateno = 430
trigger6 = animelem = 24,>= 0 && animelem = 35,< 0
trigger7 = MoveContact && stateno = 440
trigger7 = animelem = 10,>= 0 && animelem = 11,< 0
trigger8 = stateno = 1600

;---------------------------------------------------------------------------
;ヴァルカーン・ヴァイネン
[State -1]
type = ChangeState
value = 1000
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "val"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [110,111]) && time < 20
trigger3 = MoveContact
trigger3 = stateno = 220 || stateno = 260 || stateno = 280 || stateno = 460
trigger4 = MoveContact && stateno = 230
trigger4 = animelem = 5,< 0
trigger5 = MoveContact && stateno = 310
trigger5 = animelem = 7,>= 0 && animelem = 9,< 0
trigger6 = MoveContact && stateno = 430
trigger6 = animelem = 24,>= 0 && animelem = 35,< 0
trigger7 = MoveContact && stateno = 440
trigger7 = animelem = 10,>= 0 && animelem = 11,< 0
trigger8 = stateno = 1600

;---------------------------------------------------------------------------
;ティーガー・コップ
[State -1]
type = ChangeState
value = 1500
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "ti"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [110,111]) && time < 20
trigger3 = MoveContact
trigger3 = stateno = 220 || stateno = 260 || stateno = 280 || stateno = 460
trigger4 = MoveContact && stateno = 230
trigger4 = animelem = 5,< 0
trigger5 = MoveContact && stateno = 310
trigger5 = animelem = 7,>= 0 && animelem = 9,< 0
trigger6 = MoveContact && stateno = 430
trigger6 = animelem = 24,>= 0 && animelem = 35,< 0
trigger7 = MoveContact && stateno = 440
trigger7 = animelem = 10,>= 0 && animelem = 11,< 0
trigger8 = stateno = 1600

;ファルケ・ナーゲル
[State -1]
type = ChangeState
value = 1510
triggerall = command != "xa" && command != "yb"
triggerall = command = "fa"
trigger1 = stateno = 1500
trigger1 = MoveContact

;エレファント・グリード
[State -1]
type = ChangeState
value = 1520
triggerall = command != "xa" && command != "yb"
triggerall = command = "el"
trigger1 = stateno = 1510
trigger1 = var(5) = 1

;---------------------------------------------------------------------------
;ファイヤー・ストゥーム
[State -1]
type = ChangeState
value = 1300
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "fs"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [110,111]) && time < 20
trigger3 = MoveContact
trigger3 = stateno = 220 || stateno = 260 || stateno = 280 || stateno = 460
trigger4 = MoveContact && stateno = 230
trigger4 = animelem = 5,< 0
trigger5 = MoveContact && stateno = 310
trigger5 = animelem = 7,>= 0 && animelem = 9,< 0
trigger6 = MoveContact && stateno = 430
trigger6 = animelem = 24,>= 0 && animelem = 35,< 0
trigger7 = MoveContact && stateno = 440
trigger7 = animelem = 10,>= 0 && animelem = 11,< 0
trigger8 = stateno = 1600

;==========================================================
;シャイニングアーム
[State -1]
type = ChangeState
value = 3100
triggerall = var(20) = 1
triggerall = power >= 1000
triggerall = command = "gra"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = (stateno = [330,340]) || stateno = 500
trigger3 = MoveContact
trigger3 = stateno = 350 && animelem = 11,< 0
trigger4 = var(14) = 1
trigger4 = stateno = 510

;---------------------------------------------------
;ライアットストライク
[State -1]
type = ChangeState
value = 2300
triggerall = var(20) = 1
triggerall = command = "ra_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = (stateno = [330,340]) || stateno = 500
trigger3 = MoveContact
trigger3 = stateno = 350 && animelem = 11,< 0
trigger4 = var(14) = 1
trigger4 = stateno = 510

;ライアットストライク強
[State -1]
type = ChangeState
value = 2350
triggerall = var(20) = 1
triggerall = command = "ra_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = (stateno = [330,340]) || stateno = 500
trigger3 = MoveContact
trigger3 = stateno = 350 && animelem = 11,< 0
trigger4 = var(14) = 1
trigger4 = stateno = 510

;ライアットストライク（空中）
[State -1]
type = ChangeState
value = 2400
triggerall = var(20) = 1
triggerall = command = "ra_x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(14) = 1
trigger2 = stateno = 700 || stateno = 720

;ライアットストライク（強・空中）
[State -1]
type = ChangeState
value = 2450
triggerall = var(20) = 1
triggerall = command = "ra_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(14) = 1
trigger2 = stateno = 700 || stateno = 720

;==========================================================
;シャイニングアーム
[State -1]
type = ChangeState
value = 2100
triggerall = var(20) = 1
triggerall = command = "shi_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = (stateno = [330,340]) || stateno = 500
trigger3 = MoveContact
trigger3 = stateno = 350 && animelem = 11,< 0
trigger4 = var(14) = 1
trigger4 = stateno = 510

;シャイニングアーム強
[State -1]
type = ChangeState
value = 2150
triggerall = var(20) = 1
triggerall = command = "shi_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = (stateno = [330,340]) || stateno = 500
trigger3 = MoveContact
trigger3 = stateno = 350 && animelem = 11,< 0
trigger4 = var(14) = 1
trigger4 = stateno = 510

;==========================================================
;デスボルト
[State -1]
type = ChangeState
value = 2200
triggerall = var(20) = 1
triggerall = command = "el"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = (stateno = [330,340]) || stateno = 500
trigger3 = MoveContact
trigger3 = stateno = 350 && animelem = 11,< 0
trigger4 = var(14) = 1
trigger4 = stateno = 510

;デスボルト強
[State -1]
type = ChangeState
value = 2250
triggerall = var(20) = 1
triggerall = command = "dh"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = (stateno = [330,340]) || stateno = 500
trigger3 = MoveContact
trigger3 = stateno = 350 && animelem = 11,< 0
trigger4 = var(14) = 1
trigger4 = stateno = 510

;==========================================================
;ダイナブロウ
[State -1]
type = ChangeState
value = 2000
triggerall = var(20) = 1
triggerall = command = "val"
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = (stateno = [330,340]) || stateno = 500
trigger3 = MoveContact
trigger3 = stateno = 350 && animelem = 11,< 0
trigger4 = var(14) = 1
trigger4 = stateno = 510 || stateno = 700 || stateno = 720

;ダイナブロウ強
[State -1]
type = ChangeState
value = 2050
triggerall = var(20) = 1
triggerall = command = "dai"
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = (stateno = [330,340]) || stateno = 500
trigger3 = MoveContact
trigger3 = stateno = 350 && animelem = 11,< 0
trigger4 = var(14) = 1
trigger4 = stateno = 510 || stateno = 700 || stateno = 720

;---------------------------------------------------------------------------
;前転
[State -1]
type = ChangeState
value = 110
triggerall = var(20) = 0
triggerall = command = "Froll"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1600

;後転
[State -1]
type = ChangeState
value = 111
triggerall = var(20) = 0
triggerall = command = "Broll"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1600

;下段避け
[State -1]
type = ChangeState
value = 950
triggerall = var(20) = 0
trigger1 = command = "ya"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;伏せ
[State -1]
type = ChangeState
value = 115
triggerall = var(20) = 0
triggerall = command = "DD"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1600

;---------------------------------------------------------------------------
;退き込み
[State -1]
type = ChangeState
value = 105 + var(20) * 2
triggerall = stateno != 102 && stateno != 107
triggerall = ctrl
trigger1 = command = "BB"
trigger1 = statetype = S
trigger2 = time > 1
trigger2 = command = "boost" && command = "holdback"
trigger2 = statetype != A && var(20) = 1

;退き込み
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = stateno = 1600

;---------------------------------------------------------------------------
;踏み込み
[State -1]
type = ChangeState
value = 100 + var(20) * 2
triggerall = stateno != 102 && stateno != 107
triggerall = ctrl
trigger1 = command = "FF"
trigger1 = statetype = S
trigger2 = command = "boost" && time > 1
trigger2 = statetype != A && var(20) = 1

;踏み込み
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = stateno = 1600

;---------------------------------------------------------------------------
;シェーデル・エアオーベルング
[State -1]
type = ChangeState
value = 800
triggerall = var(20) = 0
triggerall = command = "y" || command = "z" 
triggerall = command != "xa" && command != "yb"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;レーベ・シュートスツァーン・シュトゥルムアングリフ
[State -1]
type = ChangeState
value = 850
triggerall = var(20) = 0
triggerall = command = "b" || command = "c" 
triggerall = command != "xa" && command != "yb"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;フォアスト・ツヴァングスマースナーメ
[State -1]
type = ChangeState
value = 900
triggerall = var(20) = 0
triggerall = command = "y" || command = "z" 
triggerall = command != "xa" && command != "yb"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holddown"
trigger1 = p2bodydist X < 6 && p2bodydist y = [-20,20]
trigger1 = p2statetype = A && p2movetype != H
trigger1 = pos y < -100

;===========================================================================
;コマンドスルー
[State -1]
type = ChangeState
value = 1900
triggerall = var(20) = 1
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 102 && stateno != 107
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;リフトスルー
[State -1]
type = ChangeState
value = 1950
triggerall = var(20) = 1
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 102 && stateno != 107
triggerall = (p2statetype = L) && (p2stateno = 5110)
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8

;--------------------------------------------
;メガクラッシュ
[State -1]
type = ChangeState
value = 2700
triggerall = var(20) = 1
triggerall = power >= 1000
triggerall = command = "meg"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近立ち強パンチ
[State -1]
type = ChangeState
value = 250
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = p2bodydist X < 50
triggerall = command != "xa" && command != "yb"
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52

;立ち強パンチ
[State -1]
type = ChangeState
value = 240
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1]
type = ChangeState
value = 210
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = p2bodydist X < 50
triggerall = command != "xa" && command != "yb"
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52

;立ち弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52

;---------------------------------------------------------------------------
;近立ち中パンチ
[State -1]
type = ChangeState
value = 230
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = p2bodydist X < 50
triggerall = command != "xa" && command != "yb"
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52

;立ち中パンチ
[State -1]
type = ChangeState
value = 220
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52

;---------------------------------------------------------------------------
;近立ち強キック
[State -1]
type = ChangeState
value = 310
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = p2bodydist X < 60
triggerall = command != "xa" && command != "yb"
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52

;立ち強キック
[State -1]
type = ChangeState
value = 300
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52

;---------------------------------------------------------------------------
;近立ち弱キック
[State -1]
type = ChangeState
value = 270
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = p2bodydist X < 50
triggerall = command != "xa" && command != "yb"
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52

;立ち弱キック
[State -1]
type = ChangeState
value = 260
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52

;---------------------------------------------------------------------------
;近立ち中キック
[State -1]
type = ChangeState
value = 290
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = p2bodydist X < 50
triggerall = command != "xa" && command != "yb"
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52

;立ち中キック
[State -1]
type = ChangeState
value = 280
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;--------------------------------------------
;Ｕ－バルカン
[State -1]
type = ChangeState
value = 2830
triggerall = var(20) = 1 && var(15) = 0
triggerall = stateno != 102 && stateno != 107
triggerall = command = "a"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;バルカン 立ち
[State -1]
type = ChangeState
value = 2800
triggerall = var(20) = 1 && var(15) = 0
triggerall = stateno != 102 && stateno != 107
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;バルカン 屈み
[State -1]
type = ChangeState
value = 2820
triggerall = var(20) = 1 && var(15) = 0
triggerall = stateno != 102 && stateno != 107
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;ダッシュバルカン
[State -1]
type = ChangeState
value = 2850
triggerall = var(20) = 1 && var(15) = 0
triggerall = command = "a"
trigger1 = stateno = 102
trigger2 = prevstateno = 102 && stateno = 10

;ダッシュバルカン
[State -1]
type = ChangeState
value = 2870
triggerall = var(20) = 1 && var(15) = 0
triggerall = command = "a"
trigger1 = stateno = 107
trigger2 = prevstateno = 107 && stateno = 10

;ジャンプバルカン
[State -1]
type = ChangeState
value = 2880
triggerall = var(20) = 1 && var(15) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;--------------------------------------------
;立ちＡ１
[State -1]
type = ChangeState
value = 330
triggerall = var(20) = 1
triggerall = stateno != 102 && stateno != 107
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;--------------------------------------------
;立ちＡ２
[State -1]
type = ChangeState
value = 340
triggerall = var(20) = 1
triggerall = stateno != 102 && stateno != 107
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52

;--------------------------------------------
;ダッシュＡ１
[State -1]
type = ChangeState
value = 350
triggerall = var(20) = 1
triggerall = command = "x"
trigger1 = stateno = 102 || stateno = 107
trigger2 = prevstateno = 102 && stateno = 10
trigger3 = prevstateno = 107 && stateno = 10

;--------------------------------------------
;ダッシュＡ２
[State -1]
type = ChangeState
value = 360
triggerall = var(20) = 1
triggerall = command = "y"
trigger1 = stateno = 102 || stateno = 107
trigger2 = prevstateno = 102 && stateno = 10
trigger3 = prevstateno = 107 && stateno = 10

;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = 195 + (var(4) = -10)
triggerall = var(20) = 0
triggerall = stateno = 0
trigger1 = var(4) = 10
trigger2 = var(4) = -10

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 440
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 410
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = p2bodydist X < 50
triggerall = command != "xa" && command != "yb"
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;近しゃがみ中パンチ
[State -1]
type = ChangeState
value = 430
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = p2bodydist X < 50
triggerall = command != "xa" && command != "yb"
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;しゃがみ中パンチ
[State -1]
type = ChangeState
value = 420
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1]
type = ChangeState
value = 470
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = 450
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ中キック
[State -1]
type = ChangeState
value = 460
triggerall = var(20) = 0
triggerall = stateno != 100
triggerall = command != "xa" && command != "yb"
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;--------------------------------------------
;しゃがみＡ１
[State -1]
type = ChangeState
value = 500
triggerall = var(20) = 1
triggerall = stateno != 102 && stateno != 107
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;--------------------------------------------
;しゃがみＡ２
[State -1]
type = ChangeState
value = 510
triggerall = var(20) = 1
triggerall = stateno != 102 && stateno != 107
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強パンチ（垂直）
[State -1]
type = ChangeState
value = 640
triggerall = var(20) = 0
triggerall = command != "xa" && command != "yb"
triggerall = command = "z"
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl

;空中強パンチ
[State -1]
type = ChangeState
value = 630
triggerall = var(20) = 0
triggerall = command != "xa" && command != "yb"
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱パンチ（垂直）
[State -1]
type = ChangeState
value = 610
triggerall = var(20) = 0
triggerall = command != "xa" && command != "yb"
triggerall = command = "x"
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl

;空中弱パンチ
[State -1]
type = ChangeState
value = 600
triggerall = var(20) = 0
triggerall = command != "xa" && command != "yb"
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中中パンチ
[State -1]
type = ChangeState
value = 620
triggerall = var(20) = 0
triggerall = command != "xa" && command != "yb"
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1]
type = ChangeState
value = 680
triggerall = var(20) = 0
triggerall = command != "xa" && command != "yb"
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱キック
[State -1]
type = ChangeState
value = 650
triggerall = var(20) = 0
triggerall = command != "xa" && command != "yb"
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック（垂直）
[State -1]
type = ChangeState
value = 670
triggerall = var(20) = 0
triggerall = command != "xa" && command != "yb"
triggerall = command = "b"
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl

;空中強キック
[State -1]
type = ChangeState
value = 660
triggerall = var(20) = 0
triggerall = command != "xa" && command != "yb"
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプＡ１
[State -1]
type = ChangeState
value = 700
triggerall = var(20) = 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;アンダーバーナー
[State -1]
type = ChangeState
value = 720
triggerall = var(20) = 1
triggerall = command = "holddown"
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;ジャンプＡ２
[State -1]
type = ChangeState
value = 710
triggerall = var(20) = 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ブーストジャンプ（UF）
[State -1]
type = ChangeState
value = 1801
triggerall = var(20) = 1
triggerall = var(12) > 0
triggerall = command = "UF"
triggerall = statetype = A
triggerall = ctrl
trigger1 = prevstateno != 700 && prevstateno != 710
trigger1 = command = "boost" || command = "boost2"
trigger1 = stateno = [1801, 1810]
trigger2 = command = "boost"
trigger2 = stateno = 1800 && time > 9
trigger3 = command = "boost"
trigger3 = stateno = 1810
trigger3 = prevstateno = [700,710]

;ブーストジャンプ（U）
[State -1]
type = ChangeState
value = 1802
triggerall = var(20) = 1
triggerall = var(12) > 0
triggerall = command = "U"
triggerall = statetype = A
triggerall = ctrl
trigger1 = prevstateno != 700 && prevstateno != 710
trigger1 = command = "boost" || command = "boost2"
trigger1 = stateno = [1801, 1810]
trigger2 = command = "boost"
trigger2 = stateno = 1800 && time > 9
trigger3 = command = "boost"
trigger3 = stateno = 1810
trigger3 = prevstateno = [700,710]

;ブーストジャンプ（UB）
[State -1]
type = ChangeState
value = 1803
triggerall = var(20) = 1
triggerall = var(12) > 0
triggerall = command = "UB"
triggerall = statetype = A
triggerall = ctrl
trigger1 = prevstateno != 700 && prevstateno != 710
trigger1 = command = "boost" || command = "boost2"
trigger1 = stateno = [1801, 1810]
trigger2 = command = "boost"
trigger2 = stateno = 1800 && time > 9
trigger3 = command = "boost"
trigger3 = stateno = 1810
trigger3 = prevstateno = [700,710]

;ブーストジャンプ（F）
[State -1]
type = ChangeState
value = 1804
triggerall = var(20) = 1
triggerall = var(12) > 0
triggerall = command = "F"
triggerall = statetype = A
triggerall = ctrl
trigger1 = prevstateno != 700 && prevstateno != 710
trigger1 = command = "boost" || command = "boost2"
trigger1 = stateno = [1801, 1810]
trigger2 = command = "boost"
trigger2 = stateno = 1800 && time > 9
trigger3 = command = "boost"
trigger3 = stateno = 1810
trigger3 = prevstateno = [700,710]

;ブーストジャンプ（B）
[State -1]
type = ChangeState
value = 1805
triggerall = var(20) = 1
triggerall = var(12) > 0
triggerall = command = "B"
triggerall = statetype = A
triggerall = ctrl
trigger1 = prevstateno != 700 && prevstateno != 710
trigger1 = command = "boost" || command = "boost2"
trigger1 = stateno = [1801, 1810]
trigger2 = command = "boost"
trigger2 = stateno = 1800 && time > 9
trigger3 = command = "boost"
trigger3 = stateno = 1810
trigger3 = prevstateno = [700,710]

;ブーストジャンプ（DF）
[State -1]
type = ChangeState
value = 1806
triggerall = var(20) = 1
triggerall = var(12) > 0
triggerall = command = "DF"
triggerall = statetype = A
triggerall = ctrl
trigger1 = prevstateno != 700 && prevstateno != 710
trigger1 = command = "boost" || command = "boost2"
trigger1 = stateno = [1801, 1810]
trigger2 = command = "boost"
trigger2 = stateno = 1800 && time > 9
trigger3 = command = "boost"
trigger3 = stateno = 1810
trigger3 = prevstateno = [700,710]

;ブーストジャンプ（D）
[State -1]
type = ChangeState
value = 1807
triggerall = var(20) = 1
triggerall = var(12) > 0
triggerall = command = "D"
triggerall = statetype = A
triggerall = ctrl
trigger1 = prevstateno != 700 && prevstateno != 710
trigger1 = command = "boost" || command = "boost2"
trigger1 = stateno = [1801, 1810]
trigger2 = command = "boost"
trigger2 = stateno = 1800 && time > 9
trigger3 = command = "boost"
trigger3 = stateno = 1810
trigger3 = prevstateno = [700,710]

;ブーストジャンプ（DB）
[State -1]
type = ChangeState
value = 1808
triggerall = var(20) = 1
triggerall = var(12) > 0
triggerall = command = "DB"
triggerall = statetype = A
triggerall = ctrl
trigger1 = prevstateno != 700 && prevstateno != 710
trigger1 = command = "boost" || command = "boost2"
trigger1 = stateno = [1801, 1810]
trigger2 = command = "boost"
trigger2 = stateno = 1800 && time > 9
trigger3 = command = "boost"
trigger3 = stateno = 1810
trigger3 = prevstateno = [700,710]

;ブーストジャンプ（N）
[State -1]
type = ChangeState
value = 1809
triggerall = var(20) = 1
triggerall = var(12) > 0
triggerall = statetype = A
triggerall = ctrl
trigger1 = prevstateno != 700 && prevstateno != 710
trigger1 = command = "boost" || command = "boost2"
trigger1 = stateno = [1801, 1810]
trigger2 = command = "boost"
trigger2 = stateno = 1800 && time > 9
trigger3 = command = "boost"
trigger3 = stateno = 1810
trigger3 = prevstateno = [700,710]


