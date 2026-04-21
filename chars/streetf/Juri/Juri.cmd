;-| Super Motions |--------------------------------------------------------
[Command]
name = "SS"
command = ~B, DB, D, DF, F, DF, D, a
time = 60

[Command]
name = "SS"
command = ~B, DB, D, DF, F, DF, D, b
time = 60

[Command]
name = "MAD"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "MAD"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "SDS"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "SDS"
command = ~D, DF, F, D, DF, F, b
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "Spi"
command = ~F, D, DF, a

[Command]
name = "Spi"
command = ~F, D, DF, b

[Command]
name = "Sni"
command = ~D, DF, F, a

[Command]
name = "Sni"
command = ~D, DF, F, b

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
name = "recovery"
command = a+b
time = 1

;-| Dir + Button & Alpa|--------
[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "bl_F"
command = F
time = 0

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "T"
command = ~x, F , a , B , y
time = 60
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
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
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
name = "holdDF"
command = DF
time = 1

[Command]
name = "holds"
command = /$s
time = 1

[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
;Ｂすぱ（ゲージレベル１）
[State -1, S]
type = ChangeState
value = 3300
triggerall = command = "SS"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
;Bすぱきゃんせる
[State -1, SS]
type = ChangeState
value = 3350
triggerall = command = "SS"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = stateno != [3200,3299] 
trigger2 = movecontact

;---------------------------------------------------------------------------
;スピンドライブスマッシャー（ゲージレベル１）
[State -1, S]
type = ChangeState
value = 3200
triggerall = command = "SDS"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = stateno != [3200,3299] 
trigger2 = movecontact

;---------------------------------------------------------------------------
;スナイパーリフト（ゲージレベル１）
[State -1, S]
type = ChangeState
value = 3000
triggerall = command = "MAD"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
;---------------------------------------------------------------------------
;スナイパーアサルト（ゲージレベル１）
[State -1, S]
type = ChangeState
value = 3100
triggerall = command = "MAD"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;キャノンスパイク
[State -1, Spi]
type = ChangeState
value = 1100
triggerall = command = "Spi"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact

;---------------------------------------------------------------------------
;スパイラルアロー
[State -1, Sni]
type = ChangeState
value = 1200
triggerall = command = "Sni"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = movecontact

;---------------------------------------------------------------------------
;スナイピングアロー
[State -1, Sni]
type = ChangeState
value = 1000
triggerall = command = "Sni"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact

;===========================================================================
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
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Strong Kick F
;立ち前強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "fwd_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger2 = stateno != 245
trigger3 = stateno = 1003

;前ブロッキング
[State -1]
type = ChangeState
value = 1003
triggerall = command = "bl_F"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno =1004
trigger2 = AnimElem =2

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1]
type = ChangeState
value = 3400
triggerall = command = "T"
triggerall = power >= 3000
triggerall = statetype != A
triggerall = var(5) = 1
triggerall = var(5) != 0
triggerall = var(15) = 0
triggerall = p2Life != 0
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = MoveContact = 1
;===========================================================================
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
trigger2 = stateno = 200
trigger2 = time > 9

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
trigger2 = stateno = 200
trigger2 = movecontact

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
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

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
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

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
value = 415
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time > 9

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
trigger2 = stateno = 400
trigger2 = time > 9

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
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

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
trigger2 = stateno = 430
trigger2 = time > 9

;---------------------------------------------------------------------------
;Jump Light Punch
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
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 610
trigger2 = movecontact

