; Lilith's CMD file
; Written by Baby Bonnie Hood (bbhood21@yahoo.com)

;-| AI Activation Commands |-----------------------------------------------
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

;-| Super Motions |--------------------------------------------------------
[Command]
name = "darkforce"
command = x, x, F, y, z
time = 35

[Command]
name = "radiant"
command = F, z, y, x, F
time = 35

[Command]
name = "illusion"
command = x, x, F, a, z
time = 35

[Command]
name = "shower"
command = y, x, B, a, b
time = 35

[Command]
name = "showtime"
command = ~B, DB, D, DF, F, a+b
time = 25

[Command]
name = "showtime"
command = ~B, DB, D, DF, F, b+c
time = 25

[Command]
name = "showtime"
command = ~B, DB, D, DF, F, a+c
time = 25

[Command]
name = "splendor"
command = ~F, D, DF, a+b

[Command]
name = "splendor"
command = ~F, D, DF, b+c

[Command]
name = "splendor"
command = ~F, D, DF, a+c

;-| ES Special Motions |---------------------------------------------------
[Command]
name = "es_arrow"
command = ~F, DF, D, DB, B, x+y
time = 25

[Command]
name = "es_arrow"
command = ~F, DF, D, DB, B, y+z
time = 25

[Command]
name = "es_arrow"
command = ~F, DF, D, DB, B, x+z
time = 25

[Command]
name = "es_blade"
command = ~F, D, DF, x+y

[Command]
name = "es_blade"
command = ~F, D, DF, y+z

[Command]
name = "es_blade"
command = ~F, D, DF, x+z

[Command]
name = "es_flash"
command = ~D, DF, F, x+y

[Command]
name = "es_flash"
command = ~D, DF, F, y+z

[Command]
name = "es_flash"
command = ~D, DF, F, x+z

[Command]
name = "es_turn"
command = ~D, DB, B, a+b

[Command]
name = "es_turn"
command = ~D, DB, B, b+c

[Command]
name = "es_turn"
command = ~D, DB, B, a+c

[Command]
name = "es_pursuit"
command = U, x+y
time = 7

[Command]
name = "es_pursuit"
command = U, y+z
time = 7

[Command]
name = "es_pursuit"
command = U, x+z
time = 7

[Command]
name = "es_pursuit"
command = U, a+b
time = 7

[Command]
name = "es_pursuit"
command = U, b+c
time = 7

[Command]
name = "es_pursuit"
command = U, a+c
time = 7

;-| Special Motions |------------------------------------------------------
[Command]
name = "arrow_x"
command = ~F, DF, D, DB, B, x
time = 25

[Command]
name = "arrow_y"
command = ~F, DF, D, DB, B, y
time = 25

[Command]
name = "arrow_z"
command = ~F, DF, D, DB, B, z
time = 25

[Command]
name = "blade_x"
command = ~F, D, DF, x

[Command]
name = "blade_y"
command = ~F, D, DF, y

[Command]
name = "blade_z"
command = ~F, D, DF, z

[Command]
name = "flash_x"
command = ~D, DF, F, x

[Command]
name = "flash_y"
command = ~D, DF, F, y

[Command]
name = "flash_z"
command = ~D, DF, F, z

[Command]
name = "turn_a"
command = ~D, DB, B, a

[Command]
name = "turn_b"
command = ~D, DB, B, b

[Command]
name = "turn_c"
command = ~D, DB, B, c

[Command]
name = "pursuit"
command = U, x
time = 7

[Command]
name = "pursuit"
command = U, y
time = 7

[Command]
name = "pursuit"
command = U, z
time = 7

[Command]
name = "pursuit"
command = U, a
time = 7

[Command]
name = "pursuit"
command = U, b
time = 7

[Command]
name = "pursuit"
command = U, c
time = 7

[Command]
name = "longjump"
command = D, $U

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"       ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"       ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery" ;Required (do not remove)
command = y+z
time = 1

[Command]
name = "recovery" ;Required (do not remove)
command = x+z
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
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
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
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
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
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
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
name = "s"
command = s
time = 1

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"  ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"   ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;AI Activation
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
var(0) = 1

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
var(0) = 2

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
var(0) = 3

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
var(0) = 4

[State -1]
type = VarSet
trigger1 = roundstate > 2
var(0) = 0

;AI Ground Combo 1
[State -1]
type = ChangeState
value = 200
triggerall = var(0) = 1
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random < 75

