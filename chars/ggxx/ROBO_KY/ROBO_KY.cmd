;-| 一撃必殺技 |--------------------------------------------------------
[Command];13カイ弾
name = "13kaidan"
command = ~D, DF, F, D, DF, F, b
time = 20

;-| 覚醒必殺技 |-------------------------------
[Command];駄目な奴は何をやっても駄目
name = "dame_dame"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command];限カイらばーず
name = "genkai"
command = ~D, DF, F, D, DF, F, x
time = 30

;-| 必殺技 |------------------------------------------------------

[Command]
name = "カイ幕ホームラン"
command = ~F, D, DF, b

[Command]
name = "カイ電波"
command = ~F, DF, D, DB, B, a

[Command]
name = "カイ現象"
command = ~D, DB, B, y

[Command]
name = "喰らっとくカイ？"
command = ~D, DF, F, y

;------------------------------------------------------------------------
;ハイジャンプ
[Command]
name = "jump"    
command = D, $U
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "ichigeki"
command = x+y+a+b

[Command]
name = "roman"
command = x+y+a

[Command]
name = "roman"
command = x+y+b

[Command]
name = "roman"
command = a+b+x

[Command]
name = "roman"
command = a+b+y

[Command]
name = "roman"
command = z
time = 1

[Command]
name = "dead"
command = /F,x+a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y+a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y+b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "dust";Required (do not remove)
command = y+b
time = 1

[Command];フォルトレスディフェンス
name = "foltlessX"
command = /x
time = 1

[Command];フォルトレスディフェンス
name = "foltlessA"
command = /a
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

; Don't remove the following line. It's required by the CMD standard.
;-------------------------
;[Statedef -1]
;意味：
;	コマンド入力が可能ならば常時実行されるstate
[Statedef -1] ;この一行は削除しないで下さい
;===========================================================================
;                                 一撃必殺技
;==========================================================================
[State -1, 13kaidan]
type = ChangeState
value = 3500
triggerall = command = "13kaidan"
triggerall = var(24) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 1501
trigger9 = time >= 2

;===========================================================================
;　　　　　　　　　　　　　　　　覚醒必殺技
;===========================================================================
;カイ心の一撃
[State -1, kaisin]
type = ChangeState
value = 3200
triggerall = power >= 1000
trigger1 = stateno = 1010
trigger1 = movehit
;---------------------------------------------------------------------------

;限カイらばーす
[State -1, genkai]
type = ChangeState
value = 3000
triggerall = command = "genkai"
triggerall = power >= 1000
triggerall = var(44) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 1501
trigger9 = time >= 2

;駄目な奴は何をやっても駄目
[State -1, 駄目な奴は何をやっても駄目]
type = ChangeState
value = 3050
triggerall = command = "dame_dame"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 1501
trigger9 = time >= 2



;===========================================================================
;　　　　　　　　　　　　　　　　システム関連
;===========================================================================
[State -1]
type = ChangeState
value = 2002
triggerall = command = "roman"
triggerall = Power >= 500
triggerall = statetype != A
trigger1 = numhelper(1298) >= 1
trigger1 = stateno = 1500
trigger2 = numhelper(1299) >= 1
trigger2 = stateno = 241
trigger3 = numhelper(1297) >= 1
trigger3 = stateno = 440
ignorehitpause = 1


;ロマンキャンセル地上
[State -1, romancansel]
type = ChangeState
value = 2000
triggerall = command = "roman"
triggerall = power >= 1000
triggerall = var(25) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger5 = stateno = 215
trigger6 = stateno = 230
trigger7 = stateno = 241
trigger8 = stateno = 245
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = stateno = 430
trigger12 = stateno = 850
trigger13 = stateno = 2030
trigger14 = stateno = 1005
trigger15 = stateno = 1010
trigger16 = stateno = 1500
trigger17 = stateno = 3050
trigger18 = stateno = 3200
ignorehitpause = 1

