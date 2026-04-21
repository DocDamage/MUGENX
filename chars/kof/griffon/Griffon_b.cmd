;=====================================================================
;  CMD File For "The Griffon"                           Made By M.M.R.
;                                       Ver. Final         2000.Jul.22
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================

;-| Super Motions |---------------------------------------------------

;---------------------------------------------------------------------
; Griffon & Marco Attack (Level 3 Only)
[Command]
name = "mar_3"
command = ~B,DB, D,DF, F, B,DB, D,DF, F, z
Time = 40

;---------------------------------------------------------------------
; Daidaros Attack (Level 1/Level 2)
[Command]
name = "dai_a"
command = ~D, DF, F, D,DF, F, a
Time = 35

[Command]
name = "dai_b"
command = ~D,DF, F, D,DF, F, b
Time = 35

;---------------------------------------------------------------------
; Big Fall Griffon (Level1/Level 2)
[Command]
name = "big_a"
command = ~B,DB, D,DF, F, B,DB, D,DF, F, x
Time = 40

[Command]
name = "big_b"
command = ~B,DB, D,DF, F, B,DB, D,DF, F, y
Time = 40

;---------------------------------------------------------------------
; Original Super Arts (Super Icarus Crush ?)
[Command]
name = "ica_b"
command = ~D, DF, F, D,DF, F, x
time = 30

;-| Special Motions |-------------------------------------------------

;---------------------------------------------------------------------
; Justice Hurricane (Light/Hard)
[Command]
name = "jus_a"
command = ~B,DB, D,DF, F, x
Time = 35

[Command]
name = "jus_b"
command = ~B,DB, D,DF, F, y
Time = 35

;---------------------------------------------------------------------
; Hercules Throw
[Command]
name = "her_a"
command = ~B,DB, D,DF, F, a
Time = 35

;---------------------------------------------------------------------
; Reversal Attack ? (Original)
[Command]
name = "rev_a"
command = ~B,DB, D,DF, F, b
Time = 35

;---------------------------------------------------------------------
; Marco strikes !! 1
[Command]
name = "mar_1"
command = ~F, D,DF, z
Time = 20

;---------------------------------------------------------------------
; Marco strikes !! 2
[Command]
name = "mar_2"
command = ~F, D,DF, c
Time = 20

;---------------------------------------------------------------------
; Poseidon Wave (Light/Hard)
[Command]
name = "pos_a"
command = ~B, D, DB, x
Time = 25

[Command]
name = "pos_b"
command = ~B, D, DB, y
Time = 25

;---------------------------------------------------------------------
; Olympus Over (Light/Hard)
[Command]
name = "oly_a"
command = ~D, DB, B, a
Time = 25

[Command]
name = "oly_b"
command = ~D, DB, B, b
Time = 25

;---------------------------------------------------------------------
; Active Typhon (Light/Hard)
[Command]
name = "act_a"
command = ~F, D, DF, x
Time = 25

[Command]
name = "act_b"
command = ~F, D, DF, y
Time = 25

;---------------------------------------------------------------------
; Icarus Crush
[Command]
name = "ica_a"
command = ~D,DF, F, x
Time = 25

;---------------------------------------------------------------------
; GriFall
[Command]
name = "grifall"
command = ~DB,DB, y

;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "by"
command = b+y
time = 1

[Command]
name = "xy"
command = x+y
time = 1

;-| Dir + Button |----------------------------------------------------
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
name = "fwd_y"
command = /F,y
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

[Command]
name = "down_xy"
command = /D, x+y
time = 3

[Command]
name = "fwd_xy"
command = /F, x+y
time = 3

;-| Single Button |---------------------------------------------------
[Command]
name = "a"
command = x
time = 1

[Command]
name = "b"
command = a
time = 1

[Command]
name = "c"
command = y
time = 1

[Command]
name = "d"
command = b
time = 1

[Command]
name = "y"
command = c
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------
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
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "upback"
command = UB
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "downback"
command = DB
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]