[State -1]
type = ChangeState
value = 300
triggerall = var(0) = 1
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [75,150]

[State -1]
type = ChangeState
value = 215
triggerall = var(0) = 1
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [150,225]

[State -1]
type = ChangeState
value = 350
triggerall = var(0) = 1
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [225,300]

[State -1]
type = ChangeState
value = 205
triggerall = var(0) = 1
triggerall = movecontact = 1
trigger1 = stateno = 200 || stateno = 215 || stateno = 300 || stateno = 350
trigger1 = random < 250

[State -1]
type = ChangeState
value = 310
triggerall = var(0) = 1
triggerall = movecontact = 1
trigger1 = stateno = 200 || stateno = 215 || stateno = 300 || stateno = 350
trigger1 = random = [250,500]

[State -1]
type = ChangeState
value = 220
triggerall = var(0) = 1
triggerall = movecontact = 1
trigger1 = stateno = 200 || stateno = 215 || stateno = 300 || stateno = 350
trigger1 = random = [500,750]

[State -1]
type = ChangeState
value = 360
triggerall = var(0) = 1
triggerall = movecontact = 1
trigger1 = stateno = 200 || stateno = 215 || stateno = 300 || stateno = 350
trigger1 = random > 750

[State -1]
type = ChangeState
value = 210
triggerall = var(0) = 1
triggerall = movecontact = 1
trigger1 = stateno = 205 || stateno = 220 || stateno = 310 || stateno = 360
trigger1 = random < 250

[State -1]
type = ChangeState
value = 320
triggerall = var(0) = 1
triggerall = movecontact = 1
trigger1 = stateno = 205 || stateno = 220 || stateno = 310 || stateno = 360
trigger1 = random = [250,500]

[State -1]
type = ChangeState
value = 225
triggerall = var(0) = 1
triggerall = movecontact = 1
trigger1 = stateno = 205 || stateno = 220 || stateno = 310 || stateno = 360
trigger1 = random = [500,750]

[State -1]
type = ChangeState
value = 370
triggerall = var(0) = 1
triggerall = movecontact = 1
trigger1 = stateno = 205 || stateno = 220 || stateno = 310 || stateno = 360
trigger1 = random > 750

;AI Ground Combo 2
[State -1]
type = ChangeState
value = 205
triggerall = var(0) = 2
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random < 75

[State -1]
type = ChangeState
value = 310
triggerall = var(0) = 2
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [75,150]

[State -1]
type = ChangeState
value = 220
triggerall = var(0) = 2
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [150,225]

[State -1]
type = ChangeState
value = 360
triggerall = var(0) = 2
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [225,300]

[State -1]
type = ChangeState
value = 1120
triggerall = var(0) = 2
triggerall = numprojID(1100) = 0
triggerall = movecontact = 1 && prevstateno != [200,499]
trigger1 = stateno = 205 || stateno = 220 || stateno = 310 || stateno = 360
trigger1 = random < 500

[State -1]
type = ChangeState
value = 1320
triggerall = var(0) = 2
triggerall = movecontact = 1 && prevstateno != [200,499]
trigger1 = stateno = 205 || stateno = 220 || stateno = 310 || stateno = 360
trigger1 = random >= 500

;AI Ground Combo 3
[State -1]
type = ChangeState
value = 300
triggerall = var(0) = 3
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random < 300

[State -1]
type = ChangeState
value = 350
triggerall = var(0) = 3
triggerall = movecontact = 1
trigger1 = stateno = 300

[State -1]
type = ChangeState
value = 310
triggerall = var(0) = 3
triggerall = movecontact = 1
trigger1 = stateno = 350

[State -1]
type = ChangeState
value = 360
triggerall = var(0) = 3
triggerall = movecontact = 1
trigger1 = stateno = 310

[State -1]
type = ChangeState
value = 320
triggerall = var(0) = 3
triggerall = movecontact = 1
trigger1 = stateno = 360
trigger1 = random < 500

[State -1]
type = ChangeState
value = 370
triggerall = var(0) = 3
triggerall = movecontact = 1
trigger1 = stateno = 360
trigger1 = random >= 500

;AI Ground Combo 4
[State -1]
type = ChangeState
value = 200
triggerall = var(0) = 4
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random < 300

[State -1]
type = ChangeState
value = 215
triggerall = var(0) = 4
triggerall = movecontact = 1
trigger1 = stateno = 200

