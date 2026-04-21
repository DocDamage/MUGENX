;-| Fatality Motions |--------------------------------------------------------

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


[Command]
name = "CPU32"
command = U,U,D,D,B,B,B,B,s,s,s
time = 0

[Command]
name = "CPU33"
command = U,U,D,D,B,F,B,B,s,s,s

[Command]
name = "CPU34"
command = U,U,D,D,B,B,B,F,s,s
time = 0

[Command]
name = "CPU35"
command = U,U,U,U,B,F,B,F,s,s,s
time = 0

[Command]
name = "CPU36"
command = U,U,D,U,B,F,B,F,s,s,s
time = 0

[Command]
name = "CPU37"
command = D,D,D,D,D,D,B,F,s,s,s
time = 0

[Command]
name = "CPU38"
command = D,D,D,D,B,F,B,F,s,s,s
time = 0

[Command]
name = "CPU39"
command = D,U,D,D,B,F,B,F,s,s
time = 0

[Command]
name = "CPU40"
command = B,B,B,B,B,F,B,F,s,s,s
time = 0

[Command]
name = "CPU41"
command = U,U,D,B,B,F,B,F,s,s
time = 0

[Command]
name = "CPU42"
command = D,U,D,D,B,F,B,F,s,s,s
time = 0

[Command]
name = "CPU43"
command = D,D,D,B,F,B,F,s,s,s
time = 0

[Command]
name = "CPU44"
command = F,D,D,B,F,B,F,s,s,s
time = 0

[Command]
name = "CPU45"
command = F,U,D,D,B,F,B,F,s,s,s
time = 0



;-| Special Motions |------------------------------------------------------
[Command]
name = "torpedo"
command = ~B, B, F

[Command]
name = "torpedo2"
command = ~F, F, b

[Command]
name = "teleport"
command = ~D, U

[Command]
name = "Lightning"
command = ~D, F, a

[Command]
name = "lightningstrike"
command = ~B, D, F, y

[Command]
name = "EyeLightning"
command = ~D, F, y

[Command]
name = "Lightning_Upper"
command = ~D, F, x

[Command]
name = "SuperLightning"
command = ~D, F, D, F, x
time = 30

[Command]
name = "SuperLowerLightning"
command = ~D, F, D, F, b
time = 30

[Command]
name = "ultra"
command = ~D, F, D, F, a
time = 30

[Command]
name = "ReverseLightning"
command = ~D, B, a

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "bck_x"
command = /B,x
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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
name = "Holding_x"
command = /$x

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
command = s ;	Start!
time = 1

[Command]
name = "HoldingStart"
command = /$s ;	Start!
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdback1";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdback2";Required (do not remove)
command = c
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
[Statedef -1]

