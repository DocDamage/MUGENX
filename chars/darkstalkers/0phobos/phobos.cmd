;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------
[Command]
name = "laser_es"
command = ~D, F, x+y
time = 20

[Command]
name = "laser_es"
command = ~D, F, y+z
time = 20

[Command]
name = "laser_x"
command = ~D, F, x
time = 20

[Command]
name = "laser_x"
command = ~D, F, y
time = 20

[Command]
name = "laser_x"
command = ~D, F, z
time = 20

[Command]
name = "low_laser"
command = ~D, F, a
time = 20

[Command]
name = "low_laser"
command = ~D, F, b
time = 20

[Command]
name = "low_laser"
command = ~D, F, c
time = 20

[Command]
name = "bomb_1"
command = ~D, B, x
time = 20

[Command]
name = "bomb_2"
command = ~D, B, y
time = 20

[Command]
name = "bomb_3"
command = ~D, B, z
time = 20


[Command]
name = "vulcan"
command = ~B,D,B, x
time = 20

[Command]
name = "vulcan"
command = ~B,D,B, y
time = 20

[Command]
name = "vulcan"
command = ~B,D,B, z
time = 20

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

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "throw_1"
command = /$B,y
time = 1

[Command]
name = "throw_1"
command = /$B,z
time = 1


[Command]
name = "throw"
command = /$F,y
time = 1

[Command]
name = "throw"
command = /$F,z
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
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
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




; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Stand_Throw
[State -1, Standing Throw]
type = ChangeState
value = 710
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "throw_1"
trigger1 = p2bodydist X <= 15
trigger1 = p2movetype != H

;Stand_Throw
[State -1, Standing Throw]
type = ChangeState
value = 700
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "throw"
trigger1 = p2bodydist X <= 8
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;vulcan
[State -1, coruch walk]
type = ChangeState
value = 22
triggerall = statetype = C
triggerall = ctrl = 1
trigger1 = command = "holdfwd"


;vulcan
[State -1, coruch walk]
type = ChangeState
value = 23
triggerall = statetype = C
triggerall = ctrl = 1
trigger1 = command = "holdback"

;---------------------------------------------------------------------------
;vulcan
[State -1, vulcan]
type = ChangeState
value = 1250
triggerall = command = "vulcan"
;triggerall = NumProjID(1201) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------

;AirBomb_1
[State -1, AirBomb_1]
type = ChangeState
value = 1300
triggerall = command = "bomb_1"
triggerall = NumProjID(1201) = 0
trigger1 = statetype = a
trigger1 = ctrl = 1

;AirBomb_1
[State -1, AirBomb_1]
type = ChangeState
value = 1310
triggerall = command = "bomb_2"
triggerall = NumProjID(1201) = 0
trigger1 = statetype = a
trigger1 = ctrl = 1

;AirBomb_1
[State -1, AirBomb_1]
type = ChangeState
value = 1320
triggerall = command = "bomb_3"
triggerall = NumProjID(1201) = 0
trigger1 = statetype = a
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Bomb_1
[State -1, Bomb_1]
type = ChangeState
value = 1200
triggerall = command = "bomb_1"
triggerall = NumProjID(1201) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;Bomb_2
[State -1, Bomb_2]
type = ChangeState
value = 1210
triggerall = command = "bomb_2"
triggerall = NumProjID(1201) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;Bomb_3
[State -1, Bomb_3]
type = ChangeState
value = 1220
triggerall = command = "bomb_3"
triggerall = NumProjID(1201) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;Stand Laser_es
[State -1, laser_es]
type = ChangeState
value = 2000
triggerall = command = "laser_es"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1

;Stand Laser_x
[State -1, laser_x]
type = ChangeState
value = 1000
triggerall = command = "laser_x"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;low_Laser
[State -1, laser_x]
type = ChangeState
value = 1100
triggerall = command = "low_laser"
trigger1 = statetype = S
trigger1 = ctrl = 1
;===========================================================================
;---------------------------------------------------------------------------
;Air Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 110
triggerall = command = "FF"
triggerall = statetype = A
triggerall = ctrl
trigger1 = stateno = 41
;---------------------------------------------------------------------------
;Air Run Back
[State -1, Run Back]
type = ChangeState
value = 115
triggerall = command = "BB"
triggerall = statetype = A
triggerall = ctrl
trigger1 = stateno = 41

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

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
trigger2 = stateno = 430
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact

;---------------------------------------------------------------------------
;Stand FWD_middle Punch
[State -1, Stand middle Punch]
type = ChangeState
value = 211
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 430
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 440
trigger8 = movecontact


;Stand middle Punch
[State -1, Stand middle Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 430
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 440
trigger8 = movecontact

;---------------------------------------------------------------------------

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 221
triggerall = command = "fwd_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 440
trigger8 = movecontact

trigger9 = stateno = 210
trigger9 = movecontact
trigger10 = stateno = 250
trigger10 = movecontact

trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 450
trigger12 = movecontact

trigger13 = stateno = 211
trigger13 = movecontact



;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 440
trigger8 = movecontact

trigger9 = stateno = 210
trigger9 = movecontact
trigger10 = stateno = 250
trigger10 = movecontact

trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 450
trigger12 = movecontact

trigger13 = stateno = 211
trigger13 = movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 231
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x < 15 
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact


;---------------------------------------------------------------------------
;Standing FWD_Middle Kick
[State -1, Standing Middle Kick]
type = ChangeState
value = 241
triggerall = command = "fwd_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 430
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 440
trigger8 = movecontact
trigger9 = stateno = 211
trigger9 = movecontact
trigger10 = stateno = 231
trigger10 = movecontact

;Standing Middle Kick
[State -1, Standing Middle Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 430
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 440
trigger8 = movecontact
trigger9 = stateno = 211
trigger9 = movecontact
trigger10 = stateno = 231
trigger10 = movecontact

;---------------------------------------------------------------------------
;Standing FWD_strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 251
triggerall = command = "fwd_c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 440
trigger8 = movecontact

trigger9 = stateno = 210
trigger9 = movecontact
trigger10 = stateno = 220
trigger10 = movecontact

trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 450
trigger12 = movecontact
trigger13 = stateno = 241
trigger13 = movecontact
trigger14 = stateno = 231
trigger14 = movecontact

;Standing strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 440
trigger8 = movecontact

trigger9 = stateno = 210
trigger9 = movecontact
trigger10 = stateno = 220
trigger10 = movecontact

trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 450
trigger12 = movecontact
trigger13 = stateno = 241
trigger13 = movecontact
trigger14 = stateno = 221
trigger14 = movecontact
trigger15 = stateno = 231
trigger15 = movecontact
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
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
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact

;---------------------------------------------------------------------------
;Crouching Middle Punch
[State -1, Crouching middle Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 430
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 440
trigger8 = movecontact
trigger9 = stateno = 211
trigger9 = movecontact
trigger10 = stateno = 231
trigger10 = movecontact


;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 440
trigger8 = movecontact

trigger9 = stateno = 210
trigger9 = movecontact
trigger10 = stateno = 220
trigger10 = movecontact

trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = stateno = 450
trigger12 = movecontact
trigger13 = stateno = 241
trigger13 = movecontact
trigger14 = stateno = 221
trigger14 = movecontact
trigger15 = stateno = 400
trigger15 = movecontact

trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact
trigger20 = stateno = 231
trigger20 = movecontact
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact

;---------------------------------------------------------------------------
;Crouching middle Kick
[State -1, Crouching middle Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 211
trigger9 = movecontact
trigger10 = stateno = 231
trigger10 = movecontact
;---------------------------------------------------------------------------
;Crouching strong Kick
[State -1, Crouching strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact

trigger8 = stateno = 210
trigger8 = movecontact
trigger9 = stateno = 220
trigger9 = movecontact

trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 241
trigger11 = movecontact
trigger12 = stateno = 221
trigger12 = movecontact
trigger13 = stateno = 400
trigger13 = movecontact
trigger14 = stateno = 410
trigger14 = movecontact
trigger15 = stateno = 420
trigger15 = movecontact
trigger16 = stateno = 430
trigger16 = movecontact
trigger17 = stateno = 440
trigger17 = movecontact
trigger18 = stateno = 231
trigger18 = movecontact

;---------------------------------------------------------------------------
;Jump Light Punch

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump middle Punch
[State -1, Jump middle Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 620
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 651
triggerall = command = "c"
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 631
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact

;---------------------------------------------------------------------------
;Jump middle Kick
[State -1, Jump middle Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact

