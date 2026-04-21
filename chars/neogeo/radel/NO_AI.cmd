;ROTD Radel by.Nyankoro CMD
;-| 超必殺技 |----------------------------------------------------
[Command]
name = "shadow1"
command = ~D, F, D, B, x
time = 30

[Command]
name = "shadow2"
command = ~D, F, D, B, y
time = 30

[Command]
name = "moon1"
command = ~D, F, D, B, a
time = 25

[Command]
name = "earth"
command = ~D, F, D, F, y
time = 25

;-| 必殺技 |------------------------------------------------------
[Command]
name = "escape1"
command = ~D, DF, F, x
time = 20

[Command]
name = "escape2"
command = ~D, DF, F, y
time = 20

[Command]
name = "dedra1"
command =  ~F,D,DF, x
time = 13

[Command]
name = "dedra2"
command =  ~F,D,DF, y
time = 13

[Command]
name = "exe1"
command = ~F, D, B, x
time = 20

[Command]
name = "exe2"
command = ~F, D, B, y
time = 30

[Command]
name = "mapa1"
command = ~D, DB, B, x
time = 20

[Command]
name = "mapa2"
command = ~D, DB, B, y
time = 20

[Command]
name = "screw1"
command = ~F, D, B, a
time = 20

[Command]
name = "screw2"
command = ~F, D, B, b
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
name = "downfwd_a"
command = /DF, a
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

;---------------------------------------------------------------------------
;シャドウソード
[State -1]
type = ChangeState
value = 3000
triggerall = command = "shadow1"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 2006
trigger3 = (stateno = 200) && MoveContact
trigger4 = (stateno = 205) && MoveContact
trigger5 = (stateno = 210) && MoveContact
trigger6 = (stateno = 220) && MoveContact
trigger7 = (stateno = 230) && MoveContact
trigger8 = (stateno = 240) && MoveContact
trigger9 = (stateno = 400) && MoveContact
trigger10 = (stateno = 405) && MoveContact
trigger11 = (stateno = 410) && MoveContact

;---------------------------------------------------------------------------
;シャドウソードMAX
[State -1]
type = ChangeState
value = 3100
triggerall = command = "shadow2"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 2006
trigger3 = (stateno = 200) && MoveContact
trigger4 = (stateno = 205) && MoveContact
trigger5 = (stateno = 210) && MoveContact
trigger6 = (stateno = 220) && MoveContact
trigger7 = (stateno = 230) && MoveContact
trigger8 = (stateno = 240) && MoveContact
trigger9 = (stateno = 400) && MoveContact
trigger10 = (stateno = 405) && MoveContact
trigger11 = (stateno = 410) && MoveContact

;---------------------------------------------------------------------------
;バイオレントムーン
[State -1]
type = ChangeState
value = 3200
triggerall = command = "moon1"
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
;アース・バークス
[State -1]
type = ChangeState
value = 3300
triggerall = command = "earth"
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
;デッドドラゴン弱
[State -1]
type = ChangeState
value = 1010
triggerall = command = "dedra1"
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
;デッドドラゴン強
[State -1]
type = ChangeState
value = 1015
triggerall = command = "dedra2"
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
;エスケイプ弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "escape1"
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
;エスケイプ強
[State -1]
type = ChangeState
value = 1005
triggerall = command = "escape2"
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
;スクリューキック弱
[State -1]
type = ChangeState
value = 1020
triggerall = command = "screw1"
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
;スクリューキック強
[State -1]
type = ChangeState
value = 1030
triggerall = command = "screw2"
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
;ヘッドエグゼキューション
[State -1]
type = ChangeState
value = 1040
triggerall = command = "exe1" || command = "exe2"
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
;投げ
[State -1, Neko Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;特殊技
[State -1]
type = ChangeState
value = 240
triggerall = command = "downfwd_a"
triggerall = command = "holddown"
trigger1 = statetype = C
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
;1nd inpact start
[State -1]
type = ChangeState
value = 250
triggerall = command = "b+y" || command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 850
trigger3 = stateno = 1043 && (AnimElem = 4, >= 0 )

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = P2BodyDist X <= 20 && command = "x" && command != "holddown"
trigger1 =  statetype = S && ctrl
trigger2 = StateNo = 200 && (movecontact && time > 4)

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
triggerall = P2BodyDist X <= 20
trigger1 = command = "y" && command != "holddown" && statetype = S && ctrl

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
triggerall = P2BodyDist X <= 20
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200
trigger2 = (time > 10) || (movecontact && time > 4)

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
triggerall = P2BodyDist X <= 20
trigger1 = command = "b" && command != "holddown" && statetype = S && ctrl

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
trigger2 = StateNo = 400 && (movecontact && time > 4)

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 405
trigger1 = command = "y" && command = "holddown" && statetype = C && ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 410
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400
trigger2 = (time > 10) || (movecontact && time > 4)

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 415
trigger1 = command = "b" && command = "holddown" && statetype = C && ctrl

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
