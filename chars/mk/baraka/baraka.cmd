;*********************************************
;***          COMMAND DEFINITIONS          ***
;*********************************************
;-| AI |--------------------------------------------------------
[Command]
name = "CPU0"
command = U,U,D,D,B,F,B,F,s,s
time = 0

[Command]
name = "CPU1"
command = U,U,D,D,B,F,B,F,a,a
time = 0

[Command]
name = "CPU2"
command = U,U,D,D,B,F,B,F,b,b
time = 0

[Command]
name = "CPU3"
command = U,U,D,D,B,F,B,F,c,c
time = 0

[Command]
name = "CPU4"
command = U,U,D,D,B,F,B,F,x,x
time = 0

[Command]
name = "CPU5"
command = U,U,D,D,B,F,B,F,y,y
time = 0

[Command]
name = "CPU6"
command = U,U,D,D,B,F,B,F,z,z
time = 0

[Command]
name = "CPU7"
command = U,U,D,D,B,F,B,F,a,b
time = 0

[Command]
name = "CPU8"
command = U,U,D,D,B,F,B,F,b,c
time = 0

[Command]
name = "CPU9"
command = U,U,D,D,B,F,B,F,a,c
time = 0

[Command]
name = "CPU10"
command = U,U,D,D,B,F,B,F,x,y
time = 0

[Command]
name = "CPU11"
command = U,U,D,D,B,F,B,F,y,z
time = 0

[Command]
name = "CPU12"
command = U,U,D,D,B,F,B,F,x,z
time = 0

[Command]
name = "CPU13"
command = U,U,D,D,B,F,B,F,a,x
time = 0

[Command]
name = "CPU14"
command = U,U,D,D,B,F,B,F,a,y
time = 0

[Command]
name = "CPU15"
command = U,U,D,D,B,F,B,F,a,z
time = 0

[Command]
name = "CPU16"
command = U,U,D,D,B,F,B,F,b,x
time = 0

[Command]
name = "CPU17"
command = U,U,D,D,B,F,B,F,b,y
time = 0

[Command]
name = "CPU18"
command = U,U,D,D,B,F,B,F,b,z
time = 0

[Command]
name = "CPU19"
command = U,U,D,D,B,F,B,F,c,x
time = 0

[Command]
name = "CPU20"
command = U,U,D,D,B,F,B,F,c,y
time = 0

[Command]
name = "CPU21"
command = U,U,D,D,B,F,B,F,c,z
time = 0

[Command]
name = "CPU22"
command = U,U,D,D,B,F,B,F,x,a
time = 0

[Command]
name = "CPU23"
command = U,U,D,D,B,F,B,F,x,b
time = 0

[Command]
name = "CPU24"
command = U,U,D,D,B,F,B,F,x,c
time = 0

[Command]
name = "CPU25"
command = U,U,D,D,B,F,B,F,y,a
time = 0

[Command]
name = "CPU26"
command = U,U,D,D,B,F,B,F,y,b
time = 0

[Command]
name = "CPU27"
command = U,U,D,D,B,F,B,F,y,c
time = 0

[Command]
name = "CPU28"
command = U,U,D,D,B,F,B,F,z,a
time = 0

[Command]
name = "CPU29"
command = U,U,D,D,B,F,B,F,z,b
time = 0

[Command]
name = "CPU30"
command = U,U,D,D,B,F,B,F,z,c
time = 0

[Command]
name = "CPU31"
command = U,U,D,D,B,F,B,F,s,s,s
time = 0
;************* -ALITY COMMANDS****************
[Command]
name = "Stab"
command = a
time = 30

[Command]
name = "Brutal"
command = c
time = 30

[Command]
name = "Pit"
command = z
time = 30

[Command] 
name = "bomb"
command = y
time = 30
;************* SPECIALS COMMANDS**************
[Command]
name = "Spark"
command = ~D, F, x

[Command]
name = "Slicer"
command = ~B, B, B, a
time = 30

[Command]
name = "BladeDash"
command = ~D, F, a
Time = 30

[Command]
name = "ultra"
command = ~D, B, D, B, a
time = 30

[Command]
name = "triplespark"
command = ~D, B, D, B, x
time = 30

[Command]
name = "combo"
command = ~D, F, D, F, y
time = 30



;************ THROW COMMANDS******************
[Command]
name = "Throw"
command =  c

[Command]
name = "Throw2"
command =  a

;************ STANDING ATTACK COMMANDS********
[Command]
name = "HP"
command = x
time = 1

