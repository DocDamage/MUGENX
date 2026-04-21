;====================================
; Command file for Joe Higashi (Capcom VS SNK 2)
;====================================

;-| AI only |--------------------------------------------------
[Command]
name = "ai1"
command = ~6553B,a+b+c+x+y+z,B,F,B,D,U,F
time = 1

[Command]
name = "ai2"
command = U,D,F,F,B,F
time = 1

[Command]
name = "ai3"
command = U,D,F,F,B,D
time = 1

[Command]
name = "ai4"
command = U,D,F,F,B,U,F
time = 1

[Command]
name = "ai5"
command = U,D,F,F,U,B
time = 1

[Command]
name = "ai6"
command = U,D,F,F,D,B,D
time = 1

[Command]
name = "ai7"
command = U,D,F,F,F,B,U
time = 1

[Command]
name = "ai8"
command = D,D,F,F,D,B
time = 1

[Command]
name = "ai9"
command = D,D,F,F,F,B
time = 1
[Command]
name = "ai10"
command = U,D,F,F,B,B,D,F
time = 1

[Command]
name = "ai11"
command = U,D,F,F,B,F
time = 1

[Command]
name = "ai12"
command = U,D,F,F,B,D,F
time = 1

[Command]
name = "ai13"
command = U,D,F,F,B,U
time = 1

[Command]
name = "ai14"
command = U,D,F,F,U,B,F,D
time = 1

[Command]
name = "ai15"
command = U,D,F,F,D,B
time = 1

[Command]
name = "ai16"
command = U,D,F,F,F,B,U
time = 1

[Command]
name = "ai17"
command = U,D,U,F,B,B
time = 1

[Command]
name = "ai18"
command = U,D,D,F,B,B
time = 1

[Command]
name = "ai19"
command = D,D,F,F,B,B,F
time = 1

[Command]
name = "ai20"
command = U,U,F,F,B,B
time = 1

[Command]
name = "ai21"
command = U,B,F,F,B,B,U,D
time = 1

[Command]
name = "ai22"
command = U,D,F,F,B,B,D
time = 1
;-| Super Motions |---------------------------------------------------------
[Command]
name = "Screw1"
command = ~D,DF,F,D,DF,F, x
Time = 25
[Command]
name = "Screw2"
command = ~D,DF,F,D,DF,F, y
Time = 25
[Command]
name = "Screw3"
command = ~D,DF,F,D,DF,F, z
Time = 25

[Command]
name = "Cyclone"
command = ~D,DB,B,D,DB,B, x
Time = 25
[Command]
name = "Cyclone"
command = ~D,DB,B,D,DB,B, y
Time = 25
[Command]
name = "Cyclone"
command = ~D,DB,B,D,DB,B, z
Time = 25

[Command]
name = "Turbulence"
command = ~F, B, DB, D, DF, F, x
Time = 25
[Command]
name = "Turbulence"
command = ~F, B, DB, D, DF, F, y
Time = 25
[Command]
name = "Turbulence"
command = ~F, B, DB, D, DF, F, z
Time = 25

[Command]
name = "BHTK1"
command = ~D,DF,F,D,DB,B, x
Time = 25
[Command]
name = "BHTK2"
command = ~D,DF,F,D,DB,B, y
Time = 25
[Command]
name = "BHTK3"
command = ~D,DF,F,D,DB,B, z
Time = 25
;-| Special Motions |-------------------------------------------------------
[Command]
name = "Hurricane1"
command = ~B, DB, D, DF, F, x
time = 18
[Command]
name = "Hurricane2"
command = ~B, DB, D, DF, F, y
time = 18
[Command]
name = "Hurricane3"
command = ~B, DB, D, DF, F, z
time = 18

[Command]
name = "Finish1"
command = ~D, DF, F, x
[Command]
name = "Finish2"
command = ~D, DF, F, y
[Command]
name = "Finish3"
command = ~D, DF, F, z

[Command]
name = "Tiger1"
command = ~F, D, DF, a
[Command]
name = "Tiger2"
command = ~F, D, DF, b
[Command]
name = "Tiger3"
command = ~F, D, DF, c

