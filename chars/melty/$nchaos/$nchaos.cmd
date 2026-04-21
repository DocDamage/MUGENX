; The CMD file.

;-| Super Motions |--------------------------------------------------------

[Command]
name = "monster"
command = ~D, F, D, F, z
time = 20

[Command]
name = "garra"
command = ~D, F, D, F, y
time = 20


[Command]
name = "corvo3"
command = ~D, F, D, F, x
time = 20


;-| Special Motions |------------------------------------------------------

[Command]
name = "corvo1"
command = ~D, F, x
time = 15

[Command]
name = "corvo2"
command = ~D, F, y
time = 15


[Command]
name = "cobra1"
command = ~D, B, x
time = 15


[Command]
name = "cobra2"
command = ~D, B, y
time = 15



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


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]



;---------------------------------------------------------------------------
;Morph Monstro
[State -1, monster]
type = ChangeState
value = 3000
triggerall = command = "monster"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl


;Morph Garra
[State -1, monster]
type = ChangeState
value = 2000
triggerall = command = "garra"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl


[State -1, corvoDiag]
type = ChangeState
value = 1200
triggerall = NumHelper(1201) = 0
triggerall = command = "cobra1" || command = "cobra2"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, corvoDiag]
type = ChangeState
value = 1100
triggerall = command = "corvo2"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, corvoDiag]
type = ChangeState
value = 1100
triggerall = command = "corvo3" && power >= 1000
trigger1 = statetype = S
trigger1 = ctrl


[State -1, CorvoReto]
type = ChangeState
value = 1000
triggerall = command = "corvo1"
trigger1 = statetype = S
trigger1 = ctrl


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


[State -1, Corre Ar]
type = ChangeState
value = 102
triggerall = stateno != 102
triggerall = stateno != 103
triggerall = command = "FF" || command = "BB"
trigger1 = statetype = A
trigger1 = ctrl



;---------------------------------------------------------------------------
[State -1, block-Ar]
type = ChangeState
value = 920
triggerall = (Var(59) !=2) 
triggerall = command = "a" || command = "b" || command = "c" 
trigger1 = statetype = A
trigger1 = ctrl

[State -1, block-Crou]
type = ChangeState
value = 910
triggerall = command = "a" || command = "b" || command = "c" 
trigger1 = statetype = C
trigger1 = ctrl 

[State -1, block-stand]
type = ChangeState
value = 900
triggerall = (Var(59) !=2) 
triggerall = command = "a" || command = "b" || command = "c" 
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Agarra com Corvos
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "x" || command = "y" || command = "z" 
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


[State -1 , soco no ar]
type = ChangeState
value = 860
triggerall = command = "x" || command = "y" || command = "z" 
triggerall = command = "holdfwd"
triggerall = p2bodydist x < 15
triggerall = p2statetype = A
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact



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
trigger2 = time > 5

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
trigger2 = (stateno = 200) && movecontact && time > 5


;---------------------------------------------------------------------------

;Stand Strong Punch - inseto garra
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 225
triggerAll = command = "holdback"
trigger1 = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact && time > 10
trigger3 = (stateno = 210) && movecontact && time > 25


;Stand Strong Punch - bocao
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact && time > 5
trigger3 = (stateno = 210) && movecontact && time > 15



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
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger2 = time > 10

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410)
trigger2 = movecontact
trigger2 = time > 15


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
trigger2 = statetime >= 8

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact


