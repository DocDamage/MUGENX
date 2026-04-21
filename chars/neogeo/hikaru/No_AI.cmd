;matrimelee 城門光 by.Nyankoro CMD

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
command = ~D, ~D, DF, F, b
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