;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------
; Griffon & Marco Attack (Level 3)
[State -1]
type = ChangeState
value = 6500
triggerall = command = "mar_3"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 205
trigger4 = stateno = 225
trigger5 = stateno = 210
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 6500
triggerall = command = "mar_3"
triggerall = power >= 3000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Daidaros Attack (Level 1)
[State -1]
type = ChangeState
value = 3000
triggerall = command = "dai_a"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 225
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 3000
triggerall = command = "dai_a"
triggerall = power >= 1000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Daidaros Attack (Level 2)
[State -1]
type = ChangeState
value = 3100
triggerall = command = "dai_b"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 225
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 3100
triggerall = command = "dai_b"
triggerall = power >= 2000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Big Fall Griffon (Level 1)
[State -1]
type = ChangeState
value = 3200
triggerall = command = "big_a"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 205
trigger4 = stateno = 225
trigger5 = stateno = 210
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 3200
triggerall = command = "big_a"
triggerall = power >= 1000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Big Fall Griffon (Level 2)
[State -1]
type = ChangeState
value = 3400
triggerall = command = "big_b"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 205
trigger4 = stateno = 225
trigger5 = stateno = 210
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 3400
triggerall = command = "big_b"
triggerall = power >= 2000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Original Super Arts (Super Icarus Crush ?)
[State -1]
type = ChangeState
value = 7200
triggerall = command = "ica_b"
triggerall = statetype = A
triggerall = Pos Y <= -10
triggerall = StateNo != 105
triggerall = Power >= 1000
trigger1 = ctrl = 1
trigger2 = StateNo = 610
trigger2 = MoveContact = 0

[State -1]
type = ChangeState
value = 7200
triggerall = command = "ica_b"
triggerall = Var(9) = 1
triggerall = StateType = A
triggerall = Power >= 1000
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; Justice Hurricane (Light/Hard)
[State -1]
type = ChangeState
value = 1500
triggerall = command = "jus_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 205
trigger4 = stateno = 225
trigger5 = stateno = 210
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 1500
triggerall = command = "jus_a"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1600
triggerall = command = "jus_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 205
trigger4 = stateno = 225
trigger5 = stateno = 210
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 1600
triggerall = command = "jus_b"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Hercules Throw
[State -1]
type = ChangeState
value = 1700
triggerall = command = "her_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 205
trigger4 = stateno = 225
trigger5 = stateno = 210
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 1700
triggerall = command = "her_a"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Reversal Attack ? (Original)
[State -1]
type = ChangeState
value = 7000
triggerall = command = "rev_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 225
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 7000
triggerall = command = "rev_a"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Marco Strikes 1
[State -1]
type = ChangeState
value = 6000
triggerall = command = "mar_1"
triggerall = Var(20) > 0
triggerall = NumHelper(6100) = 0
triggerall = NumHelper(6200) = 0
triggerall = NumHelper(6700) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 225
trigger4 = movecontact
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 6000
triggerall = command = "mar_1"
triggerall = Var(20) > 0
triggerall = Var(9) = 1
triggerall = NumHelper(6100) = 0
triggerall = NumHelper(6200) = 0
triggerall = NumHelper(6700) = 0
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Marco Strikes 2
[State -1]
type = ChangeState
value = 6200
triggerall = command = "mar_2"
triggerall = Var(20) > 0
triggerall = NumHelper(6100) = 0
triggerall = NumHelper(6200) = 0
triggerall = NumHelper(6700) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 225
trigger4 = movecontact
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 6200
triggerall = command = "mar_2"
triggerall = Var(20) > 0
triggerall = Var(9) = 1
triggerall = StateType != A
triggerall = NumHelper(6100) = 0
triggerall = NumHelper(6200) = 0
triggerall = NumHelper(6700) = 0
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Poseidon Wave (Light/Hard)
[State -1]
type = ChangeState
value = 1050
triggerall = command = "pos_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 225
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 1050
triggerall = command = "pos_a"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1100
triggerall = command = "pos_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 225
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 1100
triggerall = command = "pos_b"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Olympus Over (Light/Hard)
[State -1]
type = ChangeState
value = 1150
triggerall = command = "oly_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 225
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 1150
triggerall = command = "oly_a"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1200
triggerall = command = "oly_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 225
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 1200
triggerall = command = "oly_b"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Active Typhon (Light/Hard)
[State -1]
type = ChangeState
value = 1300
triggerall = command = "act_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 225
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 1300
triggerall = command = "act_a"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1400
triggerall = command = "act_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 225
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 300

[State -1]
type = ChangeState
value = 1400
triggerall = command = "act_b"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Icarus Crush
[State -1]
type = ChangeState
value = 1800
triggerall = command = "ica_a"
triggerall = statetype = A
triggerall = Pos Y <= -10
triggerall = StateNo != 105
trigger1 = ctrl = 1
trigger2 = StateNo = 610
trigger2 = MoveContact = 0

