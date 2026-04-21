;--------------------------------------------
;Samchay by Duende Macabro
;contact: weaponx_nirvana@yahoo.com.br
;http://www.rickiecreations.cjb.net
;--------------------------------------------

;-| Super Motions |--------------------------------------------------------

[Command]
name = "2qcbxy"
command = ~D,DB,B,D,DB,B,x
time = 20
[Command]
name = "2qcbxy"
command = ~D,DB,B,D,DB,B,y
time = 20
[Command]
name = "2qcbxy"
command = ~D,DB,B,D,DB,B,~x
time = 20
[Command]
name = "2qcbxy"
command = ~D,DB,B,D,DB,B,~y
time = 20

[Command]
name = "2qcfxy"
command = ~D,DF,F,D,DF,F,x
time = 20
[Command]
name = "2qcfxy"
command = ~D,DF,F,D,DF,F,y
time = 20
[Command]
name = "2qcfxy"
command = ~D,DF,F,D,DF,F,~x
time = 20
[Command]
name = "2qcfxy"
command = ~D,DF,F,D,DF,F,~y
time = 20

[Command]
name = "2qcfab"
command = ~D,DF,F,D,DF,F,a
time = 20
[Command]
name = "2qcfab"
command = ~D,DF,F,D,DF,F,b
time = 20
[Command]
name = "2qcfab"
command = ~D,DF,F,D,DF,F,~a
time = 20
[Command]
name = "2qcfab"
command = ~D,DF,F,D,DF,F,~b
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "shoryuu_a"
command = ~F,D,DF,a
time = 15
[Command]
name = "shoryuu_b"
command = ~F,D,DF,b
time = 15
[Command]
name = "shoryuu_a"
command = ~F,D,DF,~a
time = 15
[Command]
name = "shoryuu_b"
command = ~F,D,DF,~b
time = 15

[Command]
name = "qcfx"
command = ~D,DF,F,x
time = 15
[Command]
name = "qcfy"
command = ~D,DF,F,y
time = 15
[Command]
name = "qcfx"
command = ~D,DF,F,~x
time = 15
[Command]
name = "qcfy"
command = ~D,DF,F,~y
time = 15

[Command]
name = "qcfa"
command = ~D,DF,F,a
time = 15
[Command]
name = "qcfb"
command = ~D,DF,F,b
time = 15
[Command]
name = "qcfa"
command = ~D,DF,F,~a
time = 15
[Command]
name = "qcfb"
command = ~D,DF,F,~b
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
name = "recovery"
command = x+y
time = 1
[Command]
name = "kneeblowfraco"
command = x+a
time = 1
[Command]
name = "kneeblowforte"
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

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_a"
command = /$a
time = 1
[Command]
name = "hold_b"
command = /$b
time = 1
[Command]
name = "hold_x"
command = /$x
time = 1
[Command]
name = "hold_y"
command = /$D
time = 1

;-| Super Jump |--------------------------------------------------------------
[command]
name = "superjump"
command = ~$D,U
time = 15
[command]
name = "superjumpf"
command = ~$D,UF
time = 15
[command]
name = "superjumpb"
command = ~$D,UB
time = 15

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]


;---------------------------------------[ Super Moves ]-----------------------------------------

; Super Grab
;-------------------------
[state -1, super grab]
type = changestate
value = 2150
triggerall = (command = "2qcbxy") && (Power >= 3000) && (statetype = S && ctrl) && stateno != 100
trigger1 = (p2statetype = S || p2statetype = C) && p2movetype != H


; Chou Flying fist
;-------------------------
[state -1, flying fist]
type = changestate
value = 2100
triggerall = (numhelper(8502) = 0)&&(command = "2qcfxy")&&(Power >= 1000)
trigger1 = (statetype = S)&& ctrl


; Espancamento
;-------------------------
[state -1, flying fist]
type = changestate
value = 2000
triggerall = (command = "2qcfab")&&(Power >= 2000)
trigger1 = (statetype = S)&& ctrl


;--------------------------------------[ Special Moves ]----------------------------------------

; Shoryuu Knee
;-------------------------
[state -1, shoryuu knee]
type = changestate
value = 1150
triggerall = (command = "shoryuu_a" || command = "shoryuu_b")
trigger1 = (statetype != A) && ctrl
trigger2 = (stateno = 210 || stateno = 216 || stateno = 240 || stateno = 246 || stateno = 410 || stateno = 440) && movehit

