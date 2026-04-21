;-| 一撃必殺技 |--------------------------------------------------------
[Command];ライジングフォース
name = "rizing_force"
command = ~D, DF, F, D, DF, F, b
time = 20

;-| 覚醒必殺技 |--------------------------------------------------------
[Command];セイグリッドエッジ
name = "sagrid_edge"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command];ＥＸセイグリッドエッジ
name = "ex_sagrid_edge"
command = ~F, DF, D, DB, B, F, x
time = 30

[Command];ライドザライトニング
name = "ride_the_lightning"
command = ~F, DF, D, DB, B, F, b
time = 30

;-| 必殺技 |------------------------------------------------------
[Command];クレシェントスラッシュ（コマンド変更）
name = "crecents"
command = ~B, D, DB, a

[Command];ヴェイパースラストＳ
name = "vaper_slast_s"
command = ~F, D, DF, y

[Command];ヴェイパースラストＨＳ
name = "vaper_slast_hs"
command = ~F, D, DF, b

[Command];エレガントに斬る
name = "elegant"
command = ~F, D, DF, x

[Command];グランドヴェイパースラスト
name = "grand_vaper_slast"
command = ~D, DB, B, y

[Command];クレシェントスラッシュ
name = "crecent_slash"
command = ~D, DB, B, a

[Command];スタンエッジ
name = "stan_edge"
command = ~D, DF, F, y

[Command];スタンエッジ・チャージアタック
name = "stan_edge_charge"
command = ~D, DF, F, b

[Command];スタンディッパー
name = "stan_dipper"
command = ~D, DF, F, a

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
;===========================================================================
[State -1, rizing force]
type = ChangeState
value = 3500
triggerall = command = "rizing_force"
triggerall = var(24) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

;===========================================================================
;　　　　　　　　　　　　　　　　覚醒必殺技
;===========================================================================
;セイグリッドエッジ
[State -1, sagrid edge]
type = ChangeState
value = 3200
triggerall = command = "sagrid_edge"
triggerall = power >= 1000
triggerall = var(59) = 2
triggerall = NumprojID(3250) = 0
triggerall = NumprojID(3200) = 0
triggerall = NumprojID(1152) = 0
triggerall = NumprojID(1164) = 0
triggerall = NumprojID(1202) = 0
triggerall = NumprojID(1212) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

;---------------------------------------------------------------------------
;ＥＸセイグリッドエッジ
[State -1, sagrid edge]
type = ChangeState
value = 3250
triggerall = command = "ex_sagrid_edge"
triggerall = power >= 1000
triggerall = var(59) = 1
triggerall = NumprojID(3250) = 0
triggerall = NumprojID(3200) = 0
triggerall = NumprojID(1152) = 0
triggerall = NumprojID(1164) = 0
triggerall = NumprojID(1202) = 0
triggerall = NumprojID(1212) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

;---------------------------------------------------------------------------
;ＥＸ空中ライドザライトニング
[State -1, air ride the lightning]
type = ChangeState
value = 3150
triggerall = command = "ride_the_lightning"
triggerall = power >= 1000
triggerall = var(59) = 1
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
trigger7 = stateno = 640
trigger7 = movecontact

;---------------------------------------------------------------------------
;空中ライドザライトニング
[State -1, air ride the lightning]
type = ChangeState
value = 3050
triggerall = command = "ride_the_lightning"
triggerall = power >= 1000
triggerall = var(59) != [0,1]
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
trigger7 = stateno = 640
trigger7 = movecontact

;---------------------------------------------------------------------------
;ＥＸライドザライトニング
[State -1, ride the lightning]
type = ChangeState
value = 3100
triggerall = command = "ride_the_lightning"
triggerall = power >= 1000
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

;---------------------------------------------------------------------------
;ライドザライトニング
[State -1, ride the lightning]
type = ChangeState
value = 3000
triggerall = command = "ride_the_lightning"
triggerall = power >= 1000
triggerall = var(59) != 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