[State -1]
type = ChangeState
value = 210
triggerall = var(0) = 4
triggerall = power < 1000
triggerall = movecontact = 1
trigger1 = stateno = 215

[State -1]
type = ChangeState
value = 3000
triggerall = var(0) = 4
triggerall = power >= 1000
triggerall = movecontact = 1
trigger1 = stateno = 215

;AI Air Combo 1
[State -1]
type = ChangeState
value = 500
triggerall = var(0) = 1
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger1 = P2BodyDist X <= 50
trigger1 = random < 150

[State -1]
type = ChangeState
value = 530
triggerall = var(0) = 1
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [150,300]

[State -1]
type = ChangeState
value = 510
triggerall = var(0) = 1
triggerall = movecontact = 1 && var(11) != 1
trigger1 = stateno = 500 || stateno = 530
trigger1 = random < 500

[State -1]
type = ChangeState
value = 540
triggerall = var(0) = 1
triggerall = movecontact = 1 && var(11) != 1
trigger1 = stateno = 500 || stateno = 530
trigger1 = random >= 500

[State -1]
type = ChangeState
value = 520
triggerall = var(0) = 1
triggerall = movecontact = 1 && var(11) != 1
trigger1 = stateno = 510 || stateno = 540
trigger1 = random < 500

[State -1]
type = ChangeState
value = 550
triggerall = var(0) = 1
triggerall = movecontact = 1 && var(11) != 1
trigger1 = stateno = 510 || stateno = 540
trigger1 = random >= 500

;AI Air Combo 2
[State -1]
type = ChangeState
value = 510
triggerall = var(0) = 2
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger1 = P2BodyDist X <= 50
trigger1 = random < 150

[State -1]
type = ChangeState
value = 540
triggerall = var(0) = 2
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [150,300]

[State -1]
type = ChangeState
value = 1220
triggerall = var(0) = 2
triggerall = numprojID(1100) = 0
triggerall = movecontact = 1 && prevstateno != [500,550]
trigger1 = stateno = 510 || stateno = 540
trigger1 = random < 500

[State -1]
type = ChangeState
value = 1320
triggerall = var(0) = 2
triggerall = movecontact = 1 && prevstateno != [500,550]
trigger1 = stateno = 510 || stateno = 540
trigger1 = random >= 500

;AI Air Combo 3
[State -1]
type = ChangeState
value = 520
triggerall = var(0) = 3
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger1 = P2BodyDist X <= 50
trigger1 = random < 300

[State -1]
type = ChangeState
value = 550
triggerall = var(0) = 3
triggerall = movecontact = 1 && var(11) != 1
trigger1 = stateno = 520

;AI Air Combo 4
[State -1]
type = ChangeState
value = 500
triggerall = var(0) = 4
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger1 = P2BodyDist X <= 50
trigger1 = random < 300

[State -1]
type = ChangeState
value = 530
triggerall = var(0) = 4
triggerall = movecontact = 1 && var(11) != 1
trigger1 = stateno = 500

[State -1]
type = ChangeState
value = 520
triggerall = var(0) = 4
triggerall = power < 1000
triggerall = movecontact = 1 && var(11) != 1
trigger1 = stateno = 530

[State -1]
type = ChangeState
value = 3000
triggerall = var(0) = 4
triggerall = power >= 1000
triggerall = movecontact = 1
trigger1 = stateno = 530

;AI Throw
[State -1]
type = ChangeState
value = 900
triggerall = var(0) > 0
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = random < 150
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1]
type = ChangeState
value = 950
triggerall = var(0) > 0
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = random < 150

;AI Shining Blade
[State -1]
type = ChangeState
value = 1000
triggerall = var(0) > 0
triggerall = P2BodyDist X <= 50
triggerall = statetype != A
triggerall = p2movetype = A
triggerall = random < 5
trigger1 = ctrl = 1
trigger2 = stateno = [150,153]

[State -1]
type = ChangeState
value = 1010
triggerall = var(0) > 0
triggerall = P2BodyDist X <= 50
triggerall = statetype != A
triggerall = p2movetype = A
triggerall = random = [5,10]
trigger1 = ctrl = 1
trigger2 = stateno = [150,153]

[State -1]
type = ChangeState
value = 1020
triggerall = var(0) > 0
triggerall = P2BodyDist X <= 50
triggerall = statetype != A
triggerall = p2movetype = A
triggerall = random = [10,15]
trigger1 = ctrl = 1
trigger2 = stateno = [150,153]

[State -1]
type = ChangeState
value = 2000
triggerall = var(0) > 0
triggerall = power >= 1000
triggerall = P2BodyDist X <= 50
triggerall = statetype != A
triggerall = p2movetype = A
triggerall = random = [15,20]
trigger1 = ctrl = 1
trigger2 = stateno = [150,153]

;AI Soul Flash
[State -1]
type = ChangeState
value = 2100
triggerall = var(0) > 0
triggerall = power >= 1000
triggerall = numprojID(1100) = 0
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2BodyDist X > 150
trigger1 = ctrl = 1
trigger1 = random < 5

[State -1]
type = ChangeState
value = 2200
triggerall = var(0) > 0
triggerall = power >= 1000
triggerall = numprojID(1100) = 0
triggerall = StateType = A
triggerall = Movetype != H
triggerall = P2BodyDist X > 150
trigger1 = ctrl = 1
trigger1 = random < 5

;AI Mystic Arrow
[State -1]
type = ChangeState
value = 2400
triggerall = var(0) > 0
triggerall = power >= 1000
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Movetype != H
triggerall = P2BodyDist X <= 100
trigger1 = ctrl = 1
trigger1 = random < 5

;AI Toe Pierce
[State -1]
type = ChangeState
value = 1600
triggerall = var(0) > 0
triggerall = p2statetype = L && p2stateno != 5120
trigger1 = statetype != A && ctrl = 1
trigger1 = random < 40

[State -1]
type = ChangeState
value = 2600
triggerall = var(0) > 0
triggerall = power >= 1000
triggerall = p2statetype = L && p2stateno != 5120
trigger1 = statetype != A && ctrl = 1
trigger1 = random = [40,50]

;AI Splendor Love
[State -1]
type = ChangeState
value = 3200
triggerall = var(0) > 0
triggerall = power >= 1000
triggerall = P2BodyDist X <= 80
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2movetype = A
trigger1 = ctrl = 1
trigger1 = random < 50

;AI Brilliant Shower
[State -1]
type = ChangeState
value = 4000
triggerall = var(0) > 0
triggerall = PalNo >= 7
triggerall = power >= 2000
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2BodyDist X > 200
triggerall = (P2Movetype != A) && (enemy, NumProj = 0)
trigger1 = ctrl = 1
trigger1 = random < 10

;AI Radiant Arrow
[State -1]
type = ChangeState
value = 4200
triggerall = var(0) > 0
triggerall = power >= 3000
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2BodyDist X > 200
triggerall = (P2Movetype != A) && (enemy, NumProj = 0)
trigger1 = ctrl = 1
trigger1 = random < 5

;AI Dark Force
[State -1]
type = ChangeState
value = 4100
triggerall = var(0) > 0
triggerall = var(6) = 0
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger1 = random < 5

;AI Dash
[State -1]
type = ChangeState
triggerall = var(0) > 0
triggerall = StateType != A
triggerall = Movetype != H
triggerall = stateno != 100
triggerall = (P2Movetype != A) && (enemy, NumProj = 0)
trigger1 = ctrl = 1
trigger1 = random < 100
value = 100
ctrl = 1

;---------------------------------------------------------------------------
;Dark Force
[State -1]
type = ChangeState
value = 4100
triggerall = power >= 1000
triggerall = command = "darkforce"
triggerall = var(6) = 0
trigger1 = ctrl = 1
trigger2 = stateno = [200,550]

;Radiant Arrow
[State -1]
type = ChangeState
value = 4200
triggerall = power >= 3000
triggerall = command = "radiant"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = [200,370]

;Luminous Illusion
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "illusion"
trigger1 = ctrl = 1
trigger2 = stateno = [200,550]

;Brilliant Shower
[State -1]
type = ChangeState
value = 4000
triggerall = PalNo >= 7
triggerall = power >= 2000
triggerall = command = "shower"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = [200,370]

;Splendor Love
[State -1]
type = ChangeState
value = 3200
triggerall = power >= 1000
triggerall = command = "splendor"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]

;Gloomy Puppet Show
[State -1]
type = ChangeState
value = 3300
triggerall = PalNo < 7
triggerall = power >= 2000
triggerall = NumHelper(3300) = 0
triggerall = command = "showtime"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]