; Flying fist
;-------------------------
[state -1, flying fist]
type = changestate
value = 1000
triggerall = (numhelper(4100) = 0)&&(command = "qcfx" || command = "qcfy")
trigger1 = (statetype != A) && ctrl
trigger2 = (stateno = 210 || stateno = 216 || stateno = 240 || stateno = 246 || stateno = 410 || stateno = 440) && movehit

; Tiger Knee
;-------------------------
[state -1, tiger knee]
type = changestate
value = 1050
triggerall = (command = "qcfa" || command = "qcfb") && (statetype != A)
trigger1 = ctrl
trigger2 = (stateno = 210 || stateno = 216 || stateno = 240 || stateno = 246 || stateno = 410 || stateno = 440) && movehit

; Knee + blow
;-------------------------
[state -1, knee and blow]
type = changestate
value = 1100
triggerall = (command = "kneeblowfraco" || command = "kneeblowforte")
trigger1 = (statetype != A) && ctrl
trigger2 = (stateno = 210 || stateno = 216 || stateno = 240 || stateno = 246 || stateno = 410 || stateno = 440) && movehit

; Kuujin Kyaku
;-------------------------
[state -1, kuujin kyaku]
type = null
value = 1200
triggerall = (command = "qcfa" || command = "qcfb")
trigger1 = (statetype = A) && ctrl


;--------------------------------------[ Common Moves ]-----------------------------------------

; Run Fwd
;-------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF" && statetype = S && ctrl

; Dash Back
;-------------------------
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB" && statetype = S && ctrl

; Taunt
;-------------------------
[State -1, Taunt]
type = ChangeState
value = 195
trigger1 = command = "start" && statetype != A && ctrl

; Super Jump
;-------------------------
[state -1, superjump]
type = changestate
triggerall = (command = "superjump" || command = "superjumpf" || command = "superjumpb")
triggerall = (statetype!= a && var(15) = 0)
trigger1 = ctrl 
value = ifelse(command = "superjump",7000,ifelse(command = "superjumpf",7002,7004))

; Guard Counter
;-------------------------
[State -1, zero counter]
type = ChangeState
value = 750
triggerall = power >= 1000 && p2bodydist x <= 50
trigger1 = (command = "x" || command = "y" || command = "a" || command = "b") && Statetype = S 
trigger1 = Stateno = [150,153]

; Dodge/Forward roll
;-------------------------
[state -1, Dodge]
type = changestate
value = ifelse(command = "holdfwd", 510, 516)
trigger1 = roundstate = 2 && command = "recovery" && statetype = s
trigger1 = ctrl

[state -1, Dodge attack]
type = changestate
value = 210
triggerall = stateno = 516 && animelemtime(3)>0
trigger1 = (command = "x" || command = "y")

; Charge Power
;-------------------------
[State -1, Charge Power]
type = ChangeState
value = 700
triggerall = (command = "hold_a" && command = "hold_b") && Power < 3000
trigger1 = statetype = S && ctrl


;--------------------------------------[ Normal Moves ]----------------------------------------

; Cotoveladas
;-------------------------
[State -1, cotoveladas]
type = ChangeState
value = 800
triggerall = (command = "y") && (statetype = S && ctrl) && stateno != 100 && var(15) = 0
trigger1 = (command = "holdfwd") && (p2bodydist X < 3) && (p2statetype = S || p2statetype = C) && p2movetype != H


; Joelhadas
;-------------------------
[State -1, cotoveladas]
type = ChangeState
value = 801
triggerall = (command = "b") && (statetype = S && ctrl) && stateno != 100
trigger1 = (command = "holdfwd") && (p2bodydist X < 3) && (p2statetype = S || p2statetype = C) && p2movetype != H


; Stand Light Punch
;-------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (statetype = S) && movecontact && (Var(15) > 0)


; Stand Strong Punch
;-------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = ifelse(command = "holdfwd",216,210)                   
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 230) && movehit


; Stand Light Kick
;-------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl


; Standing Strong Kick
;-------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = ifelse(command = "holdfwd",246,240)     
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 230) && movehit


;Crouching Light Punch
;-------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl


; Crouching Strong Punch
;-------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 400 || stateno = 430) && movehit


; Crouching Light Kick
;-------------------------
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl


; Crouching Strong Kick
;-------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 400 || stateno = 430) && movehit


; Jump Light Punch
;-------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl


; Jump Strong Punch
;-------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl


; Jump Light Kick
;-------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = ifelse(vel x = 0,630,635)
triggerall = command = "a"
trigger1 = statetype = A && ctrl


; Jump Strong Kick
;-------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = ifelse(vel x = 0,640,645)
triggerall = command = "b"
trigger1 = statetype = A && ctrl

