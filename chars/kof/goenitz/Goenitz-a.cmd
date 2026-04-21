;Goenitz's Command(Arcade Style)
================================
;-|Super Motions |--------------------------------------------------------

[Command]
name = "wind_destruct"
command = ~F, DF, D, DB, F, DF, D, DB, B, x
time = 50

[Command]
name = "wind_destruct"
command = ~F, DF, D, DB, F, DF, D, DB, B, z
time = 50

;--------

[Command]
name = "riotblood_1"
command = ~D, DB, B, DB, D, DF, F, x
time = 35

[Command]
name = "riotblood_2"
command = ~D, DB, B, DB, D, DF, F, z
time = 35

;-| Special Motions |------------------------------------------------------

[Command]
name = "twister_1"
command = ~B, DB, D, DF, F, x
time = 18

[Command]
name = "twister_2"
command = ~B, DB, D, DF, F, y
time = 18

[Command]
name = "twister_3"
command = ~B, DB, D, DF, F, z
time = 18

[Command]
name = "twister_4"
command = ~B, DB, D, DF, F, a
time = 18

;--------

[Command]
name = "a.slash_1"
command = ~D, DB, B, x
time = 15

[Command]
name = "a.slash_2"
command = ~D, DB, B, z
time = 15

;--------

[Command]
name = "teleport_1"
command = ~D, DB, B, y
time = 15

[Command]
name = "teleport_2"
command = ~D, DB, B, a
time = 15

;--------

