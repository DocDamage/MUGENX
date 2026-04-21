;-| AI Activation Commands |-----------------------------------------------
-;| CPU Activation Commands |-----------------------
[Command]
name = "cpu0"
command = ~D,UB, F, F, x, s, a, x, U,x+y+z+a+b+c+s
time = 1

[Command]
name = "cpu1"
command = ~D,UB, F, x, s, a, x, U,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu2"
command = ~D,UB, F, y, s, a, x, U,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu3"
command = ~D,UB, F, z, s, a, x, U,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu4"
command = ~D,DB, F, x, s,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu5"
command = ~D,DB, F, y, s,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu6"
command = ~D,DB, F, z, s,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu7"
command = ~D,DB, s, U, B, x ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu8"
command = ~D,DB, s, U, B, y ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu9"
command = ~D,DB, s, U, B, z ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu10"
command = ~D,DF, F, x, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu11"
command = ~D,DF, F, y, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu12"
command = ~D,DF, F, z, s, U ,x+y+z+a+b+c+s
time = 1

[Command]
name = "cpu13"
command = ~D,DF, F, a, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu14"
command = ~D,DF, F, b, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu15"
command = ~D,DF, F, c, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu16"
command = ~D,DB, B, a, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu17"
command = ~D,DB, B, b, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu18"
command = ~D,DB, B, c, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu19"
command = ~D,DB, F, a, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu20"
command = ~D,DB, F, b, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu21"
command = ~D,DB, F, c, s, U ,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu22"
command = ~D,UB, F, a, s, U,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu23"
command = ~D,UB, F, b, s, U,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu24"
command = ~D,UB, F, c, s, U,x+y+z+a+b+c+s
time = 1


[Command]
name = "cpu25"
command = ~D,DF, F, s, s, U,x+y+z+a+b+c+s
time = 1


;[Command]
;name = "cpu26"
;command = ~D,DB, B, s, a, s, U, x+y+z+a+b+c+s
;time = 1

;[Command]
;name = "cpu27"
;command = ~D,UB, F, b, s, U,x+y+z+a+b+c+s
;time = 1


;[Command]
;name = "cpu27"
;command = ~D,UB, F, c, s, U,x+y+z+a+b+c+s
;time = 1


;[Command]
;name = "cpu28"
;command = ~D,DF, F, s, s, U,x+y+z+a+b+c+s
;time = 1


;[Command]
;name = "cpu29"
;command = ~D,DB, B, s, a, s, U, x+y+z+a+b+c+s
;time = 1

;[Command]
;name = "cpu30"
;command = ~D,DB, B, s, a, s, U, x+y+z+a+b+c+s
;time = 1
;************* -ALITY COMMANDS****************

[Command]
name = "pummel"
command = F, B, F, a
time = 25

[Command]
name = "eat"
command = ~120y
time = 25


;************* SPECIALS COMMANDS**************
[Command]
name = "saishot"
command = ~30x
time = 25

[Command]
name = "dropkick"
command = F, F, b
time = 25

[Command]
name = "Roll"
command = D, F, y
time = 25

[Command]
name = "supersaislice"
command = ~D, F, D, F, a
time = 30

[Command]
name = "supertriplethrow"
command = ~D, F, D, F, x
time = 30

[Command]
name = "superspit"
command = ~D, B, D, B, x
time = 30

[Command]
name = "supernailspit"
command = ~D, F, D, F, z
time = 30

;************ THROW COMMANDS******************
[Command]
name = "Throw"
command = c

;[Command]
;name = "Release"
;command = ~c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

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
name = "BLP"
command = /B, a
time = 1

[Command]
name = "Backfist"
command = a
time = 1

[Command]
name = "Sweep"
command = b
time = 1

[Command]
name = "Facekick"
command = y
time = 1

;*************CROUCHING ATTACK COMMANDS************
[Command]
name = "Uppercut"
command = /$D, a
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
name = "JumpPa"
command = a
time = 1