[State -1]
type = VarSet
triggerall = statetype != A
triggerall = 1
trigger1 = command = "CPU0"
trigger2 = command = "CPU1"
trigger3 = command = "CPU2"
trigger4 = command = "CPU3"
trigger5 = command = "CPU4"
trigger6 = command = "CPU5"
trigger7 = command = "CPU6"
trigger8 = command = "CPU7"
trigger9 = command = "CPU8"
trigger10 = command = "CPU9"
trigger11 = command = "CPU10"
trigger12 = command = "CPU11"
trigger13 = command = "CPU12"
trigger14 = command = "CPU13"
trigger15 = command = "CPU14"
trigger16 = command = "CPU15"
trigger17 = command = "CPU16"
trigger18 = command = "CPU17"
trigger19 = command = "CPU18"
trigger20 = command = "CPU19"
trigger21 = command = "CPU20"
trigger22 = command = "CPU21"
trigger23 = command = "CPU22"
trigger24 = command = "CPU23"
trigger25 = command = "CPU24"
trigger26 = command = "CPU25"
trigger27 = command = "CPU26"
trigger28 = command = "CPU27"
trigger29 = command = "CPU28"
trigger30 = command = "CPU29"
trigger31 = command = "CPU30"
trigger32 = command = "CPU31"
trigger33 = command = "CPU32"
trigger34 = command = "CPU33"
trigger35 = command = "CPU34"
trigger36 = command = "CPU35"
trigger37 = command = "CPU36"
trigger38 = command = "CPU37"
trigger39 = command = "CPU38"
trigger40 = command = "CPU39"
trigger41 = command = "CPU40"
trigger42 = command = "CPU41"
trigger43 = command = "CPU42"
trigger44 = command = "CPU43"
trigger45 = command = "CPU44"
trigger46 = command = "CPU45"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = statetype = A
triggerall = 1
trigger1 = command = "CPU0"
trigger2 = command = "CPU1"
trigger3 = command = "CPU2"
trigger4 = command = "CPU3"
trigger5 = command = "CPU4"
trigger6 = command = "CPU5"
trigger7 = command = "CPU6"
trigger8 = command = "CPU7"
trigger9 = command = "CPU8"
trigger10 = command = "CPU9"
trigger11 = command = "CPU10"
trigger12 = command = "CPU11"
trigger13 = command = "CPU12"
trigger14 = command = "CPU13"
trigger15 = command = "CPU14"
trigger16 = command = "CPU15"
trigger17 = command = "CPU16"
trigger18 = command = "CPU17"
trigger19 = command = "CPU18"
trigger20 = command = "CPU19"
trigger21 = command = "CPU20"
trigger22 = command = "CPU21"
trigger23 = command = "CPU22"
trigger24 = command = "CPU23"
trigger25 = command = "CPU24"
trigger26 = command = "CPU25"
trigger27 = command = "CPU26"
trigger28 = command = "CPU27"
trigger29 = command = "CPU28"
trigger30 = command = "CPU29"
trigger31 = command = "CPU30"
trigger32 = command = "CPU31"
trigger33 = command = "CPU32"
trigger34 = command = "CPU33"
trigger35 = command = "CPU34"
trigger36 = command = "CPU35"
trigger37 = command = "CPU36"
trigger38 = command = "CPU37"
trigger39 = command = "CPU38"
trigger40 = command = "CPU39"
trigger41 = command = "CPU40"
trigger42 = command = "CPU41"
trigger43 = command = "CPU42"
trigger44 = command = "CPU43"
trigger45 = command = "CPU44"
trigger46 = command = "CPU45"
v = 50
value = 1

[State -1, AI Never Stand Still]
type = null
triggerall = Var(50) = 1
trigger1 = p2stateno != 9010
value = 0

[State -1, AI No Jump on Fatality]
type = ChangeState
value = 400
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2life < 10
trigger1 = p2stateno = 9010

;--------------------------------------------------------------------
[State -1, Eye Lightning Fatality]
type = ChangeState
value = 9101
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = statetype != A
triggerall = command = "y"
triggerall = p2life < 10
trigger1 = p2bodydist X > 140

[State -1, AI Eye Lightning Fatality]
type = ChangeState
value = 9101
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = statetype != A
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
trigger1 = p2bodydist X > 140

[State -1, Babality Fatality]
type = ChangeState
value = 9102
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = statetype != A
trigger1 = p2bodydist X > 100
triggerall = command = "b"

[State -1, AI BabalityFat]
type = ChangeState
value = 9102
triggerall = ctrl = 1
triggerall = Var(50) = 1
triggerall = random > 699 && random <= 799
triggerall = statetype != A
triggerall = p2stateno = 9010
trigger1 = p2bodydist X > 200

[State -1, BlowupFAT]
type = Changestate
value = 9100
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = statetype != A
triggerall = p2BodyDist X > 27
trigger1 = command = "x"

[State -1, AI BlowupFAT]
type = ChangeState
value = 9100
triggerall = ctrl = 1
triggerall = Var(50) = 1
triggerall = time = 0
triggerall = random > 599 && random <= 799
triggerall = statetype != A
triggerall = roundstate != 4
triggerall = p2stateno = 9010
trigger1 = p2BodyDist X > 27

[State -1, ShockerFAT]
type = Changestate
value = 9300
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = statetype != A
triggerall = p2BodyDist X > 20
trigger1 = command = "a"

[State -1, AI Shocked]
type = ChangeState
value = 9300
triggerall = ctrl = 1
triggerall = Var(50) = 1
triggerall = time = 0
triggerall = random > 599 && random <= 799
triggerall = statetype != A
triggerall = p2stateno = 9010
trigger1 = p2BodyDist X > 20

[State -1, ThePits]
type = Changestate
value = 9400
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
triggerall = Statetype = S
triggerall = p2BodyDist X < 30
trigger1 = command = "z"

[State -1, AI ThePits]
type = ChangeState
value = 9400
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
trigger1 = p2BodyDist X < 30

;Ultracombo
[State -1]
type = ChangeState
value = 3100
triggerall = command = "ultra"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact = 1

[State -1, AI Ultra]
type = ChangeState
value = 3100
triggerall = ctrl = 1
triggerall = Var(50) = 1
triggerall = random > 599 && random <= 999
triggerall = StateType = S
triggerall = P2statetype = S
triggerall = p2stateno != 9010
triggerall = p2life > 5
triggerall = power >= 2000
trigger1 = p2bodydist X > 50 && p2bodydist X < 100

; Lightning Strike
[State -1, Lightning Strike]
type = ChangeState
value = 2090
triggerall = command = "lightningstrike"
triggerall = statetype = S
triggerall = power >= 2000
trigger1 = ctrl = 1

[State -1, AI Lightning Strike]
type = ChangeState
value = 2090
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 650 && random <= 999
triggerall = power >= 2000
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = p2stateno != 9010
triggerall = p2life > 5
trigger1 = p2bodydist X > 170 && p2bodydist X < 220

[State -1, Air Torpedo]
type = Changestate
value = 1100
triggerAll = command = "torpedo2"
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = stateno = 620
trigger2 = MoveContact = 1
trigger3 = stateno = 621

[State -1, Ground Torpedo]
type = Changestate
value = 1000
triggerAll = command = "torpedo"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = command = "torpedo"

[State -1, AI Torpedo]
type = ChangeState
value = 1000
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 800 && random <= 999
triggerall = ctrl = 1
triggerall = P2statetype = S
triggerall = statetype = S
triggerall = p2stateno != 9010
triggerall = p2life > 5
trigger1 = stateno = 3100
trigger2 = p2bodydist X > 260 && p2bodydist X < 280
trigger3 = p2bodydist X > 130 && p2bodydist X < 150

[State -1, Air Torpedo]
type = Changestate
value = 1100
triggerAll = command = "torpedo"
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger2 = stateno = 620
trigger2 = MoveContact = 1
trigger3 = stateno = 621
trigger1 = command = "torpedo"

[State -1, AI Air Torpedo]
type = ChangeState
value = 1100
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 750 && random <= 999
triggerall = ctrl = 1
triggerall = P2statetype = A
triggerall = statetype = A
triggerall = p2stateno != 9010
triggerall = p2life > 5
trigger1 = p2bodydist X > 20 && p2bodydist X < 100

[State -1, teleport]
type = Changestate
value = 700
triggerAll = command = "teleport"
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, AI Port]
type = ChangeState
value = 700
triggerall = Var(50) = 1
triggerall = random >= 30 && random < 299 || random >= 600 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno != 9010
triggerall = p2life > 5
trigger1 = p2bodydist X > 200 && p2bodydist X < 300

[State -1, Lightning]
type = Changestate
value = 1200
triggerAll = command = "Lightning"
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, AI Lightning]
type = ChangeState
value = 1200
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno != 9010
triggerall = p2life > 5
trigger1 = p2bodydist X = 40
trigger2 = p2bodydist X = 80
trigger3 = p2bodydist X = 100
trigger4 = p2bodydist X = 150
trigger5 = p2bodydist X = 190
trigger6 = p2bodydist X = 230
trigger7 = p2bodydist X = 120
trigger8 = p2bodydist X = 200

[State -1, Eye Lightning]
type = Changestate
value = 1313
triggerAll = command = "EyeLightning"
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, Super Lower Lightning]
type = Changestate
value = 20001
triggerall = command = "SuperLowerLightning"
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, AI Super Lower Lightning]
type = ChangeState
value = 20001
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 750 && random <= 999
triggerall = statetype = S
triggerall = p2statetype = S
triggerall = ctrl = 1
triggerall = p2stateno != 9010
triggerall = p2life > 5
triggerall = power >= 2000
trigger1 = p2bodydist X > 20 && p2bodydist X < 70
trigger2 = p2bodydist X > 250 && p2bodydist X < 300

[State -1, Super Lightning]
type = Changestate
value = 20000
triggerAll = command = "SuperLightning"
triggerAll = power >= 2000
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, AI Super Lightning]
type = ChangeState
value = 20000
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 550 && random <= 999
triggerall = statetype = S
triggerall = p2statetype != C
triggerall = ctrl = 1
triggerall = p2stateno != 9010
triggerall = p2life > 5
triggerAll = power >= 2000
trigger1 = p2bodydist X > 100 && p2bodydist X < 200