[Command]
name = "LP"
command = a
time = 1

[Command]
name = "HK"
command = y
time = 1

[Command]
name = "LK"
command = b
time = 1

[Command]
name = "Roundhouse"
command = /B, y
time = 1

[Command]
name = "Slash"
command = /B, x
time = 1

[Command]
name = "Backfist"
command = x
time = 1

[Command]
name = "Sweep"
command =  /B, b
time = 1

[Command]
name = "Facekick"
command = y
time = 1

;*************CROUCHING ATTACK COMMANDS************
[Command]
name = "Uppercut"
command = /$D, x
time = 1

[Command]
name = "CLK"
command = /$D, b
time = 1

[Command]
name = "CHK"
command = /$D, y

;**************AERIAL ATTACK COMMANDS**************
[Command]
name = "Jumppuncha"
command = a
time = 1

[Command]
name = "Jumppunchb"
command = x
time = 1

[Command]
name = "Dropkickx"
command = y
time = 1

[Command]
name = "Dropkicky"
command = b
time = 1

[Command]
name = "Jumpkickx"
command = y
time = 1

[Command]
name = "Jumpkicky"
command = b
time = 1

;******************VARIOUS COMMANDS***************
[Command]
name = "start"
command = s
time = 1
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
name = "FF"
command = F, F
time = 10
[Command]
name = "BB"
command = B, B
time = 10
[Command]
name = "recovery"
command = a+b
time = 1

;****************************************************
;***                 STATE ENTRY                  ***
;****************************************************
[Statedef -1]

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU0"
trigger2 = command = "CPU1"
trigger3 = command = "CPU2"
trigger4 = command = "CPU3"
trigger5 = command = "CPU4"
trigger6 = command = "CPU5"
trigger7 = command = "CPU6"
trigger8 = command = "CPU7"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU8"
trigger2 = command = "CPU9"
trigger3 = command = "CPU10"
trigger4 = command = "CPU11"
trigger5 = command = "CPU12"
trigger6 = command = "CPU13"
trigger7 = command = "CPU14"
trigger8 = command = "CPU15"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU16"
trigger2 = command = "CPU17"
trigger3 = command = "CPU18"
trigger4 = command = "CPU19"
trigger5 = command = "CPU20"
trigger6 = command = "CPU21"
trigger7 = command = "CPU22"
trigger8 = command = "CPU23"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU24"
trigger2 = command = "CPU25"
trigger3 = command = "CPU26"
trigger4 = command = "CPU27"
trigger5 = command = "CPU28"
trigger6 = command = "CPU29"
trigger7 = command = "CPU30"
trigger8 = command = "CPU31"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU0"
trigger2 = command = "CPU1"
trigger3 = command = "CPU2"
trigger4 = command = "CPU3"
trigger5 = command = "CPU4"
trigger6 = command = "CPU5"
trigger7 = command = "CPU6"
trigger8 = command = "CPU7"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU8"
trigger2 = command = "CPU9"
trigger3 = command = "CPU10"
trigger4 = command = "CPU11"
trigger5 = command = "CPU12"
trigger6 = command = "CPU13"
trigger7 = command = "CPU14"
trigger8 = command = "CPU15"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU16"
trigger2 = command = "CPU17"
trigger3 = command = "CPU18"
trigger4 = command = "CPU19"
trigger5 = command = "CPU20"
trigger6 = command = "CPU21"
trigger7 = command = "CPU22"
trigger8 = command = "CPU23"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU24"
trigger2 = command = "CPU25"
trigger3 = command = "CPU26"
trigger4 = command = "CPU27"
trigger5 = command = "CPU28"
trigger6 = command = "CPU29"
trigger7 = command = "CPU30"
trigger8 = command = "CPU31"
v = 50
value = 1

;***************Stab Fatality************************
[State -1, Stab Fatality]
type = ChangeState
value = 9006
triggerall = command = "Stab"
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
trigger1 = p2bodydist X < 100

[State -1, AI Stab Fatality]
type = ChangeState
value = 9006
triggerall = Var(50) = 1
triggerall = random >= 180 && random < 299 || random >= 600 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
triggerall = statetype = S
trigger1 = p2bodydist X < 100

;****************Brutality**************************
[State -1, Brutality]
type = ChangeState
value = 7620
triggerall = command = "Brutal"
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
trigger1 = p2bodydist X < 35

[State -1, AI Brutality]
type = ChangeState
value = 7620
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 700 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
trigger1 = p2bodydist X < 50

