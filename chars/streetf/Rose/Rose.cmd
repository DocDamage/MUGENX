;-| Super Motions |--------------------------------------------------------
[Command]
name = "ASoulS_L"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "ASoulS_H"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "ASoulT_L"
command = ~D, DF, F, D, DF, x
time = 30

[Command]
name = "ASoulT_H"
command = ~D, DF, F, D, DF, y
time = 30

[Command]
name = "SoulI_L"
command = ~D, DF, F, D, DF, a
time = 30

[Command]
name = "SoulI_H"
command = ~D, DF, F, D, DF, b
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "Spi_L"
command = ~D, DF, F, a
time = 30

[Command]
name = "Spi_H"
command = ~D, DF, F, b
time = 30

[Command]
name = "SoulR_L"
command = ~D, DB, B, x
time = 30

[Command]
name = "SoulR_H"
command = ~D, DB, B, y
time = 30

[Command]
name = "SoulT_L"
command = ~F, D, DF, x
time = 30

[Command]
name = "SoulT_H"
command = ~F, D, DF, y
time = 30

[Command]
name = "SoulS_L"
command = ~B, DB, D, DF, F, x
time = 30

[Command]
name = "SoulS_H"
command = ~B, DB, D, DF, F, y
time = 30

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "bl_F"
command = F
time = 0

[Command]
name = "bl_D"
command = D
time = 0

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = a+x
time = 1
[Command]
name = "nage"
command = y+b
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
name = "holds"
command = /$s
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
;オーラソウルスパーク(神秘)
[State -1, ASoulS_H]
type = ChangeState
value = 3050
triggerall = command = "ASoulS_H" && power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,214]) || (stateno = [216,244]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;オーラソウルスパーク(超)
[State -1, ASoulS_L]
type = ChangeState
value = 3000
triggerall = command = "ASoulS_L" && power >= 1000 || command = "ASoulS_H" && power = [1000,1999]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,214]) || (stateno = [216,244]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;オーラソウルスルー(神秘)
[State -1, ASoulT_H]
type = ChangeState
value = 3150
triggerall = command = "ASoulT_H" && power >= 2000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,214]) || (stateno = [216,244]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;オーラソウルスルー(超)
[State -1, ASoulT_L]
type = ChangeState
value = 3100
triggerall = command = "ASoulT_L" && power >= 1000 || command = "ASoulT_H" && power = [1000,1999]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,214]) || (stateno = [216,244]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;ソウルイリュージョン(神秘)
[State -1, SoulI_H]
type = ChangeState
value = 3250
triggerall = command = "SoulI_H" && power >= 2000
triggerall = var(4) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,214]) || (stateno = [216,244]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;ソウルイリュージョン(超)
[State -1, SoulI_L]
type = ChangeState
value = 3200
triggerall = command = "SoulI_L" && power >= 1000 || command = "SoulI_H" && power = [1000,1999]
triggerall = var(4) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,214]) || (stateno = [216,244]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;===========================================================================
;---------------------------------------------------------------------------
;ソウルスパイラル強
[State -1, Spi_H]
type = ChangeState
value = 1310
triggerall = command = "Spi_H"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,214]) || (stateno = [216,244]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;ソウルスパイラル弱
[State -1, Spi_L]
type = ChangeState
value = 1300
triggerall = command = "Spi_L"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,214]) || (stateno = [216,244]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;ソウルリフレクト強(般若)
[State -1, SoulR_H]
type = ChangeState
value = 1250
triggerall = command = "SoulR_H"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,214]) || (stateno = [216,244]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;ソウルリフレクト弱(九州)
[State -1, SoulR_L]
type = ChangeState
value = 1200
triggerall = command = "SoulR_L"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,214]) || (stateno = [216,244]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;ソウルスルー強
[State -1, SoulT_H]
type = ChangeState
value = 1110
triggerall = command = "SoulT_H"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,214]) || (stateno = [216,244]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;ソウルスルー弱
[State -1, SoulT_L]
type = ChangeState
value = 1100
triggerall = command = "SoulT_L"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,214]) || (stateno = [216,244]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;ソウルスパーク強
[State -1, SoulS_H]
type = ChangeState
value = 1010
triggerall = command = "SoulS_H" && NumProjID(1000) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,214]) || (stateno = [216,244]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;ソウルスパーク弱
[State -1, SoulS_L]
type = ChangeState
value = 1000
triggerall = command = "SoulS_L" && NumProjID(1000) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,214]) || (stateno = [216,244]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;===========================================================================
;---------------------------------------------------------------------------
;空中投げ
[State -1, nage]
type = ChangeState
value = 800
trigger1 = command = "nage"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;投げ
[State -1, nage]
type = ChangeState
value = 700
trigger1 = command = "nage"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = StateType = S && Ctrl = 1

;---------------------------------------------------------------------------
;後ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------
; 緊急回避動作（前）
[State -1]
type = ChangeState
value = 900
triggerall = Command = "recovery" && !Command = "holdback" || Command = "recovery" && Command = "holdfwd"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = stateno = 1001 || stateno = 100

;---------------------------------------------------------------------
; 緊急回避動作（後）
[State -1]
type = ChangeState
value = 910
triggerall = Command = "recovery" && Command = "holdback"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------------
;前ブロッキング
[State -1]
type = ChangeState
value = 1001
triggerall = command = "bl_F"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1004 || stateno = 1002
trigger2 = AnimElem =2

;---------------------------------------------------------------------------
;下ブロッキング
[State -1]
type = ChangeState
value = 1003
triggerall = command = "bl_D"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1004 || stateno = 1002
trigger2 = AnimElem =2

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 8
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;遠距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y" && command != "holddown"
triggerall = P2BodyDist X > 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
triggerall = P2BodyDist X <= 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;遠距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b" && command != "holddown"
triggerall = P2BodyDist X > 30
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;近距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b" && command != "holddown"
triggerall = P2BodyDist X <= 30
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = movecontact
trigger3 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 1001 || stateno = 1003 || stateno = 100

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 610
trigger2 = movecontact