[State -1, Upper Lightning]
type = Changestate
value = 10000
triggerAll = command = "Lightning_Upper"
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, AI Upper Lightning]
type = ChangeState
value = 10000
triggerall = Var(50) = 1
triggerall = random >= 80 && random < 299 || random >= 150 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = P2statetype = A
triggerall = p2stateno != 9010
triggerall = p2life > 5
trigger1 = p2bodydist X > 140 && p2bodydist X < 200

[State -1, ReverseLightning]
type = Changestate
value = 1400
triggerAll = command = "ReverseLightning"
triggerAll = NumHelper(1400) < 1
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, AI Reverse Lightning]
type = ChangeState
value = 1400
triggerall = Var(50) = 1
triggerall = random >= 30 && random < 299 || random >= 300 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = P2statetype = A
triggerall = p2stateno != 9010
triggerall = p2life > 5
trigger1 = p2BodyDist X > 250
trigger2 = p2BodyDist X = 100

[State -1, Taunt]
type = Changestate
value = 800
triggerall = command = "start"
triggerall = ctrl = 1
trigger1 = statetype = S
trigger2 = statetype = C

[State -1, AI Taunt]
type = ChangeState
value = 800
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 998 && random <= 999
triggerall = power >= 1000
triggerall = ctrl = 1
triggerall = p2stateno = 9010
trigger1 = p2bodydist X > 600

;Roundhouse
[State -1, RoundHouse]
type = Changestate
value = 240
triggerall = command = "y"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, AI Round]
type = ChangeState
value = 240
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 850 && random <= 999
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = p2stateno != 9010
triggerall = p2life > 5
trigger1 = p2BodyDist X < 15

;Sweep
[State -1, Sweep]
type = Changestate
value = 245
trigger1 = command = "b"
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Sweep2]
type = ChangeState
value = 245
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 550 && random <= 999
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = p2stateno != 9010
triggerall = p2life > 5
trigger1 = p2BodyDist X < 35

;Uppercut
[State -1, MKUppa]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 410
trigger2 = time > 7

[State -1, AI Uppercut]
type = ChangeState
value = 430
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 850 && random <= 999
triggerall = statetype != A
triggerall = ctrl = 1
triggerall = p2life > 5
triggerall = p2stateno != 9010
trigger1 = p2BodyDist X < 30

;Jump Side kick
[State -1, SideKick]
type = ChangeState
value = 620
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = Vel X != 0 
trigger1 = command = "y"
trigger2 = command = "b"

[State -1, AI Jump Kick]
type = ChangeState
value = 620
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = Vel X != 0 
triggerall = p2life > 5
triggerall = p2stateno != 9010
trigger1 = p2bodydist X > 10 && p2bodydist X < 230

[State -1, AI Sliding Jump Kick]
type = ChangeState
value = 620
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = A
triggerall = ctrl = 1
trigger2 = p2stateno = 1521
triggerall = Vel X != 0 
triggerall = p2life > 5
triggerall = p2stateno != 9010
trigger1 = p2bodydist X > 100 && p2bodydist X < 200

;HP - Part 1
[State -1, HLeftST]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = Time > 7
trigger3 = stateno = 2197

[State -1, AI HP]
type = ChangeState
value = 200
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 650 && random <= 999
triggerall = ctrl = 1
triggerall = P2statetype = S
triggerall = statetype = S
triggerall = p2stateno != 9010
triggerall = p2life > 5
trigger1 = p2bodydist X > 1 && p2bodydist X < 15

;HP - Part 2
[State -1, HRightCONT]
type = ChangeState
value = 201
triggerall = command = "x"
trigger1 = stateno = 200
trigger1 = Time > 7
trigger2 = stateno = 2197

;LP - Part 1
[State -1, LLeftST]
type = ChangeState
value = 220
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = Time > 10
trigger3 = stateno = 2197

[State -1, AI LP]
type = ChangeState
value = 220
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 650 && random <= 999
triggerall = ctrl = 1
triggerall = P2statetype = S
triggerall = statetype = S
triggerall = p2life > 5
triggerall = p2stateno != 9010
trigger1 = p2bodydist X > 1 && p2bodydist X < 15

;LP - Part 2
[State -1, LRightCONT]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = stateno = 220
trigger1 = Time > 10
trigger2 = stateno = 2197

;High Kick
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, High Kick]
type = ChangeState
value = 210
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 850 && random <= 999
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = p2life > 5
triggerall = p2stateno != 9010
trigger1 = p2BodyDist X < 22
trigger1 = ctrl = 1