;**************Spikes*****************************
[State -1, Pit]
type = ChangeState
value = 9410
triggerall = command = "Pit"
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
trigger1 = p2bodydist X < 35

[State -1, AI pit]
type = ChangeState
value = 9410
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 800 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
trigger1 = p2bodydist X < 30

;************Blade Dash**************************
[State -1]
type = ChangeState
value = 251
triggerall = command = "BladeDash"
triggerall = stateno != 251
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = movecontact = 1
trigger3 = stateno = 440
trigger3 = movecontact = 1
trigger4 = stateno = 600
trigger4 = movecontact = 1
trigger4 = ctrl = 1
trigger5 = stateno = 601
trigger5 = movecontact = 1
trigger5 = ctrl = 1
trigger6 = stateno = 260
trigger6 = movecontact = 1
trigger7 = stateno = 240
trigger7 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 204
trigger9 = movecontact = 1
trigger10 = stateno = 1010
trigger10 = time >= 10
trigger10 = power >= 200
trigger11 = stateno = 250
trigger11 = movecontact = 1

[State -1, AI Blade Dash]
type = ChangeState
value = 251
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 500 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = P2statetype = S
trigger1 = p2bodydist X = 100
trigger2 = p2bodydist X = 150

;************SPARK TOSS**************************
[State -1]
type = ChangeState
value = 1010
triggerall = command = "Spark"
triggerall = numproj = 0
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = movecontact = 1
trigger3 = stateno = 440
trigger3 = movecontact = 1
trigger4 = stateno = 600
trigger4 = movecontact = 1
trigger4 = ctrl = 1
trigger5 = stateno = 601
trigger5 = movecontact = 1
trigger5 = ctrl = 1
trigger6 = stateno = 260
trigger6 = movecontact = 1
trigger7 = stateno = 240
trigger7 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 204
trigger9 = movecontact = 1
trigger10 = stateno = 250
trigger10 = movecontact = 1

[State -1, AI Sparks]
type = ChangeState
value = 1010
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 600 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = p2bodydist X = 200
trigger2 = p2bodydist X = 100
trigger3 = p2bodydist X = 300
trigger4 = p2bodydist X = 250

;***************Blade Chase***********************
;Ultracombo
[State -1]
type = ChangeState
value = 3100
triggerall = command = "ultra"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact = 1

[State -1, AI Ultra]
type = ChangeState
value = 3100
triggerall = ctrl = 1
triggerall = Var(50) = 1
triggerall = random > 799 && random <= 999
triggerall = StateType = S
triggerall = power >= 2000
trigger1 = p2bodyDist X = 180
trigger2 = p2bodyDist X = 200
trigger3 = p2bodyDist X = 300
trigger4 = p2bodyDist X = 250
trigger5 = p2bodyDist X = 350
trigger5 = p2bodyDist X = 270

;************Triple SPARK TOSS**************************

[State -1, Super Spark Throw]
type = Changestate
value = 3009
triggerall = command = "triplespark"
triggerall = power > 2000
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, AI Super Spark Throw]
type = ChangeState
value = 3009
triggerall = power > 2000
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 750 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = p2bodydist X > 100 && p2bodydist X < 400

;-------Blade Combo---------------
[State -1]
type = ChangeState
value = 1319
triggerall = command = "combo"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact = 1

[State -1, AI Ultra]
type = ChangeState
value = 1319
triggerall = ctrl = 1
triggerall = Var(50) = 1
triggerall = random > 199 && random <= 999
triggerall = StateType = S
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger1 = p2bodydist X > 1 && p2bodydist X < 45

;************Baraka Chase Fatality*************
[State -1, Blade Chase]
type = ChangeState
value = 7125
triggerall = command = "bomb"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = p2stateno = 9010
trigger1 = p2life < 10
trigger1 = p2bodydist X < 200
trigger1 = P2statetype = S

[State -1, AI Blade Chase]
type = ChangeState
value = 7125
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 800 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
trigger1 = p2bodydist X < 250

[State -1, AI 3-Hit Combo1]
type = ChangeState
value = 9898
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 900 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = P2statetype = S
trigger1 = p2bodydist X < 8

[State -1, AI 3-Hit Combo2]
type = ChangeState
value = 9899
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 900 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = P2statetype = S
trigger1 = p2bodydist X < 8