;===========================================================================
;　　　　　　　　　　　　　　　　システム関連
;===========================================================================
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
trigger7 = stateno = 235
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 410
trigger12 = stateno = 430
trigger13 = stateno = 440
trigger14 = stateno = 450
trigger15 = stateno = 850
trigger16 = stateno = 2030;デッドアングルアタック
trigger17 = stateno = 1050;スタンディッパー（スライディング）
trigger18 = stateno = 1051;スタンディッパー（斬撃）
trigger19 = stateno = 3000;空中ライドザライトニング
trigger20 = stateno = 1300;ＥＸヴェイパースラストＳ開始
trigger21 = stateno = 1310;ＥＸヴェイパースラストＨＳ開始
trigger22 = stateno = 1350;グランドヴェイパースラスト移動斬り
trigger23 = stateno = 1351;グランドヴェイパースラスト開始
trigger24 = stateno = 1500;ニードルスパイク地上
trigger25 = stateno = 241
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
trigger2 = animelemtime(2) >= 0
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
trigger6 = stateno = 1001;ヴェイパースラストＳ
trigger7 = stateno = 1006;ヴェイパースラスト空中
trigger8 = stateno = 1011;ヴェイパースラストＨＳ
trigger9 = stateno = 1101;クレシェントスラッシュ
trigger10 = stateno = 3050;空中ライドザライトニング
trigger11 = stateno = 1301;ＥＸヴェイパースラストＳ
trigger12 = stateno = 1305;ＥＸヴェイパースラスト空中
trigger13 = stateno = 1306;ＥＸヴェイパースラスト空中
trigger14 = stateno = 1311;ＥＸヴェイパースラストＨＳ
trigger15 = stateno = 1320;ＥＸヴェイパー斬り払い
trigger16 = stateno = 1352;グランドヴェイパースラスト
trigger17 = stateno = 1451;グリードセバー
trigger18 = stateno = 1501;ニードルスパイク空中
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

;===========================================================================
;　　　　　　　　　　　　　　　　　必殺技
;===========================================================================
;ＥＸヴェイパースラストＳ
[State -1, EX vaper slast S]
type = ChangeState
value = 1300
triggerall = var(59) = 1
triggerall = command = "vaper_slast_s"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

;----------------------------------------------------------------------------------------
;ヴェイパースラストＳ
[State -1, vaper slast S]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = command = "vaper_slast_s"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

;-----------------------------------------------------------------------------------------
;ＥＸヴェイパースラスト空中
[State -1, Air vaper slast]
type = ChangeState
value = 1305
triggerall = command = "vaper_slast_s" || command = "vaper_slast_hs"
triggerall = var(59) = 1
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
trigger7 = stateno = 640
trigger7 = movecontact

;-----------------------------------------------------------------------------------------
;ヴェイパースラスト空中
[State -1, Air vaper slast]
type = ChangeState
value = 1005
triggerall = command = "vaper_slast_s" || command = "vaper_slast_hs"
triggerall = var(59) != 1
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
trigger7 = stateno = 640
trigger7 = movecontact

;-----------------------------------------------------------------------------------------
;ＥＸヴェイパースラストＨＳ
[State -1, vaper slast HS]
type = ChangeState
value = 1310
triggerall = command = "vaper_slast_hs"
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

;-----------------------------------------------------------------------------------------
;ヴェイパースラストＨＳ
[State -1, vaper slast HS]
type = ChangeState
value = 1010
triggerall = command = "vaper_slast_hs"
triggerall = var(59) != 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

;----------------------------------------------------------------------------
;クレシェントスラッシュ
[State -1, crecent slash]
type = ChangeState
value = 1100
triggerall = var(59) = 1 && command = "crecents" 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

;----------------------------------------------------------------------------
;エレガントに斬る
[State -1, Elegant ni kiru]
type = ChangeState
value = 1400
triggerall = command = "elegant"
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

;----------------------------------------------------------------------------
;グランドヴェイパースラスト
[State -1, Grand vaper slast]
type = ChangeState
value = 1350
triggerall = command = "grand_vaper_slast"
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

;----------------------------------------------------------------------------
;グリードセバー
[State -1, greed saver]
type = ChangeState
value = 1450
triggerall = command = "crecent_slash"
triggerall = var(59) != 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

;----------------------------------------------------------------------------
;クレシェントスラッシュ
[State -1, crecent slash]
type = ChangeState
value = 1100
triggerall = var(59) = 0 && command = "crecent_slash"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

;----------------------------------------------------------------------------
;空中スタンエッジＳ
[State -1, air stan edge]
type = ChangeState
value = 1200
triggerall = command = "stan_edge"
triggerall = NumprojID(1152) = 0
triggerall = NumprojID(1164) = 0
triggerall = NumprojID(1202) = 0
triggerall = NumprojID(1212) = 0
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
trigger7 = stateno = 640
trigger7 = movecontact

;----------------------------------------------------------------------------
;空中スタンエッジＨＳ
[State -1, air stan edge]
type = ChangeState
value = 1210
triggerall = command = "stan_edge_charge"
triggerall = NumprojID(1152) = 0
triggerall = NumprojID(1164) = 0
triggerall = NumprojID(1202) = 0
triggerall = NumprojID(1212) = 0
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
trigger7 = stateno = 640
trigger7 = movecontact