;---------------------------------------------------------------------------
;ES Toe Pierce
[State -1]
type = ChangeState
value = 2600
triggerall = power >= 1000
triggerall = command = "es_pursuit"
triggerall = p2statetype = L
trigger1 = statetype != A && ctrl = 1
trigger2 = StateNo = 40
trigger3 = StateNo = 41 && time < 2

;ES Shining Blade
[State -1]
type = ChangeState
value = 2000
triggerall = power >= 1000
triggerall = command = "es_blade"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]
trigger10 = stateno = [150,153]

;ES Soul Flash
[State -1]
type = ChangeState
value = 2100
triggerall = power >= 1000
triggerall = numprojID(1100) = 0
triggerall = command = "es_flash"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]

;Air ES Soul Flash
[State -1]
type = ChangeState
value = 2200
triggerall = power >= 1000
triggerall = numprojID(1100) = 0
triggerall = command = "es_flash"
trigger1 = statetype = A && ctrl = 1
trigger2 = stateno = 500 && movecontact = 1 && prevstateno != [500,550]
trigger3 = stateno = 510 && movecontact = 1 && prevstateno != [500,550]
trigger4 = stateno = 530 && movecontact = 1 && prevstateno != [500,550]
trigger5 = stateno = 540 && movecontact = 1 && prevstateno != [500,550]

;ES Merry Turn
[State -1]
type = ChangeState
value = 2300
triggerall = power >= 1000
triggerall = command = "es_turn"
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]
trigger10 = stateno = 500 && movecontact = 1 && prevstateno != [500,550]
trigger11 = stateno = 510 && movecontact = 1 && prevstateno != [500,550]
trigger12 = stateno = 530 && movecontact = 1 && prevstateno != [500,550]
trigger13 = stateno = 540 && movecontact = 1 && prevstateno != [500,550]

;ES Mystic Arrow
[State -1]
type = ChangeState
value = 2400
triggerall = power >= 1000
triggerall = command = "es_arrow"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]

;---------------------------------------------------------------------------
;Toe Pierce
[State -1]
type = ChangeState
value = 1600
triggerall = command = "pursuit"
triggerall = p2statetype = L
trigger1 = statetype != A && ctrl = 1
trigger2 = StateNo = 40
trigger3 = StateNo = 41 && time < 2

;Shining Blade (light)
[State -1]
type = ChangeState
value = 1000
triggerall = command = "blade_x"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]
trigger10 = stateno = [150,153]

;Shining Blade (middle)
[State -1]
type = ChangeState
value = 1010
triggerall = command = "blade_y"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]
trigger10 = stateno = [150,153]

;Shining Blade (heavy)
[State -1]
type = ChangeState
value = 1020
triggerall = command = "blade_z"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]
trigger10 = stateno = [150,153]

;Soul Flash (light)
[State -1]
type = ChangeState
value = 1100
triggerall = numprojID(1100) = 0
triggerall = command = "flash_x"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]

;Soul Flash (middle)
[State -1]
type = ChangeState
value = 1110
triggerall = numprojID(1100) = 0
triggerall = command = "flash_y"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]

;Soul Flash (heavy)
[State -1]
type = ChangeState
value = 1120
triggerall = numprojID(1100) = 0
triggerall = command = "flash_z"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]

;Air Soul Flash (light)
[State -1]
type = ChangeState
value = 1200
triggerall = numprojID(1100) = 0
triggerall = command = "flash_x"
trigger1 = statetype = A && ctrl = 1
trigger2 = stateno = 500 && movecontact = 1 && prevstateno != [500,550]
trigger3 = stateno = 510 && movecontact = 1 && prevstateno != [500,550]
trigger4 = stateno = 530 && movecontact = 1 && prevstateno != [500,550]
trigger5 = stateno = 540 && movecontact = 1 && prevstateno != [500,550]

;Air Soul Flash (middle)
[State -1]
type = ChangeState
value = 1210
triggerall = numprojID(1100) = 0
triggerall = command = "flash_y"
trigger1 = statetype = A && ctrl = 1
trigger2 = stateno = 500 && movecontact = 1 && prevstateno != [500,550]
trigger3 = stateno = 510 && movecontact = 1 && prevstateno != [500,550]
trigger4 = stateno = 530 && movecontact = 1 && prevstateno != [500,550]
trigger5 = stateno = 540 && movecontact = 1 && prevstateno != [500,550]