;*******************BLADE FURY********************
[State -1]
type = ChangeState
value = 1500
triggerall = command = "Slicer"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 410
trigger5 = movecontact = 1
trigger6 = stateno = 251
trigger6 = movecontact = 1
trigger6 = power >= 200

[State -1, AI Slicer]
type = ChangeState
value = 1500
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 700 && random <= 999
triggerall = ctrl = 1
triggerall = P2statetype = S
triggerall = statetype = S
trigger1 = p2bodydist X < 35

[State -1, AI Air Slicer]
type = ChangeState
value = 1500
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 700 && random <= 999
triggerall = ctrl = 1
triggerall = p2stateno = 600
triggerall = P2statetype = A
triggerall = statetype = S
trigger1 = p2bodydist X < 45


;*************UPPERCUT*****************
[State -1]
type = ChangeState
value = 200
triggerall = command = "Uppercut"
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = movecontact = 1
trigger2 = power >= 150
trigger3 = stateno = 440
trigger3 = movecontact = 1
trigger3 = power >= 150
trigger4 = stateno = 600
trigger4 = movecontact = 1
trigger4 = ctrl = 1
trigger5 = stateno = 601
trigger5 = movecontact = 1
trigger5 = ctrl = 1
trigger6 = stateno = 260
trigger6 = movecontact = 1
trigger6 = power >= 125
trigger7 = stateno = 240
trigger7 = movecontact = 1
trigger7 = power >= 150
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 204
trigger9 = movecontact = 1

[State -1, AI Uppercut]
type = ChangeState
value = 200
triggerall = ctrl = 1
triggerall = Var(50) = 1
triggerall = time = 0
triggerall = random > 499 && random <= 999
triggerall = StateType = S
trigger1 = p2bodyDist X < 20
;***********ROUNDHOUSE KICK************
[State -1]
type = ChangeState
value = 201
triggerall = command = "Roundhouse"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 260
trigger2 = movecontact = 1
trigger2 = stateno = 430
trigger2 = movecontact = 1
trigger3 = stateno = 440
trigger3 = movecontact = 1
trigger4 = stateno = 600
trigger4 = movecontact = 1
trigger4 = ctrl = 1
trigger5 = stateno = 601
trigger5 = movecontact = 1
trigger5 = ctrl = 1
trigger6 = stateno = 240
trigger6 = movecontact = 1
trigger7 = stateno = 230
trigger7 = movecontact = 1
trigger8 = stateno = 204
trigger8 = movecontact = 1

[State -1, AI Roundhouse]
type = ChangeState
value = 201
triggerall = ctrl = 1
triggerall = Var(50) = 1
triggerall = random > 699 && random <= 999
triggerall = StateType = S
trigger1 = p2bodyDist X < 30
;***********SLP RIGHT******************
[State -1]
type = ChangeState
value = 202
triggerall = command = "LP"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = stateno = 203
trigger2 = movecontact = 1
trigger3 = statetype = S
trigger3 = stateno = 270
trigger3 = movecontact = 1
trigger4 = statetype = S
trigger4 = stateno = 203
trigger4 = animtime = 0
trigger5 = statetype = S
trigger5 = stateno = 270
trigger5 = animtime = 0

;************SLP LEFT******************
[State -1]
type = ChangeState
value = 203
triggerall = command = "LP"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno = 202
trigger1 = movecontact = 1
trigger2 = statetype = S
trigger2 = stateno = 270
trigger2 = movecontact = 1
trigger3 = statetype = S
trigger3 = stateno = 202
trigger3 = animtime = 0
trigger4 = statetype = S
trigger4 = stateno = 270
trigger4 = animtime = 0
;************SLK************************
[State -1]
type = ChangeState
value = 204
triggerall = command = "LK"
triggerall = command != "holdback"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = movecontact = 1
trigger3 = stateno = 440
trigger3 = movecontact = 1
trigger4 = stateno = 600
trigger4 = movecontact = 1
trigger4 = ctrl = 1
trigger5 = stateno = 601
trigger5 = movecontact = 1
trigger5 = ctrl = 1
trigger6 = stateno = 260
trigger6 = movecontact = 1
trigger7 = stateno = 240
trigger7 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1

;************BACKFIST*******************
[State -1]
type = ChangeState
value = 230
triggerall = command = "Backfist"
triggerall = p2bodydist X < 1
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = movecontact = 1
trigger3 = stateno = 440
trigger3 = movecontact = 1
trigger4 = stateno = 600
trigger4 = movecontact = 1
trigger4 = ctrl = 1
trigger5 = stateno = 601
trigger5 = movecontact = 1
trigger5 = ctrl = 1
trigger6 = stateno = 260
trigger6 = movecontact = 1
trigger7 = stateno = 240
trigger7 = movecontact = 1
trigger8 = stateno = 204
trigger8 = movecontact = 1
;************FACEKICK*******************
[State -1]
type = ChangeState
value = 240
triggerall = command = "Facekick"
triggerall = p2bodydist X < 9
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = movecontact = 1
trigger3 = stateno = 440
trigger3 = movecontact = 1
trigger4 = stateno = 600
trigger4 = movecontact = 1
trigger4 = ctrl = 1
trigger5 = stateno = 601
trigger5 = movecontact = 1
trigger5 = ctrl = 1
trigger6 = stateno = 260
trigger6 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 204
trigger9 = movecontact = 1
;************NECK SLASH*****************
[State -1]
type = ChangeState
value = 250
triggerall = command = "Slash"
triggerall = stateno != 250
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = movecontact = 1
trigger3 = stateno = 440
trigger3 = movecontact = 1
trigger4 = stateno = 600
trigger4 = movecontact = 1
trigger4 = ctrl = 1
trigger5 = stateno = 601
trigger5 = movecontact = 1
trigger5 = ctrl = 1
trigger6 = stateno = 260
trigger6 = movecontact = 1
trigger6 = power >= 150
trigger7 = stateno = 240
trigger7 = movecontact = 1
trigger8 = stateno = 230
trigger8 = movecontact = 1
trigger9 = stateno = 204
trigger9 = movecontact = 1
trigger9 = power >= 150

[State -1, AI Slash]
type = ChangeState
value = 250
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 800 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = p2bodydist X = 30


;***********SHK*************************
[State -1]
type = ChangeState
value = 260
triggerall = command = "HK"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240
trigger2 = movecontact = 1
trigger2 = power >= 150
trigger3 = stateno = 204
trigger3 = movecontact = 1
;**************SHP LEFT*****************
[State -1]
type = ChangeState
value = 270
triggerall = command = "HP"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = stateno = 271
trigger2 = movecontact = 1
trigger3 = statetype = S
trigger3 = stateno = 202
trigger3 = movecontact = 1

;**************SHP RIGHT****************
[State -1]
type = ChangeState
value = 271
triggerall = command = "HP"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno = 270
trigger1 = movecontact = 1
trigger2 = statetype = S
trigger2 = stateno = 202
trigger2 = movecontact = 1

;*****************SWEEP*****************
[State -1]
type = Changestate
value = 400
trigger1 = command = "Sweep"
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, AI Sweep]
type = ChangeState
value = 400
triggerall = ctrl = 1
triggerall = Var(50) = 1
triggerall = random > 499 && random <= 999
triggerall = StateType = S
trigger1 = p2bodyDist X < 30

;*******************CLK*****************
[State -1]
type = ChangeState
value = 430
triggerall = command = "CLK"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger1 = stateno != 430

;***********************CHK*************
[State -1]
type = ChangeState
value = 440
triggerall = command = "CHK"
triggerall = statetype = C
trigger1 = ctrl = 1
triggerall = stateno != 440
trigger2 = stateno = 430
trigger2 = movecontact = 1
;**************DIVING PUNCH*************
[State -1]
type = ChangeState
value = 600
trigger1 = command = "Jumppuncha"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = stateno != 600
trigger1 = stateno != 601
trigger1 = stateno != 602

[State -1]
type = ChangeState
value = 600
trigger1 = command = "Jumppunchb"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = stateno != 600
trigger1 = stateno != 601
trigger1 = stateno != 602
;***************JUMP KICK****************
[State -1]
type = ChangeState
value = 601
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = anim = 41
trigger1 = command = "Jumpkickx"
trigger2 = command = "Jumpkicky"
trigger1 = stateno != 600
trigger1 = stateno != 601
trigger1 = stateno != 602
;***************DROPKICK*****************
[State -1]
type = ChangeState
value = 602
trigger1 = command = "Dropkickx"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = stateno != 600
trigger1 = stateno != 601
trigger1 = stateno != 602
;**************Overhead Throw*************
[State -1, Overhead Throw]
type = ChangeState
value = 800
trigger1 = command = "Throw"
trigger2 = command = "Throw2"
triggerall = P2bodydist X < 5
triggerall = P2statetype != A
triggerall = ctrl = 1
triggerall = statetype = S