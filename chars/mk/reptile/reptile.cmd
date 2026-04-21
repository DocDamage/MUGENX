
;-| Fatality Motions |--------------------------------------------------------

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
name = "Acid"
command = ~30x

[Command]
name = "Acid"
command = ~F, F, x

[Command]
name = "FastOrb"
command = ~D, DF, F, a

[Command]
name = "teleport"
command = ~D, D, U
time = 30

[Command]
name = "slide"
command = b+y
time = 30

[Command]
name = "Orb"
command = ~D, DB, B, a

[Command]
name = "invisible"
command = ~30z

;---Supers------

[Command]
name = "tongue"
command = ~D, F, D, F, b
time = 30

[Command]
name = "ninjakick"
command = ~D, F, D, F, y
time = 30

[Command]
name = "SuperAcid"
command = ~D, F, D, F, x
time = 30

[Command]
name = "SuperLowAcid"
command = ~D, F, D, F, a
time = 30

[Command]
name = "shroom"
command = ~30c
time = 30
;====================

[Command]
name = "melt"
command = x

[Command]
name = "orbbust"
command = a

[Command]
name = "pits"
command = z

[Command]
name = "snake"
command = b

[Command]
name = "babality"
command = c

[Command]
name = "brutality"
command = y

[Command]
name = "munch"
command = a


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
name = "screen"
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

;AI
;----------------------------------------
[State -1]
type = VarSet
triggerall = statetype = S
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
triggerall = statetype = S
triggerall = p2statetype = S
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
;--------------------------------------------------------------------

[State -1, AI Stand on Fatality]
type = ChangeState
value = 0
triggerall = Var(50) = 1
triggerall = random >= 298 && random < 299 || random >= 998 && random <= 999
triggerall = ctrl = 1
triggerall = P2Stateno = 9010
triggerall = statetype != A
trigger1 = p2bodydist X > 1 && p2bodydist X < 300
trigger2 = p2bodydist X > 1 && p2bodydist X < 300
trigger2 = matchover
trigger3 = p2life < 2

[State -1, AI Never Stand]
type = ChangeState
value = 0
triggerall = Var(50) = 1
triggerall = random >= 298 && random < 299 || random >= 998 && random <= 999
triggerall = ctrl = 1
triggerall = statetype != A
trigger1 = p2bodydist X > 300
trigger2 = P2Stateno != 9010

[State -1, AI Never Jump during Fatal]
type = ChangeState
value = 40
triggerall = Var(50) = 1
triggerall = random >= 298 && random < 299 || random >= 998 && random <= 999
triggerall = ctrl = 1
triggerall = statetype != A
triggerall = p2bodydist X > 300
trigger1 = P2Stateno = 9010

;Acid Melt
[State -1]
type = Changestate
value = 2400
triggerall = P2Stateno = 9010
triggerall = P2Life <= 10
trigger1 = command = "melt"
trigger1 = command != "BB"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = P2statetype = S
trigger1 = p2bodydist X > 65

[State -1, AI AcidMelt]
type = ChangeState
value = 2400
triggerall = Var(50) = 1
triggerall = random >= 280 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
trigger1 = p2bodydist X > 65 && p2bodydist X < 90

;Munch
[State -1, Munch]
type = ChangeState
value = 1980
triggerall = P2Stateno = 9010
triggerall = P2Life <= 10
trigger1 = command = "munch"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = p2bodydist X > 40 && p2bodydist X < 120

[State -1, AI Munch]
type = ChangeState
value = 1980
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2life > 10
triggerall = p2stateno = 9010
trigger1 = p2bodydist X > 121 && p2bodydist X < 199

[State -1, Babality Fatality]
type = ChangeState
value = 9102
triggerall = command = "babality"
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = statetype = S
trigger1 = P2statetype = S
trigger1 = p2bodydist X > 70

[State -1, AI BabalityFat]
type = ChangeState
value = 9102
triggerall = ctrl = 1
triggerall = Var(50) = 1
triggerall = random > 599 && random <= 999
triggerall = StateType = S
triggerall = p2stateno = 9010
triggerall = p2life < 10
trigger1 = p2bodydist X > 91 && p2bodydist X < 120

;Crazy Orb
[State -1]
type = Changestate
value = 3380
triggerall = P2Stateno = 9010
triggerall = P2Life <= 10
trigger1 = command = "orbbust"
trigger1 = command != "BB"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = p2bodydist X > 170 && p2bodydist X < 220

