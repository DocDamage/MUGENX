;-| Super Motions |--------------------------------------------------------
[Command]
name = "SC"
command = x, a, y, b
time = 30

[Command]
name = "TD"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command] 
name = "TD"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "VD"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command] 
name = "VD"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command] 
name = "KK"
command = ~D, DF, F, a+y
time = 30

[Command] 
name = "KK"
command = ~D, DF, F, y+b
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "VTR_x"
command = ~$B, $F, x

[Command]
name = "VTR_y"
command = ~$B, $F, y

[Command]
name = "VT_x"
command = ~40$B, $F, x

[Command]
name = "VT_y"
command = ~40$B, $F, y

[Command]
name = "NVR_a"
command = ~$D, $U, a

[Command]
name = "NVR_b"
command = ~$D, $U, b

[Command]
name = "NV_a"
command = ~40$D, $U, a

[Command]
name = "NV_b"
command = ~40$D, $U, b

[Command]
name = "VM"
command = ~B, DB, D, DF, F, y
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = z
time = 1

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
name = "koutai"
command = y+a
time = 1

[Command]
name = "koutai"
command = y+b
time = 1

[Command]
name = "SJ"
command = D, $U
time = 13

[Command]
name = "xa"
command = x+a
time = 1

[Command]
name = "yb"
command = y+b
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
name = "hold_a"
command = /a

[Command]
name = "hold_b"
command = /b

[Command]
name = "hold_x"
command = /x

[Command]
name = "hold_y"
command = /y

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;交代攻撃
[State -1, Koutai]
type = ChangeState
value = 2700
triggerall = command = "KK"
triggerall = NumExplod(2999) = 1
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 107

;===========================================================================
;---------------------------------------------------------------------------
;　コンボ サン・キュロット投げ
[State -1,]
type = ChangeState
value = 3315
triggerall = command = "SC"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = NumHelper(3301) = 0
triggerall = ctrl
triggerall = Var(19) = 1
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)

;===========================================================================
;---------------------------------------------------------------------------
; サン・キュロット投げ
[State -1,]
type = ChangeState
value = 3310
triggerall = command = "SC"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = P2movetype != H
triggerall = NumHelper(3301) = 0
triggerall = ctrl
triggerall = Var(19) = 0
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)

;---------------------------------------------------------------------------
; サン・キュロット
[State -1,]
type = ChangeState
value = 3300
triggerall = command = "SC"
triggerall = power >= 2000
triggerall = statetype != A
triggerall = NumHelper(3301) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = [400,430]
trigger7 = movecontact
trigger8 = stateno = 52
trigger9 = power >= 3000
trigger9 = stateno = 1100 && movecontact
trigger10 = power >= 3000
trigger10 = stateno = 1110 && movecontact
trigger11 = power >= 3000
trigger11 = Time >= 39
trigger11 = stateno = 1200 && movecontact

;===========================================================================
;---------------------------------------------------------------------------
; テルミドール2
[State -1,]
type = ChangeState
value = 3010
triggerall = command = "TD"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = NumHelper(3301) = 1
triggerall = NumHelper(3001) = 1
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = [400,430]
trigger7 = movecontact
trigger8 = stateno = 52
trigger9 = power >= 2000
trigger9 = stateno = 1100 && movecontact
trigger10 = power >= 2000
trigger10 = stateno = 1110 && movecontact
trigger11 = power >= 2000
trigger11 = Time >= 39
trigger11 = stateno = 1200 && movecontact

;===========================================================================
;---------------------------------------------------------------------------
; テルミドール
[State -1,]
type = ChangeState
value = 3000
triggerall = command = "TD"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = NumHelper(3001) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = [400,430]
trigger7 = movecontact
trigger8 = stateno = 52
trigger9 = power >= 2000
trigger9 = stateno = 1100 && movecontact
trigger10 = power >= 2000
trigger10 = stateno = 1110 && movecontact
trigger11 = power >= 2000
trigger11 = Time >= 39
trigger11 = stateno = 1200 && movecontact

