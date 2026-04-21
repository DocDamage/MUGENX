;-| AI |--------------------------------------------------------
[Command]
name = "AI"
command = ~D, B, U, F, a+b+c+x+y+z
time = 3

[Command]
name = "AI3"
command = ~U, D, DB, DF, F, U, U , z
time = 3

[Command]
name = "AI2"
command = ~U,U,D,B,D, DF , F , x
time = 3

[Command]
name = "AI4"
command = ~D, D, U, DF, F, U, U , c+z
time = 3

[Command]
name = "AI5"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "AI6"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "AI7"
command = U,U,D,D,B,F,B,F,z,z
time = 1

[Command]
name = "AI8"
command = U,D,B,F,U,D,B,F
time = 1

[Command]
name = "AI9"
command = U,U,D,D,B,F,B,F
time = 1

[Command]
name = "AI10"
command = U, D, B, F, U, D, B, F, s, s
time = 1

[Command]
name = "AI11"
command = U, D, B, F, U, D, B, F, a, a
time = 1

[Command]
name = "AI12"
command = U, D, B, F, U, D, B, F, b, b
time = 1

[Command]
name = "AI13"
command = U, D, B, F, U, D, B, F, c, c
time = 1

[Command]
name = "AI14"
command = U, D, B, F, U, D, B, F, x, x
time = 1

[Command]
name = "AI15"
command = U, D, B, F, U, D, B, F, y, y
time = 1

[Command]
name = "AI16"
command = U, D, B, F, U, D, B, F, z, z
time = 1

[Command]
name = "AI17"
command = a, b, z, b, a, x, y, y, z, b, b, a
time = 1

[Command]
name = "AI18"
command = U, DB, DB, D, DF, F, F, U, B, x, a
time = 1

[Command]
name = "AI19"
command = D, DB, DB, D, DF, F, F, F, F, b+z
time = 1

[Command]
name = "AI20"
command = D, DB, B, x+y+z+a+b+c
time = 1

;[Command]
;name = "AI21"
;command = ~D, DF, F, x
;time = 20

;-| 超必殺技 |--------------------------------------------------------
;ここには超必殺技を記述してください、同じ名前を「name =」欄に書けますが
;コマンドは絶対に違ったものにしてください。
;カンフーマンは弱パンチと強パンチで技が出せるように同じ名前のコマンドで
;内容が弱と強になっています。
;「time=20」と書くことで「コマンドを20フレーム以内に入力」と設定できます。
[Command]
name = "EXLP"
command = ~D, DF, F, b ;~F,B,F,B,DB,D,DF,F,b
time = 60

[Command]
name = "EX"
command = ~D, DB, B, DB, D, DF, F, b
time = 60

;[Command]
;name = "AVARON"
;command = ~D, DF, F, D, DF, F, z
;time = 60

[Command]
name = "breakwind"
command = ~D, DF, F, D, DF, F, x
time = 60

[Command]
name = "nagetyou"
command = ~D, DF, F, D, DF, F, a
time = 60

[Command]
name = "High wind"
command = ~D, DF, F, D, DF, F, y
time = 60

[Command]
name = "baria-"
command = ~D, DF, F, D, DF, F, b
time = 60

;-| 必殺技 |------------------------------------------------------
[Command]
name = "ripperEX"
command = ~D, DB, B, x+a

[Command]
name = "karu"
command = ~B, DB, D, DF, F, x

[Command]
name = "taikuu_S"
command = ~F, D, DF, y

[Command]
name = "taikuu_HS"
command = ~F, D, DF, b

[Command]
name = "hunt_S"
command = ~D, DF, F, y

[Command]
name = "hunt_HS"
command = ~D, DF, F, b

[Command]
name = "grand"
command = ~D, DF, F, a

[Command]
name = "ripper"
command = ~D, DB, B, x

[Command]
name = "braze"
command = ~D, DB, B, a

[Command]
name = "moon_s"
command = ~D, DB, B, y

[Command]
name = "moon_hs"
command = ~D, DB, B, b

