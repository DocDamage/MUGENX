;100% by ex-inferis! http://mugenexus.cjb.net

;-| Supers |-----------------------------------------------------------
[Command]
name = "Hulk1"
command = ~D,B,D,B,x
time = 30

[Command]
name = "Hulk2"
command = ~D,B,D,B,y
time = 30

[Command]
name = "Hulk3"
command = ~D,B,D,B,z
time = 30


[Command]
name = "combo1"
command = ~D,B,D,B,a
time = 30


[Command]
name = "combo1"
command = ~D,B,D,B,b
time = 30


[Command]
name = "combo1"
command = ~D,B,D,B,c
time = 30


;-| Especiais |-----------------------------------------------------------
[Command]
name = "OneTwo1"
command = ~D,F,x
time = 20

[Command]
name = "OneTwo2"
command = ~D,F,y
time = 20

[Command]
name = "OneTwo3"
command = ~D,F,z
time = 20

[Command]
name = "Barrigada"
command = ~D,B,x
time = 20

[Command]
name = "Honda"
command = ~D,B,y
time = 20

[Command]
name = "ComboSocos"
command = ~D,B,z
time = 20


[command]
name = "alpha counter"			
command = y+z
time = 20

[Command]
name = "esqf"
Command = /$F,x+y
time = 5


[Command]
name = "esqb"
Command = /$B,x+y
time = 5


[Command]
name = "esqp"
command = x+y
time = 5



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

[Command]
name = "start2"
command = /$F,s
time = 4


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
name = "holdx"; para onetwo
command = /$x
time = 1

[Command]
name = "holdy"; para onetwo
command = /$y
time = 1

[Command]
name = "holdz"; 
command = /$z
time = 1

[Statedef -1];=================================================
;Super Combo1
[State -1, combo1]
type = ChangeState
value = 3800
triggerall = statetype = S
triggerall = power >= 3000
triggerall = ctrl
trigger1 = command = "combo1"
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H



;Super Hulk smaga forte
[State -1, hulk]
type = ChangeState
value = 3500
triggerall = statetype = S
triggerall = power >= 2000
triggerall = ctrl
trigger1 = command = "Hulk3"
trigger1 = p2bodydist X < 50
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "Hulk3"
trigger2 = StateNo = 120 || StateNo = 130 || StateNo = 131 || StateNo = 140 || StateNo = 150 || StateNo = 151 || StateNo = 152 || StateNo = 153


;Super Hulk smaga medio
[State -1, hulk]
type = ChangeState
value = 3100
triggerall = statetype = S
triggerall = power >= 1000
triggerall = ctrl
trigger1 = command = "Hulk2"
trigger1 = p2bodydist X < 50
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "Hulk2"
trigger2 = StateNo = 120 || StateNo = 130 || StateNo = 131 || StateNo = 140 || StateNo = 150 || StateNo = 151 || StateNo = 152 || StateNo = 153


;Super Hulk smaga fraco
[State -1, hulk]
type = ChangeState
value = 3000
triggerall = statetype = S
triggerall = power >= 1000
triggerall = ctrl
trigger1 = command = "Hulk1"
trigger1 = p2bodydist X < 50
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "Hulk1"
trigger2 = StateNo = 120 || StateNo = 130 || StateNo = 131 || StateNo = 140 || StateNo = 150 || StateNo = 151 || StateNo = 152 || StateNo = 153



;Honda Atack
[State -1, honda]
type = ChangeState
value = 1030
trigger1 = command = "Honda"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "Honda"
trigger2 = StateNo = 120 || StateNo = 130 || StateNo = 131 || StateNo = 140 || StateNo = 150 || StateNo = 151 || StateNo = 152 || StateNo = 153


;one two3
[State -1, onetwo3]
type = ChangeState
value = 1020
trigger1 = command = "OneTwo3"
trigger1 = statetype = S
trigger1 = ctrl


;one two2
[State -1, onetwo2]
type = ChangeState
value = 1010
trigger1 = command = "OneTwo2"
trigger1 = statetype = S
trigger1 = ctrl


;one two1
[State -1, onetwo1]
type = ChangeState
value = 1000
trigger1 = command = "OneTwo1"
trigger1 = statetype = S
trigger1 = ctrl


;pega bate e Soca longe
[State -1, pega e joga]
type = ChangeState
value = 960
triggerall = command = "ComboSocos"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 40
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "ComboSocos"
trigger2 = StateNo = 120 || StateNo = 130 || StateNo = 131 || StateNo = 140 || StateNo = 150 || StateNo = 151 || StateNo = 152 || StateNo = 153



;pega e tapa na cara
[State -1, pega e joga]
type = ChangeState
value = 900
triggerall = command = "x"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 40
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 40
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;pega e joga
[State -1, pega e joga]
type = ChangeState
value = 800
triggerall = command = "y" 
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 30
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 30
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


[State -1, alphacounter]
type = ChangeState
value = 801
triggerall = command = "alpha counter"
trigger1 = StateNo = 120 || StateNo = 130 || StateNo = 131 || StateNo = 140 || StateNo = 150 || StateNo = 151 || StateNo = 152 || StateNo = 153
trigger1 = StateType = S


; Esquiva Frente
[State -1]
type = ChangeState
value = 710
triggerall   = command = "esqf"
trigger1   = statetype = S
trigger1   = ctrl


; Esquiva tras
[State -1]
type = ChangeState
value = 720
triggerall  = command = "esqb"
trigger1  = statetype = S
trigger1  = ctrl


; Esquiva parado
[State -1]
type = ChangeState
value = 700
triggerall = command = "esqp"
trigger1 = statetype = S
trigger1 = ctrl



;Barrigada
[State -1, onetwo1]
type = ChangeState
value = 660
trigger1 = command = "Barrigada"
trigger1 = statetype = S
trigger1 = ctrl


;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl


;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2Dist x > 90
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && P2Dist x > 90
trigger2 = time > 6


;Stand Punch close
[State -1, Stand close Punch]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2statetype != A
trigger2 = (stateno = 210) && time > 16


;Stand medio Punch
[State -1, Stand med Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6


;Stand strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6


;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = P2Dist x > 80
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9


;Stand close Kick
[State -1, Stand close Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9


;Standing medio Kick
[State -1, Standing medio Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6


;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;Provoca e carrega pow
[State -1, Taunt2]
type = ChangeState
value = 196
triggerall = command = "start2"
trigger1 = statetype != A
trigger1 = ctrl



;Provocacao
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl



;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y" || command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)


;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)


;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 430
triggerall = command = "b" || command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 20) || (movecontact && time > 25)


;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7


;Jump medio Punch
[State -1, Jump meio Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact


;Jump forte Punch
[State -1, Jump meio Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact



;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl


;Jump medio Kick
[State -1, Jump medio Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact


;Jump strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