[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "dizzyrecover"
command = F,B
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "FBF"
command = F, B, F
time = 10

[Command]
name = "BFB"
command = B, F, B
time = 10

;-| 2 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = U,D,B,F,U,D,B,F;using this method to disable air-recovery
time = 1

[Command]
name = "dodge"
command = x+y
time = 1

[Command]
name = "knock_down"
command = a+z
time = 1

[Command]
name = "striker"
command = y+z
time = 1

[Command]
name = "counter"
command = x+y+z
time = 1

[Command]
name = "armor"
command = y+z+a
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

;-| Hold Dir |--------------------------------------------------------------
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

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "throw_1"
command = /F,z
time = 1

[Command]
name = "throw_1"
command = /B,z
time = 1

[Command]
name = "throw_2"
command = /F,a
time = 1

[Command]
name = "throw_2"
command = /B,a
time = 1

;-| Single Button |---------------------------------------------------------
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
name = "a"
command = a
time = 1

[Command]
name = "s"
command = s
time = 1

;=========
; Commands
:=========
[Statedef -1]

;==============
; Super Attacks
;==============
; Yamidoukoku (Wind of destruction)(max)
[State -1]
type = ChangeState
value = 4000
triggerall = var(9) = 0
triggerall = command = "wind_destruct"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = life <= 200
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_a";Kof style
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 420
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 202

;---------------------------------------------------------------------------
; Yamidoukoku (Wind of destruction)
[State -1]
type = ChangeState
value = 3000
triggerall = var(9) = 0
triggerall = command = "wind_destruct"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = life > 200
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_a";Kof style
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 420
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 202
[State -1];for counter mode
type = ChangeState
value = 3000
triggerall = var(9) = 0
triggerall = command = "wind_destruct"
triggerall = statetype != A
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_a";Kof style
triggerall = var(10) != 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 420
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 202
trigger9 = movecontact
trigger9 = stateno = 235
trigger10 = animelem = 7 , >1
trigger10 = stateno = [800,803]
trigger11 = movecontact
trigger11 = stateno = 900
trigger12 = movecontact
trigger12 = stateno = 950

;---------------------------------------------------------------------------
; Shinyaotome Mizumi (Slash of riot blood) (max) - Low
[State -1]
type = ChangeState
value = 4100
triggerall = var(9) = 0
triggerall = command = "riotblood_1"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = life <= 200
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_z";Kof style
triggerall = command != "hold_a";Kof style
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 420
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 202

;---------------------------------------------------------------------------
; Shinyaotome Mizumi (Slash of riot blood) (max) - High
[State -1]
type = ChangeState
value = 4150
triggerall = var(9) = 0
triggerall = command = "riotblood_2"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = life <= 200
triggerall = command != "hold_x";Kof style
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_a";Kof style
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 420
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 202

;---------------------------------------------------------------------------
; Shinyaotome Mizumi (Slash of riot blood) - Low
[State -1]
type = ChangeState
value = 3100
triggerall = var(9) = 0
triggerall = command = "riotblood_1"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = life > 200
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_z";Kof style
triggerall = command != "hold_a";Kof style
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 420
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 202
[State -1];for counter mode
type = ChangeState
value = 3100
triggerall = var(9) = 0
triggerall = command = "riotblood_1"
triggerall = statetype != A
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_z";Kof style
triggerall = command != "hold_a";Kof style
triggerall = var(10) != 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 420
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 202
trigger9 = movecontact
trigger9 = stateno = 235
trigger10 = animelem = 7 , >1
trigger10 = stateno = [800,803]
trigger11 = movecontact
trigger11 = stateno = 900
trigger12 = movecontact
trigger12 = stateno = 950

;---------------------------------------------------------------------------
; Shinyaotome Mizumi (Slash of riot blood) - High
[State -1]
type = ChangeState
value = 3150
triggerall = var(9) = 0
triggerall = command = "riotblood_2"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = life > 200
triggerall = command != "hold_x";Kof style
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_a";Kof style
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 420
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 202
[State -1];for counter mode
type = ChangeState
value = 3150
triggerall = var(9) = 0
triggerall = command = "riotblood_2"
triggerall = statetype != A
triggerall = command != "hold_x";Kof style
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_a";Kof style
triggerall = var(10) != 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 420
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 202
trigger9 = movecontact
trigger9 = stateno = 235
trigger10 = animelem = 7 , >1
trigger10 = stateno = [800,803]
trigger11 = movecontact
trigger11 = stateno = 900
trigger12 = movecontact
trigger12 = stateno = 950

;================
; Speical Attacks
;================
; Yonokaze (Twister) - Type A
[State -1]
type = ChangeState
value = 800
triggerall = var(9) = 0
triggerall = command = "twister_1"
triggerall = NumProjID(800) = 0
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_z";Kof style
triggerall = command != "hold_a";Kof style
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 420
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 202
trigger9 = var(10) != 0
trigger9 = movecontact
trigger9 = stateno = 235

;---------------------------------------------------------------------------
; Yonokaze (Twister) - Type B
[State -1]
type = ChangeState
value = 801
triggerall = var(9) = 0
triggerall = command = "twister_2"
triggerall = NumProjID(800) = 0
triggerall = command != "hold_x";Kof style
triggerall = command != "hold_z";Kof style
triggerall = command != "hold_a";Kof style
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 420
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 202
trigger9 = var(10) != 0
trigger9 = movecontact
trigger9 = stateno = 235

;---------------------------------------------------------------------------
; Yonokaze (Twister) - Type C
[State -1]
type = ChangeState
value = 802
triggerall = var(9) = 0
triggerall = command = "twister_3"
triggerall = NumProjID(800) = 0
triggerall = command != "hold_x";Kof style
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_a";Kof style
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 420
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 202
trigger9 = var(10) != 0
trigger9 = movecontact
trigger9 = stateno = 235

;---------------------------------------------------------------------------
; Yonokaze (Twister) - Type D
[State -1]
type = ChangeState
value = 803
triggerall = var(9) = 0
triggerall = command = "twister_4"
triggerall = NumProjID(800) = 0
triggerall = command != "hold_x";Kof style
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_z";Kof style
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 420
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 202
trigger9 = var(10) != 0
trigger9 = movecontact
trigger9 = stateno = 235

;---------------------------------------------------------------------------
; Wanpyuu Tokobuse (Low Vacuum Air Slash)
[State -1]
type = ChangeState
value = 900
triggerall = var(9) = 0
triggerall = command = "a.slash_1"
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_z";Kof style
triggerall = command != "hold_a";Kof style
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 420
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 202
trigger9 = var(10) != 0
trigger9 = movecontact
trigger9 = stateno = 235

;---------------------------------------------------------------------------
; Wanpyuu Mametsu (Upper Vacuum Air Slash)
[State -1]
type = ChangeState
value = 950
triggerall = var(9) = 0
triggerall = command = "a.slash_2"
triggerall = command != "hold_x";Kof style
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_a";Kof style
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 420
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 202
trigger9 = var(10) != 0
trigger9 = movecontact
trigger9 = stateno = 235

;---------------------------------------------------------------------------
; Hyuuga (Teleport) - Low
[State -1]
type = ChangeState
value = 1000
triggerall = var(9) = 0
triggerall = command = "teleport_1"
triggerall = command != "hold_x";Kof style
triggerall = command != "hold_z";Kof style
triggerall = command != "hold_a";Kof style
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 420
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 202
trigger9 = var(10) != 0
trigger9 = movecontact
trigger9 = stateno = 235

;---------------------------------------------------------------------------
; Hyuuga (Teleport) - High
[State -1]
type = ChangeState
value = 1050
triggerall = var(9) = 0
triggerall = command = "teleport_2"
triggerall = command != "hold_x";Kof style
triggerall = command != "hold_y";Kof style
triggerall = command != "hold_z";Kof style
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 220
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 420
trigger7 = movecontact
trigger7 = stateno = 240
trigger8 = movecontact
trigger8 = stateno = 202
trigger9 = var(10) != 0
trigger9 = movecontact
trigger9 = stateno = 235

;---------------------------------------------------------------------------
; Four Winds(Self-Striker)
[State -1]
type = ChangeState
value = 1100
triggerall = var(9) = 0
triggerall = command = "striker"
triggerall = NumHelper(9400) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 9400
trigger2 = time >= 1

;===============
; Basic Controls
;===============
; Counter Mode
[State -1]
type = ChangeState
value = 9200
triggerall = var(9) = 0
triggerall = command = "counter"
triggerall = var(10) = 0;make sure not in counter mode now
triggerall = var(11) = 0;make sure not in armor mode now
triggerall = statetype = S
triggerall = power = 3000
trigger1 = ctrl

;---------------------------------------------------------------------------
; Armor Mode
[State -1]
type = ChangeState
value = 9300
triggerall = var(9) = 0
triggerall = command = "armor"
triggerall = var(10) = 0;make sure not in counter mode now
triggerall = var(11) = 0;make sure not in armor mode now
triggerall = statetype = S
triggerall = power = 3000
trigger1 = ctrl

;---------------------------------------------------------------------------
; Guard reversal
[State -1]
type = ChangeState
value = 245
triggerall = command = "knock_down"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 152

;---------------------------------------------------------------------------
; Slide Attacks
[State -1]
type = ChangeState
value = 235
triggerall = var(9) = 0
triggerall = time >= 12
triggerall = time <= 25
trigger1 = command = "x"
trigger1 = stateno = 250
trigger2 = command = "x"
trigger2 = stateno = 255
trigger3 = command = "y"
trigger3 = stateno = 250
trigger4 = command = "y"
trigger4 = stateno = 255
trigger5 = command = "z"
trigger5 = stateno = 250
trigger6 = command = "z"
trigger6 = stateno = 255
trigger7 = command = "a"
trigger7 = stateno = 250
trigger8 = command = "a"
trigger8 = stateno = 255

;---------------------------------------------------------------------------
; Guard cancel back
[State -1]
type = ChangeState
value = 265
triggerall = command = "dodge"
triggerall = command = "holdback"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 152

;---------------------------------------------------------------------------
; Dodge back
[State -1]
type = ChangeState
value = 260
triggerall = var(9) = 0
triggerall = command = "dodge"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Guard cancel fwd
[State -1]
type = ChangeState
value = 255
triggerall = command = "dodge"
triggerall = command = "holdfwd"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 152

;---------------------------------------------------------------------------
; Slide fwd 
[State -1]
type = ChangeState
value = 250
triggerall = var(9) = 0
triggerall = command = "dodge"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run fwd
[State -1]
type = ChangeState
value = 100
triggerall = var(9) = 0
triggerall = command = "FF"
triggerall = command != "FBF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Step back
[State -1]
type = ChangeState
value = 105
triggerall = var(9) = 0
triggerall = command = "BB"
triggerall = command != "BFB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Taunt
[State -1]
type = ChangeState
value = 195
triggerall = var(9) = 0
triggerall = command = "s"
triggerall = stateno != 195
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;=============
; Basic Throws
;=============
; ???(Throw 1)
[State -1]
type = ChangeState
value = 2000
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100;Not running
triggerall = p2stateno != 5120
triggerall = p2bodydist X < 6
trigger1 = command = "throw_1" ;Near, p2 stand
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "throw_1" ;Near, p2 crouch
trigger2 = p2statetype = C
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; ???(Throw 2)
[State -1]
type = ChangeState
value = 2100
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100;Not running
triggerall = p2stateno != 5120
triggerall = p2bodydist X < 6
trigger1 = command = "throw_2" ;Near, p2 stand
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "throw_2" ;Near, p2 crouch
trigger2 = p2statetype = C
trigger2 = p2movetype != H

;==============
; Basic Attacks
;==============
; Standing Knock Down
[State -1]
type = ChangeState
value = 240
triggerall = var(9) = 0
triggerall = command = "knock_down"
triggerall = command != "holddown"
triggerall = command != "striker"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jumping Knock Down
[State -1]
type = ChangeState
value = 640
triggerall = var(9) = 0
triggerall = command = "knock_down"
triggerall = command != "striker"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Forward Light Slash(linked)
[State -1]
type = ChangeState
value = 202
triggerall = var(9) = 0
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "striker"
triggerall = movecontact
trigger1 = stateno = 220
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 400
trigger5 = stateno = 420

;---------------------------------------------------------------------------
; Standing Forward Light Slash
[State -1]
type = ChangeState
value = 201
triggerall = var(9) = 0
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "striker"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = var(9) = 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "striker"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelem = 5, >2
trigger3 = stateno = 210
trigger3 = animelem = 4, >=0

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = var(9) = 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = command != "striker"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 400
trigger2 = animelem = 3, >4
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = animelem = 3, >2
trigger4 = movecontact
trigger4 = stateno = 200
trigger4 = animelem = 5, >2

;---------------------------------------------------------------------------
; Jumping Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = var(9) = 0
triggerall = command = "x"
triggerall = command != "striker"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Near Light Kick
[State -1]
type = ChangeState
value = 210
triggerall = var(9) = 0
triggerall = command = "y"
triggerall = P2bodydist X < 20
triggerall = command != "holddown"
triggerall = command != "striker"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = animelem = 3, >2
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = movecontact
trigger4 = stateno = 410

;---------------------------------------------------------------------------
; Standing Far Light Kick
[State -1]
type = ChangeState
value = 211
triggerall = var(9) = 0
triggerall = command = "y"
triggerall = P2bodydist X >= 20
triggerall = command != "holddown"
triggerall = command != "striker"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = animelem = 3, >2
trigger2 = movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1]
type = ChangeState
value = 410
triggerall = var(9) = 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = command != "striker"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 400
trigger2 = animelem = 3, >4
trigger3 = movecontact
trigger3 = stateno = 210
trigger3 = animelem = 3, >2
trigger4 = movecontact
trigger4 = stateno = 200
trigger4 = animelem = 5, >2

;---------------------------------------------------------------------------
; Jumping Light kick
[State -1]
type = ChangeState
value = 610
triggerall = var(9) = 0
triggerall = command = "y"
triggerall = command != "striker"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Near Strong Punch
[State -1]
type = ChangeState
value = 220
triggerall = var(9) = 0
triggerall = command = "z"
triggerall = P2bodydist X < 25
triggerall = command != "holddown"
triggerall = command != "striker"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Far Heavy Slash
[State -1]
type = ChangeState
value = 221
triggerall = var(9) = 0
triggerall = command = "z"
triggerall = P2bodydist X >= 25
triggerall = command != "holddown"
triggerall = command != "striker"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1]
type = ChangeState
value = 420
triggerall = var(9) = 0
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = command != "striker"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jumping Strong Slash
[State -1]
type = ChangeState
value = 620
triggerall = var(9) = 0
triggerall = command = "z"
triggerall = command != "striker"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1]
type = ChangeState
value = 230
triggerall = var(9) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "striker"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1]
type = ChangeState
value = 430
triggerall = var(9) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command != "striker"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jumping Stright Strong kick
[State -1]
type = ChangeState
value = 630
triggerall = var(9) = 0
triggerall = command = "a"
triggerall = command != "striker"
trigger1 = statetype = A
trigger1 = ctrl

