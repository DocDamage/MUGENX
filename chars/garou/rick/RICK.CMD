;-| Super Motions |--------------------------------------------------------
[Command]
name = "Gaia"
command = ~F, ~B, DB, D, DF, b+c
time = 30

[Command]
name = "Wolf"
command = ~F, ~B, DB, D, DF, c
time = 30

[Command]
name = "CCombo"
command = ~B, DB, D, DF, a+b
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "FDF_a"
command = ~F, D, DF, a

[Command]
name = "FDF_c"
command = ~F, D, DF, c

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b


[Command]
name = "QCB_c"
command = ~D, DB, B, c

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
name = "downfwdx2_c"
command = ~DF,/DF,c
time = 10

[Command]
name = "downfwd_c"
command = /DF,c
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
name = "downx2_c"
command = ~D,/$D,c
time = 10

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
name = "holddownfwd" 
command = /$DF
time = 1

[Command]
name = "holdB"
command = /b
time = 1

[Command]
name = "RelB"
command = ~b
time = 1

[Statedef -1]

;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Gaia Breath
[State -1]
type = ChangeState
value = 1050
triggerall = command = "Gaia"
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 210
trigger3 = stateno = 220
trigger4 = stateno = 215
trigger5 = stateno = 225
trigger6 = stateno = 230

;---------------------------------------------------------------------------
;Howling Wolf
[State -1]
type = ChangeState
value = 1070
triggerall = command = "Wolf"
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 220
trigger3 = stateno = 230
trigger4 = stateno = 225

;---------------------------------------------------------------------------
;Custom Combo
[State -1]
type = ChangeState
value = 3000
triggerall = command = "CCombo"
triggerall = power >= 3000
trigger1 = ctrl = 1
trigger1 = statetype != A

;---------------------------------------------------------------------------
;FDF_a 
[State -1]
type = ChangeState
value = 1040
triggerall = command = "FDF_a"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 420
trigger3 = stateno = 211
trigger4 = stateno = 210
trigger5 = stateno = 220
trigger6 = stateno = 225
trigger7 = stateno = 230

;---------------------------------------------------------------------------
;QCB_C Breakshot
[State -1]
type = ChangeState
value = 1032
triggerall = command = "QCB_c"
trigger1 = stateno = 150  

;QCB_C 
[State -1]
type = ChangeState
value = 1030
triggerall = command = "QCB_c"
trigger1 = ctrl = 1
trigger1 = statetype != A

;---------------------------------------------------------------------------
;QCB_A BreakShot 
[State -1]
type = ChangeState
value = 852
triggerall = command = "QCB_a"
trigger1 = stateno = 150

;---------------------------------------------------------------------------
;QCB_A 
[State -1]
type = ChangeState
value = 850
triggerall = command = "QCB_a"
trigger1 = ctrl = 1
trigger1 = statetype != A

;---------------------------------------------------------------------------
;QCF_a 
[State -1]
type = ChangeState
value = 1000
triggerall = command = "QCF_a"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 220
trigger3 = stateno = 225

;QCF_a 
[State -1]
type = ChangeState
value = 1005
trigger1 = ctrl = 0
trigger1 = statetype = S
trigger1 = stateno = 1000
trigger1 = time > 26

;QCF_a Break Shot 
[State -1]
type = ChangeState
value = 1006
triggerall = command = "QCF_a"
trigger1 = stateno = 150
trigger1 = statetype != A
trigger2 = stateno = 151
trigger3 = stateno = 152

;QCF_a Break Shot 
[State -1]
type = ChangeState
value = 1007
trigger1 = ctrl = 0
trigger1 = statetype = S
trigger1 = stateno = 1006
trigger1 = time > 26

;QCF_c ex
[State -1]
type = ChangeState
value = 1012
triggerall = command = "FDF_c"
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 220 

;QCF_c 
[State -1]
type = ChangeState
value = 1009
triggerall = command = "QCF_c"
trigger1 = ctrl = 1
trigger1 = statetype != A

;QCF_c 
[State -1]
type = ChangeState
value = 1010
triggerall = stateno = 1009
trigger1 = ctrl = 0
trigger1 = statetype = S
trigger1 = Time > 16

