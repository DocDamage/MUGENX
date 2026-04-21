;-| Super Motions |--------------------------------------------------------
[command]
name = "2QCB_x"
command = ~D, DB, B, D, DB, B, x
time = 20

[command]
name = "2QCB_y"
command = ~D, DB, B, D, DB, B, y
time = 20

[command]
name = "2QCB_xy"
command = ~D, DB, B, D, DB, B, x+y
time = 20

[command]
name = "2QCF_x"
command = ~D, DF, F, D, DF, F, x
time = 20

[command]
name = "2QCF_y"
command = ~D, DF, F, D, DF, F, y
time = 20

[command]
name = "2QCF_xy"
command = ~D, DF, F, D, DF, F, x+y
time = 20

[command]
name = "2QCF_a"
command = ~D, DF, F, D, DF, F, a
time = 20

[command]
name = "2QCF_b"
command = ~D, DF, F, D, DF, F, b
time = 20

[command]
name = "2QCF_ab"
command = ~D, DF, F, D, DF, F, a+b
time = 20

;-| Special Motions |------------------------------------------------------
[command]
name = "ddb"
command = D, D, b
time = 20

[Command]
name = "FBF_x"
command = ~F, B, F, x
time = 20

[Command]
name = "FBF_y"
command = ~F, B, F, y
time = 20

[command]
name = "rapid_x"
command = x, x, x

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_s"
command = ~D, DF, F, s

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "uppercut_a"
command = ~F, D, DF, a

[Command]
name = "uppercut_b"
command = ~F, D, DF, b

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
name = "back_x"
command = /B,x
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
name = "/a"
command = /a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "/b"
command = /b
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
name = "s"
command = s
time = 1

[Command]
name = "/x"
command = /x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "/xy"
command = /x+y
time = 1

[Command]
name = "/y"
command = /y
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

;---------------------------------------------------------------------------
[Statedef -1]

[State 230, 1] ;Uncomment if you want to play a sound
type = Varrandom
trigger1 = stateno = 5000
trigger1 = time = 1
trigger2 = stateno = 5020
trigger2 = time = 1
trigger3 = stateno = 5010
trigger3 = time = 1
trigger4 = stateno = 5070
trigger4 = time = 1
trigger5 = stateno = 5080
trigger5 = time = 1
v = 2
range = 0, 4

[State 230, 1] ;Uncomment if you want to play a sound
type = PlaySnd
triggerall = var(2) = 0
trigger1 = stateno = 5000
trigger1 = time = 1
trigger2 = stateno = 5020
trigger2 = time = 1
trigger3 = stateno = 5010
trigger3 = time = 1
trigger4 = stateno = 5070
trigger4 = time = 1
trigger5 = stateno = 5080
trigger5 = time = 1
value = 9, 1

[State 230, 1] ;Uncomment if you want to play a sound
type = PlaySnd
triggerall = var(2) = 4
trigger1 = stateno = 5000
trigger1 = time = 1
trigger2 = stateno = 5020
trigger2 = time = 1
trigger3 = stateno = 5010
trigger3 = time = 1
trigger4 = stateno = 5070
trigger4 = time = 1
trigger5 = stateno = 5080
trigger5 = time = 1
value = 9, 0

[State 230, 1] ;Uncomment if you want to play a sound
type = PlaySnd
triggerall = var(2) = 2
trigger1 = stateno = 5000
trigger1 = time = 1
trigger2 = stateno = 5020
trigger2 = time = 1
trigger3 = stateno = 5010
trigger3 = time = 1
trigger4 = stateno = 5070
trigger4 = time = 1
trigger5 = stateno = 5080
trigger5 = time = 1
value = 9, 3

[State 230, 1] ;Uncomment if you want to play a sound
type = PlaySnd
triggerall = var(2) = 3
trigger1 = stateno = 5000
trigger1 = time = 1
trigger2 = stateno = 5020
trigger2 = time = 1
trigger3 = stateno = 5010
trigger3 = time = 1
trigger4 = stateno = 5070
trigger4 = time = 1
trigger5 = stateno = 5080
trigger5 = time = 1
value = 9, 4
;-----------------
[State -1]
type = ChangeState
value = 901
triggerall = command = "holdfwd"
trigger1 = stateno = 5110
trigger1 = time >= 10

[State -1]
type = ChangeState
value = 902
triggerall = command = "holdback"
trigger1 = stateno = 5110
trigger1 = time >= 10

[State -1]
type = ChangeState
value = 3300
triggerall = command = "2QCF_ab"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movehit
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 221
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact

[State -1]
type = ChangeState
value = 3200
triggerall = command = "2QCF_b"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movehit
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 221
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact

[State -1]
type = ChangeState
value = 3100
triggerall = command = "2QCF_a"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movehit
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 221
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact

[State -1]
type = ChangeState
value = 3020
triggerall = power = 3000
triggerall = command = "2QCB_xy"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "2QCB_x"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3010
triggerall = power >= 2000
triggerall = command = "2QCB_y"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1400
triggerall = command = "rapid_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = time > 15
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 420
trigger5 = movecontact
trigger6 = stateno = 430
trigger6 = movehit
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 221
trigger8 = movecontact
trigger9 = stateno = 222
trigger9 = movecontact

[State -1]
type = ChangeState
value = 1300
triggerall = command = "FBF_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movehit
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 221
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact

[State -1]
type = ChangeState
value = 1310
triggerall = command = "FBF_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movehit
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 221
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact

[State -1]
type = ChangeState
value = 1800
triggerall = command = "QCF_x"
triggerall = stateno = 1400
trigger1 = hitcount = 7
trigger2 = time > 79

[State -1]
type = ChangeState
value = 1900
trigger1 = numhelper(5900) = 0
trigger1 = command = "QCF_x"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1901
trigger1 = numhelper(5900) = 0
trigger1 = command = "QCF_y"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1000
trigger1 = command = "QCB_x"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1200
trigger1 = command = "QCB_y"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1600
trigger1 = command = "QCF_a"          ;Place name of command here
trigger1 = stateno >= 150
trigger1 = stateno < 152
trigger1 = power >= 500
trigger2 = command = "QCF_b"          ;Place name of command here
trigger2 = stateno >= 150
trigger2 = stateno < 152
trigger2 = power >= 500

[State -1]
type = ChangeState
value = 1700
trigger1 = command = "QCB_a"
trigger1 = statetype = s
trigger1 = ctrl = 1
trigger2 = command = "QCB_b"
trigger2 = statetype = s
trigger2 = ctrl = 1

[State -1]
type = ChangeState
value = 1100
triggerall = command = "uppercut_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movehit
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 221
trigger7 = movecontact

[State -1]
type = ChangeState
value = 1100
triggerall = command = "uppercut_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movehit
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 221
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact

[State -1]
type = ChangeState
value = 222
triggerall = command = "back_x"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 810
triggerall = command = "ddb"
trigger1 = statetype = s
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 101
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
;Stand_Throw (close dir+b)
[State -1]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 15 ;Near P2
trigger1 = command = "fwd_y"   ;p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_y"   ;p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
;----------------------------------------------------------------
[state -1]
type = changestate
value = 240
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movehit
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 221
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact
;===========================================================================
;special 1
[State -1]
type = ChangeState
value = 3021
trigger1 = command != "/xy"
trigger1 = stateno = 3020
trigger1 = time > 22


;special 1
[State -1]
type = ChangeState
value = 3001
trigger1 = command != "/x"
trigger1 = stateno = 3000
trigger1 = time > 22

;special 1
[State -1]
type = ChangeState
value = 3011
trigger1 = command != "/y"
trigger1 = stateno = 3010
trigger1 = time > 22
;---------------------------------------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact  ;If move hits, or is guarded by opponent
trigger3 = stateno = 221
trigger3 = movecontact
trigger4 = stateno = 222
trigger4 = movecontact

;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact  ;If move hits, or is guarded by opponent
trigger2 = p2stateno != 5020
trigger2 = p2stateno != 5030
trigger2 = p2stateno != 5035
trigger3 = stateno = 220
trigger3 = movecontact  ;If move hits, or is guarded by opponent
trigger3 = p2statetype != l
trigger3 = p2stateno != 5020
trigger3 = p2stateno != 5030
trigger3 = p2stateno != 5035
trigger4 = stateno = 221
trigger4 = movecontact
trigger4 = p2statetype != l
trigger4 = p2stateno != 5020
trigger4 = p2stateno != 5030
trigger4 = p2stateno != 5035
;------------------------------------------------------
;------------------------------------------------------

;bastao - level 1
[State -1]
type = ChangeState
value = 1201
trigger1 = command != "/y"
trigger1 = stateno = 1200
trigger1 = time > 29
trigger1 = time < 82
trigger1 = timemod = 30, 12

;Bastao - level 2
[State -1]
type = ChangeState
value = 1202
trigger1 = command != "/y"
trigger1 = stateno = 1200
trigger1 = time >= 82
trigger1 = time < 142
trigger1 = timemod = 30, 12

;Bastao - level 3
[State -1]
type = ChangeState
value = 1203
trigger1 = command != "/y"
trigger1 = stateno = 1200
trigger1 = time >= 142
trigger1 = timemod = 30, 12
;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 420
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 420
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 620
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 620
trigger3 = movecontact

;--------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1500
triggerall = command = "z"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = statetype = s
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 221
triggerall = command = "x"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = stateno = 220
trigger1 = time >= 15
trigger2 = stateno = 220
trigger2 = movecontact

[State -1]
type = ChangeState
value = 220
triggerall = command = "x"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 222
trigger2 = movecontact

;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact  ;If move hits, or is guarded by opponent
trigger3 = stateno = 220
trigger3 = movecontact  ;If move hits, or is guarded by opponent
trigger4 = stateno = 221
trigger4 = movecontact
trigger5 = stateno = 222
trigger5 = movecontact

;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 440
triggerall = p2stateno = 5110
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Crouch_B
[State -1]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 420
trigger2 = movehit
trigger3 = stateno = 400
trigger3 = movecontact

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 620
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 196
triggerall = command = "QCF_s"
trigger1 = statetype = s
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype = s
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 262
triggerall = command = "c"
trigger1 = stateno = 261
trigger1 = movehit
trigger1 = time > 9
trigger2 = stateno = 461
trigger2 = movehit
trigger2 = time > 9

[State -1]
type = ChangeState
value = 260
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 460
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 660
triggerall = command = "c"
trigger1 = statetype = a
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 620
trigger2 = movecontact
trigger3 = stateno = 600
trigger3 = movecontact