[Command]
name = "Slash1"
command = ~B, DB, D, DF, F, a
time = 18
[Command]
name = "Slash2"
command = ~B, DB, D, DF, F, b
time = 18
[Command]
name = "Slash3"
command = ~B, DB, D, DF, F, c
time = 18

[Command]
name = "Heel1"
command = ~D, DB, B, a
[Command]
name = "Heel2"
command = ~D, DB, B, b
[Command]
name = "Heel3"
command = ~D, DB, B, c

[Command]
name = "Baku1"
command = x
time = 6
[Command]
name = "Baku2"
command = y
time = 6
[Command]
name = "Baku3"
command = z
time = 6
;-| Button Combination |----------------------------------------------------
[Command]
name = "xa"
command = x+a
time = 15
;-| Dir + Button |----------------------------------------------------------

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_y"
command = /F,y
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
name = "fwd_a"
command = /F, a
time = 1

[Command]
name = "df_b"
command = /DF, b
time = 1

[Command]
name = "down_y"
command = /D, y
time = 1

[Command]
name = "charge1"
command = /b
time = 1

[Command]
name = "charge2"
command = /y
time = 1

[Command]
name = "charge3"
command = /x
time = 1

[Command]
name = "charge3"
command = /y
time = 1

[Command]
name = "charge3"
command = /c
time = 1

[Command]
name = "charge3"
command = /z
time = 1

[Command]
name = "charge"
command = /c
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

