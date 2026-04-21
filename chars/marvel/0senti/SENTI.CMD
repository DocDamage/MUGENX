;qsound 180¹ø´ë
;-| impossible |--------------------------------------------------------
[command]
name = "impossible1"
command = B,D,a+c,z,c+b,s
time = 1

[command]
name = "impossible2"
command = B,F,c+b,z,c+z,x,s
time = 1

[command]
name = "impossible3"
command = B,U,a+b,y,c+y,s,z,D
time = 1

[command]
name = "impossible4"
command = B,B,a+y,c,z+x,s
time = 1

[command]
name = "impossible5"
command = B,B,a+b,z,c+b,s
time = 1

[command]
name = "impossible6"
command = D,B,z+b,z,c+x,s
time = 1

[command]
name = "impossible7"
command = B,U,a+b,z,c+x,s
time = 1

[command]
name = "impossible8"
command = B,F,a+b,c,c+x,s
time = 1
;====================================================================
;-| Super Motions |--------------------------------------------------------

[Command]
name = "charge"
command = ~D, F, x+y
time = 15

[Command]
name = "charge"
command = ~D, F, y+z
time = 15

[Command]
name = "sworm"
command = ~D, F, a+b
time = 15

[Command]
name = "sworm"
command = ~D, F, b+c
time = 15

[Command]
name = "bladepunch-2"
command = ~D, F, z
time = 15

[Command]
name = "punch-1"
command = ~D, F, x
time = 15

[Command]
name = "punch-2"
command = ~D, F, y
time = 15

[Command]
name = "recall-1"
command = ~D, F, a
time = 16

[Command]
name = "recall-2"
command = ~D, F, b
time = 16

[Command]
name = "recall-3"
command = ~D, F, c
time = 16

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b+c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y+z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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
name = "start"
command = s
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
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Statedef -1]
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
[State -1, sworm]
type = ChangeState
value = 8000
triggerall = command = "sworm"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl

[State -1, charg]
type = ChangeState
value = 8010
triggerall = command = "charge"
triggerall = power >= 2000
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ai guard]
type = ChangeState
value = 132
triggerall = Var(17) >= 1
triggerall = statetype != S
triggerall = statetype = A
triggerall = p2movetype = A
triggerall = movetype != A
triggerall = P2bodydist X < 90
triggerall = movetype != H
trigger1 = ctrl = 1

[State -1, ai guard1]
type = ChangeState
value = 130
triggerall = Var(17) >= 1
triggerall = statetype = S
triggerall = statetype != A
triggerall = p2movetype = A
triggerall = movetype != A
triggerall = p2statetype != c
triggerall = P2bodydist X < 90
triggerall = movetype != H
trigger1 = ctrl = 1

[State -1, ai guard2]
type = ChangeState
value = 131
triggerall = Var(17) >= 1
triggerall = p2statetype = c
triggerall = p2movetype = A
triggerall = movetype != A
triggerall = p2statetype != s
triggerall = statetype != A
triggerall = P2bodydist X < 90
triggerall = movetype != H
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Air_punch
[State -1, Air_punch 1]
type = ChangeState
value = 1230
triggerall = command = "punch-1"
triggerall = numhelper(1100) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 601
trigger2 = movecontact = 1
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 610
trigger4 = movecontact = 1
trigger5 = stateno = 620
trigger5 = movecontact = 1
trigger6 = stateno = 630
trigger6 = movecontact = 1
trigger7 = stateno = 640
trigger7 = movecontact = 1
trigger8 = stateno = 650
trigger8 = movecontact = 1

;Air_punch
[State -1, punch 2]
type = ChangeState
value = 1200
triggerall = command = "punch-2"
triggerall = numhelper(1100) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 601
trigger2 = movecontact = 1
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 610
trigger4 = movecontact = 1
trigger5 = stateno = 620
trigger5 = movecontact = 1
trigger6 = stateno = 630
trigger6 = movecontact = 1
trigger7 = stateno = 640
trigger7 = movecontact = 1
trigger8 = stateno = 650
trigger8 = movecontact = 1

;Air_punch
[State -1, blade punch]
type = ChangeState
value = 1210
triggerall = command = "bladepunch-2"
triggerall = numhelper(1100) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 601
trigger2 = movecontact = 1
trigger3 = stateno = 600
trigger3 = movecontact = 1
trigger4 = stateno = 610
trigger4 = movecontact = 1
trigger5 = stateno = 620
trigger5 = movecontact = 1
trigger6 = stateno = 630
trigger6 = movecontact = 1
trigger7 = stateno = 640
trigger7 = movecontact = 1
trigger8 = stateno = 650
trigger8 = movecontact = 1


;punch
[State -1, punch 1]
type = ChangeState
value = 1130
triggerall = command = "punch-1"
triggerall = numhelper(1100) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 240
trigger6 = stateno = 410
trigger7 = stateno = 420
trigger8 = stateno = 440
trigger9 = stateno = 450

;punch
[State -1, punch 2]
type = ChangeState
value = 1100
triggerall = command = "punch-2"
triggerall = numhelper(1100) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 240
trigger6 = stateno = 410
trigger7 = stateno = 420
trigger8 = stateno = 440
trigger9 = stateno = 450

;punch
[State -1, Air_punch 1]
type = ChangeState
value = 1300
triggerall = command = "bladepunch-2"
triggerall = numhelper(1100) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 240
trigger6 = stateno = 410
trigger7 = stateno = 420
trigger8 = stateno = 440
trigger9 = stateno = 450


;---------------------------------------------------------------------------
;recall
[State -1, recall 1]
type = ChangeState
value = 1010
triggerall = command = "recall-1"
triggerall = numhelper(1) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 240
trigger6 = stateno = 410
trigger7 = stateno = 420
trigger8 = stateno = 440
trigger9 = stateno = 450

;recall
[State -1, recall 2]
type = ChangeState
value = 1000
triggerall = command = "recall-2"
triggerall = numhelper(1) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 240
trigger6 = stateno = 410
trigger7 = stateno = 420
trigger8 = stateno = 440
trigger9 = stateno = 450

;recall
[State -1, recall 2]
type = ChangeState
value = 1020
triggerall = command = "recall-3"
triggerall = numhelper(1) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 215
trigger4 = stateno = 220
trigger5 = stateno = 240
trigger6 = stateno = 410
trigger7 = stateno = 420
trigger8 = stateno = 440
trigger9 = stateno = 450

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
triggerall = stateno != 101
trigger1 = ctrl

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
triggerall = stateno != 106
trigger1 = ctrl

;Air Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 110
triggerall = command = "FF"
triggerall = statetype = A
triggerall = ctrl
trigger1 = stateno = 50

;Air Run Back
[State -1, Run Back]
type = ChangeState
value = 115
triggerall = command = "BB"
triggerall = statetype = A
triggerall = ctrl
trigger1 = stateno = 50

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger2 = time >= 10

;---------------------------------------------------------------------------
;Stand middle Punch
[State -1, Stand middle Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact = 1
trigger2 = time >= 10

;---------------------------------------------------------------------------
;Standing middle Kick
[State -1, Standing middle Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger2 = time >= 10

;---------------------------------------------------------------------------
;Crouching middle Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching middle Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact = 1
trigger2 = time >= 10

;---------------------------------------------------------------------------
;Crouching middlme Kick
[State -1, Crouching middle Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 601
triggerall = command = "down_x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 611
triggerall = command = "down_y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 621
triggerall = command = "down_z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