;ロマンキャンセル地上
[State -1, romancansel]
type = ChangeState
value = 2000
triggerall = power >= 1000
triggerall = var(25) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 811;地上投げ
trigger2 = animelemtime(2) >= 15
ignorehitpause = 1


;ロマンキャンセル地上
[State -1, romancansel]
type = ChangeState
value = 2000
triggerall = power >= 1000
triggerall = var(25) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1411;地上投げ
trigger2 = animelemtime(3) >= 15
ignorehitpause = 1


;-----------------------------------------------------------------------------------------
;ロマンキャンセル空中
[State -1, Air romancansel]
type = ChangeState
value = 2001
triggerall = command = "roman"
triggerall = power >= 1000
triggerall = var(25) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 630
trigger5 = stateno = 640
trigger6 = stateno = 1001;カイ幕ホームラン
trigger7 = stateno = 1006;カイ幕ホームラン上昇
trigger8 = stateno = 1011;カイ幕ホームランＨＳ
trigger9 = stateno = 1140
trigger10 = stateno = 1143
trigger11 = stateno = 1145
trigger12 = stateno = 1501;痛カイ撃
trigger13 = stateno = 3210
trigger14 = stateno = 650
ignorehitpause = 1

;-------------------------------------------------------------------------------------------
;デッドアングルアタック
[State -1, dead angle attack]
type = ChangeState
value = 2030
triggerall = command = "dead"
triggerall = Power >= 1000
triggerall = command != "holddown"
trigger1 = Stateno = 150
trigger2 = Stateno = 151
trigger3 = Stateno = 152
trigger4 = Stateno = 153

;-------------------------------------------------------------------------------------
;フォルトレスディフェンス用varスイッチオンx+a
[State -1,foltlessXA var]
type = Varset
triggerall = var(26) = 0 
triggerall = command = "holdback"
triggerall = command = "foltlessX"
triggerall = command = "foltlessA"
trigger1 = Power > 0
ignorehitpause = 1
v = 26
value = 1

;------------------------------------------------------------------------------------
;フォルトレスディフェンスx+a
[State -1, foltless]
type = ChangeState
value = 120
triggerall = var(26) = 1
triggerall = command = "holdback"
triggerall = command = "foltlessX"
triggerall = command = "foltlessA"
triggerall = command != "b"
triggerall = command != "c"
triggerall = command != "y"
triggerall = command != "z"
triggerall = command != "start"
triggerall = Power > 0
trigger1 = ctrl
trigger1 = stateno !=[101,102];空中ダッシュ中
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 1501
trigger4 = time >= 2
;===========================================================================
;　　　　　　　　　　　　　　　　　必殺技

[State -1, vaper slast HS];LV3
type = ChangeState
value = 1010
triggerall = command = "カイ幕ホームラン"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 1501
trigger9 = time >= 2

[State -1, vaper slast HS];LV2
type = ChangeState
value = 1005
triggerall = command = "カイ幕ホームラン"
triggerall = power = [200,999]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 1501
trigger9 = time >= 2

[State -1, vaper slast HS];LV1
type = ChangeState
value = 1000
triggerall = command = "カイ幕ホームラン"
triggerall = power < 200
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 1501
trigger9 = time >= 2
;----------------------------------------------------------------------------
[State -1, カイ電波]
type = ChangeState
value = 1500
triggerall = statetype != A
triggerall = stateno = 100
triggerall = time >= 20
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "y"
trigger4 = command = "x"

[State -1, カイ電波]
type = ChangeState
value = 1400
triggerall = command = "カイ電波"

trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 1501
trigger9 = time >= 2


[State -1, カイ現象]
type = ChangeState
value = 1145
triggerall = power >= 1000
triggerall = command = "カイ現象"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 1501
trigger9 = time >= 2
;----------------------------------------------------------------------------
[State -1, カイ現象]
type = ChangeState
value = 1143
triggerall = power = [200,999]
triggerall = command = "カイ現象"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 1501
trigger9 = time >= 2


