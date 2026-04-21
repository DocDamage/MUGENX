
;-| Super Motions |--------------------------------------------------------
;
[Command]
name = "hakka1"
command = ~D,DF, F, x
time = 1

[Command]
name = "hakka2"
command = ~D,DF, F, y
time = 1

[Command]
name = "hakka3"
command = ~D,DF, F, z
time = 1

[Command]
name = "hakka4"
command = ~D,D, F, x
time = 1

[Command]
name = "hakka5"
command = ~D,D, F, y
time = 1

[Command]
name = "hakka6"
command = ~D,D, F, z
time = 1


;--------------------------------------
[Command]
name = "super"
command = x+y+a+b
Time = 1

[Command]
name = "super2"
command = z+c
Time = 1

[Command]
name = "ginga"
command = ~D,DF, F,DF, D,DB, B, x+y
Time = 35

[Command]
name = "ginga2"
command = ~D,DF, F,DF, D,DB, B, z
Time = 35

[Command]
name = "seiden"
command = ~F, B, F, B, F,  x+y
time = 40

[Command]
name = "seiden2"
command = ~F, B, F, B, F,  z
time = 40

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20



[Command]
name = "ranp1"
command = ~D, B, D, B, x
time = 30

[Command]
name = "ranp2"
command = ~D, B, D, B, y
time = 30

[Command]
name = "natu1"
command = ~D, B, D, B, a
time = 30

[Command]
name = "natu2"
command = ~D, B, D, B, b
time = 30

[Command]
name = "kasoku"
command = ~D, D, a+b
time = 20

[Command]
name = "kasoku2"
command = ~D, D, x+y
time = 20
;-| Special Motions |------------------------------------------------------
[Command]
name = "wakunage"
command = ~F,  D,  B, b
time = 40


[Command]
name = "taihux1"
command = ~D, DB, B, x
time = 30

[Command]
name = "taihuy1"
command = ~D, DB, B, y
time = 30

[Command]
name = "taihux2"
command = ~D, B, x
time = 30

[Command]
name = "taihuy2"
command = ~D, B, y
time = 30

[Command]
name = "taihuz2"
command = ~D, B, z
time = 30

[Command]
name = "taihuz3"
command = ~D, B, x+y
time = 30


[Command]
name = "taihua1"
command = ~D, DB, B, a
time = 30

[Command]
name = "taihub1"
command = ~D, DB, B, b
time = 30

[Command]
name = "taihua2"
command = ~D, B, a
time = 30

[Command]
name = "taihub2"
command = ~D, B, b
time = 30

[Command]
name = "taihuc2"
command = ~D, B, c
time = 30

[Command]
name = "taihuc3"
command = ~D, B, a+b
time = 30