;Air Soul Flash (heavy)
[State -1]
type = ChangeState
value = 1220
triggerall = numprojID(1100) = 0
triggerall = command = "flash_z"
trigger1 = statetype = A && ctrl = 1
trigger2 = stateno = 500 && movecontact = 1 && prevstateno != [500,550]
trigger3 = stateno = 510 && movecontact = 1 && prevstateno != [500,550]
trigger4 = stateno = 530 && movecontact = 1 && prevstateno != [500,550]
trigger5 = stateno = 540 && movecontact = 1 && prevstateno != [500,550]

;Merry Turn (light)
[State -1]
type = ChangeState
value = 1300
triggerall = command = "turn_a"
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]
trigger10 = stateno = 500 && movecontact = 1 && prevstateno != [500,550]
trigger11 = stateno = 510 && movecontact = 1 && prevstateno != [500,550]
trigger12 = stateno = 530 && movecontact = 1 && prevstateno != [500,550]
trigger13 = stateno = 540 && movecontact = 1 && prevstateno != [500,550]

;Merry Turn (middle)
[State -1]
type = ChangeState
value = 1310
triggerall = command = "turn_b"
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]
trigger10 = stateno = 500 && movecontact = 1 && prevstateno != [500,550]
trigger11 = stateno = 510 && movecontact = 1 && prevstateno != [500,550]
trigger12 = stateno = 530 && movecontact = 1 && prevstateno != [500,550]
trigger13 = stateno = 540 && movecontact = 1 && prevstateno != [500,550]

;Merry Turn (heavy)
[State -1]
type = ChangeState
value = 1320
triggerall = command = "turn_c"
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]
trigger10 = stateno = 500 && movecontact = 1 && prevstateno != [500,550]
trigger11 = stateno = 510 && movecontact = 1 && prevstateno != [500,550]
trigger12 = stateno = 530 && movecontact = 1 && prevstateno != [500,550]
trigger13 = stateno = 540 && movecontact = 1 && prevstateno != [500,550]

;Mystic Arrow (light)
[State -1]
type = ChangeState
value = 1400
triggerall = command = "arrow_x"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]

;Mystic Arrow (middle)
[State -1]
type = ChangeState
value = 1410
triggerall = command = "arrow_y"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]

;Mystic Arrow (heavy)
[State -1]
type = ChangeState
value = 1420
triggerall = command = "arrow_z"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1 && prevstateno != [200,499]
trigger3 = stateno = 205 && movecontact = 1 && prevstateno != [200,499]
trigger4 = stateno = 215 && movecontact = 1 && prevstateno != [200,499]
trigger5 = stateno = 220 && movecontact = 1 && prevstateno != [200,499]
trigger6 = stateno = 300 && movecontact = 1 && prevstateno != [200,499]
trigger7 = stateno = 310 && movecontact = 1 && prevstateno != [200,499]
trigger8 = stateno = 350 && movecontact = 1 && prevstateno != [200,499]
trigger9 = stateno = 360 && movecontact = 1 && prevstateno != [200,499]

;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Throw
[State -1]
type = ChangeState
value = 900
triggerall = (command = "y") || (command = "z")
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;Air throw
[State -1]
type = ChangeState
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_y"
trigger2 = command = "back_y"
trigger3 = command = "fwd_z"
trigger4 = command = "back_z"

;---------------------------------------------------------------------------
;Stand_LP
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Stand_LK
[State -1]
type = ChangeState
value = 215
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 300
trigger3 = movecontact = 1

;Stand_MP
[State -1]
type = ChangeState
value = 205
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1
trigger4 = stateno = 300
trigger4 = movecontact = 1
trigger5 = stateno = 350
trigger5 = movecontact = 1

;Stand_MK
[State -1]
type = ChangeState
value = 220
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger4 = stateno = 215
trigger4 = movecontact = 1
trigger5 = stateno = 300
trigger5 = movecontact = 1
trigger6 = stateno = 310
trigger6 = movecontact = 1
trigger7 = stateno = 350
trigger7 = movecontact = 1

;Stand_HP
[State -1]
type = ChangeState
value = 210
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger4 = stateno = 215
trigger4 = movecontact = 1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 300
trigger6 = movecontact = 1
trigger7 = stateno = 310
trigger7 = movecontact = 1
trigger8 = stateno = 350
trigger8 = movecontact = 1
trigger9 = stateno = 360
trigger9 = movecontact = 1

