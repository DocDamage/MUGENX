;-| Super Motions |--------------------------------------------------------
[Command]
name = "cpu"
command = ~D,DB, B,D,DB, B,D,DB, B,D,DB, B,x
time = 1

[Command]
name = "cpu"
command = ~D,DB, B,D,DB, B,D,DB, B,D,DB, B,y
time = 1

[Command]
name = "cpu"
command = ~D,DB, B,D,DB, B,D,DB, B,D,DB, B,z
time = 1

[Command]
name = "cpu"
command = ~D,DB, B,D,DB, B,D,DB, B,D,DB, B,a
time = 1

[Command]
name = "cpu"
command = ~D,DB, B,D,DB, B,D,DB, B,D,DB, B,b
time = 1

[Command]
name = "cpu"
command = ~D,DB, B,D,DB, B,D,DB, B,D,DB, B,c
time = 1

[Command]
name = "cpu"
command = ~D,DB, B,D,DB, B,D,DB, B,D,DB, B,s
time = 1

[Command]
name = "s01"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "s01"
command = ~D, DF, F, D, DF, F, y
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "w01"
command = ~F, D, DF, x

[Command]
name = "w02"
command = ~F, D, DF, y

[Command]
name = "w03"
command = ~D, DF, F, x

[Command]
name = "w04"
command = ~D, DF, F, y

[Command]
name = "w06"
command = ~D, DB, B, x

[Command]
name = "w07"
command = ~D, DB, B, y

[Command]
name = "QCB_a"
command = ~D, DF, F, a

[Command]
name = "QCB_b"
command = ~D, DF, F, b

[Command]
name = "w05"
command = ~B, DB, D, DF, F x
time = 20

[Command]
name = "w05"
command = ~B, DB, D, DF, F y
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

[Command]
name = "holdfwd_A"
command = /$F,a
time = 5

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------

;Light Kung Fu Palm
;
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "s01"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 400) || (stateno = 410) || (stateno = 430) || (stateno = 440) || (stateno = 700)
trigger2 = movecontact
trigger3 = (stateno = 150) || (stateno = 151) || (stateno = 152) || (stateno = 153) || (stateno = 100)

;===========================================================================
;---------------------------------------------------------------------------



;---------------------------------------------------------------------------

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 3000
triggerall = Var(30) = 1
triggerall = P2statetype = S
triggerall = power >= 1000
trigger1 = P2movetype = I
triggerall = statetype = S
triggerall = movetype = I
triggerall = P2BodyDist X = (0,40)
trigger2 = P2movetype = A

[State -1]
type = ChangeState
value = 1050
triggerall = Var(30) = 1
triggerall = AnimTime = 0
triggerall = statetype = S
triggerall = movetype = I
trigger1 = (stateno = 1410)
trigger2 = (stateno = 810)

[State -1]
type = ChangeState
value = 1050
triggerall = Var(30) = 1
triggerall = statetype = S
trigger1 = Random < 550
triggerall = (stateno = 150) || (stateno = 151) || (stateno = 152) || (stateno = 153)
trigger1 = P2movetype = A
 
[State -1]
type = ChangeState
value = 1000
triggerall = Var(30) = 1
triggerall = statetype = S
triggerall = P2bodydist X = (5,50)
triggerall = ctrl
trigger1 = P2dist Y = (-55,-40)
trigger2 = P2statetype = A
trigger3 = P2movetype = A

[State -1]
type = ChangeState
value = 1000
triggerall = Var(30) = 1
triggerall = statetype = S
triggerall = P2bodydist X = (5,50)
triggerall = ctrl
trigger1 = P2dist Y = (-55,-31)
trigger2 = P2movetype = A

[State -1]
type = ChangeState
value = 1600
triggerall = Var(30) = 1
triggerall = statetype = S
triggerall = P2bodydist X = (55,600)
triggerall = ctrl
triggerall = P2dist Y = (-55,-600)
trigger1 = P2movetype = A
trigger2 = P2movetype = I

[State -1]
type = ChangeState
value = 1600
triggerall = Var(30) = 1
triggerall = statetype = S
triggerall = P2bodydist X = (220,600)
triggerall = ctrl
trigger1 = P2movetype = A
trigger2 = P2movetype = I

[State -1]
type = ChangeState
value = 1200
triggerall = Var(30) = 1
triggerall = P2StateType != A
trigger1 = P2statetype = S
triggerall = P2movetype = I
triggerall = statetype = S
triggerall = movetype = I
triggerall = P2BodyDist X = (0,35)

;---------------------------------------------------------------------------
;Strong Kung Fu Palm
;）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1201
triggerall = command = "w05"
trigger1 = statetype != A
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 400) || (stateno = 410) || (stateno = 430) || (stateno = 440) || (stateno = 700)
triggerall = movecontact
trigger3 = stateno = 100

;---------------------------------------------------------------------------
;Strong Kung Fu Palm
;）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1201
triggerall = command = "w05"
trigger1 = statetype != A
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 400) || (stateno = 410) || (stateno = 430) || (stateno = 440) || (stateno = 700)
triggerall = movecontact
trigger3 = stateno = 100

;---------------------------------------------------------------------------
;Strong Kung Fu Palm
;）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1200
triggerall = command = "w05"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Strong Kung Fu Palm
;）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1200
triggerall = command = "w05"
trigger1 = statetype != A
trigger1 = ctrl

;Light Kung Fu Palm
;
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "w01"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 400) || (stateno = 410) || (stateno = 430) || (stateno = 440) || (stateno = 700)
trigger2 = movecontact
trigger3 = (stateno = 150) || (stateno = 151) || (stateno = 152) || (stateno = 153) || (stateno = 100)

;---------------------------------------------------------------------------
;Strong Kung Fu Palm
;）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1050
triggerall = command = "w02"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 400) || (stateno = 410) || (stateno = 430) || (stateno = 440) || (stateno = 700)
trigger2 = movecontact
trigger3 = (stateno = 150) || (stateno = 151) || (stateno = 152) || (stateno = 153) || (stateno = 100)

;---------------------------------------------------------------------------
;Strong Kung Fu Palm
;）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1100
triggerall = command = "w03"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 400) || (stateno = 410) || (stateno = 430) || (stateno = 440) || (stateno = 700)
trigger2 = movecontact
trigger3 = stateno = 100

;---------------------------------------------------------------------------
;Strong Kung Fu Palm
;）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1100
triggerall = command = "w04"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 400) || (stateno = 410) || (stateno = 430) || (stateno = 440) || (stateno = 700)
trigger2 = movecontact
trigger3 = stateno = 100

;Light Kung Fu Palm
;
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1600
triggerall = command = "w06"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 400) || (stateno = 410) || (stateno = 430) || (stateno = 440) || (stateno = 700) || (stateno = 100)
trigger2 = movecontact
trigger3 = (stateno = 150) || (stateno = 151) || (stateno = 152) || (stateno = 153) || (stateno = 100)

;Light Kung Fu Palm
;
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1650
triggerall = command = "w07"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 400) || (stateno = 410) || (stateno = 430) || (stateno = 440) || (stateno = 700)
trigger2 = movecontact
trigger3 = (stateno = 150) || (stateno = 151) || (stateno = 152) || (stateno = 153) || (stateno = 100)

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

;---------------------------------------------------------------------------
;Strong Kung Fu Palm
;）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1400
triggerall = command = "z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240)
trigger2 = movecontact
trigger3 = stateno = 100

;---------------------------------------------------------------------------
;Strong Kung Fu Palm
;）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 700
triggerall = command = "holdfwd_A"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240)
trigger2 = movecontact
trigger3 = stateno = 100


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
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 100

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
trigger2 = (stateno = 200)
trigger2 = movecontact
trigger3 = (stateno = 230)
trigger3 = movecontact
trigger4 = stateno = 100
trigger5 = (stateno = 240)
trigger5 = movecontact

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
trigger2 = (stateno = 200)
trigger2 = movecontact
trigger3 = (stateno = 230)
trigger3 = movecontact
trigger4 = stateno = 100

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
trigger2 = (stateno = 200)
trigger2 = movecontact
trigger3 = (stateno = 230)
trigger3 = movecontact
trigger5 = (stateno = 210)
trigger5 = movecontact
trigger4 = stateno = 100

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
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movecontact
trigger3 = stateno = 100

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
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movecontact
trigger3 = stateno = 100

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
trigger2 = movecontact
trigger3 = stateno = 100

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
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movecontact
trigger3 = stateno = 100

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 640
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
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