[State -1, カイ現象]
type = ChangeState
value = 1140
triggerall = power < 200
triggerall = command = "カイ現象"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 1501
trigger9 = time >= 2

;----------------------------------------------------------------------------
[State -1, 喰らっとくカイ？];LV3
type = ChangeState
value = 1220
triggerall = command = "喰らっとくカイ？"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = stateno = 610
trigger5 = movecontact
trigger6 = stateno = 630
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact


[State -1, 喰らっとくカイ？];LV2
type = ChangeState
value = 1210
triggerall = command = "喰らっとくカイ？"
triggerall = power = [200,999]
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = stateno = 610
trigger5 = movecontact
trigger6 = stateno = 630
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact

[State -1, 喰らっとくカイ？];LV1
type = ChangeState
value = 1200
triggerall = command = "喰らっとくカイ？"
triggerall = power < 200
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = stateno = 610
trigger5 = movecontact
trigger6 = stateno = 630
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact

;----------------------------------------------------------------------------
[State -1, 喰らっとくカイ？]
type = ChangeState
value = 1170
triggerall = command = "喰らっとくカイ？"
triggerall = NumprojID(1150) = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 1501
trigger9 = time >= 2

[State -1, 喰らっとくカイ？]
type = ChangeState
value = 1160
triggerall = command = "喰らっとくカイ？"
triggerall = NumprojID(1150) = 0
triggerall = power = [200,999]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 1501
trigger9 = time >= 2


[State -1, 喰らっとくカイ？]
type = ChangeState
value = 1150
triggerall = command = "喰らっとくカイ？"
triggerall = NumprojID(1150) = 0
triggerall = power < 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 1501
trigger9 = time >= 2
;===========================================================================
;　　　　　　　　　　　　　　　　システム関連
;===========================================================================
;一撃準備
[State -1, ichigeki junbi]
type = ChangeState
value = 950
triggerall = command = "ichigeki"
triggerall = var(24) != 2
triggerall = var(58) != 1;ＣＰＵの時使わない
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 1501
trigger4 = time >= 2
;----------------------------------------------------------------------------
;ダストアタック
[State -1, dust attack]
type = ChangeState
value = 850
triggerall = command = "dust" || command = "c"
triggerall = command != "holddown" 
trigger1 = statetype != A
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = stateno = 103
trigger3 = stateno = 100
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 1501
trigger9 = time >= 2
;-------------------------------------------------------------------------------------------
;ハイジャンプ
[State -1]
type = ChangeState
value = 900
triggerall = command = "jump"
triggerall = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;空中ジャンプキャンセル
[State -1, Air Jump cansel]
type = ChangeState
value = 45
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) = 1
triggerall = var(2) <= 1
trigger1 = stateno = 600
trigger1 = movecontact
trigger2 = stateno = 610
trigger2 = movecontact

;---------------------------------------------------------------------------
;ジャンプキャンセル
[State -1, Jump cansel]
type = ChangeState
value = 40
triggerall = command = "holdup"
triggerall = statetype = S || statetype = C
triggerall = var(11) = 1
trigger1 = stateno = 200
trigger1 = movecontact
trigger2 = stateno = 215
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 245
trigger4 = movecontact
trigger5 = stateno = 450
trigger5 = movecontact

;---------------------------------------------------------------------------
[State -1, air dash];空中ダッシュ
type = ChangeState
value = 101
triggerall = command = "FF"
triggerall = command != "holdback" 
triggerall = Var(4) = 0
triggerall = statetype = A
trigger1 = Var(2) <= 1
trigger1 = ctrl
trigger2 = Var(2) = 5
trigger2 = ctrl

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
[State -1, air dash];空中後ダッシュ
type = ChangeState
value = 102
triggerall = command = "BB"
triggerall = command != "holdfwd" 
triggerall = Var(4) = 0
triggerall = statetype = A
trigger1 = Var(2) <= 1
trigger1 = ctrl
trigger2 = Var(2) = 5
trigger2 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中投げ
[State -1, Air Throw]
type = ChangeState
value = 860
triggerall = command = "b"
triggerall = p2statetype = A
triggerall = ctrl
triggerall = var(8) = 0
triggerall = statetype = A
triggerall = p2movetype != H
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 20
trigger1 = P2bodyDist Y >= -35
trigger1 = P2bodyDist Y <= 35
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 20
trigger2 = P2bodyDist Y >= -35
trigger2 = P2bodyDist Y <= 35