;QCF_c ex Break Shot
[State -1]
type = ChangeState
value = 1016
triggerall = command = "QCF_c"
triggerall = power >= 1000
trigger1 = stateno = 150 
trigger2 = stateno = 151

;QCF_c Break Shot 
[State -1]
type = ChangeState
value = 1013
triggerall = command = "QCF_c"
triggerall = power <= 1000
trigger1 = stateno = 150
trigger1 = statetype = S
trigger2 = stateno = 151

;QCF_c Break shot 
[State -1]
type = ChangeState
value = 1014
triggerall = stateno = 1013
trigger1 = ctrl = 0
trigger1 = statetype = S
trigger1 = Time > 16

;---------------------------------------------------------------------------
;Throw
[State -1]
type = ChangeState
value = 1060
triggerall = command = "holdfwd"
triggerall = command = "c"
triggerall = P2bodyDist X < 10
triggerall = P2bodyDist Y = 0
trigger1 = ctrl = 1
trigger1 = statetype = S

;---------------------------------------------------------------------------
;OneTwo Punch
[State -1]
type = ChangeState
value = 840
triggerall = command = "holdfwd"
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch Forward Punch
[State -1]
type = ChangeState
value = 430
triggerall = command = "holddownfwd"
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = stateno != 430
trigger2 = stateno = 210

;---------------------------------------------------------------------------
;Crouch Forward
[State -1]
type = ChangeState
value = 499
trigger1 = command = "holddownfwd"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Dodge1
[State -1]
type = ChangeState
value = 800
trigger1 = command = "QCB_b"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Dodge1
[State -1]
type = ChangeState
value = 801
triggerall = stateno = 800
trigger1 = command = "holdB"
trigger1 = statetype = S
trigger1 = Time > 45

;---------------------------------------------------------------------------
;Dodge1
[State -1]
type = ChangeState
value = 802
triggerall = stateno = 801
trigger1 = command != "holdB"
trigger2 = Time > 196

;---------------------------------------------------------------------------
;Light Punch(close)
[State -1]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 15
triggerall = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = Time > 7
trigger3 = stateno = 205

;---------------------------------------------------------------------------
;Combo Punch
[State -1]
type = ChangeState
value = 211
triggerall = command = "downfwd_c"
trigger1 = statetype = S
trigger1 = stateno = 210 

;---------------------------------------------------------------------------
;Medium Punch (close)
[State -1]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 15
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger3 = stateno = 410
 
;---------------------------------------------------------------------------
;Medium Punch
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 215
trigger4 = stateno = 430

;---------------------------------------------------------------------------
;Hard Punch close
[State -1]
type = ChangeState
value = 230
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = p2bodydist X <= 15
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 215

;---------------------------------------------------------------------------
;Dash Hard Punch 
[State -1]
type = ChangeState
value = 245
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = stateno = 100
trigger1 = statetype = S

;---------------------------------------------------------------------------
;Hard Punch close combo
[State -1]
type = ChangeState
value = 240
triggerall = command = "fwd_c"
trigger1 = stateno = 410

;---------------------------------------------------------------------------
;fwd_c
[State -1]
type = ChangeState
value = 805
triggerall = command = "fwd_c"
trigger1 = stateno = 210
trigger1 = statetype = S

;---------------------------------------------------------------------------
;fwd_c
[State -1]
type = ChangeState
value = 810
trigger1 = stateno = 805
trigger1 = ctrl = 0
trigger1 = time > 8

;---------------------------------------------------------------------------
;fwd_c land
[State -1]
type = ChangeState
value = 811
trigger1 = stateno = 811
trigger1 = ctrl = 0
trigger1 = time > 5

;---------------------------------------------------------------------------
;fwd_c combo punch
[State -1]
type = ChangeState
value = 815
triggerall = command = "downx2_c"
trigger1 = stateno = 810
trigger1 = ctrl = 0
trigger1 = time > 8

;---------------------------------------------------------------------------
;Alternate Hard Punch close
[State -1]
type = ChangeState
value = 235
trigger1 = command = "c"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = p2bodydist X <= 15
trigger1 = stateno = 230

;---------------------------------------------------------------------------
;Hard Punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 400
trigger3 = time > 7