;----------------------------------------------------------------------------
;スタンエッジ
[State -1, stan edge]
type = ChangeState
value = 1150
triggerall = command = "stan_edge"
triggerall = NumprojID(1152) = 0
triggerall = NumprojID(1164) = 0
triggerall = NumprojID(1202) = 0
triggerall = NumprojID(1212) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

;----------------------------------------------------------------------------
;スタンエッジ・チャージアタック
[State -1, charge stan edge]
type = ChangeState
value = 1160
triggerall = command = "stan_edge_charge"
triggerall = NumprojID(1152) = 0
triggerall = NumprojID(1164) = 0
triggerall = NumprojID(1202) = 0
triggerall = NumprojID(1212) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

;----------------------------------------------------------------------------
;ニードルスパイク
[State -1, needle spike]
type = ChangeState
value = 1500
triggerall = command = "stan_dipper"
triggerall = var(59) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

;----------------------------------------------------------------------------
;スタンディッパー
[State -1, stan dipper]
type = ChangeState
value = 1050
triggerall = command = "stan_dipper"
triggerall = var(59) = 0 || var(59) = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 450
trigger15 = movecontact
trigger16 = stateno = 241
trigger16 = movecontact

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
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = stateno = 440
trigger13 = movecontact
trigger14 = stateno = 241
trigger14 = movecontact

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
triggerall = var(59) = [1,2]
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
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 430
trigger6 = movecontact
trigger7 = stateno = 440
trigger7 = movecontact
trigger8 = stateno = 200
trigger8 = movecontact
trigger9 = stateno = 205
trigger9 = movecontact
trigger10 = stateno = 210
trigger10 = movecontact
trigger11 = stateno = 215
trigger11 = movecontact
trigger12 = stateno = 230
trigger12 = movecontact
trigger13 = stateno = 240
trigger13 = movecontact

;---------------------------------------------------------------------------
;ジャンプダスト
[State -1, Jump Dust]
type = ChangeState
value = 650
triggerall = command = "dust"|| command = "c"
triggerall = var(59) = [1,2]
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 101
trigger5 = stateno = 102

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
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 100
trigger5 = stateno = 103
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact

;-------------------------------------------------------------------------
;立ち→Ｋ
[State -1]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 100
trigger5 = stateno = 103
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 241
trigger10 = movecontact
trigger11 = stateno = 400
trigger11 = movecontact
trigger12 = stateno = 410
trigger12 = movecontact
trigger13 = stateno = 430
trigger13 = movecontact

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
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 100
trigger5 = stateno = 103
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact

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
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact

;------------------------------------------------------------------------------
;立ちＰ
[State -1, Stand Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 6
trigger3 = stateno = 100
trigger4 = stateno = 103
trigger5 = stateno = 400
trigger5 = movecontact

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
trigger7 = stateno = 205
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact

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
trigger4 = stateno = 200
trigger4 = time >= 6
trigger5 = stateno = 400
trigger5 = movecontact

;---------------------------------------------------------------------------
;立ちＨＳ（ＸＸ）
[State -1, Standing Hard Slash]
type = ChangeState
value = 241
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(59) = 2
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 205
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;---------------------------------------------------------------------------
;立ちＨＳ
[State -1, Standing Hard Slash]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(59) != 2
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 205
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact


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

;-----------------------------------------------------------------------------
;モードチェンジ
[State -1, mode change]
type = ChangeState
value = 7050
triggerall = command = "z"
triggerall = command != "holddown" 
trigger1 = statetype != A
trigger1 = statetype != C
trigger1 = stateno = 0
trigger1 = ctrl

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
trigger4 = time >= 5
trigger4 = stateno = 400
trigger5 = movecontact
trigger5 = stateno = 200

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
trigger4 = stateno = 400
trigger5 = movecontact
trigger5 = stateno = 430
trigger6 = movecontact
trigger6 = stateno = 230
trigger7 = movecontact
trigger7 = stateno = 210
trigger8 = movecontact
trigger8 = stateno = 215
trigger9 = movecontact
trigger9 = stateno = 200
trigger10 = movecontact
trigger10 = stateno = 205

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
trigger4 = movecontact
trigger4 = stateno = 400
trigger5 = movecontact
trigger5 = stateno = 200

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
trigger4 = movecontact
trigger4 = stateno = 400
trigger5 = movecontact
trigger5 = stateno = 410
trigger6 = movecontact
trigger6 = stateno = 430
trigger7 = movecontact
trigger7 = stateno = 200
trigger8 = movecontact
trigger8 = stateno = 230
trigger9 = movecontact
trigger9 = stateno = 215
trigger10 = movecontact
trigger10 = stateno = 205

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