[State -1, AI OrbBust]
type = ChangeState
value = 3380
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
trigger1 = p2bodydist X > 170 && p2bodydist X < 220

;Snake
[State -1, Snake]
type = ChangeState
value = 227
triggerall = P2Stateno = 9010
triggerall = P2Life <= 10
trigger1 = command = "snake"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = p2bodydist X > 50

[State -1, AI Snake]
type = ChangeState
value = 227
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
trigger1 = p2bodydist X > 120 && p2bodydist X < 150

[State -1, Brutality]
type = Changestate
value = 22236
triggerall = command = "brutality"
triggerall = P2Stateno = 9010
triggerall = P2Life <= 10
triggerall = var(17) = 0
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = p2bodydist X > 5 && p2bodydist X < 200

[State -1, AI Brutality]
type = ChangeState
value = 22236
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
triggerall = var(17) = 0
trigger1 = p2bodydist X > 5 && p2bodydist X < 70

[State -1, ThePits]
type = Changestate
value = 9400
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
triggerall = Statetype = S
triggerall = p2BodyDist X < 20
trigger1 = command = "pits"

[State -1, AI ThePits]
type = ChangeState
value = 9400
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2stateno = 9010
triggerall = p2life < 10
triggerall = P2statetype = S
trigger1 = p2BodyDist X < 20

;===========================================================================

[State -1, AI Manual Kombo]
type = ChangeState
value = 60549
triggerall = Var(50) = 1
triggerall = random >= 290 && random < 299 || random >= 990 && random <= 999
triggerall = ctrl = 1
triggerall = p2life > 2
trigger1 = p2bodydist X >= 1 && p2bodydist X < 15
trigger2 = p2bodydist X >= 1 && p2bodydist X < 15
trigger2 = prevstateno = 700
trigger3 = stateno = 20001
trigger3 = movehit = 1

[State -1, Super Acid Spit]
type = Changestate
value = 20000
triggerall = command = "SuperAcid"
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, AI Super Acid Spit]
type = ChangeState
value = 20000
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 850 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = power >= 2000
triggerall = p2life > 2
trigger1 = p2bodydist X > 150 && p2bodydist X < 290
trigger2 = stateno = 30000 ;shroom
trigger2 = movehit = 1

[State -1, Super Low Acid Spit]
type = Changestate
value = 24000
triggerall = command = "SuperLowAcid"
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, AI Super Low Acid Spit]
type = ChangeState
value = 24000
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 850 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = power >= 2000
triggerall = p2life > 2
trigger1 = p2bodydist X = 104
trigger2 = p2bodydist X = 132
trigger3 = p2bodydist X = 154
trigger4 = p2bodydist X = 183
trigger5 = p2bodydist X = 90
trigger6 = p2bodydist X = 95

[State -1, AI Super Low Acid Spit2]
type = ChangeState
value = 24000
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 850 && random <= 999
triggerall = statetype = S
triggerall = p2statetype = C
triggerall = ctrl = 1
triggerall = power >= 2000
triggerall = p2life > 2
trigger1 = p2bodydist X > 90 && p2bodydist X < 190

[State -1, Shroom]
type = Changestate
value = 30000
triggerAll = command = "shroom"
triggerAll = power >= 2000
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, AI Shroom]
type = ChangeState
value = 30000
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 800 && random <= 999
triggerall = statetype = S
triggerall = p2statetype = S
triggerall = ctrl = 1
triggerAll = power >= 2000
triggerall = p2life > 2
trigger1 = p2bodydist X > 200

; Tongue Spear
[State -1, Tongue Spear]
type = Changestate
value = 3100
triggerall = command = "tongue"
trigger1 = ctrl = 1
trigger1 = statetype = S
triggerall = power >= 2000
trigger2 = Pos Y = [-25, 0]
trigger2 = movecontact = 1
trigger3 = Pos Y = 0
trigger3 = movecontact = 1

[State -1, AI Tongue Spear]
type = ChangeState
value = 3100
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 850 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2life > 2
triggerall = power >= 2000
trigger1 = p2bodydist X > 40 && p2bodydist X < 100
trigger2 = var(17) = 0
trigger2 = p2bodydist X > 20 && p2bodydist X < 120

[State -1, Ninja Kick]
type = Changestate
value = 20001
triggerAll = command = "ninjakick"
triggerAll = power >= 2000
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, AI Ninja Kick]
type = ChangeState
value = 20001
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 700 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = power >= 2000
triggerall = p2life > 2
trigger1 = p2bodydist X > 50 && p2bodydist X < 170
trigger2 = stateno = 2009 ;fast orb
trigger2 = movecontact = 1
trigger3 = var(17) = 0
trigger3 = p2bodydist X > 50 && p2bodydist X < 170