[Command]
name = "JumpPb"
command = x
time = 1

[Command]
name = "Jkickx"
command = b
time = 1

[Command]
name = "Jkicky"
command = y
time = 1

;******************VARIOUS COMMANDS***************
[Command]
name = "holdstart"
command = /$s
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
name = "holdhp"
command = /$a
time = 1
[Command]
name = "TF"
command = F
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

;AI Activation
;AI ACTIVATE!
[State -1, AI]
type = VarSet
trigger1  = command = "cpu1"
trigger2  = command = "cpu2"
trigger3  = command = "cpu3"
trigger4  = command = "cpu4"
trigger5  = command = "cpu5"
trigger6  = command = "cpu6"
trigger7  = command = "cpu7"
trigger8  = command = "cpu8"
trigger9  = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
;trigger26 = command = "cpu26"
;trigger27 = command = "cpu27"
;trigger28 = command = "cpu28"
;trigger29 = command = "cpu29"
;trigger30 = command = "cpu30"
v = 30
value = 1



;------------------------MOVES--------------------

[State -1]
type = ChangeState
value = 1000
triggerall = numproj = 0
triggerall = command = "saishot"
triggerall = statetype = S
trigger1 = ctrl = 1

;[State -1, AI Sai Throw]
;type = ChangeState
;value = 1000
;triggerall = Var(50) = 1
;triggerall = random >= 100 && random < 299 || random >= 750 && random <= 999
;triggerall = statetype = A
;triggerall = ctrl = 1
;trigger1 = p2bodydist X = 50
;trigger2 = p2bodydist X = 90 
;trigger3 = p2bodydist X = 110 
;trigger4 = p2bodydist X = 300 

; Air sai
[State -1]
type = ChangeState
value = 1100
;triggerall = numproj = 0
triggerall = command = "saishot"
triggerall = statetype = A
trigger1 = ctrl = 1

;[State -1, AI Air Sai]
;type = ChangeState
;value = 1100
;triggerall = Var(50) = 1
;triggerall = random >= 200 && random < 299 || random >= 850 && random <= 999
;triggerall = ctrl = 1
;triggerall = statetype = A
;trigger1 = p2bodydist X > 50 && p2bodydist X < 100

[State -1]
type = ChangeState
value = 2000
triggerall = command = "dropkick"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 2000
triggerall = command = "dropkick"
triggerall = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3000
triggerall = command = "Roll"
triggerall = statetype = S
trigger1 = ctrl = 1


;------------------------SUPERS--------------------

[State -1, Super Sai Slice]
type = Changestate
value = 1319
triggerall = command = "supersaislice"
triggerall = power > 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact = 1

;[State -1, AI Super Sai Slice]
;type = ChangeState
;value = 1319
;triggerall = power > 1000
;triggerall = Var(50) = 1
;triggerall = random >= 100 && random < 299 || random >= 650 && random <= 999
;triggerall = statetype = S
;triggerall = ctrl = 1
;triggerall = P2statetype = S
;trigger1 = p2bodydist X > 1 && p2bodydist X < 25


[State -1, Super Triple Throw]
type = Changestate
value = 3009
triggerall = command = "supertriplethrow"
triggerall = power > 1000
trigger1 = ctrl = 1
trigger1 = statetype = S

;[State -1, AI Super Triple Throw]
;type = ChangeState
;value = 3009
;triggerall = power > 1000
;triggerall = Var(50) = 1
;triggerall = random >= 100 && random < 299 || random >= 850 && random <= 999
;triggerall = statetype = S
;triggerall = ctrl = 1
;trigger1 = p2bodydist X > 150


[State -1, Super Spit]
type = Changestate
value = 3052
triggerall = command = "superspit"
triggerall = power > 2000
trigger1 = ctrl = 1
trigger1 = statetype = S

;[State -1, AI Spit]
;type = ChangeState
;value = 3052
;triggerall = Var(50) = 1
;triggerall = random >= 200 && random < 299 || random >= 750 && random <= 999
;triggerall = statetype = S
;triggerall = ctrl = 1
;triggerall = P2statetype = S
;triggerall = power > 2000
;trigger1 = p2bodydist X > 300 && p2bodydist X < 380

;[State -1, Super Nail Spit]
;type = Changestate
;value = 3006
;triggerall = command = "supernailspit"
;triggerall = power > 2000
;trigger1 = ctrl = 1
;trigger1 = statetype = S

;[State -1, AI  Super Nail Spit]
;type = ChangeState
;value = 3006
;triggerall = Var(50) = 1
;triggerall = random >= 200 && random < 299 || random >= 550 && random <= 999
;triggerall = statetype = S
;triggerall = ctrl = 1
;triggerall = power > 2000
;trigger1 = p2bodydist X > 350 && p2bodydist X < 400

;------------------------FATALITIES--------------------
;[State -1]
;type = ChangeState
;value = 7000
;triggerall = command = "pummel"
;triggerall = p2stateno = 9010
;triggerall = p2life < 10
;triggerall = P2statetype = S
;triggerall = Statetype = S
;triggerall = P2bodydist X < 10
;trigger1 = statetype = S
;trigger1 = ctrl = 1

;[State -1]
;type = ChangeState
;value = 7100
;triggerall = command = "eat"
;triggerall = p2stateno = 9010
;triggerall = p2life < 10
;triggerall = P2statetype = S
;triggerall = Statetype = S
;triggerall = P2bodydist X < 10
;trigger1 = statetype = S
;trigger1 = ctrl = 1



;********************AI States***********************

[State -1, Uppercut Counter]
type = ChangeState
value = 230
triggerall = ctrl = 1
triggerall = Var(50) = 1
triggerall = time = 0
triggerall = random > 599 && random <= 699
triggerall = StateType = S
;triggerall = StateNo != 600
;triggerall = PrevStateNo != 600
trigger1 = p2bodyDist Y <= 22 
trigger1 = p2bodyDist Y >= -22
trigger1 = p2bodyDist X <= 22


;***********************Throw************************
[State -1]
type = changestate
value = 800
triggerall = command = "LP"
triggerall = command = "holdfwd"
triggerall = p2bodydist X < 10
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1, AI Throw]
type = ChangeState
value = 800
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 250 && random <= 999
triggerall = ctrl = 1
triggerall = P2statetype = S
triggerall = statetype = S
trigger1 = p2BodyDist X < 5

;***************SLP RIGHT (starter)******************
[State -1]
type = ChangeState
value = 200
triggerall = command = "LP"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = stateno = 203
trigger2 = movecontact = 1
trigger3 = stateno = 202 && movecontact
trigger4 = stateno = 202 && animtime = 0

;************SLP LEFT******************
[State -1]
type = ChangeState
value = 201
triggerall = command = "LP"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = stateno = 200
trigger3 = statetype = S
trigger3 = stateno = 202

;***********SLP Chain Conversion********
[State -1]
type = ChangeState
value = 202
triggerall = command = "LP"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = stateno = 201

;***********SHP RIGHT (starter)******************
[State -1]
type = ChangeState
value = 203
triggerall = command = "HP"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = stateno = 200
trigger2 = movecontact = 1

;************SHP LEFT******************
[State -1]
type = ChangeState
value = 204
triggerall = command = "HP"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = stateno = 203
trigger3 = statetype = S
trigger3 = stateno = 205

;***********SHP Chain Conversion********
[State -1]
type = ChangeState
value = 205
triggerall = command = "HP"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = S
trigger2 = stateno = 204

;***************JUMP KICK****************
[State -1]
type = ChangeState
value = 602
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = anim = 41
triggerall = command = "HK"
trigger1 = stateno != 600
trigger1 = stateno != 601
trigger1 = stateno != 602
trigger2 = anim = 44
trigger2 = stateno != 600
trigger2 = stateno != 601
trigger2 = stateno != 602