[Command]
name = "CHARGE"
command = ~D, DB, B, z

[Command]
name = "RG"
command = F
time = 1

[Command]
name = "C_RG"
command = D
time = 1

[Command]
name = "GX"
command = B,B,F,F,B,F,B
time = 60

[Command]
name = "nage_b"
command = ~D, DB, B, c
time = 10

;※※※※※※※※※※※※※※※※※※※※ハイジャンプコマンド
;下をちょっと押して上を押す、と言う意味。
[Command]
name = "jump"    
command = ~D,$U
time = 10

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
command = a+b
time = 1

[Command]
name = "recovery2"
command = x+a
time = 1

[Command]
name = "recovery3"
command = x+y
time = 1

[Command]
name = "recovery4"
command = y+b
time = 1

[Command]
name = "BREAK"
command = /$B,x+a
time = 10

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "tokusyu"
command = /$F,b
time = 10

[Command]
name = "tokusyu2"
command = /$F,x
time = 10

[Command]
name = "tokusyu3"
command = /$F,a
time = 10

[Command]
name = "nage"
command = /$F,c
time = 10

;[Command]
;name = "nage_b"
;command = /$B,c
;time = 10

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
name = "holdupa" 
command = ~U
time = 1

[Command]
name = "holddowna"
command = ~D
time = 1

[Command]
name = "charge_end"
command = ~$z
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "y"
command = y
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
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "JC" 
command = /$U
time = 1

; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;-----------------------------------------------------------------------------
;AI
[State -1, AI]
type = Varset
;triggerall = (stateno = [0,620]) || (stateno = [5000,5060])
trigger1 = command = "AI"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
;trigger21 = command = "AI21"
v = 40
value = 1

;---------------------------------------------------------------------------
;エクスカリバー LP
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 3900;3910;
triggerall = Var(52) >= 90
triggerall = (power >= 3000 && var(50) != 2) || (power >= 3000 && var(50) != 1)
triggerall = command = "EX"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
trigger3 = var(50) != 1
trigger3 = (stateno = 1300) || (stateno = 1200) || (stateno = 1201) || (stateno = 1202) || (stateno = 11001) || (stateno = 11300) || (stateno = 1203)
trigger3 = movecontact

;---------------------------------------------------------------------------
;エクスカリバー
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 3200
triggerall = Var(52) < 90
triggerall = (power >= 3000 && var(50) != 2) || (power >= 3000 && var(50) != 1)
triggerall = command = "EX"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
trigger3 = var(50) != 1
trigger3 = (stateno = 1300) || (stateno = 1200) || (stateno = 1201) || (stateno = 1202) || (stateno = 11001) || (stateno = 11300) || (stateno = 1203)
trigger3 = movecontact

;;---------------------------------------------------------------------------
;;遥か遠き理想郷
;[State -1, Light Kung Fu Knee]
;type = ChangeState
;value = 15000
;triggerall = power >= 1000
;triggerall = command = "AVARON"
;trigger1 = statetype != A
;trigger1 = ctrl
;trigger2 = (stateno = [200,250]) || (stateno = [400,450])
;trigger2 = movecontact
;trigger3 = var(50) != 1
;trigger3 = (stateno = 1300) || (stateno = 1200) || (stateno = 1201) || (stateno; = 1202) || (stateno = 11001) || (stateno = 11300) || (stateno = 1203)
;trigger3 = movecontact

;---------------------------------------------------------------------------
;ブレイクウインド
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 3000
triggerall = Var(52) < 50
triggerall = (power >= 1000 && var(50) != 2) || (power >= 3000 && var(50) != 1)
triggerall = command = "breakwind"
triggerall = NumHelper(3010) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
trigger3 = var(50) != 1
trigger3 = (stateno = 1300) || (stateno = 1200) || (stateno = 1201) || (stateno = 1202) || (stateno = 11001) || (stateno = 11300) || (stateno = 1203)
trigger3 = movecontact

;---------------------------------------------------------------------------
;R-EX ブレイクウインド
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1252
triggerall = Var(52) >= 50
triggerall = (power >= 1000 && var(50) != 2) || (power >= 3000 && var(50) != 1)
triggerall = command = "breakwind"
triggerall = NumHelper(3010) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
trigger3 = var(50) != 1
trigger3 = (stateno = 1300) || (stateno = 1200) || (stateno = 1201) || (stateno = 1202) || (stateno = 11001) || (stateno = 11300) || (stateno = 1203)
trigger3 = movecontact

;---------------------------------------------------------------------------
;バリアー超必殺
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 3500
triggerall = Var(52) < 50
triggerall = (power >= 1000 && var(50) != 2) || (power >= 3000 && var(50) != 1)
triggerall = command = "baria-"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
trigger3 = var(50) != 1
trigger3 = (stateno = 1300) || (stateno = 1200) || (stateno = 1201) || (stateno = 1202) || (stateno = 11001) || (stateno = 11300) || (stateno = 1203)
trigger3 = movecontact

;---------------------------------------------------------------------------
;R-EXバリアー超必殺
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 3550
triggerall = Var(52) >= 50
triggerall = (power >= 1000 && var(50) != 2) || (power >= 3000 && var(50) != 1)
triggerall = command = "baria-"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
trigger3 = var(50) != 1
trigger3 = (stateno = 1300) || (stateno = 1200) || (stateno = 1201) || (stateno = 1202) || (stateno = 11001) || (stateno = 11300) || (stateno = 1203)
trigger3 = movecontact

;---------------------------------------------------------------------------
;投げ超必殺
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 3300
triggerall = Var(52) < 50
triggerall = (power >= 1000 && var(50) != 2) || (power >= 3000 && var(50) != 1)
triggerall = command = "nagetyou"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
trigger3 = var(50) != 1
trigger3 = (stateno = 1300) || (stateno = 1200) || (stateno = 1201) || (stateno = 1202) || (stateno = 11001) || (stateno = 11300) || (stateno = 1203)
trigger3 = movecontact

;---------------------------------------------------------------------------
;R-EX投げ超必殺
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 3350
triggerall = Var(52) >= 50
triggerall = (power >= 1000 && var(50) != 2) || (power >= 3000 && var(50) != 1)
triggerall = command = "nagetyou"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
trigger3 = var(50) != 1
trigger3 = (stateno = 1300) || (stateno = 1200) || (stateno = 1201) || (stateno = 1202) || (stateno = 11001) || (stateno = 11300) || (stateno = 1203)
trigger3 = movecontact

;---------------------------------------------------------------------------
;ハイエンド
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 3100
triggerall = Var(52) < 50
triggerall = (power >= 1000 && var(50) != 2) || (power >= 3000 && var(50) != 1)
triggerall = command = "High wind"
triggerall = NumHelper(3010) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
trigger3 = var(50) != 1
trigger3 = (stateno = 1300) || (stateno = 1200) || (stateno = 1201) || (stateno = 1202) || (stateno = 11001) || (stateno = 11300) || (stateno = 1203)
trigger3 = movecontact

;---------------------------------------------------------------------------
;R-EX ハイエンド
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 3150
triggerall = Var(52) >= 50
triggerall = (power >= 1000 && var(50) != 2) || (power >= 3000 && var(50) != 1)
triggerall = command = "High wind"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
trigger3 = var(50) != 1
trigger3 = (stateno = 1300) || (stateno = 1200) || (stateno = 1201) || (stateno = 1202) || (stateno = 11001) || (stateno = 11300) || (stateno = 1203)
trigger3 = movecontact

;---------------------------------------------------------------------------
;グランドクロス
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 3400
triggerall = Var(52) < 50
triggerall = (power >= 1000 && var(50) != 2) || (power >= 3000 && var(50) != 1)
triggerall = command = "High wind"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,630]
trigger2 = movecontact
trigger3 = var(50) != 1
trigger3 = (stateno = 1000) || (stateno = 1001) || (stateno = 1050) || (stateno = 1051) || (stateno = 11000) || (stateno = 11005) || (stateno = 11002) || (stateno = 11050) || (stateno = 11051) || (stateno = 11055) || (stateno = 11056) || (stateno = 11800) || (stateno = 11801)
trigger3 = movecontact
trigger4 = var(50) != 1
trigger4 = (stateno = 1310) || (stateno = 1320) 
trigger4 = movecontact

;---------------------------------------------------------------------------
;R-EX グランドクロス
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 3450
triggerall = Var(52) >= 50
triggerall = (power >= 1000 && var(50) != 2) || (power >= 3000 && var(50) != 1)
triggerall = command = "High wind"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,630]
trigger2 = movecontact
trigger3 = var(50) != 1
trigger3 = (stateno = 1000) || (stateno = 1001) || (stateno = 1050) || (stateno = 1051) || (stateno = 11000) || (stateno = 11005) || (stateno = 11002) || (stateno = 11050) || (stateno = 11051) || (stateno = 11055) || (stateno = 11056) || (stateno = 11800) || (stateno = 11801)
trigger3 = movecontact
trigger4 = var(50) != 1
trigger4 = (stateno = 1310) || (stateno = 1320) 
trigger4 = movecontact

;---------------------------------------------------------------------------
;多段攻撃4
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1203
triggerall = Var(52) >= 50
trigger1 = command = "ripper"
trigger1 = stateno = 1202
trigger1 = movecontact
trigger2 = command = "ripperEX"
trigger2 = statetype != A
trigger2 = ctrl
trigger3 = command = "ripperEX"
trigger3 = (stateno = [200,250]) || (stateno = [400,499])
trigger3 = movecontact

;---------------------------------------------------------------------------
;対空S
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1000
triggerall = Var(52) < 50
triggerall = command = "taikuu_S"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;CHARGE-対空S
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 11000
triggerall = Var(52) >= 50
triggerall = command = "taikuu_S"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;対空HS
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1001
triggerall = Var(52) < 50
triggerall = command = "taikuu_HS"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;CHARGE-対空HS
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 11001
triggerall = Var(52) >= 50
triggerall = command = "taikuu_HS"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;クレセントS
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1050
triggerall = Var(52) < 50
triggerall = command = "moon_s"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;CHARGE-クレセントS
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 11050
triggerall = Var(52) >= 50
triggerall = command = "moon_s"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;クレセントHS
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1051
triggerall = Var(52) < 50
triggerall = command = "moon_hs"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;CHARGE-クレセントHS
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 11051
triggerall = Var(52) >= 50
triggerall = command = "moon_hs"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;ガンブレイズ
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1650
triggerall = Var(52) < 50
triggerall = command = "braze"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;CHARGE-ガンブレイズ
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 11650
triggerall = Var(52) >= 50
triggerall = command = "braze"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;チャージ
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1900
triggerall = var(52) = [0,99]
triggerall = command = "CHARGE"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;捕獲
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1150
triggerall = Var(52) < 50
triggerall = command = "karu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;CHARGE-捕獲
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 11150
triggerall = Var(52) >= 50
triggerall = command = "karu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;多段攻撃1
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1200
triggerall = command = "ripper"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;多段攻撃2
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1201
triggerall = command = "ripper"
trigger1 = stateno = 1200
trigger1 = movecontact

;---------------------------------------------------------------------------
;多段攻撃3
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1202
triggerall = command = "ripper"
trigger1 = stateno = 1201
trigger1 = movecontact

;---------------------------------------------------------------------------
;多段攻撃5
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1204
triggerall = Var(52) < 50
triggerall = command = "ripper"
trigger1 = stateno = 1203
trigger1 = time >= 15

;---------------------------------------------------------------------------
;チャージ－多段攻撃　マスタースパーク
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 12000
triggerall = Var(52) >= 50
triggerall = command = "ripper"
trigger1 = stateno = 1203
trigger1 = time >= 15

;---------------------------------------------------------------------------
;スタンエッジ・S版
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1100
triggerall = Var(52) < 50
triggerall = command = "hunt_S"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

;---------------------------------------------------------------------------
;スタンエッジ・HS版
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1101
triggerall = Var(52) < 50
triggerall = command = "hunt_HS"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

;---------------------------------------------------------------------------
;CHARGE-スタンエッジ・S版
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 11100
triggerall = Var(52) >= 50
triggerall = command = "hunt_S"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

;---------------------------------------------------------------------------
;CHARGE-スタンエッジ・HS版
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 11800
triggerall = Var(52) >= 50
triggerall = command = "hunt_HS"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

;---------------------------------------------------------------------------
;グランド・エアー・スラスト
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1300
triggerall = Var(52) < 50
triggerall = command = "grand"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;CHARGE-グランド・エアー・スラスト
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 11300
triggerall = Var(52) >= 50
triggerall = command = "grand"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
;投げ1
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 800
triggerall = enemy,movetype != H
triggerall = command = "nage";(command = "nage" || command = "nage_b")
;triggerall = P2Dist X <= 50
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;投げ2
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 850
;triggerall = enemy,movetype != H
triggerall = command = "nage_b";(command = "nage" || command = "nage_b")
;triggerall = P2Dist X <= 50
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,250]) || (stateno = [400,499])
trigger2 = movecontact

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
;キャンセルジャンプ
[State -1]
type = ChangeState
value = 40
triggerall = command = "holdup"
triggerall = statetype != A
trigger1 = stateno = 210
trigger1 = movecontact = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 410
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 420
trigger5 = movecontact = 1
trigger6 = stateno = 430
trigger6 = movecontact = 1

;---------------------------------------------------------------------------
;キャンセルジャンプ
[State -1]
type = ChangeState
value = 45
triggerall = Var(16) = 0
triggerall = command = "JC"
triggerall = statetype = A
trigger1 = stateno = 610
trigger1 = movecontact
trigger2 = stateno = 620
trigger2 = movecontact
trigger3 = stateno = 290
trigger3 = movecontact
trigger4 = stateno = 291
trigger4 = movecontact
trigger5 = stateno = 292
trigger5 = movecontact
trigger6 = stateno = 293
trigger6 = movecontact

;---------------------------------------------------------------------------
;キャンセルジャンプ2
[State -1]
type = ChangeState
value = 285
trigger1 = command = "holdup"
trigger1 = statetype != A
trigger1 = stateno = 280
trigger1 = movehit
trigger2 = RoundState = 2
trigger2 = Alive        = 1
trigger2 = var(40)      = 1
;trigger2 = var(41)      = [1,2]
trigger2 = stateno = 280
trigger2 = movehit

;---------------------------------------------------------------------------
;特殊立ちＨＳ攻撃
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "tokusyu"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(50) != 2
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = stateno = 100
trigger3 = time >= 8
trigger4 = stateno = 101
trigger4 = time >= 0
trigger5 = stateno = [4650,4660]
trigger5 = time >= 5

;---------------------------------------------------------------------------
;特殊立ちパンチ攻撃
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "tokusyu2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(50) != 2
trigger2 = stateno = [210,249]
trigger2 = movecontact
trigger3 = stateno = 100
trigger3 = time >= 8
trigger4 = stateno = 101
trigger4 = time >= 0
trigger5 = stateno = [4650,4660]
trigger5 = time >= 5

;---------------------------------------------------------------------------
;特殊立ちキック攻撃
[State -1, Standing Strong Kick]
type = ChangeState
value = 270
triggerall = command = "tokusyu3"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(50) != 2
trigger2 = stateno = [210,250]
trigger2 = movecontact
trigger3 = stateno = 100
trigger3 = time >= 8
trigger4 = stateno = 101
trigger4 = time >= 0
trigger5 = stateno = [4650,4660]
trigger5 = time >= 5

;---------------------------------------------------------------------------
;立ちＰ攻撃
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 100
trigger3 = time >= 8
trigger4 = stateno = 101
trigger4 = time >= 0
trigger5 = stateno = [4650,4660]
trigger5 = time >= 5