[Command]
name = "hold_p"
command = /x
time = 1
[Command]
name = "hold_p"
command = /y
time = 1
[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_k"
command = /a
time = 1
[Command]
name = "hold_k"
command = /b
time = 1
[Command]
name = "hold_k"
command = /c
time = 1

[Command]
name = "hold_1"
command = /x
time = 1
[Command]
name = "hold_2"
command = /y
time = 1
[Command]
name = "hold_3"
command = /z
time = 1

[Command]
name = "hold_1"
command = /a
time = 1
[Command]
name = "hold_2"
command = /b
time = 1
[Command]
name = "hold_3"
command = /c
time = 1

;-| Do not remove! |--------------------------------------------------------

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "F"
command = F
time = 1

[Command]
name = "Fw"
command = F
time = 4

[Command]
name = "D"
command = D
time = 4

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "B"
command = B
time = 1

[Command]
name = "BB"
command = B, B
time = 10

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
;===========================================================================
;===========================================================================
[Statedef -1]
;===========================================================================
; AI section
;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
; Player section
;===========================================================================
;---------------------------------------------------------------------------
; Screw Upper
[State -1, su]
type = ChangeState
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "Screw1" || command = "Screw2" || command = "Screw3"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [200,260]
trigger4 = MoveContact && stateno = [400,460]
value = 2000
;---------------------------------------------------------------------------
; Bakuretsu Hurricane Tiger Kakato
[State -1, bhtk]
type = ChangeState
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "BHTK1" || command = "BHTK2" || command = "BHTK3"
trigger1 = ctrl || StateNo = [200,225]
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [200,260]
trigger4 = MoveContact && stateno = [400,460]
value = 2100
;---------------------------------------------------------------------------
; Double Cyclone
[State -1, dc]
type = ChangeState
triggerall = statetype != A
triggerall = power >= 3000
triggerall = command = "Cyclone"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [200,260]
trigger4 = MoveContact && stateno = [400,460]
value = 2200
;---------------------------------------------------------------------------
; Turbulence Upper
[State -1, tu]
type = ChangeState
triggerall = statetype != A
triggerall = power >= 3000
triggerall = command = "Turbulence"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [200,260]
trigger4 = MoveContact && stateno = [400,460]
value = 2300
;---------------------------------------------------------------------------
; Hurricane Upper
[State -1, hu]
type = ChangeState
triggerall = statetype != A
triggerall = command = "Hurricane1" || command = "Hurricane2" || command = "Hurricane3"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [200,260]
trigger4 = MoveContact && stateno = [400,460]
value = 1000
;---------------------------------------------------------------------------
; Tiger kick
[State -1, tk]
type = ChangeState
triggerall = statetype != A
triggerall = command = "Tiger1" || command = "Tiger2" || command = "Tiger3"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [200,260]
trigger4 = MoveContact && stateno = [400,460]
value = 1100
;---------------------------------------------------------------------------
; Slash kick
[State -1, sk]
type = ChangeState
triggerall = statetype != A
triggerall = command = "Slash1" || command = "Slash2" || command = "Slash3"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [200,260]
trigger4 = MoveContact && stateno = [400,460]
value = 1200
;---------------------------------------------------------------------------
; Golden Heel
[State -1, gh]
type = ChangeState
triggerall = statetype != A
triggerall = command = "Heel1" || command = "Heel2" || command = "Heel3"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [200,260]
trigger4 = MoveContact && stateno = [400,460]
value = 1300
;---------------------------------------------------------------------------
; Bakuretsu ken
[State -1]
type = ChangeState
triggerall = Var(6) && Var(2) > 6
trigger1 = Statetype != A && ctrl
trigger2 = stateno = [200,240]
value = 1400
;---------------------------------------------------------------------------
; backward roll
[State -1, br]
type = ChangeState
triggerall = statetype != A && ctrl
trigger1 = command = "holdback"
trigger1 = command = "a" && command = "x"
value = 805
;---------------------------------------------------------------------------
; forward roll
[State -1, fr]
type = ChangeState
triggerall = statetype != A && ctrl
trigger1 = command = "holdfwd"
trigger1 = command = "a" && command = "x"
value = 800
;---------------------------------------------------------------------------
; sidestep
[State -1, fr]
type = ChangeState
triggerall = statetype != A && ctrl
trigger1 = command = "a" && command = "x"
value = 801
;---------------------------------------------------------------------------
; kick throw
[State -1, kt]
type = ChangeState
triggerall = statetype = S && ctrl
triggerall = P2Bodydist X < 50
trigger1 = Command = "holdfwd" || Command = "holdback"
trigger1 = Command = "c" || Command = "z"
value = 900
;---------------------------------------------------------------------------
; close light punch
[State -1,lp1]
type = ChangeState
value = 205
triggerall = statetype != A && p2BodyDist X < 16
triggerall = command = "x" && command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = 205
trigger4 = MoveContact && stateno = 400
;---------------------------------------------------------------------------
; light punch
[State -1,lp2]
type = ChangeState
value = 200
triggerall = statetype != A
triggerall = command = "x" && command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = [200,205]
trigger4 = MoveContact && stateno = 400
;---------------------------------------------------------------------------
; medium punch
[State -1,mp]
type = ChangeState
value = 210
triggerall = statetype != A
triggerall = command = "y" && command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = [200,205]
;---------------------------------------------------------------------------
; close heavy punch
[State -1,hp1]
type = ChangeState
value = 225
triggerall = statetype != A && p2BodyDist X < 20
triggerall = command = "z" && command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = [205,210]
trigger4 = movecontact && prevstateno = 235
;---------------------------------------------------------------------------
; heavy punch
[State -1,hp2]
type = ChangeState
value = 220
triggerall = statetype != A
triggerall = command = "z" && command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = movecontact && (stateno = 200 || stateno = 210 || stateno = 230)
;---------------------------------------------------------------------------
; close light kick
[State -1,lk1]
type = ChangeState
value = 235
triggerall = statetype != A && p2BodyDist X < 20
triggerall = command = "a" && command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = 205
trigger4 = MoveContact && stateno = 400
;---------------------------------------------------------------------------
; light kick
[State -1,lk2]
type = ChangeState
value = 230
triggerall = statetype != A
triggerall = command = "a" && command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = [200,205]
trigger4 = MoveContact && stateno = 400
;---------------------------------------------------------------------------
; medium kick
[State -1,mk2]
type = ChangeState
value = 240
triggerall = statetype != A
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = [230,235]
;---------------------------------------------------------------------------
; close heavy kick
[State -1,hk3]
type = ChangeState
value = 255
triggerall = statetype != A && P2BodyDist X < 20
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
trigger3 = movecontact && (stateno = 205 || stateno = 225)
;---------------------------------------------------------------------------
; heavy kick
[State -1,hk3]
type = ChangeState
value = 250
triggerall = statetype != A
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
trigger3 = movecontact && (stateno = 230 || stateno = 240)
;---------------------------------------------------------------------------
; crouch light punch
[State -1,clp]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; crouch medium punch
[State -1,cmp]
type = ChangeState
value = 410
triggerall = statetype != A
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; crouch heavy punch
[State -1,chp]
type = ChangeState
value = 420
triggerall = statetype != A
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; crouch light kick
[State -1,clk]
type = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; crouch medium kick
[State -1,cmk]
type = ChangeState
value = 440
triggerall = statetype != A
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; crouch heavy kick
[State -1,chk]
type = ChangeState
value = 450
triggerall = statetype != A
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = [400,440]
;---------------------------------------------------------------------------
; air light punch
[State -1,alp]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; air medium punch
[State -1,amp]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; air heavy punch
[State -1,ahp]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; air light kick
[State -1,alk]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; air medium kick
[State -1,amk]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; air heavy kick
[State -1,ahk]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; Zero Counter
[State -1, zc]
type = null;ChangeState
trigger1 = Stateno = 150 || Stateno = 151
trigger1 = command = "c"
trigger1 = power >= 500
trigger1 = Statetype != A
value = 853
;---------------------------------------------------------------------------
; taunt
[State -1,t]
type = ChangeState
value = 195
triggerall = (command = "start")||(var(1)&&p2life&&p2statetype=L&&random<320)
triggerall = stateno != 310
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 3006 || stateno = 3026 || stateno =3025) && HitCount
trigger3 = stateno = [200,450]
trigger3 = movecontact 
trigger4 = stateno = 3051 && animelem <= 34
trigger5 = Stateno = 860 && Time >= 5
;---------------------------------------------------------------------------
; [PARRY]
; Stand parry
[State -1, stp]
type = hitoverride
triggerall = statetype != A && command = "Fw"
triggerall = movetype != A
trigger1 = ctrl || stateno = 850 || stateno = 851 || stateno = 3003 || stateno=[150,153]
trigger1 = var(3) := 1
attr = SA, NA, SA, HA, NP, SP, HP
stateno = 850
time = ifelse((stateno=[150,153]), 6, 8)