;---------------------------------------------------------------------------
;combo Hard Punch
[State -1]
type = ChangeState
value = 225
triggerall = command = "c"
trigger1 = stateno = 210
trigger2 = stateno = 215
trigger3 = stateno = 245

;---------------------------------------------------------------------------
;Crouch Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = Time > 9
;---------------------------------------------------------------------------
;Crouch Medium Punch
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger3 = stateno = 499
trigger4 = stateno = 210

;---------------------------------------------------------------------------
;Crouch Heavy Punch
[State -1]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 410
trigger3 = stateno = 499

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1]
type = ChangeState
value = 610
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump Heavy Punch
[State -1]
type = ChangeState
value = 620
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Helper Call State
[State -1]
type = ChangeState
value = 4000
triggerall = command = "x"
triggerall = power >= 250
triggerall = numhelper = 0
triggerall = ctrl = 1
triggerall = Vel X = 0
trigger1 = Statetype = S
trigger2 = Statetype = C

;---------------------------------------------------------------------------
;jab Punch combo
[State -1]
type = ChangeState
value = 820
triggerall = command = "back_c"
trigger1 = stateno = 430
trigger1 = Time > 10

;---------------------------------------------------------------------------
;jab Punch combo alternate
[State -1]
type = ChangeState
value = 830
triggerall = command = "downfwdx2_c"
trigger1 = stateno = 430

;===========================Custom Combo Moves==============================================

;OneTwo Punch
[State -1]
type = ChangeState
value = 840
triggerall = command = "holdfwd"
triggerall = command = "a"
triggerall = statetype = S
triggerall = Var(2) = 1
trigger1 = stateno = 200
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 225
trigger6 = stateno = 230
trigger7 = stateno = 235
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 410
trigger12 = stateno = 420
trigger13 = stateno = 430
trigger14 = stateno = 805
trigger15 = stateno = 820
trigger16 = stateno = 830
trigger17 = stateno = 205
trigger18 = stateno = 850
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 1040
trigger23 = stateno = 211

Light Punch(close)
[State -1]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 15
triggerall = statetype = S
triggerall = Var(2) = 1
trigger1 = stateno = 1040
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 225
trigger6 = stateno = 230
trigger7 = stateno = 235
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 410
trigger12 = stateno = 420
trigger13 = stateno = 430
trigger14 = stateno = 805
trigger15 = stateno = 820
trigger16 = stateno = 830
trigger17 = stateno = 840
trigger18 = stateno = 850
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 211

;Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = Var(2) = 1
trigger1 = stateno = 211
trigger2 = stateno = 205
trigger3 = stateno = 210
trigger4 = stateno = 215
trigger5 = stateno = 220
trigger6 = stateno = 225
trigger7 = stateno = 230
trigger8 = stateno = 235
trigger9 = stateno = 240
trigger10 = stateno = 245
trigger11 = stateno = 400
trigger12 = stateno = 410
trigger13 = stateno = 420
trigger14 = stateno = 430
trigger15 = stateno = 805
trigger16 = stateno = 820
trigger17 = stateno = 830
trigger18 = stateno = 840
trigger19 = stateno = 850
trigger20 = stateno = 1000
trigger21 = stateno = 1009
trigger22 = stateno = 1012
trigger23 = stateno = 1040
trigger24 = stateno != 200

;Combo Punch
[State -1]
type = ChangeState
value = 211
triggerall = command = "downfwd_c"
triggerall = Var(2) = 1
trigger1 = statetype = S
trigger2 = stateno = 205
trigger3 = stateno = 210
trigger4 = stateno = 215
trigger5 = stateno = 220
trigger6 = stateno = 225
trigger7 = stateno = 230
trigger8 = stateno = 235
trigger9 = stateno = 240
trigger10 = stateno = 245
trigger11 = stateno = 400
trigger12 = stateno = 410
trigger13 = stateno = 420
trigger14 = stateno = 430
trigger15 = stateno = 805
trigger16 = stateno = 820
trigger17 = stateno = 830
trigger18 = stateno = 840
trigger19 = stateno = 850
trigger20 = stateno = 1000
trigger21 = stateno = 1009
trigger22 = stateno = 1012
trigger23 = stateno = 1040