[State -1, teleport]
type = Changestate
value = 700
;triggerAll = (command = "teleport") || (command = "c")
triggerAll = command = "teleport"
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, AI Port]
type = ChangeState
value = 700
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 900 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = p2bodydist X > 10 && p2bodydist X < 40
trigger2 = p2stateno = 80000
trigger2 = p2name = "subzero"
trigger3 = p2stateno = 32101
trigger3 = p2name = "scorpion"
trigger4 = p2stateno = 8845
trigger4 = p2name = "smoke"
trigger5 = p2stateno = 1540
trigger5 = p2name = "scorpionmo"
trigger6 = p2bodydist X = 80
trigger7 = p2bodydist X = 110
trigger8 = p2bodydist X = 150
trigger9 = p2bodydist X = 60

;===========================================================================

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
triggerall = random >= 200 && random < 299 || random >= 850 && random <= 999
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = p2BodyDist X < 30
trigger2 = stateno = 10000
trigger2 = movecontact = 1

[State -1, AI Uppercut2]
type = ChangeState
value = 430
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = statetype != A
triggerall = ctrl = 1
triggerall = p2BodyDist X < 30
trigger1 = prevstateno = 700
trigger2 = p2stateno = 2002

[State -1, AI Uppercut3]
type = ChangeState
value = 430
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = ctrl = 1
trigger1 = p2BodyDist X < 80
trigger2 = stateno = 3000
trigger2 = movecontact = 1
trigger3 = stateno = 2001
trigger3 = movecontact = 1
trigger4 = stateno = 2009
trigger4 = movecontact = 1

[State -1, Acid Spit]
type = Changestate
value = 1200
triggerAll = command = "Acid"
triggerAll = command != "Holding_x"
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, AI Acid Spit]
type = ChangeState
value = 1200
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 600 && random <= 959
triggerall = statetype = S
triggerall = p2statetype = A
triggerall = ctrl = 1
triggerall = p2life > 2
trigger1 = p2bodydist X > 180 && p2bodydist X < 250

[State -1, AI Acid Spit]
type = ChangeState
value = 1200
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 500 && random <= 959
triggerall = statetype = S
triggerall = p2statetype = S
triggerall = ctrl = 1
triggerall = p2life > 2
trigger1 = p2bodydist X = 50
trigger2 = p2bodydist X = 190
trigger3 = p2bodydist X = 220
trigger4 = p2bodydist X = 160
trigger5 = p2bodydist X = 250

[State -1, Orb]
type = Changestate
value = 10000
triggerall = command = "Orb"
triggerall = numproj < 1
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, Orb AI]
type = Changestate
value = 10000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 850 && random <= 999
triggerall = statetype = S
triggerall = p2statetype = A
triggerall = ctrl = 1
triggerall = p2life > 5
triggerall = numproj < 1
trigger1 = p2bodydist X = 330
trigger2 = p2bodydist X = 360
trigger3 = p2bodydist X = 390
trigger4 = p2bodydist X > 220 && p2bodydist X < 290

[State -1, Fast Orb]
type = Changestate
value = 60000
triggerAll = command = "FastOrb"
triggerall = numproj < 1
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, Fast Orb AI]
type = Changestate
value = 60000
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 850 && random <= 999
triggerall = statetype = S
triggerall = p2statetype = A
triggerall = ctrl = 1
triggerall = p2life > 2
triggerall = stateno != 2001
triggerall = stateno != 2009
triggerall = numproj < 1
trigger1 = p2bodydist X = 330
trigger2 = p2bodydist X = 360
trigger3 = p2bodydist X = 390
trigger4 = p2bodydist X > 300 && p2bodydist X < 390

[State -1]
type = ChangeState
value = 3000
triggerall = command = "slide"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1, AI Slide]
type = ChangeState
value = 3000
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 850 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = P2statetype = S
triggerall = p2life > 2
triggerall = p2stateno != 2003
trigger1 = p2BodyDist X = 220
trigger2 = p2bodydist X > 180 && p2bodydist X < 219
trigger3 = p2stateno = 2099
trigger4 = stateno = 30000 ;shroom
trigger4 = movehit = 1