;Low Kick
[State -1]
type = ChangeState
value = 225
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, AI Low Kick]
type = ChangeState
value = 225
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 750 && random <= 999
triggerall = ctrl = 1
triggerall = P2statetype = S
triggerall = p2stateno != 9010
triggerall = statetype = S
triggerall = p2life > 5
trigger1 = p2bodydist X > 2 && p2bodydist X < 20

;Duck HK
[State -1, Duck HK]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 400
trigger2 = time > 7

[State -1, AI Duck HK]
type = ChangeState
value = 410
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 550 && random <= 999
triggerall = statetype = C
triggerall = ctrl = 1
triggerall = p2life > 5
triggerall = p2BodyDist X < 15
triggerall = p2stateno != 9010
trigger1 = movecontact = 1
trigger1 = stateno = 400
trigger1 = time > 7

;Duck LP
[State -1, Duck LP]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1, AI Duck LP]
type = ChangeState
value = 420
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 750 && random <= 999
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2stateno != 9010
triggerall = ctrl = 1
triggerall = p2life > 5
trigger1 = p2BodyDist X < 30

;Jump Kick
[State -1, NKick]
type = ChangeState
value = 600
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = Vel X = 0 
trigger1 = command = "y"
trigger2 = command = "b"

[State -1, AI Jump Up Kick]
type = ChangeState
value = 600
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2life > 5
triggerall = Vel X = 0 
triggerall = p2BodyDist X < 15
trigger1 = p2stateno != 9010

;Duck LK
[State -1, Duck LK]
type = ChangeState
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 420
trigger2 = time > 7

[State -1, AI Duck LK]
type = ChangeState
value = 400
triggerall = Var(50) = 1
triggerall = random >= 280 && random < 299 || random >= 950 && random <= 999
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = ctrl = 1
triggerall = p2stateno != 9010
triggerall = p2life > 25
trigger1 = p2BodyDist X < 40


; Mini Uppercut
[State -1, CloseUpper]
type = Changestate
value = 230
triggerall = command != "holddown"
triggerall = P2bodyDist X < 10
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "x"
trigger1 = P2StateType = S
trigger2 = command = "a"
trigger2 = P2StateType = S

[State -1, AI MiniUpper]
type = ChangeState
value = 230
triggerall = Var(50) = 1
triggerall = random >= 150 && random < 299 || random >= 850 && random <= 999
triggerall = power >= 1000
triggerall = ctrl = 1
triggerall = P2statetype = S
triggerall = statetype = S
triggerall = p2stateno != 9010
triggerall = p2life > 5
trigger1 = p2bodydist X > 1 && p2bodydist X < 15

;MoonKick
[State -1, MoonKick]
type = Changestate
value = 235
triggerall = command != "holddown"
triggerall = P2bodyDist X < 15
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "y"
trigger1 = P2StateType = S
trigger2 = command = "b"
trigger2 = P2StateType = S

[State -1, AI MoonKick]
type = ChangeState
value = 235
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 650 && random <= 999
triggerall = ctrl = 1
triggerall = P2statetype = S
triggerall = statetype = S
triggerall = p2life > 5
triggerall = p2stateno != 9010
trigger1 = p2bodydist X > 2 && p2bodydist X < 10

;Throw
[State -1, Throw]
type = Changestate
value = 900
triggerall = P2bodydist X < 10
triggerall = P2statetype != A
triggerall = ctrl = 1
triggerall = statetype = S
trigger1 = command = "fwd_a"
trigger2 = command = "back_a"

[State -1, AI Throw]
type = ChangeState
value = 900
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 650 && random <= 999
triggerall = ctrl = 1
triggerall = P2statetype = S
triggerall = statetype = S
triggerall = p2stateno != 9010
triggerall = p2life > 5
trigger1 = p2bodydist X < 10

;Jump Punch
[State -1, Punch]
type = ChangeState
value = 610
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "a"
trigger2 = command = "x"

[State -1, AI Jump Punch]
type = ChangeState
value = 610
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = A
triggerall = p2stateno != 9010
triggerall = ctrl = 1
triggerall = p2life > 5
trigger1 = p2BodyDist X < 15
trigger1 = p2stateno != 9010

[State -1, AI No Jump]
type = null
triggerall = Var(50) = 1
trigger1 = p2stateno = 9010
value = 40