;===========================================================================
;---------------------------------------------------------------------------
; ブリュヴィオーズ
[State -1,]
type = ChangeState
value = 3100
triggerall = command = "VD"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = [400,430]
trigger7 = movecontact
trigger8 = stateno = 52
trigger9 = power >= 2000
trigger9 = stateno = 1100 && movecontact
trigger10 = power >= 2000
trigger10 = stateno = 1110 && movecontact
trigger11 = power >= 2000
trigger11 = Time >= 39
trigger11 = stateno = 1200 && movecontact

;===========================================================================
;---------------------------------------------------------------------------
; ヴァンデミエール
[State -1,]
type = ChangeState
value = 1200
triggerall = command = "VM"
triggerall = statetype != A
triggerall = P2bodydist X < 29
triggerall = P2stateno != 150
triggerall = P2stateno != 151
triggerall = P2stateno != 152
triggerall = P2stateno != 153
triggerall = P2stateno < 5100
triggerall = p2statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = [400,430]
trigger7 = movecontact
trigger8 = stateno = 52

;===========================================================================
;---------------------------------------------------------------------------
;ヴァントーズ連射（サンキュロット）（弱）
[State -1,]
type = ChangeState
value = 1000
triggerall = command = "VTR_x"
triggerall = statetype != A
triggerall = NumHelper(3301) = 1
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = [400,430]
trigger7 = movecontact
trigger8 = stateno = 52

;---------------------------------------------------------------------------
;ヴァントーズ連射（サンキュロット（強）
[State -1,]
type = ChangeState
value = 1010
triggerall = command = "VTR_y"
triggerall = statetype != A
triggerall = NumHelper(3301) = 1
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = [400,430]
trigger7 = movecontact
trigger8 = stateno = 52

;===========================================================================
;---------------------------------------------------------------------------
;ヴァントーズ連射（弱）
[State -1,]
type = ChangeState
value = 1000
triggerall = command = "VT_x"
triggerall = statetype != A
triggerall = NumHelper(3001) = 0
triggerall = var(7) = 1
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = [400,430]
trigger7 = movecontact
trigger8 = stateno = 52

;---------------------------------------------------------------------------
;ヴァントーズ連射（強）
[State -1,]
type = ChangeState
value = 1010
triggerall = command = "VT_y"
triggerall = statetype != A
triggerall = NumHelper(3001) = 0
triggerall = var(7) = 1
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = [400,430]
trigger7 = movecontact
trigger8 = stateno = 52

;===========================================================================
;---------------------------------------------------------------------------
;ヴァントーズ（弱）
[State -1,]
type = ChangeState
value = 1000
triggerall = command = "VT_x"
triggerall = statetype != A
triggerall = NumHelper(3001) = 0
triggerall = numproj = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = [400,430]
trigger7 = movecontact
trigger8 = stateno = 52

;---------------------------------------------------------------------------
;ヴァントーズ（強）
[State -1,]
type = ChangeState
value = 1010
triggerall = command = "VT_y"
triggerall = statetype != A
triggerall = NumHelper(3001) = 0
triggerall = numproj = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 251 && movecontact
trigger7 = stateno = [400,430]
trigger7 = movecontact
trigger8 = stateno = 52

;===========================================================================
;---------------------------------------------------------------------------
;ニヴォース（サンキュロット（弱）
[State -1,]
type = ChangeState
value = 1100
triggerall = command = "NVR_a"
triggerall = statetype != A
triggerall = NumHelper(3301) = 1
trigger1 = ctrl
trigger2 = stateno = 40
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 251 && movecontact
trigger8 = stateno = [400,430]
trigger8 = movecontact
trigger9 = stateno = 52

;---------------------------------------------------------------------------
;ニヴォース（サンキュロット（強）
[State -1,]
type = ChangeState
value = 1110
triggerall = command = "NVR_b"
triggerall = statetype != A
triggerall = NumHelper(3301) = 1
trigger1 = ctrl
trigger2 = stateno = 40
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 251 && movecontact
trigger8 = stateno = [400,430]
trigger8 = movecontact
trigger9 = stateno = 52