[State -1, AI Slide2]
type = ChangeState
value = 3000
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 850 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2life > 2
trigger1 = stateno = 630
trigger1 = movehit = 1
trigger2 = stateno = 600
trigger2 = movehit = 1
trigger3 = stateno = 24000
trigger3 = movehit = 1

[State -1, Invisible]
type = ChangeState
value = 3010
triggerall = var(17) = 0
trigger1 = command = "invisible"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Visible]
type = ChangeState
value = 3011
triggerall = var(17) = 1
trigger1 = command = "invisible"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Throw
[State -1]
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
triggerall = random >= 200 && random < 299 || random >= 950 && random <= 999
triggerall = ctrl = 1
triggerall = P2statetype != A
triggerall = statetype = S
trigger1 = p2bodydist X > 1 && p2bodydist X < 10

;------------------------------------------------------------------------
; Mini Uppercut
[State -1, CloseUpper]
type = Changestate
value = 230
triggerall = command = "x"
triggerall = P2bodyDist X < 10
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "x"
trigger1 = P2StateType = S
trigger2 = command = "a"
trigger2 = P2StateType = S

[State -1, AI Mini Uppercut]
type = ChangeState
value = 230
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2life > 5
triggerall = P2bodyDist X < 10
trigger1 = p2stateno != 9010

;---------------------------------------------------------------------------
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
triggerall = p2statetype = S
trigger1 = p2BodyDist X < 40
trigger2 = stateno = 2001
trigger2 = movehit = 1

[State -1, AI Round2]
type = ChangeState
value = 240
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 850 && random <= 999
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = p2statetype = A
trigger1 = p2BodyDist X < 40

;---------------------------------------------------------------------------
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
trigger1 = p2bodydist X > 10 && p2bodydist X < 280

[State -1, AI Sliding Jump Kick]
type = ChangeState
value = 620
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 950 && random <= 999
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2stateno = 1521
triggerall = Vel X != 0 
triggerall = p2life > 5
trigger1 = p2bodydist X > 50 && p2bodydist X < 300

;---------------------------------------------------------------------------
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
triggerall = random >= 200 && random < 299 || random >= 300 && random <= 999
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = p2statetype = S
triggerall = p2life > 200
trigger1 = p2bodydist X > 20 && p2bodydist X < 50

;---------------------------------------------------------------------------
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
trigger1 = p2bodydist X > 2 && p2bodydist X < 10
;---------------------------------------------------------------------------

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

;---------------------------------------------------------------------------

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

;LP - Part 2
[State -1, LRightCONT]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = stateno = 220
trigger1 = Time > 10
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
trigger1 = p2bodydist X > 1 && p2bodydist X < 15
;---------------------------------------------------------------------------
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
trigger1 = p2BodyDist X < 22
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Low Mid Kick
[State -1]
type = ChangeState
value = 225
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, AI Low Mid Kick]
type = ChangeState
value = 225
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 750 && random <= 999
triggerall = ctrl = 1
triggerall = P2statetype = S
triggerall = statetype = S
triggerall = p2life > 5
trigger1 = p2bodydist X > 2 && p2bodydist X < 20

;------------------------------------------------------------------------
;Crouching LK
[State -1]
type = ChangeState
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 420
trigger2 = time > 7

[State -1, AI Low Kick0]
type = ChangeState
value = 400
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 750 && random <= 999
triggerall = statetype = C
triggerall = ctrl = 1
triggerall = p2life > 5
triggerall = p2BodyDist X < 15
trigger1 = p2stateno != 9010
trigger2 = p2stateno = 5110

;----------------------------------------------------------------------------
;Crouching HK
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 400
trigger2 = time > 7

[State -1, AI Low Kick]
type = ChangeState
value = 410
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 750 && random <= 999
triggerall = statetype = C
triggerall = ctrl = 1
triggerall = p2life > 5
triggerall = p2BodyDist X < 15
trigger1 = p2stateno != 9010

;---------------------------------------------------------------------------
;Low Punch
[State -1]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1, AI Low Punch]
type = ChangeState
value = 420
triggerall = Var(50) = 1
triggerall = random >= 250 && random < 299 || random >= 750 && random <= 999
triggerall = statetype = C
triggerall = ctrl = 1
triggerall = p2life > 5
triggerall = p2BodyDist X < 15
trigger1 = p2stateno != 9010

;---------------------------------------------------------------------
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

;---------------------------------------------------------------------------
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
triggerall = ctrl = 1
triggerall = p2life > 5
trigger1 = p2BodyDist X < 15
trigger1 = p2stateno != 9010
;---------------------------------------------------------------------