; Crouch parry
[State -1, crp]
type = hitoverride
triggerall = (statetype = S && command = "D") || (statetype = C && command = "Fw")
triggerall = movetype != A
trigger1 = ctrl || stateno = 850 || stateno = 851 ||stateno = 3003 || stateno = [150,153]
trigger1 = var(3) := 2
attr = CS, AA, AP
stateno = 851
time = ifelse((stateno = [150,153]), 6, 8)

; Air parry
[State -1, aip]
type = hitoverride
triggerall = statetype = A && command = "Fw"
triggerall = movetype != A
trigger1 = ctrl || stateno = 852 || stateno = [154,155]
trigger1 = var(3) := 3
attr = SA, AA, AP
stateno = 852
time = ifelse((stateno = [154,155]), 6, 8)

; no parry if can't parry
[State -1, ps]
type = hitoverride
trigger1 = !ctrl && stateno != [850,852]
trigger1 = stateno != 3003 && stateno != [150,155]
trigger2 = statetype = A && var(3) != 3
trigger3 = statetype = C && var(3) != 2
trigger4 = statetype = S && var(3) != 1 && var(3) != 2
attr = SCA
time = 0
;---------------------------------------------------------------------------
; run
[State -1,run]
type = ChangeState
value = 100
trigger1 = stateno != [850,852] ; can't run from parry
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
; backdash
[State -1,hop]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
; Power Charge
[State -1,powcharge]
type = ChangeState
value = 3002
triggerall = var(1)!=1
triggerall = Power < 3000
triggerall = statetype = S
triggerall = ctrl
trigger1 = (command = "charge1" && command = "charge2")
trigger2 = Stateno = 860 && Time >= 5
