;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "death13"
command = ~B, DB, D, DF, F, x+y
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "deathface"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~D, DF, F, x

[Command]
name = "upper_y"
command = ~D, DF, F, y

;[Command]
;name = "upper_xy"
;command = ~F, D, DF, z

[Command]
name = "QCF_x"
command = ~F, D, DF, x

[Command]
name = "QCF_y"
command = ~F, D, DF, y

[Command]
name = "QCF_z"
command = ~F, D, DF, z

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "green";"poruporu"
command = ~D, DB, B, z

[Command]
name = "oraora";"green"
command = ~D, DF, F, z

[Command];イレブンマンスでヤンス！
name = "FF_ab"
command = B, DB, D, DF, F, a+b;F, F, a+b

[Command];十一ヶ月だ！
name = "FF_a"
command = ~D, DF, F, a;F, F, a

[Command];イレブンマンス！
name = "FF_b"
command = ~D, DF, F, b;F, F, b

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
name = "recovery";Required (do not remove)
command = x+y
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


[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
;ラリホォォォ～～～！！
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3050
triggerall = command = "deathface"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = numhelper(6666) = 0
trigger1 = ctrl
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != [3050,3100)
;trigger2 = movecontact

;---------------------------------------------------------------------------
;ブッタ切れろーッ！！
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "death13"
triggerall = power >= 3000
;triggerall = p2life <= 300
triggerall = numhelper(6666) = 0
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = statetype != A
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != [3000,3050)
;trigger2 = movecontact

;---------------------------------------------------------------------------
;十一ヶ月だ！
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1050
triggerall = numhelper(7777) = 0
triggerall = numhelper(6666) = 0
triggerall = p2stateno != 1055
triggerall = p2movetype != H
triggerall = command = "FF_a"
triggerall = p2life != 0
trigger1 = ctrl = 1
trigger1 = statetype != A
;trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;イレブンマンス！
[State -1, Strong Kung Fu Knee]
type = null;ChangeState
value = 1060
triggerall = command = "FF_b"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;古畑ワープ右側
[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = numhelper(6666) = 0
trigger1 = ctrl = 1
trigger1 = command = "QCF_z"
;triggerall = power >= 330
;trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;んふふふふふふ（古畑中央編
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = numhelper(6666) = 0
trigger1 = ctrl = 1
trigger1 = command = "QCF_x"
;trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;古畑ワープ左がわ
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = numhelper(6666) = 0
trigger1 = ctrl = 1
trigger1 = command = "QCF_y"
;trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;おれはにせ者だよォ～～ん（星の白銀）
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1120
triggerall = numhelper(6666) = 0
triggerall = numhelper(1212) = 0
triggerall = command = "oraora";"z"
trigger1 = ctrl = 1
trigger1 = statetype != A
;triggerall = power >= 330
;trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;小ガマ投げ
[State -1, Light Kung Fu Upper]
type = ChangeState
value = 1100
triggerall = numhelper(6666) = 0
;triggerall = numhelper(2) = 0
triggerall = command = "upper_x"
trigger1 = ctrl = 1
;trigger1 = statetype != A
;trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;小ガマ乱れ打ち
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1110
;triggerall = numhelper(2) = 0
triggerall = numhelper(6666) = 0
triggerall = command = "upper_y"
trigger1 = ctrl = 1
trigger1 = statetype != A
;trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Fast Kung Fu Blow (1/3 super bar)
[State -1, Fast Kung Fu Blow]
type = null;ChangeState
value = 1220
triggerall = command = "QCB_xy"
trigger1 = ctrl = 1
trigger1 = statetype != A
;triggerall = power >= 330
;trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;おれはにせ者だよォ～～ん（銀の戦車）
[State -1, Light Kung Fu Blow]
type = ChangeState
value = 1200
triggerall = numhelper(6666) = 0
triggerall = numhelper(1212) = 0
triggerall = command = "z";"poruporu"
triggerall = numhelper(11) = 0
trigger1 = ctrl = 1
trigger1 = statetype != A
;trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;おれはにせ者だよォ～～ん（教皇の緑）
[State -1, Light Kung Fu Blow]
type = ChangeState
value = 1210
triggerall = numhelper(6666) = 0
triggerall = numhelper(1212) = 0
triggerall = command = "green";"poruporu"
triggerall = numhelper(11) = 0
trigger1 = ctrl = 1
trigger1 = statetype = A
;trigger1 = var(1) ;Use combo condition (above)

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

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
;triggerall = numhelper(1) = 0
triggerall = numhelper(6666) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = stateno = 200
;trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
;triggerall = numhelper(1) = 0
triggerall = numhelper(6666) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = numhelper(6666) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 7
;trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = numhelper(6666) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = null;ChangeState
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
triggerall = numhelper(6666) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = S;C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = numhelper(6666) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 610;230;430
triggerall = numhelper(6666) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = S;C
trigger1 = ctrl
;trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = numhelper(6666) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = numhelper(6666) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600
;trigger2 = statetime >= 7
;;trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 430;610
triggerall = numhelper(6666) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
;trigger2 = movecontact
;;trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = numhelper(6666) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;;trigger2 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = numhelper(6666) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
;trigger2 = movecontact
;;trigger2 = stateno = 1350 ;Air blocking