;Stand_HK
[State -1]
type = ChangeState
value = 225
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 215
trigger5 = movecontact = 1
trigger6 = stateno = 220
trigger6 = movecontact = 1
trigger7 = stateno = 300
trigger7 = movecontact = 1
trigger8 = stateno = 310
trigger8 = movecontact = 1
trigger9 = stateno = 320
trigger9 = movecontact = 1
trigger10 = stateno = 350
trigger10 = movecontact = 1
trigger11 = stateno = 360
trigger11 = movecontact = 1

;Crouch_LP
[State -1]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Crouch_LK
[State -1]
type = ChangeState
value = 350
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 300
trigger3 = movecontact = 1

;Crouch_MP
[State -1]
type = ChangeState
value = 310
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1
trigger4 = stateno = 300
trigger4 = movecontact = 1
trigger5 = stateno = 350
trigger5 = movecontact = 1

;Crouch_MK
[State -1]
type = ChangeState
value = 360
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger4 = stateno = 215
trigger4 = movecontact = 1
trigger5 = stateno = 300
trigger5 = movecontact = 1
trigger6 = stateno = 310
trigger6 = movecontact = 1
trigger7 = stateno = 350
trigger7 = movecontact = 1

;Crouch_HP
[State -1]
type = ChangeState
value = 320
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger4 = stateno = 215
trigger4 = movecontact = 1
trigger5 = stateno = 220
trigger5 = movecontact = 1
trigger6 = stateno = 300
trigger6 = movecontact = 1
trigger7 = stateno = 310
trigger7 = movecontact = 1
trigger8 = stateno = 350
trigger8 = movecontact = 1
trigger9 = stateno = 360
trigger9 = movecontact = 1

;Crouch_HK
[State -1]
type = ChangeState
value = 370
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 215
trigger5 = movecontact = 1
trigger6 = stateno = 220
trigger6 = movecontact = 1
trigger7 = stateno = 300
trigger7 = movecontact = 1
trigger8 = stateno = 310
trigger8 = movecontact = 1
trigger9 = stateno = 320
trigger9 = movecontact = 1
trigger10 = stateno = 350
trigger10 = movecontact = 1
trigger11 = stateno = 360
trigger11 = movecontact = 1

;Jump_LP
[State -1]
type = ChangeState
value = 500
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jump_LK
[State -1]
type = ChangeState
value = 530
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 500
trigger2 = movecontact = 1 && var(11) != 1

;Jump_MP
[State -1]
type = ChangeState
value = 510
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 500
trigger2 = movecontact = 1 && var(11) != 1
trigger3 = stateno = 530
trigger3 = movecontact = 1 && var(11) != 1

;Jump_MK
[State -1]
type = ChangeState
value = 540
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 500
trigger2 = movecontact = 1 && var(11) != 1
trigger3 = stateno = 510
trigger3 = movecontact = 1 && var(11) != 1
trigger4 = stateno = 530
trigger4 = movecontact = 1 && var(11) != 1

;Jump_HP
[State -1]
type = ChangeState
value = 520
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 500
trigger2 = movecontact = 1 && var(11) != 1
trigger3 = stateno = 510
trigger3 = movecontact = 1 && var(11) != 1
trigger4 = stateno = 530
trigger4 = movecontact = 1 && var(11) != 1
trigger5 = stateno = 540
trigger5 = movecontact = 1 && var(11) != 1

;Jump_HK
[State -1]
type = ChangeState
value = 550
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 500
trigger2 = movecontact = 1 && var(11) != 1
trigger3 = stateno = 510
trigger3 = movecontact = 1 && var(11) != 1
trigger4 = stateno = 520
trigger4 = movecontact = 1 && var(11) != 1
trigger5 = stateno = 530
trigger5 = movecontact = 1 && var(11) != 1
trigger6 = stateno = 540
trigger6 = movecontact = 1 && var(11) != 1

;---------------------------------------------------------------------------
;Moving Get-up (forwards)
[State -1]
type = ChangeState
value = 6000
trigger1 = command = "holdfwd"
trigger1 = stateno = 5120
trigger1 = Time = 1

;Moving Get-up (backwards)
[State -1]
type = ChangeState
value = 6001
trigger1 = command = "holdback"
trigger1 = stateno = 5120
trigger1 = Time = 1

;---------------------------------------------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