;---------------------------------------------------------------------------
;立ちＫ攻撃
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(50) != 2
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = var(50) != 2
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 100
trigger4 = time >= 8
trigger5 = stateno = 101
trigger5 = time >= 0
trigger6 = stateno = [4650,4660]
trigger6 = time >= 5

;---------------------------------------------------------------------------
;立ちＳ攻撃
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(50) != 2
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = var(50) != 2
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = var(50) != 2
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = var(50) != 2
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 100
trigger6 = time >= 8
trigger7 = stateno = 101
trigger7 = time >= 0
trigger8 = stateno = [4650,4660]
trigger8 = time >= 5
trigger9 = var(50) != 2
trigger9 = stateno = 250
trigger9 = movecontact

;---------------------------------------------------------------------------
;立ちＨＳ攻撃
[State -1, Standing Strong Kick]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(50) != 2
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = var(50) != 2
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = var(50) != 2
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = var(50) != 2
trigger5 = stateno = 420
trigger5 = movecontact
trigger6 = stateno = 100
trigger6 = time >= 8
trigger7 = stateno = 101
trigger7 = time >= 0
trigger8 = stateno = [4650,4660]
trigger8 = time >= 5
trigger9 = var(50) != 2
trigger9 = stateno = 250
trigger9 = movecontact

;---------------------------------------------------------------------------
;立ちＤ攻撃
[State -1, Standing Strong Kick]
type = ChangeState
value = 280
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(50) != 2
trigger2 = stateno = [210,250]
trigger2 = movecontact
trigger3 = var(50) != 2
trigger3 = stateno = [410,430]
trigger3 = movecontact
trigger4 = stateno = 100
trigger4 = time >= 8
trigger5 = stateno = 101
trigger5 = time >= 0
trigger6 = stateno = [4650,4660]
trigger6 = time >= 5

;---------------------------------------------------------------------------
;しゃがみＰ攻撃
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = var(50) != 2
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 100
trigger4 = time >= 8
trigger5 = stateno = 101
trigger5 = time >= 0
trigger6 = stateno = [4650,4660]
trigger6 = time >= 5

;---------------------------------------------------------------------------
;しゃがみＫ攻撃
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(50) != 2
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = var(50) != 2
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 100
trigger4 = time >= 8
trigger5 = stateno = 101
trigger5 = time >= 0
trigger6 = stateno = [4650,4660]
trigger6 = time >= 5

;---------------------------------------------------------------------------
;しゃがみＳ攻撃
[State -1, Crouching Strong Kick]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(50) != 2
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = var(50) != 2
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = var(50) != 2
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = var(50) != 2
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = var(50) != 2
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 100
trigger7 = time >= 8
trigger8 = stateno = 101
trigger8 = time >= 0
trigger9 = stateno = [4650,4660]
trigger9 = time >= 5
trigger10 = var(50) != 2
trigger10 = stateno = 250
trigger10 = movecontact

;---------------------------------------------------------------------------
;しゃがみＨＳ攻撃
[State -1, Crouching Strong Kick]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(50) != 2
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = var(50) != 2
trigger3 = stateno = 420
trigger3 = movecontact
trigger4 = var(50) != 2
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 100
trigger5 = time >= 8
trigger6 = stateno = 101
trigger6 = time >= 0
trigger7 = stateno = [4650,4660]
trigger7 = time >= 5
trigger8 = var(50) != 2
trigger8 = stateno = 250
trigger8 = movecontact

;---------------------------------------------------------------------------
;しゃがみＤ攻撃
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(50) != 2
trigger2 = stateno = [210,230]
trigger2 = movecontact
trigger3 = var(50) != 2
trigger3 = stateno = [410,430]
trigger3 = movecontact
trigger4 = stateno = 100
trigger4 = time >= 8
trigger5 = stateno = 101
trigger5 = time >= 0
trigger6 = stateno = [4650,4660]
trigger6 = time >= 5

;---------------------------------------------------------------------------
;空中Ｐ攻撃
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 4670
trigger3 = time >= 5

;---------------------------------------------------------------------------
;空中Ｋ攻撃
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(50) != 2
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 4670
trigger3 = time >= 5
trigger4 = var(50) != 2
trigger4 = stateno = 620
trigger4 = movecontact

;---------------------------------------------------------------------------
;空中Ｓ攻撃
[State -1, Jump Strong Kick]
type = ChangeState
value = 620
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(50) != 2
trigger2 = stateno = 610
trigger2 = movecontact
trigger3 = var(50) != 2
trigger3 = stateno = 600
trigger3 = movecontact
trigger4 = stateno = 4670
trigger4 = time >= 5

;---------------------------------------------------------------------------
;空中ＨＳ攻撃
[State -1, Jump Strong Kick]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(50) != 2
trigger2 = stateno = 620
trigger2 = movecontact
trigger3 = var(50) != 2
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = var(50) != 2
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = stateno = 4670
trigger5 = time >= 5

;---------------------------------------------------------------------------
;空中Ｄ攻撃
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(50) != 2
trigger2 = stateno = 630
trigger2 = movecontact
trigger3 = stateno = 4670
trigger3 = time >= 5

;---------------------------------------------------------------------------
;空中Ｐ攻撃(ダスト中)
[State -1, Jump Light Punch]
type = ChangeState
value = 290
triggerall = Var(40) = 0
triggerall = command = "x"
trigger1 = stateno = 285
trigger1 = Time = [0,60]
trigger2 = stateno = 290
trigger2 = movecontact
trigger3 = stateno = 291
trigger3 = movecontact
trigger4 = stateno = 292
trigger4 = movecontact
trigger5 = stateno = 293
trigger5 = movecontact
trigger6 = stateno = 294
trigger6 = movecontact

;---------------------------------------------------------------------------
;空中Ｋ攻撃(ダスト中)
[State -1, Jump Strong Punch]
type = ChangeState
value = 291
triggerall = Var(40) = 0
triggerall = command = "a"
trigger1 = stateno = 285
trigger1 = Time = [0,60]
trigger2 = stateno = 290
trigger2 = movecontact
trigger3 = stateno = 291
trigger3 = movecontact
trigger4 = stateno = 292
trigger4 = movecontact
trigger5 = stateno = 293
trigger5 = movecontact
trigger6 = stateno = 294
trigger6 = movecontact

;---------------------------------------------------------------------------
;空中Ｓ攻撃(ダスト中)
[State -1, Jump Strong Kick]
type = ChangeState
value = 292
triggerall = Var(40) = 0
triggerall = command = "y"
trigger1 = stateno = 285
trigger1 = Time = [0,60]
trigger2 = stateno = 290
trigger2 = movecontact
trigger3 = stateno = 291
trigger3 = movecontact
trigger4 = stateno = 292
trigger4 = movecontact
trigger5 = stateno = 293
trigger5 = movecontact
trigger6 = stateno = 294
trigger6 = movecontact

;---------------------------------------------------------------------------
;空中ＨＳ攻撃(ダスト中)
[State -1, Jump Strong Kick]
type = ChangeState
value = 293
triggerall = Var(40) = 0
triggerall = command = "b"
trigger1 = stateno = 285
trigger1 = Time = [0,60]
trigger2 = stateno = 290
trigger2 = movecontact
trigger3 = stateno = 291
trigger3 = movecontact
trigger4 = stateno = 292
trigger4 = movecontact
trigger5 = stateno = 293
trigger5 = movecontact
trigger6 = stateno = 294
trigger6 = movecontact

;---------------------------------------------------------------------------
;空中Ｄ攻撃(ダスト中)
[State -1, Jump Strong Kick]
type = ChangeState
value = 294
triggerall = Var(40) = 0
triggerall = command = "z"
trigger1 = stateno = 285
trigger1 = Time = [0,60]
trigger2 = stateno = 290
trigger2 = movecontact
trigger3 = stateno = 291
trigger3 = movecontact
trigger4 = stateno = 292
trigger4 = movecontact
trigger5 = stateno = 293
trigger5 = movecontact
trigger6 = stateno = 294
trigger6 = movecontact