;Medium Punch (close)
[State -1]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 15
triggerall = statetype = S
triggerall = Var(2) = 1
trigger1 = stateno = 205
trigger2 = stateno = 210
trigger3 = stateno = 211
trigger4 = stateno = 220
trigger5 = stateno = 225
trigger6 = stateno = 230
trigger7 = stateno = 235
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 410
trigger12 = stateno = 420
trigger13 = stateno = 430
trigger14 = stateno = 805
trigger15 = stateno = 820
trigger16 = stateno = 830
trigger17 = stateno = 840
trigger18 = stateno = 850
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 1040

;Medium Punch
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = Var(2) = 1
trigger1 = stateno = 205
trigger2 = stateno = 211
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 225
trigger6 = stateno = 230
trigger7 = stateno = 235
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 410
trigger12 = stateno = 420
trigger13 = stateno = 430
trigger14 = stateno = 805
trigger15 = stateno = 820
trigger16 = stateno = 830
trigger17 = stateno = 840
trigger18 = stateno = 850
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 1040


;Hard Punch close
[State -1]
type = ChangeState
value = 230
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = statetype = S
triggerall = Var(2) = 1
trigger1 = stateno = 205
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 225
trigger6 = stateno = 211
trigger7 = stateno = 235
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 410
trigger12 = stateno = 420
trigger13 = stateno = 430
trigger14 = stateno = 805
trigger15 = stateno = 820
trigger16 = stateno = 830
trigger17 = stateno = 840
trigger18 = stateno = 850
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 1040

;Hard Punch close combo
[State -1]
type = ChangeState
value = 240
triggerall = command = "fwd_c"
triggerall = Var(2) = 1
trigger1 = stateno = 205
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 225
trigger6 = stateno = 230
trigger7 = stateno = 235
trigger8 = stateno = 211
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 410
trigger12 = stateno = 420
trigger13 = stateno = 430
trigger14 = stateno = 805
trigger15 = stateno = 820
trigger16 = stateno = 830
trigger17 = stateno = 840
trigger18 = stateno = 850
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 1040

;fwd_c
[State -1]
type = ChangeState
value = 805
triggerall = command = "fwd_c"
triggerall = Var(2) = 1
trigger1 = stateno = 205
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 225
trigger6 = stateno = 230
trigger7 = stateno = 235
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 410
trigger12 = stateno = 420
trigger13 = stateno = 430
trigger14 = stateno = 211
trigger15 = stateno = 820
trigger16 = stateno = 830
trigger17 = stateno = 840
trigger18 = stateno = 850
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 1040

;FDF_a 
[State -1]
type = ChangeState
value = 1040
triggerall = command = "FDF_a"
triggerall = statetype = S
triggerall = Var(2) = 1
trigger1 = stateno = 205
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 225
trigger6 = stateno = 230
trigger7 = stateno = 235
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 410
trigger12 = stateno = 420
trigger13 = stateno = 430
trigger14 = stateno = 805
trigger15 = stateno = 820
trigger16 = stateno = 830
trigger17 = stateno = 840
trigger18 = stateno = 850
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 211

;QCB_C 
[State -1]
type = ChangeState
value = 1030
triggerall = command = "QCB_c"
triggerall = statetype = S
triggerall = Var(2) = 1
trigger1 = stateno = 205
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 225
trigger6 = stateno = 230
trigger7 = stateno = 235
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 410
trigger12 = stateno = 420
trigger13 = stateno = 430
trigger14 = stateno = 805
trigger15 = stateno = 820
trigger16 = stateno = 830
trigger17 = stateno = 840
trigger18 = stateno = 850
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 211
trigger23 = stateno = 1040

;QCB_A 
[State -1]
type = ChangeState
value = 850
triggerall = command = "QCB_a"
triggerall = statetype != A
triggerall = Var(2) = 1
trigger1 = stateno = 205
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 225
trigger6 = stateno = 230
trigger7 = stateno = 235
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 410
trigger12 = stateno = 420
trigger13 = stateno = 430
trigger14 = stateno = 805
trigger15 = stateno = 820
trigger16 = stateno = 830
trigger17 = stateno = 840
trigger18 = stateno = 211
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 1040

;Alternate Hard Punch close
[State -1]
type = ChangeState
value = 235
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist X <= 15
triggerall = Var(2) = 1
trigger1 = stateno = 205
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 225
trigger6 = stateno = 230
trigger7 = stateno = 211
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 410
trigger12 = stateno = 420
trigger13 = stateno = 430
trigger14 = stateno = 805
trigger15 = stateno = 820
trigger16 = stateno = 830
trigger17 = stateno = 840
trigger18 = stateno = 850
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 1040

;Hard Punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = Var(2) = 1
trigger1 = stateno = 205
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 211
trigger5 = stateno = 225
trigger6 = stateno = 230
trigger7 = stateno = 235
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 410
trigger12 = stateno = 420
trigger13 = stateno = 430
trigger14 = stateno = 805
trigger15 = stateno = 820
trigger16 = stateno = 830
trigger17 = stateno = 840
trigger18 = stateno = 850
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 1040

;combo Hard Punch
[State -1]
type = ChangeState
value = 225
triggerall = command = "c"
triggerall = Var(2) = 1
trigger1 = stateno = 205
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 211
trigger6 = stateno = 230
trigger7 = stateno = 235
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 410
trigger12 = stateno = 420
trigger13 = stateno = 430
trigger14 = stateno = 805
trigger15 = stateno = 820
trigger16 = stateno = 830
trigger17 = stateno = 840
trigger18 = stateno = 850
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 1040

;Crouch Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = Var(2) = 1
trigger1 = stateno = 205
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 225
trigger6 = stateno = 230
trigger7 = stateno = 235
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 211
trigger11 = stateno = 410
trigger12 = stateno = 420
trigger13 = stateno = 430
trigger14 = stateno = 805
trigger15 = stateno = 820
trigger16 = stateno = 830
trigger17 = stateno = 840
trigger18 = stateno = 850
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 1040

;Crouch Medium Punch
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = Var(2) = 1
trigger1 = stateno = 205
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 225
trigger6 = stateno = 230
trigger7 = stateno = 235
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 211
trigger12 = stateno = 420
trigger13 = stateno = 430
trigger14 = stateno = 805
trigger15 = stateno = 820
trigger16 = stateno = 830
trigger17 = stateno = 840
trigger18 = stateno = 850
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 1040

;Crouch Heavy Punch
[State -1]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = Var(2) = 1
trigger1 = stateno = 205
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 225
trigger6 = stateno = 230
trigger7 = stateno = 235
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 410
trigger12 = stateno = 211
trigger13 = stateno = 430
trigger14 = stateno = 805
trigger15 = stateno = 820
trigger16 = stateno = 830
trigger17 = stateno = 840
trigger18 = stateno = 850
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 1040

;jab Punch combo
[State -1]
type = ChangeState
value = 820
triggerall = command = "back_c"
triggerall = Var(2) = 1
trigger1 = stateno = 200
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 225
trigger6 = stateno = 230
trigger7 = stateno = 235
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 410
trigger12 = stateno = 420
trigger13 = stateno = 430
trigger14 = stateno = 805
trigger15 = stateno = 205
trigger16 = stateno = 830
trigger17 = stateno = 840
trigger18 = stateno = 850
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 211
trigger23 = stateno = 1040

;jab Punch combo alternate
[State -1]
type = ChangeState
value = 830
triggerall = command = "downfwdx2_c"
triggerall = Var(2) = 1
trigger1 = stateno = 200
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 225
trigger6 = stateno = 230
trigger7 = stateno = 235
trigger8 = stateno = 240
trigger9 = stateno = 245
trigger10 = stateno = 400
trigger11 = stateno = 410
trigger12 = stateno = 420
trigger13 = stateno = 430
trigger14 = stateno = 805
trigger15 = stateno = 820
trigger16 = stateno = 205
trigger17 = stateno = 840
trigger18 = stateno = 850
trigger19 = stateno = 1000
trigger20 = stateno = 1009
trigger21 = stateno = 1012
trigger22 = stateno = 211
trigger23 = stateno = 1040

;=============================End Custom Combo==============================================