;===========================================================================
;---------------------------------------------------------------------------
;ニヴォース（弱）
[State -1,]
type = ChangeState
value = 1100
triggerall = command = "NV_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 40
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 251 && movecontact
trigger8 = stateno = [400,430]
trigger8 = movecontact
trigger9 = stateno = 52

;---------------------------------------------------------------------------
;ニヴォース（強）
[State -1,]
type = ChangeState
value = 1110
triggerall = command = "NV_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 40
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 251 && movecontact
trigger8 = stateno = [400,430]
trigger8 = movecontact
trigger9 = stateno = 52

;===========================================================================
;---------------------------------------------------------------------------
;緊急回避　後
[State -1]
type = ChangeState
value = 310
triggerall = command = "hold_a"
triggerall = command = "hold_x"
triggerall = command = "holdback"
trigger1 = command = "xa"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 151
trigger2 = power >= 1000
trigger3 = stateno = 153
trigger3 = power >= 1000

;---------------------------------------------------------------------------
;ダッシュ緊急回避　前
[State -1]
type = ChangeState
value = 300
triggerall = command = "hold_a"
triggerall = command = "hold_x"
trigger1 = command = "xa"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 151
trigger2 = power >= 1000
trigger3 = stateno = 153
trigger3 = power >= 1000

;---------------------------------------------------------------------------
;ガードキャンセルふっとばし
[State -1]
type = ChangeState
value = 350
triggerall = command = "hold_y"
triggerall = command = "hold_b"
triggerall = power >= 1000
trigger1 = stateno = 151
trigger2 = stateno = 153
IgnoreHitPause = 0

;===========================================================================
;---------------------------------------------------------------------------
;メシドール（キャンセル）
[State -1,]
type = ChangeState
value = 251
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = command = "x"
trigger1 = stateno = 200 && movecontact
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = [400,430]
trigger5 = movecontact

;---------------------------------------------------------------------------
;メシドール
[State -1,]
type = ChangeState
value = 250
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52

;---------------------------------------------------------------------------
; フロレアール
[State -1,]
type = ChangeState
value = 270
triggerall = command != "holddown"
triggerall = command = "holdback"
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = [400,430]
trigger6 = movecontact
trigger7 = stateno = 52

;---------------------------------------------------------------------------
; ブレリアール
[State -1,]
type = ChangeState
value = 280
triggerall = command != "holddown"
triggerall = command = "holdback"
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = [400,430]
trigger6 = movecontact
trigger7 = stateno = 52

;===========================================================================
;---------------------------------------------------------------------------
;大ジャンプ
[State -1]
type = ChangeState
value = 39
triggerall = command = "SJ"
triggerall = statetype != A
trigger1 = ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;交代
[State -1]
type = ChangeState
value = 2600
triggerall = command = "koutai"
triggerall = statetype != A
triggerall = NumExplod(2999) = 1
trigger1 = ctrl = 1

;===========================================================================
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
;コンボ投げ
[State -1, Throw]
type = ChangeState
value = 805
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = Var(19) = 1
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)

;---------------------------------------------------------------------------
;コンボ投げキック
[State -1, Throw]
type = ChangeState
value = 855
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = Var(19) = 1
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)

;---------------------------------------------------------------------------
;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = Var(19) = 0
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;投げキック
[State -1, Throw]
type = ChangeState
value = 850
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = Var(19) = 0
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; 近距離弱パンチ
[State -1,]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X < 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 107

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 107
trigger4 = (stateno = 200) && time > 10
trigger5 = (stateno = 230) && time > 10

;---------------------------------------------------------------------------
; 近距離強パンチ
[State -1,]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X < 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 107

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 107

;---------------------------------------------------------------------------
; 近距離弱キック
[State -1,]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X < 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 107
trigger4 = (stateno = 200) && time > 10
trigger5 = (stateno = 230) && time > 10

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 107

;---------------------------------------------------------------------------
; 近距離強キック
[State -1,]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X < 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 107

;---------------------------------------------------------------------------
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 107

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 107

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 107
trigger4 = (stateno = 400) && time > 10
trigger5 = (stateno = 430) && time > 10

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 107

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 107
trigger4 = (stateno = 430) && time > 10

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 52
trigger3 = stateno = 107

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl