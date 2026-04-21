;--------------------------------------------------------------------------
; ROLENTO's AIR file by Tenshin (fairpear@hotmail.com)
;   downloaded from OpenMugen @ "http://kickme.to/openmugen"
;--------------------------------------------------------------------------

;-| Super Motions |--------------------------------------------------------
; Take No Prisoners
[Command]
name = "TNPx"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TNPy"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "TNPz"
command = ~D, DF, F, D, DF, F, z
time = 20

; Steel Rain
[Command]
name = "SteelRain_a"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "SteelRain_b"
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "SteelRain_c"
command = ~D, DF, F, D, DF, F, c
time = 20

; Mine Sweeper
[Command]
name = "mine_x"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]
name = "mine_y"
command = ~D, DB, B, D, DB, B, y
time = 20

[Command]
name = "mine_z"
command = ~D, DB, B, D, DB, B, z
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "STINGER_a"
command = ~F, D, DF, a

[Command]
name = "STINGER_b"
command = ~F, D, DF, b

[Command]
name = "STINGER_c"
command = ~F, D, DF, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 10

[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 10

[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 10

[Command]
name = "QCB_x"
command = ~D, DB, B, x
time = 10

[Command]
name = "QCB_y"
command = ~D, DB, B, y
time = 10

[Command]
name = "QCB_z"
command = ~D, DB, B, z
time = 10

[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 10

[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 10

[Command]
name = "QCB_c"
command = ~D, DB, B, c
time = 10

; Super Jump
[Command]
name = "sjump"
command = D, $U
time = 12

[Command]
name = "PunchCounter"
command = ~B, DB, D, x
time = 10
[Command]
name = "PunchCounter"
command = ~B, DB, D, y
time = 10
[Command]
name = "PunchCounter"
command = ~B, DB, D, z
time = 10

[Command]
name = "KickCounter"
command = ~B, DB, D, a
time = 10
[Command]
name = "KickCounter"
command = ~B, DB, D, b
time = 10
[Command]
name = "KickCounter"
command = ~B, DB, D, c
time = 10

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"       ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"       ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "Shaking"
command = B, F
time = 10
[Command]
name = "Shaking"
command = F, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = a+b
time = 1
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "bc"
command = b+c
time = 1

[Command]
name = "ac"
command = a+c
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "yz"
command = y+z
time = 1

[Command]
name = "xz"
command = x+z
time = 1

[Command]
name = "xyz"
command = x+y+z
time = 1

[Command]
name = "abc"
command = a+b+c
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
name = "back_c"
command = /B,c
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

;===========================================================================
; 2. State entry
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;===========================================================================
; Steel Rain A
[State -1, Steel Rain A]
type = null;ChangeState
value = 3000
triggerall = !var(10)
triggerall = command = "SteelRain_a"
triggerall = numhelper(3100) < 1
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 210  || stateno = 235 || stateno = 250
trigger2 = movecontact || var(15)
trigger3 = stateno = 400 || stateno = 410 || stateno = 430
trigger3 = movecontact || var(15)

;===========================================================================
; Mine Sweeper X
[State -1, Mine Sweeper X]
type = ChangeState
value = 3600
triggerall = !var(10)
triggerall = command = "mine_x"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 210  || stateno = 235 || stateno = 250
trigger2 = movecontact || var(15)
trigger3 = stateno = 400 || stateno = 410 || stateno = 430
trigger3 = movecontact || var(15)

; Mine Sweeper Y
[State -1, Mine Sweeper Y]
type = ChangeState
value = 3700
triggerall = !var(10)
triggerall = command = "mine_y"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 210  || stateno = 235 || stateno = 250
trigger2 = movecontact || var(15)
trigger3 = stateno = 400 || stateno = 410 || stateno = 430
trigger3 = movecontact || var(15)

; Mine Sweeper Z
[State -1, Mine Sweeper Y]
type = ChangeState
value = 3800
triggerall = !var(10)
triggerall = command = "mine_z"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 210  || stateno = 235 || stateno = 250
trigger2 = movecontact || var(15)
trigger3 = stateno = 400 || stateno = 410 || stateno = 430
trigger3 = movecontact || var(15)

;===========================================================================
;Take No Prisoners X
[State -1, TNP_x]
type = ChangeState
value = 4000
triggerall = !var(10)
triggerall = command = "TNPx"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 210  || stateno = 235 || stateno = 250
trigger2 = movecontact || var(15)
trigger3 = stateno = 400 || stateno = 410 || stateno = 430
trigger3 = movecontact || var(15)

;Take No Prisoners Y
[State -1, TNP_y]
type = ChangeState
value = 4030
triggerall = !var(10)
triggerall = command = "TNPy"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 210  || stateno = 235 || stateno = 250
trigger2 = movecontact || var(15)
trigger3 = stateno = 400 || stateno = 410 || stateno = 430
trigger3 = movecontact || var(15)

;Take No Prisoners Z
[State -1, TNP_z]
type = ChangeState
value = 4060
triggerall = !var(10)
triggerall = command = "TNPz"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 210  || stateno = 235 || stateno = 250
trigger2 = movecontact || var(15)
trigger3 = stateno = 400 || stateno = 410 || stateno = 430
trigger3 = movecontact || var(15)
;===========================================================================
; Custom V-ism Combo Activation
[State -1, CC Activation]
type = ChangeState
value = ifelse(statetype!=A,1800,1850)
triggerall = (command = "x" || command = "y" || command = "z") && (command = "a" || command = "b" || command = "c")
trigger1 = power >=1000 && !var(10) && !winKO
trigger1 = ctrl

;===========================================================================
; Ground Recovery
[State -1, Ground Recover]
type = ChangeState
value = 1500
triggerall = alive && canrecover && pos y > -40
trigger1 = command = "ab" || command = "bc" || command = "ac"
trigger1 = stateno = 5040 || stateno = 5050

;===========================================================================
; Carnal Carry Throw
[State -1, Carnal Carry]
type = ChangeState
value = 900
triggerall = (command="holdfwd" || command="holdback") && (command="xy" || command="yz" || command="xz")
triggerall = statetype = S
trigger1 = ctrl = 1

; Deadly Package
[State -1, Deadly Package]
type = ChangeState
value = 930
triggerall = (command="holdfwd" || command="holdback") && (command="ab" || command="bc" || command="ac")
triggerall = statetype = S
trigger1 = ctrl = 1

; Aerial Deadly Package
[State -1, Aerial Deadly Package]
type = ChangeState
value = 970
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = stateno != 1430 ; Delta Mekong Escape
trigger1 = (command = "holdfwd" || command = "holdback") && (command="ab" || command = "bc" || command="ac")

;===========================================================================
; Alpha 2 Patriot Circle Set 1
[State -1, Alpha 2 PC.1]
type = ChangeState
value = 2000
triggerall = command = "QCF_x" && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 210  || stateno = 235 || stateno = 250
trigger2 = movecontact || var(15)
trigger3 = stateno = 400 || stateno = 410 || stateno = 430
trigger3 = movecontact || var(15)

; Alpha 3 Patriot Circle Set 1
[State -1, Alpha 3 PC.1]
type = ChangeState
value = ifelse(command="QCF_z",2100,2101)
triggerall = command = "QCF_z" || command = "QCF_y"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 210  || stateno = 235 || stateno = 250
trigger2 = movecontact || var(15)
trigger3 = stateno = 400 || stateno = 410 || stateno = 430
trigger3 = movecontact || var(15)

;---------------------------------------------------------------------------
;Stinger A
[State -1, Stinger A]
type = ChangeState
value = 1000
triggerall = command = "STINGER_a" && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 210  || stateno = 235 || stateno = 250
trigger2 = movecontact || var(15)
trigger3 = stateno = 400 || stateno = 410 || stateno = 430
trigger3 = movecontact || var(15)

;Stinger B
[State -1, Stinger B]
type = ChangeState
value = 1010
triggerall = command = "STINGER_b" && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 210  || stateno = 235 || stateno = 250
trigger2 = movecontact || var(15)
trigger3 = stateno = 400 || stateno = 410 || stateno = 430
trigger3 = movecontact || var(15)

;Stinger C
[State -1, Stinger C]
type = ChangeState
value = 1020
triggerall = command = "STINGER_c" && statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 210  || stateno = 235 || stateno = 250
trigger2 = movecontact || var(15)
trigger3 = stateno = 400 || stateno = 410 || stateno = 430
trigger3 = movecontact || var(15)

;---------------------------------------------------------------------------
; Mekong Delta Air Raid_X
[State -1, Mekong Delta Air Raid X]
type = ChangeState
value = 1200
triggerall = command = "QCB_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 210  || stateno = 235 || stateno = 250
trigger2 = movecontact || var(15)
trigger3 = stateno = 400 || stateno = 410 || stateno = 430
trigger3 = movecontact || var(15)

; Mekong Delta Air Raid_Y
[State -1, Mekong Delta Air Raid Y]
type = ChangeState
value = 1210
triggerall = command = "QCB_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 210  || stateno = 235 || stateno = 250
trigger2 = movecontact || var(15)
trigger3 = stateno = 400 || stateno = 410 || stateno = 430
trigger3 = movecontact || var(15)

; Mekong Delta Air Raid_Z
[State -1, Mekong Delta Air Raid Z]
type = ChangeState
value = 1220
triggerall = command = "QCB_z"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200 || stateno = 210  || stateno = 235 || stateno = 250
trigger2 = movecontact || var(15)
trigger3 = stateno = 400 || stateno = 410 || stateno = 430
trigger3 = movecontact || var(15)

;---------------------------------------------------------------------------
; Mekong Delta Attack
[State -1, Mekong Delta Attack]
type = ChangeState
value = 1300
;triggerall = command = "xyz"
triggerall = command = "xy" || command = "yz" || command = "xz"
triggerall = command != "holdfwd" || command != "holdback"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = command != "holddown"
trigger2 = stateno = 200 || stateno = 210  || stateno = 235 || stateno = 250
trigger2 = movecontact || var(15)
trigger3 = stateno = 400 || stateno = 410 || stateno = 430
trigger3 = movecontact || var(15)
trigger4 = stateno = 1320 && animelemtime(2) >=0

;---------------------------------------------------------------------------
; Mekong Delta Escape
[State -1]
type = ChangeState
value = 1400
triggerall = command = "QCB_a" || command = "QCB_b" || command = "QCB_c"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200	; s.jab
trigger2 = movecontact || var(15)
trigger3 = stateno = 210	; s.short
trigger3 = movecontact || var(15)
trigger4 = stateno = 235	; s.close forward
trigger4 = movecontact || var(15)
trigger5 = stateno = 250	; s.close fierce
trigger5 = movecontact || var(15)
trigger6 = stateno = 400	; c.jab
trigger6 = movecontact || var(15)
trigger7 = stateno = 410	; c.short
trigger7 = movecontact || var(15)
trigger8 = stateno = 430	; c.forward
trigger8 = movecontact || var(15)

;---------------------------------------------------------------------------
;Baton Dive from Mekong Delta Escape
[State -1]
type = ChangeState
value = 1440
triggerall = stateno = 1430
trigger1 = command = "holddown" && command = "b"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Trick Landing
[State -1, Trick Landing]
type = ChangeState
value = 644
;triggerall = command = "abc"
triggerall = statetype = A && ctrl = 1 && movetype != H && stateno != 5040
trigger1 = command = "ab" || command = "bc" || command = "ac"
trigger1 = pos y > -25 && vel y > 0

;---------------------------------------------------------------------------
; Punch Alpha/Zero Counters
[State -1]
type = ChangeState
value = 800
triggerall = command = "PunchCounter"
trigger1 = power >= 1000
trigger1 = stateno >= 150 && stateno <= 153

; Kick Alpha/Zero Counters
[State -1]
type = ChangeState
value = 850
triggerall = command = "KickCounter" 
trigger1 = power >= 1000
trigger1 = stateno >= 150 && stateno <= 153

;===========================================================================
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Standing Jab
[State -1, Stand Jab]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Standing Short
[State -1, Stand Short]
type = ChangeState
value = 210
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Standing Strong
[State -1, Stand Strong]
type = ChangeState
value = 220
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Standing Baton Stand
[State -1]
type = ChangeState
value = 240
triggerall = command = "b" && command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Close Standing Forward
[State -1, Close Forward]
type = ChangeState
value = 235
triggerall = command = "b" && command != "holddown"
triggerall = statetype = S
trigger1 = p2dist x <= 75
trigger1 = ctrl = 1
trigger2 = command = "holdback"
trigger2 = ctrl = 1

;Standing Forward
[State -1, Stand Forward]
type = ChangeState
value = 230
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Close Standing Fierce
[State -1, Close Fierce]
type = ChangeState
value = 250
triggerall = command = "z" && command != "holddown"
triggerall = statetype = S
trigger1 = p2dist x <= 50
trigger1 = ctrl = 1
trigger2 = command = "holdback"
trigger2 = ctrl = 1

;Standing Fierce
[State -1, Stand Fierce]
type = ChangeState
value = 260
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Standing Roundhouse
[State -1, Stand RH]
type = ChangeState
value = 270
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouching Jab
[State -1, C.Jab]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouching Short
[State -1, C.Short]
type = ChangeState
value = 410
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouching Strong
[State -1, C.Strong]
type = ChangeState
value = 420
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouching Forward
[State -1, C.Forward]
type = ChangeState
value = 430
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouching Fierce
[State -1, C.Fierce]
type = ChangeState
value = 440
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouching Roundhouse
[State -1, C.Fierce]
type = ChangeState
value = 450
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jumping Jab
[State -1, Jump Jab]
type = ChangeState
value = 600
triggerall = command = "x" && statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jumping Short
[State -1, Jump Short]
type = ChangeState
value = 610
triggerall = command = "a" && statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jumping Strong
[State -1, Jump Strong]
type = ChangeState
value = 620
triggerall = command = "y" && statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump Forwar FORWARD_B
[State -1]
type = ChangeState
value = 640
triggerall = stateno != 1430
trigger1 = command = "holddown"
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jumping Forward
[State -1, Jump Forward]
type = ChangeState
value = 630
triggerall = command = "b" && statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jumping Fierce
[State -1, Jump Fierce]
type = ChangeState
value = 650
trigger1 = command = "z" && statetype = A
trigger1 = ctrl = 1

;Jumping RoundHouse
[State -1, Jump RH]
type = ChangeState
value = 660
triggerall = command = "c" && statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Super Jump
[State -1, Super Jump]
type = ChangeState
value = 2500
triggerall = command = "sjump"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 40
trigger3 = var(10) && hitdefattr = SC, NA && movehit
;trigger4 = var(10) && stateno = 2060 && animelemtime(18)>=0
;trigger5 = var(10) && stateno = 2160 && animelemtime(18)>=0

;-------------------------------------------------- E O F --------------------------------------------