[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "upper_z"
command = ~F, D, DF, z

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_ab"
command = ~D, DF, F, a+b

[Command]
name = "QCB_a"
command = ~D, DF, F, a

[Command]
name = "QCB_b"
command = ~D, DF, F, b

[Command]
name = "QCB_c"
command = ~D, DF, F, c

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

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
name = "xx"     ;Required (do not remove)
command = x, x
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
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




;===========================================================================

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------

;===========================================================================

;夏美ランプー投げ
[State -1,ranp]
type = ChangeState
value = 2400
;triggerall = numhelper(2000) = 0
triggerall = helper(2000), stateno = 2000
triggerall = command = "ranp1"
trigger1 = statetype != A
trigger1 = ctrl

;夏美ランプー投げ
[State -1,ranp]
type = ChangeState
value = 2400
;triggerall = numhelper(2000) = 0
triggerall = helper(2000), stateno = 2000
triggerall = command = "ranp2"
trigger1 = statetype != A
trigger1 = ctrl

;ランプー夏美投げ
[State -1,ranp]
type = ChangeState
value = 2401
;triggerall = numhelper(2000) = 0
triggerall = helper(2000), stateno = 2000
triggerall = command = "natu1"
trigger1 = statetype != A
trigger1 = ctrl

;ランプー夏美投げ
[State -1,ranp]
type = ChangeState
value = 2401
;triggerall = numhelper(2000) = 0
triggerall = helper(2000), stateno = 2000
triggerall = command = "natu2"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;激突落とし
[State -1,ginga]
type = ChangeState
value = 3500
triggerall = command = "ginga"
;triggerall = command = "z"
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact

[State -1,ginga]
type = ChangeState
value = 3500
triggerall = command = "ginga2"
;triggerall = command = "z"
triggerall = power >= 1000
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact

;静電拳
[State -1,seidenn]
type = ChangeState
value = 3000
triggerall = command = "seiden"
triggerall = power >= 1000
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact

[State -1,seidenn]
type = ChangeState
value = 3000
triggerall = command = "seiden2"
triggerall = power >= 1000
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact




;---------------------------------------------------------------------------

;加速拳
[State -1,kasoku]
type = ChangeState
value = 7000
triggerall = command = "kasoku"
triggerall = power >= 1000
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact

[State -1,kasoku]
type = ChangeState
value = 7000
triggerall = command = "kasoku2"
triggerall = power >= 1000
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact

;---------------------------------------------------------------------------
;スーパー化
[State -1,super]
type = ChangeState
value = 900
triggerall = command = "super"
;triggerall = command = "c"
triggerall = power >= 1000
triggerall = Var(2) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 150
trigger3 = stateno = 151

[State -1,super]
type = ChangeState
value = 900
triggerall = command = "super2"
;triggerall = command = "c"
triggerall = power >= 1000
triggerall = Var(2) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 150
trigger3 = stateno = 151
;---------------------------------------------------------------------------





;---------------------------------------------------------------------------
;わくわく投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 950
triggerall = command = "wakunage"
;triggerall = command = "z"
triggerall = ctrl
triggerall = stateno != 100
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = statetype != A
trigger1 = p2bodydist X < 18
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;発火拳ＥＸ
[State -1, ]
type = ChangeState
value = 1010
triggerall = command = "upper_xy"
triggerall = power >= 1000
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact

[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = command = "upper_z"
triggerall = power >= 1000
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact
;---------------------------------------------------------------------------
;発火拳（弱）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = command = "upper_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "hakka1"
trigger2 = statetype != A
trigger2 = ctrl
trigger3 = command = "hakka2"
trigger3 = statetype != A
trigger3 = ctrl
trigger4 = command = "hakka3"
trigger4 = statetype != A
trigger4 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact

;---------------------------------------------------------------------------
;発火拳（強）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = command = "upper_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "hakka4"
trigger2 = statetype != A
trigger2 = ctrl
trigger3 = command = "hakka5"
trigger3 = statetype != A
trigger3 = ctrl
trigger4 = command = "hakka6"
trigger4 = statetype != A
trigger4 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact

;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)
;必殺ロープＥＸ
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1300
triggerall = command = "QCF_xy"
triggerall = power >= 1000
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact

[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1300
triggerall = command = "QCF_z"
triggerall = power >= 1000
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact

;しゃがみ必殺ロープＥＸ
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1700
triggerall = command = "QCB_ab"
triggerall = power >= 1000
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact

[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1700
triggerall = command = "QCB_c"
triggerall = power >= 1000
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact
;---------------------------------------------------------------------------
;Light Kung Fu Upper
;必殺ロープ
[State -1, Light Kung Fu Upper]
type = ChangeState
value = 1200
triggerall = command = "QCF_x"
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact

;---------------------------------------------------------------------------
;Strong Kung Fu Upper
;必殺ロープ
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1200
triggerall = command = "QCF_y"
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact
;---------------------------------------------------------------------------

;Light Kung Fu Upper
;しゃがみ必殺ロープ
[State -1, Light Kung Fu Upper]
type = ChangeState
value = 1600
triggerall = command = "QCB_a"
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact

;Strong Kung Fu Upper
;しゃがみ必殺ロープ
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1600
triggerall = command = "QCB_b"
triggerall = helper(2000), stateno != 2200
triggerall = helper(2000), stateno != 2201
triggerall = helper(2000), stateno != 2300
triggerall = helper(2000), stateno != 2301
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
;trigger2 = movecontact
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
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
;中段
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "x+a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6

[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "y+b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist X < 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 8


;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
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
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6


;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
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
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 7
;trigger3 = (stateno = 230) && time > 9


;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
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
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6


;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------

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
;trigger2 = time > 9
;trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)

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
;trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)

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
;trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600
;trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
;trigger2 = movecontact

;---------------------------------------------------------------------------
;空中弱キック
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
;trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
;trigger2 = movecontact

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

