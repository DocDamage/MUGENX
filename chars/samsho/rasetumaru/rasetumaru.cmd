;-| AI |--------------------------------------------------------
[Command]
name = "AI"
command = F, B, U, D, U, D
time = 0

[Command]
name = "AI0"
command = B, F, U, D, U, D
time = 0

[Command]
name = "AI1"
command = F, F, F, B, B, B
time = 0

[Command]
name = "AI2"
command = B, B, B, F, F, F
time = 0

[Command]
name = "AI3"
command = D, D, D, U, U, U
time = 0

[Command]
name = "AI4"
command = U, U, U, D, D, D
time = 0

[Command]
name = "AI5"
command = F, F, F, F, F, F
time = 0

[Command]
name = "AI6"
command = B, B, B, B, B, B
time = 0

[Command]
name = "AI7"
command = U, U, U, U, U, U
time = 0

[Command]
name = "AI8"
command = D, D, D, D, D, D
time = 0

[Command]
name = "AI9"
command = F, x, F, y, F, z
time = 0

[Command]
name = "AI10"
command = F, a, F, b, F, c
time = 0

[Command]
name = "AI11"
command = B, x, B, y, B, z
time = 0

[Command]
name = "AI12"
command = B, a, B, b, B, c
time = 0

[Command]
name = "AI13"
command = U, x, U, y, U, z
time = 0

[Command]
name = "AI14"
command = U, a, U, b, U, c
time = 0

[Command]
name = "AI15"
command = D, x, D, y, D, z
time = 0

[Command]
name = "AI16"
command = D, a, D, b, D, c
time = 0

[Command]
name = "AI17"
command = F, F, F, F, F, F, F
time = 0

[Command]
name = "AI18"
command = B, B, B, B, B, B, B
time = 0

[Command]
name = "AI19"
command = D, D, D, D, D, D, D
time = 0

[Command]
name = "AI20"
command = U, U, U, U, U, U, U
time = 0

[Command]
name = "AI21"
command = F, D, D, F, D, D, D
time = 0

[Command]
name = "AI22"
command = D, F, D, D, F, D, U
time = 0

[Command]
name = "AI23"
command = D, D, F, D, D, F, F
time = 0

[Command]
name = "AI24"
command = U, D, B, F, U, D, B, F
time = 0

[Command]
name = "AI25"
command = U, U, D, D, B, F, B, F
time = 0

[Command]
name = "AI26"
command = U, s, D, s, B, s, F, s, s, s
time = 0

[Command]
name = "AI27"
command = U, a, D, a, B, a, F, a, a, a
time = 0

[Command]
name = "AI28"
command = U, b, D, b, B, b, F, b, b, b
time = 0

[Command]
name = "AI29"
command = U, c, D, c, B, c, F, c, c, c
time = 0

[Command]
name = "AI30"
command = U, x, D, x, B, x, F, x, x, x
time = 0
;-| 必殺技 |------------------------------------------------------
;はじき
[Command]
name = "haziki"
command = ~D,DB,B,F,b
time = 40

;自殺
[Command]
name = "zisatu"
command = ~B,F,DF,D,s
time = 40

;月天法界
[Command]
name = "getuten"
command = ~D,DB,B,y+b

;段空裂斬
[Command]
name = "danku"
command = ~D,DF,F,y+b

;旋風波
[Command]
name = "senpuha"
command = ~D,DF,F,y

;剛破
[Command]
name = "gouha"
command = ~F,D,DF,y

;凪刃
[Command]
name = "yaiba"
command = ~F,D,DF,x+a

;凪刃
[Command]
name = "yaiba"
command = ~F,D,DF,a

;凪刃
[Command]
name = "yaiba"
command = ~F,D,DF,x

;旋風烈斬強
[Command]
name = "senpuretuzan3"
command = ~D,DF,F,x+a

;旋風烈斬中
[Command]
name = "senpuretuzan2"
command = ~D,DF,F,a

;旋風烈斬弱
[Command]
name = "senpuretuzan1"
command = ~D,DF,F,x

;死祟
[Command]
name = "sitatari"
command = ~D,DB,B,y

;月輪波
[Command]
name = "geturin1"
command = ~B,D,BD,x