;================
; AI Modification
;================
; Shinyaotome Mizumi (Slash of riot blood) - Low
[State -1]
type = ChangeState
value = 3100
triggerall = var(9) = 1;only AI can access
triggerall = random <= 950;Extreme high percent
triggerall = p2statetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = power >= 1000
triggerall = life > 200
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = movehit
trigger1 = stateno = 202
[State -1];for counter mode
type = ChangeState
value = 3100
triggerall = var(9) = 1;only AI can access
triggerall = random <= 950;Extreme high percent
triggerall = p2statetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = var(10) != 0
trigger1 = movehit
trigger1 = stateno = 900

;---------------------------------------------------------------------------
; Shinyaotome Mizumi (Slash of riot blood) (max) - High
[State -1]
type = ChangeState
value = 4150
triggerall = var(9) = 1;only AI can access
triggerall = random <= 950;Extreme high percent
triggerall = p2statetype = A
triggerall = p2movetype != H
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = power >= 1000
triggerall = life <= 200
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Shinyaotome Mizumi (Slash of riot blood) - High
[State -1]
type = ChangeState
value = 3150
triggerall = var(9) = 1;only AI can access
triggerall = random <= 950;Extreme high percent
triggerall = p2statetype = A
triggerall = p2movetype != H
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = power >= 1000
triggerall = life > 200
triggerall = var(10) = 0
triggerall = var(11) = 0
trigger1 = statetype != A
trigger1 = ctrl
[State -1];for counter mode
type = ChangeState
value = 3150
triggerall = var(9) = 1;only AI can access
triggerall = random <= 950;Extreme high percent
triggerall = p2statetype = A
triggerall = p2movetype != H
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = var(10) != 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = animelem = 7 , >1
trigger2 = stateno = [800,803]

;---------------------------------------------------------------------------
; Do Yamidoukoku (Wind of destruction)(max)
[State -1]
type = ChangeState
value = 4000
triggerall = var(9) = 1;only AI can access
triggerall = random <= 950;Extreme high percent
triggerall = p2statetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2bodydist X < 40
triggerall = power >= 1000
triggerall = life <= 200
triggerall = var(10) = 0
triggerall = var(11) = 0
triggerall = statetype = S
trigger1 = ctrl
trigger1 = p2movetype != H
trigger2 = movehit
trigger2 = stateno = 202
trigger3 = stateno = 261
trigger3 = time >= 2
trigger4 = stateno = 263

;---------------------------------------------------------------------------
; Do Yamidoukoku (Wind of destruction)
[State -1]
type = ChangeState
value = 3000
triggerall = var(9) = 1;only AI can access
triggerall = random <= 950;Extreme high percent
triggerall = p2statetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2bodydist X < 40
triggerall = power >= 1000
triggerall = life > 200
triggerall = var(10) = 0
triggerall = var(11) = 0
triggerall = statetype = S
trigger1 = ctrl
trigger1 = p2movetype != H
trigger2 = movehit
trigger2 = stateno = 202
trigger3 = stateno = 261
trigger3 = time >= 2
trigger4 = stateno = 263
[State -1];for counter mode
type = ChangeState
value = 3000
triggerall = var(9) = 1;only AI can access
triggerall = random <= 950;Extreme high percent
triggerall = p2statetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2bodydist X < 40
triggerall = var(10) != 0
triggerall = statetype = S
trigger1 = ctrl
trigger1 = p2movetype != H
trigger2 = movehit
trigger2 = stateno = 202
trigger3 = stateno = 261
trigger3 = time >= 2
trigger4 = stateno = 263

;---------------------------------------------------------------------------
; Slide fwd when opponent attack
[State -1]
type = ChangeState
value = 250
triggerall = var(9) = 1;only AI can access
triggerall = random <= 950;Extreme high percent
triggerall = p2statetype != A
triggerall = p2movetype = A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2bodydist X < 100
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run fwd when opponent idle
[State -1]
type = ChangeState
value = 100
triggerall = var(9) = 1;only AI can access
triggerall = random <= 950;Extreme high percent
triggerall = p2statetype != A
triggerall = p2movetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2bodydist X < 150
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Disable jump for AI
[State -1]
type = ChangeState
value = 40
triggerall = var(9) = 0
triggerall = command = "holdup"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; High percent crouch guard
[State -1]
type = ChangeState
value = 152
triggerall = p2statetype != A
triggerall = P2bodydist X <= 40;access only when near
triggerall = statetype = C;perform when not in air
triggerall = random <= 950;Extreme high percent
triggerall = var(9) = 1;only AI can access
triggerall = ctrl;make sure AI had control
trigger1 = p2statetype = L
trigger2 = p2stateno = 5120
trigger3 = ((p2stateno = [820,823]) && (p2movetype = H))
trigger4 = p2movetype = A

;---------------------------------------------------------------------------
; High percent stand guard
[State -1]
type = ChangeState
value = 130
triggerall = p2statetype != C
triggerall = P2bodydist X <= 40;access only when near
triggerall = random <= 950;Extreme high percent
triggerall = statetype = S;perform when not in air
triggerall = var(9) = 1;only AI can access
triggerall = ctrl;make sure AI had control
trigger1 = p2statetype = L
trigger2 = p2stateno = 5120
trigger3 = ((p2stateno = [820,823]) && (p2movetype = H))
trigger4 = p2movetype = A

;---------------------------------------------------------------------------
; High percent air guard
[State -1]
type = ChangeState
value = 132
triggerall = p2movetype = A;access only when opponent attack
triggerall = P2bodydist X <= 40;access only when near
triggerall = statetype = A;perform when in air
triggerall = random <= 950;Extreme high percent
triggerall = var(9) = 1;only AI can access
trigger1 = ctrl;make sure AI had control

;---------------------------------------------------------------------------
; Slide back when opponent jump when near
[State -1]
type = ChangeState
value = 260
triggerall = var(9) = 1;only AI can access
triggerall = P2bodydist X <= 100;access only when near
triggerall = p2bodydist x > -1
triggerall = random <= 950;Extreme high percent
triggerall = statetype = S
triggerall = ctrl
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
; Do Standing Near Strong Punch
[State -1]
type = ChangeState
value = 220
triggerall = var(9) = 1;only AI can access
triggerall = random <= 950;Extreme high percent
triggerall = p2statetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = P2bodydist X < 25
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Do Standing Forward Light Slash(linked)
[State -1]
type = ChangeState
value = 202
triggerall = var(9) = 1;only AI can access
triggerall = random <= 950;Extreme high percent
triggerall = p2statetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = movecontact
trigger1 = stateno = 220

;---------------------------------------------------------------------------
; Do Wanpyuu Tokobuse (Low Vacuum Air Slash)
[State -1]
type = ChangeState
value = 900
triggerall = var(9) = 1;only AI can access
triggerall = random <= 950;Extreme high percent
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = p2bodydist x = [40,80] 
trigger1 = ctrl
trigger2 = stateno = 261
trigger2 = time >= 2
trigger3 = stateno = 263
trigger4 = stateno = 202
trigger4 = movehit
trigger4 = var(10) != 0

;---------------------------------------------------------------------------
; Do Wanpyuu Mametsu (Upper Vacuum Air Slash)
[State -1]
type = ChangeState
value = 950
triggerall = var(9) = 1;only AI can access
triggerall = P2bodydist X <= 80;access only when near
triggerall = random <= 950;Extreme high percent
triggerall = statetype = S
triggerall = p2statetype = A
trigger1 = ctrl
trigger2 = stateno = 261
trigger2 = time >= 2
trigger3 = stateno = 263

;---------------------------------------------------------------------------
; Hyuuga (Teleport) - Low
[State -1]
type = ChangeState
value = 1000
triggerall = var(9) = 1;only AI can access
triggerall = ((P2bodydist X <= 70) || (p2movetype = A))
triggerall = p2bodydist x > -1
triggerall = random <= 950;Extreme high percent
triggerall = statetype = S
triggerall = p2statetype = A
trigger1 = ctrl
trigger2 = stateno = 261
trigger2 = time >= 2
trigger3 = stateno = 263

;---------------------------------------------------------------------------
; Hyuuga (Teleport) - High
[State -1]
type = ChangeState
value = 1050
triggerall = var(9) = 1;only AI can access
triggerall = ((P2bodydist X <= 70) || (p2movetype = A))
triggerall = random <= 950;Extreme high percent
triggerall = p2bodydist x > -1
triggerall = statetype = S
triggerall = p2statetype != A
trigger1 = ctrl
trigger2 = stateno = 261
trigger2 = time >= 2
trigger3 = stateno = 263

;---------------------------------------------------------------------------
; Do Yonokaze (Twister) - Type A
[State -1]
type = ChangeState
value = 800
triggerall = var(9) = 1;only AI can access
triggerall = random <= 950;Extreme high percent
triggerall = NumProjID(800) = 0
triggerall = statetype != A
triggerall = p2statetype = A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup state
triggerall = p2stateno != [820,823]
triggerall = p2bodydist x = [0,75] 
trigger1 = ctrl
trigger2 = stateno = 261
trigger2 = time >= 2
trigger3 = stateno = 263

;---------------------------------------------------------------------------
; Do Yonokaze (Twister) - Type B
[State -1]
type = ChangeState
value = 801
triggerall = var(9) = 1;only AI can access
triggerall = random <= 950;Extreme high percent
triggerall = NumProjID(800) = 0
triggerall = statetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup stat
triggerall = p2stateno != [820,823]
trigger1 = p2bodydist x = [76,130] 
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 202
trigger3 = p2bodydist x = [76,130] 
trigger3 = stateno = 261
trigger3 = time >= 2
trigger4 = p2bodydist x = [76,130] 
trigger4 = stateno = 263

;---------------------------------------------------------------------------
; Do Yonokaze (Twister) - Type C
[State -1]
type = ChangeState
value = 802
triggerall = var(9) = 1;only AI can access
triggerall = random <= 950;Extreme high percent
triggerall = NumProjID(800) = 0
triggerall = statetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup stat
triggerall = p2stateno != [820,823]
triggerall = p2bodydist x = [131,185] 
trigger1 = ctrl
trigger2 = stateno = 261
trigger2 = time >= 2
trigger3 = stateno = 263

;---------------------------------------------------------------------------
; Do Yonokaze (Twister) - Type D
[State -1]
type = ChangeState
value = 803
triggerall = var(9) = 1;only AI can access
triggerall = random <= 950;Extreme high percent
triggerall = NumProjID(800) = 0
triggerall = statetype != A
triggerall = p2statetype != L;player not lying down
triggerall = p2stateno != 5120;player is not in getup stat
triggerall = p2stateno != [820,823]
triggerall = p2bodydist x = [186,225] 
trigger1 = ctrl
trigger2 = stateno = 261
trigger2 = time >= 2
trigger3 = stateno = 263

;---------------------------------------------------------------------------
; Do Guard reversal at low health
[State -1]
type = ChangeState
value = 245
triggerall = var(9) = 1;Only AI can access
triggerall = random <= 700;high percent
triggerall = power >= 1000
triggerall = life <= 100
trigger1 = stateno = 150
trigger2 = stateno = 152

;---------------------------------------------------------------------------
; Do Recover near ground
[State -1]
type = ChangeState
value = 5200
triggerall = var(9) = 1;Only AI can access
triggerall = random <= 700;high percent
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = alive
trigger1 = CanRecover
trigger1 = stateno = 5050

;---------------------------------------------------------------------------
; Fast recovery when dizzy
[State -1]
type = ChangeState
value = 0
triggerall = var(9) = 1;Only AI can access
triggerall = random <= 100;very low percent
triggerall = stateno = 5304
trigger1 = time >= 100
ctrl = 1

;---------------------------------------------------------------------------
; Access Counter Mode
[State -1]
type = ChangeState
value = 9200
triggerall = var(9) = 1;Only AI can access
triggerall = random < 20;Ultra low percent
triggerall = var(10) = 0;make sure not in counter mode now
triggerall = var(11) = 0;make sure not in armor mode now
triggerall = statetype = S
triggerall = power = 3000
trigger1 = ctrl

;---------------------------------------------------------------------------
; Access Armor Mode
[State -1]
type = ChangeState
value = 9300
triggerall = var(9) = 1;Only AI can access
triggerall = random < 10;Ultra low percent
triggerall = var(10) = 0;make sure not in counter mode now
triggerall = var(11) = 0;make sure not in armor mode now
triggerall = statetype = S
triggerall = power = 3000
trigger1 = ctrl