[State -1]
type = ChangeState
value = 1800
triggerall = command = "ica_a"
triggerall = Var(9) = 1
triggerall = StateType = A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
;Standing Throw1 (Griffon Tower)
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "fwd_y"
trigger1 = p2bodydist X < 8
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_y"
trigger2 = p2bodydist X < 8
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_y"
trigger3 = p2bodydist X < 20
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_y"
trigger4 = p2bodydist X < 20
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;---------------------------------------------------------------------
; GriFall (During Griffon Tower)
[State -1]
type = VarSet
v = 1
value = 1
triggerall = stateno = 905
triggerall = Time > 1
triggerall = Time <= 54
trigger1 = command = "grifall"

;---------------------------------------------------------------------
;Standing Grab1 (GriHag)
[State -1]
type = ChangeState
value = 950
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "fwd_b"
trigger1 = p2bodydist X < 8
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b"
trigger2 = p2bodydist X < 8
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b"
trigger3 = p2bodydist X < 20
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b"
trigger4 = p2bodydist X < 20
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;---------------------------------------------------------------------
; Avoiding Attack , T.O.P. Attack , Fake Action
;---------------------------------------------------------------------
;---------------------------------------------------------------------
;Avoiding Attack (To avoid High Attacks)
[State -1]
type = ChangeState
value = 600
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 600
triggerall = command = "ax"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; Avoiding Attack (To avoid Low Attacks)
[State -1]
type = ChangeState
value = 610
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 610
triggerall = command = "ax"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; T.O.P. Attack
[State -1]
type = ChangeState
value = 700
triggerall = Var(5) = 1
triggerall = command != "holddown"
triggerall = StateType = S
triggerall = ctrl = 1
trigger1 = command = "y"
trigger2 = command = "by"

;---------------------------------------------------------------------
; Fake Action 1
[State -1]
type = ChangeState
value =1900
triggerall = command = "down_xy"
triggerall = ctrl = 1
trigger1 = StateType = S
trigger2 = StateType = C
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 225
trigger5 = movecontact
trigger5 = stateno = 210
trigger6 = movecontact
trigger6 = stateno = 300

; Fake Action 2
[State -1]
type = ChangeState
value = 1950
triggerall = command = "fwd_xy"
triggerall = ctrl = 1
trigger1 = StateType = S
trigger2 = movecontact
trigger2 = stateno = 205
trigger3 = movecontact
trigger3 = stateno = 225
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 300

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; Taunts 1
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = StateType = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; Taunts 2
;[State -1]
;type = ChangeState
;value = 196
;triggerall = command = "s_2"
;trigger1 = StateType = S
;trigger1 = ctrl = 1

;---------------------------------------------------------------------
; Taunt 3
;[State -1]
;type = ChangeState
;value = 197
;triggerall = command = "s_3"
;trigger1 = StateType = S
;trigger1 = ctrl = 1

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
;Standing A - At the Close Range - (Weak Punch)
[State -1]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X < 30
triggerall = ctrl = 1
trigger1 = statetype = S

;---------------------------------------------------------------------
;Standing B (Weak Kick)
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = ctrl = 1
trigger1 = statetype = S

;---------------------------------------------------------------------
;Standing C (Heavy Punch)
[State -1]
type = ChangeState
value = 215
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
;Standing D - At the Close Range - (Heavy Kick)
[State -1]
type = ChangeState
value = 220
triggerall = command = "d"
triggerall = command != "holddown"
triggerall = P2bodydist X < 30
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
;Standing A - At the Long Range - (Weak Punch)
[State -1]
type = ChangeState
value = 225
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist   X >= 30 
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
;Standing D - At the Long Range - (Heavy Kick)
[State -1]
type = ChangeState
value = 230
triggerall = command = "d"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 30
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
;Crouching A (Weak Punch)
[State -1]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------
;Crouching B (Weak Kick)
[State -1]
type = ChangeState
value = 310
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------
;Crouching C (Heavy Punch)
[State -1]
type = ChangeState
value = 320
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------
;Crouching D (Heavy Kick)
[State -1]
type = ChangeState
value = 330
triggerall = command = "d"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------
;Jumping A (Weak Punch)
[State -1]
type = ChangeState
value = 500
triggerall = command = "a"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
;Jumping B (Weak Kick)
[State -1]
type = ChangeState
value = 510
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
;Jumping C (Heavy Pucnh)
[State -1]
type = ChangeState
value = 520
triggerall = command = "c"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
;Jumping D (Heavy Kick)
[State -1]
type = ChangeState
value = 530
triggerall = command = "d"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105