;絶命奥義　臓腑抉り
[Command]
name = "zetumei"
command = ~D,DB,B,y+b

;斜め入力
[Command]
name = "mads"
command = /$DF
time = 20

;斜め入力
[Command]
name = "mads2"
command = /$BD
time = 20
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
command = F, F, F, F, F, F, F,x+y+z
time = 0

;怒り爆発
[Command]
name = "bakuhatu"
command = x+a+y
time = 1

[Command];一閃
name = "issen"
command = a+b+y
time = 1

[Command]
name = "yb2"
command = y+b
time = 1
;-| 方向とボタンで出す技 |-----------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_y"
command = /$D,y
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

;-| 押しっぱなし設定（いじらない）---------------------------------------------
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
name = "bosi"
command = /b
time = 1

[Command]
name = "yb"
command = /y
time = 1

[Command]
name = "up"
command = U
time = 3

[Command]
name = "down"
command = D
time = 3

[Command]
name = "migi"
command = F
time = 3

[Command]
name = "hidari"
command = B
time = 3

; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;===========================================================================
;絶命奥義　臓腑抉り
;===========================================================================
[State -1, Jump Light Punch]
type = ChangeState
value = 4100
triggerall = var(44) = 1
triggerall = RoundState = 2
triggerall = var(57) = 1
triggerall = p2life <= 300
triggerall = var(51) = 1
triggerall = command = "zetumei"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210||stateno = 310||stateno = 1450
trigger3 = stateno = 321&&animelemtime(3) >= 10||animelem = 4
trigger4 = stateno = 1400&&animelem= 4||animelem= 5||animelem = 6
;===========================================================================
;必殺技↓
;===========================================================================
;段空裂斬
[State -1, Jump Light Punch]
type = ChangeState
value = 4000
triggerall = RoundState = 2
triggerall = var(50) = 1||var(51) = 1
triggerall = var(56) = 0
triggerall = command = "danku"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210||stateno = 310||stateno = 1450
trigger3 = stateno = 321&&animelemtime(3) >= 10||animelem = 4
trigger4 = stateno = 1400&&animelem= 4||animelem= 5||animelem = 6
;---------------------------------------------------------------------------
;凪刃
[State -1, Jump Light Punch]
type = ChangeState
value = 3400
triggerall = stateno != [3000,4000]
triggerall = RoundState = 2
triggerall = command = "yaiba"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210||stateno = 310||stateno = 1450
trigger3 = stateno = 321&&animelemtime(3) >= 10||animelem = 4
trigger4 = stateno = 1400&&animelem= 4||animelem= 5||animelem = 6
;===========================================================================
;旋風烈斬強
[State -1, Jump Light Punch]
type = ChangeState
value = 3002
triggerall = stateno != [3000,4000]
triggerall = RoundState = 2
triggerall = numhelper(3010) = 0
triggerall = numhelper(3011) = 0
triggerall = numhelper(3012) = 0
triggerall = command = "senpuretuzan3"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210||stateno = 310||stateno = 1450
trigger3 = stateno = 321&&animelemtime(3) >= 10||animelem = 4
trigger4 = stateno = 1400&&animelem= 4||animelem= 5||animelem = 6
;---------------------------------------------------------------------------
;旋風烈斬中
[State -1, Jump Light Punch]
type = ChangeState
value = 3001
triggerall = stateno != [3000,4000]
triggerall = RoundState = 2
triggerall = numhelper(3010) = 0
triggerall = numhelper(3011) = 0
triggerall = numhelper(3012) = 0
triggerall = command = "senpuretuzan2"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210||stateno = 310||stateno = 1450
trigger3 = stateno = 321&&animelemtime(3) >= 10||animelem = 4
trigger4 = stateno = 1400&&animelem= 4||animelem= 5||animelem = 6
;---------------------------------------------------------------------------
;旋風烈斬弱
[State -1, Jump Light Punch]
type = ChangeState
value = 3000
triggerall = stateno != [3000,4000]
triggerall = RoundState = 2
triggerall = numhelper(3010) = 0
triggerall = numhelper(3011) = 0
triggerall = numhelper(3012) = 0
triggerall = command = "senpuretuzan1"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210||stateno = 310||stateno = 1450
trigger3 = stateno = 321&&animelemtime(3) >= 10||animelem = 4
trigger4 = stateno = 1400&&animelem= 4||animelem= 5||animelem = 6
;---------------------------------------------------------------------------
;剛破
[State -1, Jump Light Punch]
type = ChangeState
value = 3200
triggerall = stateno != [3000,4000]
triggerall = RoundState = 2
triggerall = command = "gouha"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210||stateno = 310||stateno = 1450
trigger3 = stateno = 321&&animelemtime(3) >= 10||animelem = 4
trigger4 = stateno = 1400&&animelem= 4||animelem= 5||animelem = 6
;---------------------------------------------------------------------------
;旋風波
[State -1, Jump Light Punch]
type = ChangeState
value = 3300
triggerall = stateno != [3000,4000]
triggerall = RoundState = 2
triggerall = numhelper(3310) = 0
triggerall = command = "senpuha"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210||stateno = 310||stateno = 1450
trigger3 = stateno = 321&&animelemtime(3) >= 10||animelem = 4
trigger4 = stateno = 1400&&animelem= 4||animelem= 5||animelem = 6
;---------------------------------------------------------------------------
;死祟
[State -1, Jump Light Punch]
type = ChangeState
value = 3100
triggerall = stateno != [3000,4000]
triggerall = RoundState = 2
triggerall = command = "sitatari"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210||stateno = 310||stateno = 1450
trigger3 = stateno = 321&&animelemtime(3) >= 10||animelem = 4
trigger4 = stateno = 1400&&animelem= 4||animelem= 5||animelem = 6
;---------------------------------------------------------------------------
;怒り爆発
[State -1, Jump Light Punch]
type = ChangeState
value = 3600
triggerall = RoundState = 2
triggerall = var(44) = 1||var(44) = 3
triggerall = var(56) = 0
triggerall = var(51) = 0
triggerall = var(54) = 0
triggerall = command = "bakuhatu"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = [5000,5029]
;---------------------------------------------------------------------------
;無の境地
[State -1, Jump Light Punch]
type = ChangeState
value = 910
triggerall = var(44) = 1
triggerall = numExplod(930) = 1
triggerall = RoundState = 2
triggerall = numhelper(920) = 0
triggerall = var(55) = 1
triggerall = var(51) = 0
triggerall = var(52)*3.2258064516129032258064516129 >= life
triggerall = var(54) = 0
triggerall = command = "z"||command = "issen"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;一閃（サムライスピリッツ零）
[State -1, Jump Light Punch]
type = ChangeState
value = 3500
triggerall = var(44) = 1
triggerall = RoundState = 2
triggerall = numhelper(920) = 1
triggerall = var(54) =1
triggerall = command = "z"||command = "issen"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = root,MoveType = H
;---------------------------------------------------------------------------
;一閃（天草降臨）
[State -1, Jump Light Punch]
type = ChangeState
value = 3500
triggerall = var(44) = 3
triggerall = RoundState = 2
triggerall = var(51) = 1
triggerall = command = "z"||command = "issen"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = root,MoveType = H
;---------------------------------------------------------------------------
;後ろ崩し
[State -1, Jump Light Punch]
type = ChangeState
value = 1100
triggerall = command = "holdback"
triggerall = P2bodydist X < 10
triggerall = command = "y"&&command = "b"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;前崩し
[State -1, Jump Light Punch]
type = ChangeState
value = 1000
triggerall = command = "holdfwd"
triggerall = P2bodydist X < 1
triggerall = command = "y"&&command = "b"
triggerall = statetype != A
trigger1 = ctrl
;===========================================================================
;連斬発動
[State -1]
type = ChangeState
triggerall = var(44) = 3
triggerall = command = "yb2"
trigger1 = statetype = S
trigger1 = ctrl
value = 1200
;===========================================================================
;超斬り
[State -1]
type = ChangeState
triggerall = var(44) = 6
triggerall = command = "yb2"
trigger1 = statetype = S
trigger1 = ctrl
value = 11000
;---------------------------------------------------------------------------
;怒りため
[State -1]
type = ChangeState
triggerall = var(44) = 4
triggerall = RoundState = 2
triggerall = numhelper(920) = 0
triggerall = var(50) = 0
triggerall = var(51) = 0
triggerall = var(56) = 0
triggerall = command = "yb"&&command = "bosi"
triggerall = command != "holddown" && command != "holdfwd" && command != "holdback"
trigger1 = statetype != A
trigger1 = ctrl
value = 10810
;===========================================================================
;↓その他↓
;===========================================================================
;ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;後退ダッシュ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;追い討ち小
[State -1, Jump Light Punch]
type = ChangeState
value = 500
triggerall = command = "holddown"
trigger1 = command = "mads"
triggerall = p2statetype = L
triggerall = command = "a"&&command = "y"
triggerall = statetype != A
triggerall = stateno != 100
trigger1 = ctrl
;---------------------------------------------------------------------------
;追い討ち大
[State -1, Jump Light Punch]
type = ChangeState
value = 510
triggerall = p2statetype = L
triggerall = command = "holdfwd"
triggerall = command = "a"&&command = "y"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;不意打ち
[State -1]
type = ChangeState
value = 1700
triggerall = command = "a"&&command = "y"
trigger1 = statetype != A
trigger1 = ctrl
;===========================================================================
;立ち強パンチ遠距離
[State -1]
type = ChangeState
triggerall = command = "x"&&command = "a"
triggerall = P2bodydist X >= 50
triggerall = stateno != 100
triggerall = stateno != [1200,1299]
trigger1 = statetype = S
trigger1 = ctrl
value = 220
;===========================================================================
;立ち強パンチ近距離
[State -1]
type = ChangeState
triggerall = command = "x"&&command = "a"
triggerall = P2bodydist X <= 50
triggerall = stateno != 100
triggerall = stateno != [1200,1299]
trigger1 = statetype = S
trigger1 = ctrl
value = 320
;---------------------------------------------------------------------------
;スライディング
[State -1, Jump Light Punch]
type = ChangeState
value = 270
triggerall = command = "holddown"
triggerall = stateno != [1200,1299]
trigger1 = command = "mads"
triggerall = command = "y"
triggerall = statetype != A
triggerall = stateno != 100
trigger1 = ctrl
;===========================================================================
;立ち中パンチ遠距離
[State -1]
type = ChangeState
triggerall = command = "a"
triggerall = P2bodydist X >= 20
triggerall = stateno != 100
triggerall = stateno != [1200,1299]
trigger1 = statetype = S
trigger1 = ctrl
value = 210
;---------------------------------------------------------------------------
;立ち小パンチ遠距離
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = P2bodydist X >= 20
triggerall = command != "holddown"
triggerall = stateno != 100
triggerall = stateno != [1200,1299]
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;立ち中パンチ近距離
[State -1]
type = ChangeState
triggerall = command = "a"
triggerall = P2bodydist X <= 20
triggerall = stateno != 100
triggerall = stateno != [1200,1299]
trigger1 = statetype = S
trigger1 = ctrl
value = 310
;===========================================================================
;立ち小パンチ近距離
[State -1]
type = ChangeState
triggerall = command = "x"
triggerall = P2bodydist X <= 20
triggerall = stateno != 100
triggerall = stateno != [1200,1299]
trigger1 = statetype = S
trigger1 = ctrl
value = 300
;---------------------------------------------------------------------------
;ダッシュ蹴り
[State -1]
type = ChangeState
value = 383
triggerall = command = "y"
triggerall = stateno != [1200,1299]
trigger1 = statetype = S
trigger1 = stateno = 100
;---------------------------------------------------------------------------
;前いれキック
[State -1, Jump Light Punch]
type = ChangeState
value = 260
triggerall = command = "holdfwd"
triggerall = stateno != [1200,1299]
triggerall = command = "y"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ちキック
[State -1]
type = ChangeState
triggerall = command = "y"
triggerall = stateno != 100
triggerall = stateno != [1200,1299]
trigger1 = statetype = S
trigger1 = ctrl
value = 250
;---------------------------------------------------------------------------
;しゃがみ大パンチ
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"&&command = "a"
triggerall = command = "holddown"
triggerall = stateno != [1200,1299]
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ小パンチ
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"||command = "a"
triggerall = P2bodydist X >= 30
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ小パンチ近距離
[State -1]
type = ChangeState
value = 410
triggerall = command = "x"||command = "a"
triggerall = P2bodydist X <= 30
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみキック
[State -1]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;ダッシュ強
[State -1]
type = ChangeState
value = 382
triggerall = command = "x"&&command = "a"
trigger1 = statetype = S
trigger1 = stateno = 100
;---------------------------------------------------------------------------
;ダッシュ弱
[State -1]
type = ChangeState
value = 380
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = stateno = 100
;---------------------------------------------------------------------------
;ダッシュ中
[State -1]
type = ChangeState
value = 381
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = stateno = 100
;---------------------------------------------------------------------------
;空中 大パンチ(前後)
[State -1]
type = ChangeState
triggerall = var(9) != 1
triggerall = stateno != [105,106]
triggerall = command = "x"&&command = "a"
trigger1 = statetype = A
trigger1 = ctrl
value = 620
;---------------------------------------------------------------------------
;空 小パンチ(前後)
[State -1]
type = ChangeState
triggerall = var(9) != 1
triggerall = stateno != [105,106]
triggerall = Command = "x"
trigger1 = statetype = A
trigger1 = ctrl
value = 600
;---------------------------------------------------------------------------
;空中 中パンチ(前後)
[State -1]
type = ChangeState
triggerall = var(9) != 1
triggerall = stateno != [105,106]
triggerall = Command = "a"
trigger1 = statetype = A
trigger1 = ctrl
value = 610
;---------------------------------------------------------------------------
;空中 小キック
[State -1]
value = 630
type = ChangeState
triggerall = stateno != [105,106]
triggerall = var(9) != 1
triggerall = Command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;はじき
[State -1]
type = ChangeState
value = 805
triggerall = command = "haziki"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 210||stateno = 310||stateno = 1450
trigger3 = stateno = 321&&animelemtime(3) >= 10||animelem = 4
trigger4 = stateno = 1400&&animelem= 4||animelem= 5||animelem = 6
;---------------------------------------------------------------------------
;冥想
[State -1]
value = 810
type = ChangeState
triggerall = var(44) = 1
triggerall = RoundState = 2
triggerall = numhelper(920) = 0
triggerall = var(30) = 0
triggerall = var(50) = 0
triggerall = var(51) = 0
triggerall = var(56) = 0
triggerall = fvar(13) != 0
triggerall = Command = "bosi"
triggerall = command != "holddown" && command != "holdfwd" && command != "holdback"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;後転
[State -1]
type = ChangeState
value = 1450
triggerall = var(44) = 1||var(44) = 5
triggerall = command = "holddown"
triggerall = command = "b"
triggerall = statetype != A
trigger1 = command = "mads2"
trigger1 = ctrl
;---------------------------------------------------------------------------
;前転
[State -1]
type = ChangeState
value = 1400
triggerall = var(44) = 1||var(44) = 5
triggerall = command = "holddown"
triggerall = command = "b"
triggerall = statetype != A
trigger1 = command = "mads"
trigger1 = ctrl
;---------------------------------------------------------------------------
;下避け
[State -1]
type = ChangeState
value = 830
triggerall = var(44) = 1||var(44) = 5
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = command != "mads"

trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;小ジャンプ
[State -1]
type = ChangeState
value = 840
triggerall = var(44) = 1||var(44) = 5
triggerall = command = "b"
triggerall = command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;小ジャンプ
[State -1]
type = ChangeState
value = 840
triggerall = var(44) = 5
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;前ジャンプ
[State -1]
type = ChangeState
value = 850
triggerall = var(44) = 1
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;回り込み
[State -1]
type = ChangeState
value = 10850
triggerall = P2bodydist X <= 25
triggerall = var(44) = 3||var(44) = 4
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl
;===========================================================================
;自決
[State -1, Jump Light Punch]
type = ChangeState
value = 2500
triggerall = RoundState = 2
triggerall = command = "zisatu"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = RoundState = 2
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;避け
[State -1, Taunt]
type = ChangeState
value = 880
triggerall = var(44) = 3||var(44) = 4
triggerall = RoundState = 2
triggerall = command = "b"
trigger1 = statetype != A
trigger1 = ctrl
