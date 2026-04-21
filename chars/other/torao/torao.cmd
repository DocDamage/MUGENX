
;-| Super Motions |--------------------------------------------------------

[Command]
name = "dosu"
command = ~D, DB, B, DB, D, DF, F, y
time = 40

[Command]
name = "dosu2"
command = ~B, DB, D, DF, F, y
time = 30

[Command]
name = "kenka"
command = ~F, DF, D, DB, B, b
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "kazax"
command = ~D, DF, F, x

[Command]
name = "kazay"
command = ~D, DF, F, y

[Command]
name = "keria"
command = ~D, DF, F, a

[Command]
name = "kerib"
command = ~D, DF, F, b

[Command]
name = "sabakix"
command = ~D, DB, B, x

[Command]
name = "sabakiy"
command = ~D, DB, B, y

[Command]
name = "renda"
command = x,x

[Command]
name = "renda"
command = y,y

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
name = "daij"
command = ~$D, $U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "x+a"
command = x+a
time = 1

[Command]
name = "y+b"
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

[Command]
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
time = 1

[Command]
name = "R"
command = F
time = 1

[Command]
name = "L"
command = B
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
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holdb"
command = /$b
time = 1
;---------------------------------------------------------------------------
[Statedef -1]

;===========================================================================

;===========================================================================
;ドス竜
[State -1, zigoku]
type = ChangeState
value = 3200
triggerall = var(4) != 0
trigger1 = command = "dosu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "dosu2"
trigger2 = stateno = 1401
;---------------------------------------------------------------------------
;男一匹暴走ケンカ空手
[State -1, zigoku]
type = ChangeState
value = 3000
triggerall = var(4) != 0
triggerall = command = "kenka"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;地獄の風車弱
[State -1, zigoku]
type = ChangeState
value = 1000
triggerall = command = "kazax"
trigger1 = statetype != A
trigger1 = ctrl

;地獄の風車強
[State -1, zigoku]
type = ChangeState
value = 1010
triggerall = command = "kazay"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;真空飛び前蹴り弱
[State -1, zigoku]
type = ChangeState
value = 1200
triggerall = command = "keria"
trigger1 = statetype != A
trigger1 = ctrl

;真空飛び前蹴り強
[State -1, zigoku]
type = ChangeState
value = 1210
triggerall = command = "kerib"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;サバキ
[State -1, zigoku]
type = ChangeState
value = 1400
triggerall = command = "sabakix" || command = "sabakiy"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;エスケープダッシュ
[State -1, Stand Strong Punch]
type = ChangeState
value = 700
triggerall = command = "recovery"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [150,153];ＭＡＸ時ガーキャン
trigger2 = var(4) != 0
;---------------------------------------------------------------------------
;構え変更
[State -1, Stand Strong Punch]
type = ChangeState
value = 710
triggerall = var(2) = 0
triggerall = command = "a+b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Strong Punch]
type = ChangeState
value = 711
triggerall = var(2) = 1
triggerall = command = "a+b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = NumHelper(4900) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 104
trigger1 = NumHelper(4900) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = stateno != 195
triggerall = command = "x+a"
trigger1 = statetype != A
trigger1 = ctrl

;ゲージ溜め
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = var(2) = 0
triggerall = var(4) = 0
triggerall = command = "holdy"
triggerall = command = "holdb"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Stand Strong Punch]
type = ChangeState
value = 711
triggerall = var(2) = 1
triggerall = command = "holdy"
triggerall = command = "holdb"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
;立ち弱パンチ前入れ
[State -1, Stand Light Punch]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち強パンチ前入れ
[State -1, Stand Light Punch]
type = ChangeState
value = 221
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Stand Light Punch
;裏立ちパンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 740
triggerall = var(2) = 1
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "x"
trigger2 = command = "y"
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;裏立ちキック
[State -1, Stand Light Punch]
type = ChangeState
value = 750
triggerall = var(2) = 1
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "a"
trigger2 = command = "b"
;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ前入れ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;裏しゃがみパンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 760
triggerall = var(2) = 1
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = ctrl
trigger1 = command = "x"
trigger2 = command = "y"
;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック前入れ
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = command = "b"
trigger2 = var(2) = 1
trigger2 = command = "a" || command = "b" 
;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

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