[State -1]
type = ChangeState
value = 602
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = anim = 41
triggerall = command = "LK"
trigger1 = stateno != 600
trigger1 = stateno != 601
trigger1 = stateno != 602
trigger2 = anim = 44
trigger2 = stateno != 600
trigger2 = stateno != 601
trigger2 = stateno != 602

[State -1, AI Jump Kick]
type = ChangeState
value = 602
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 850 && random <= 999
triggerall = ctrl = 1
triggerall = statetype = S
trigger1 = p2bodydist X > 20 && p2bodydist X < 30

;***************DROPKICK*****************
[State -1]
type = ChangeState
value = 601
trigger1 = command = "HK"
trigger1 = statetype = A
trigger1 = ctrl = 1
;trigger1 = stateno != 600
;trigger1 = stateno != 601
;trigger1 = stateno != 602

[State -1]
type = ChangeState
value = 601
trigger1 = command = "LK"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = stateno != 600
trigger1 = stateno != 601
trigger1 = stateno != 602

;************SLK************************
[State -1]
type = ChangeState
value = 210
triggerall = command = "LK"
triggerall = command != "holdback"
triggerall = statetype = S
trigger1 = ctrl = 1

;***********ROUNDHOUSE KICK************
[State -1]
type = ChangeState
value = 250
triggerall = command = "Roundhouse"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1, AI Roundhouse]
type = ChangeState
value = 250
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 850 && random <= 999
triggerall = ctrl = 1
triggerall = P2statetype = S
triggerall = statetype = S
trigger1 = p2bodydist X > 2 && p2bodydist X < 30

;***********SHK*************************
[State -1]
type = ChangeState
value = 220
triggerall = command = "HK"
triggerall = statetype = S
trigger1 = ctrl = 1

;*************UPPERCUT*****************
[State -1]
type = ChangeState
value = 230
triggerall = command = "HP"
triggerall = Command = "holddown"
triggerall = statetype = C
trigger1 = ctrl = 1

[State -1, AI Uppercut]
type = ChangeState
value = 230
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 850 && random <= 999
triggerall = ctrl = 1
triggerall = statetype = S
trigger1 = p2bodydist X > 1 && p2bodydist X < 20

;*****************SWEEP*****************
[State -1]
type = Changestate
value = 260
trigger1 = command = "Sweep"
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, AI Sweep]
type = ChangeState
value = 260
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 850 && random <= 999
triggerall = ctrl = 1
triggerall = P2statetype = S
triggerall = statetype = S
trigger1 = p2bodydist X > 5 && p2bodydist X < 20

;*******************CLP*****************
[State -1]
type = ChangeState
value = 400
triggerall = command = "LP"
triggerall = Command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;*******************CLK*****************
[State -1]
type = ChangeState
value = 410
triggerall = command = "CLK"
trigger1 = statetype = C
trigger1 = ctrl = 1

;***********************CHK*************
[State -1]
type = ChangeState
value = 420
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
trigger1 = command = "JumpPa"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = stateno != 600
trigger1 = stateno != 601
trigger1 = stateno != 602

[State -1]
type = ChangeState
value = 600
trigger1 = command = "JumpPb"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = stateno != 600
trigger1 = stateno != 601
trigger1 = stateno != 602

;**********************KOMBO FEVER!**********************
;(left knee)
[State -1]
type = changestate
value = 4002
triggerall = statetype = S
trigger1 = stateno = 270 
trigger1 = movecontact = 1
trigger1 = command = "HK"


;(High Kick)
[State -1]
type = changestate
value = 4003
triggerall = command = "LK"
triggerall = command = "holddown"
Triggerall = statetype = S
trigger1 = stateno = 4002
trigger1 = movecontact = 1

;(Roundhouse)
[State -1]
type = changestate
value = 4005
triggerall = command = "HK"
triggerall = command = "holdback"
triggerall = statetype = S
trigger1 = stateno = 4003
trigger1 = movecontact = 1