;---------------------------------------------------------------------------
;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl || stateno = 103
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 13
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;===========================================================================
;                                 通常技
;===========================================================================
;足払い
[State -1, Crouching Hard Kick]
type = ChangeState
value = 450
triggerall = command = "dust"|| command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 1501
trigger11 = time >= 2
;---------------------------------------------------------------------------
;ジャンプダスト
[State -1, Jump Dust]
type = ChangeState
value = 650
triggerall = command = "dust"|| command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 101
trigger5 = stateno = 102
trigger6 = stateno = 45
;----------------------------------------------------------------------------------
;立ち→Ｐ
[State -1]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1501
trigger2 = time >= 2
trigger3 = stateno = 100
trigger4 = stateno = 103
;-------------------------------------------------------------------------
;立ち→ＨＳ
[State -1]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 100
trigger5 = stateno = 103
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 1501
trigger8 = time >= 2

;---------------------------------------------------------------------------
;立ち近距離Ｓ
[State -1, Slash]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 70
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 103
trigger3 = stateno = 100
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 1501
trigger6 = time >= 2
trigger7 = stateno = 400
trigger7 = movecontact
trigger7 = animelemtime(4) >= 0
;------------------------------------------------------------------------------
;立ちＰ
[State -1, Stand Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact
trigger2 = animelemtime(5) >= 0
trigger3 = stateno = 100
trigger4 = stateno = 103
trigger5 = stateno = 1501
trigger5 = time >= 2

;---------------------------------------------------------------------------
;立ちＳ
[State -1, Stand Slash]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact

trigger7 = stateno = 1501
trigger7 = time >= 2

;---------------------------------------------------------------------------
;立ちＫ
[State -1, Stand Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 1501
trigger5 = time >= 2
;---------------------------------------------------------------------------
;立ちＨＳ（ＸＸ）
[State -1, Standing Hard Slash]
type = ChangeState
value = 241
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger8 = animelemtime(8) >= 0
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 1501
trigger10 = time >= 2
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;敬意
[State -1, keii]
type = ChangeState
value = 196
triggerall = command = "start"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 1501
trigger4 = time >= 2
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 1501
trigger4 = time >= 2

;---------------------------------------------------------------------------
;しゃがみＰ
[State -1, Crouching P]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 230
trigger4 = movecontact
trigger4 = animelemtime(5) >= 0
trigger5 = stateno = 1501
trigger5 = time >= 2
trigger6 = stateno = 215
trigger6 = movecontact
trigger6 = animelemtime(5) >= 0
;---------------------------------------------------------------------------
;しゃがみＳ
[State -1, Crouching Slash]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 430
trigger6 = movecontact
trigger6 = stateno = 211
trigger7 = movecontact
trigger7 = stateno = 215

trigger8 = stateno = 1501
trigger8 = time >= 2
;---------------------------------------------------------------------------
;しゃがみＫ
[State -1, Crouching K]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 1501
trigger4 = time >= 2
;---------------------------------------------------------------------------
;しゃがみＨＳ
[State -1, Crouching Hard Slash]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 1501
trigger10 = time >= 2
;---------------------------------------------------------------------------
;ジャンプＰ
[State -1, Jump Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 610
trigger6 = movecontact

;---------------------------------------------------------------------------
;ジャンプＳ
[State -1, Jump Slash]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 101
trigger5 = stateno = 102

;---------------------------------------------------------------------------
;ジャンプＫ
[State -1, Jump Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 101
trigger4 = stateno = 102

;---------------------------------------------------------------------------
;ジャンプＨＳ
[State -1, Jump High Slash]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 101
trigger6 = stateno = 102