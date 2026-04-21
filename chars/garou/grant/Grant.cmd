;=====================================================================
;  CMD File For "Grant"                                 Made By M.M.R.
;                                       Ver. Final         2000.Oct.04
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================

;-| CPU Function |----------------------------------------------------
[Command]
name = "cpu"
command = ~D,DF, F, a
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, b
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, c
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, a
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, b
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, c
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, a
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, b
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, c
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, a
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, b
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, c
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, s
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, s
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, x
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, y
time = 1

[Command]
name = "cpu"
command = ~D,UB, F, z
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, x
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, y
time = 1

[Command]
name = "cpu"
command = ~D,DB, F, z
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, x
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, y
time = 1

[Command]
name = "cpu"
command = ~D,DB, B, z
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, x
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, y
time = 1

[Command]
name = "cpu"
command = ~D,DF, F, z
time = 1


;-| Super Motions |---------------------------------------------------

;---------------------------------------------------------------------
; ê^ñÇê_ñ≈óÙÅiÇkÇñÇRÅj
[Command]
name = "deadly"
command = ~F,DF, D,DB, B, F, x
time = 35

[Command]
name = "deadly_b"
command = ~D,DF, F, y
time = 20

;---------------------------------------------------------------------
; ñÇê_îjìVíeÅiÇkÇñÇPÅ^ÇkÇñÇQÅ^ÇkÇñÇRÅj
[Command]
name = "hat_a"
command = ~D,DF, F, D,DF, F, x
Time = 35

[Command]
name = "hat_b"
command = ~D,DF, F, D,DF, F, y
Time = 35

[Command]
name = "hat_c"
command = ~D,DF, F, D,DF, F, z
Time = 35

;---------------------------------------------------------------------
; ñÇê_â~åéó÷ÅiÇkÇñÇPÅ^ÇkÇñÇQÅ^ÇkÇñÇRÅj
[Command]
name = "eng_a"
command = ~D,DF, F, D,DF, F, a
Time = 35

[Command]
name = "eng_b"
command = ~D,DF, F, D,DF, F, b
Time = 35

[Command]
name = "eng_c"
command = ~D,DF, F, D,DF, F, c
Time = 35

;-| Special Motions |-------------------------------------------------

;---------------------------------------------------------------------
; çïâäó¨ÅEé„Å^ã≠
[Command]
name = "kok_a"
command = ~D,DB, B, x
Time = 25

[Command]
name = "kok_b"
command = ~D,DB, B, y
Time = 25

;---------------------------------------------------------------------
; ã•íπênÅEé„Å^ã≠
[Command]
name = "kyo_a"
command = ~F, D,DF, x
Time = 25

[Command]
name = "kyo_b"
command = ~F, D,DF, y
Time = 25

;---------------------------------------------------------------------
; ñ≈èƒîÚôãÅEé„Å^ã≠
[Command]
name = "met_a"
command = D, a
Time = 12

[Command]
name = "met_b"
command = D, b
Time = 12

;---------------------------------------------------------------------
; çãíeäNÅEé„Å^ã≠
[Command]
name = "gou_a"
command = ~D,DF, F, a
Time = 25

[Command]
name = "gou_b"
command = ~D,DF, F, b
Time = 25

;---------------------------------------------------------------------
; çÑóÛè’ÅEé„Å^ã≠
[Command]
name = "ret_a"
command = ~F, B, F, x
Time = 25

[Command]
name = "ret_b"
command = ~F, B, F, y
Time = 25

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
name = "fwd_x"
command = /F,x
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
name = "downfwd_y"
command = /DF,y
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
; CPU Function
;=====================================================================
;
[State -1]
type = ChangeState
triggerall = Var(30) = 1
triggerall = StateType = S
triggerall = Ctrl = 1
triggerall = P2Life > 0
trigger1 = P2BodyDist X <= 50
trigger1 = P2BodyDist Y < 10
trigger1 = Var(29) = [0,49]
value = 1150

[State -1]
type = ChangeState
triggerall = Var(30) = 1
triggerall = StateType = S
triggerall = Ctrl = 1
triggerall = P2Life > 0
trigger1 = Power >= 1000
trigger1 = Power < 2000
trigger1 = P2BodyDist X <= 50
trigger1 = P2BodyDist Y < 10
trigger1 = Var(29) = [70,90]
value = 3000

[State -1]
type = ChangeState
triggerall = Var(30) = 1
triggerall = StateType = S
triggerall = Ctrl = 1
triggerall = P2Life > 0
trigger1 = Power >= 2000
trigger1 = Power < 3000
trigger1 = P2BodyDist X <= 50
trigger1 = P2BodyDist Y < 10
trigger1 = Var(29) = [70,90]
value = 3100

[State -1]
type = ChangeState
triggerall = Var(30) = 1
triggerall = StateType = S
triggerall = Ctrl = 1
triggerall = P2Life > 0
trigger1 = Power >= 3000
trigger1 = P2BodyDist X <= 50
trigger1 = P2BodyDist Y < 10
trigger1 = Var(29) = [70,90]
value = 3200

;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------
; ê^ñÇê_ñ≈óÙÅ@(Level 3)
[State -1]
type = ChangeState
value = 6000
triggerall = command = "deadly"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact = 1
trigger3 = stateno = 205
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 215
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 5, >= 0
trigger5 = movecontact = 1
trigger5 = stateno = 220
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 225
trigger6 = AnimElem = 6, >= 0
trigger6 = AnimElem = 8, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 300
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 310
trigger8 = AnimElem = 4, >= 0
trigger8 = AnimElem = 6, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 330
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 8, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 600
trigger10 = AnimElem = 12, >= 0
trigger10 = AnimElem = 14, <= 0
trigger11 = MoveContact = 1
trigger11 = StateNo = 800
trigger11 = AnimElem = 4, >= 0
trigger11 = AnimElem = 6, <= 0

[State -1]
type = ChangeState
value = 6000
triggerall = command = "deadly"
triggerall = power >= 3000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; ñÇê_îjìVíe (Level 1)
[State -1]
type = ChangeState
value = 3000
triggerall = command = "hat_a"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact = 1
trigger3 = stateno = 205
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 215
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 5, >= 0
trigger5 = movecontact = 1
trigger5 = stateno = 220
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 225
trigger6 = AnimElem = 6, >= 0
trigger6 = AnimElem = 8, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 300
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 310
trigger8 = AnimElem = 4, >= 0
trigger8 = AnimElem = 6, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 330
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 8, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 600
trigger10 = AnimElem = 12, >= 0
trigger10 = AnimElem = 14, <= 0
trigger11 = MoveContact = 1
trigger11 = StateNo = 800
trigger11 = AnimElem = 4, >= 0
trigger11 = AnimElem = 6, <= 0

[State -1]
type = ChangeState
value = 3000
triggerall = command = "hat_a"
triggerall = power >= 1000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; ñÇê_îjìVíe (Level 2)
[State -1]
type = ChangeState
value = 3100
triggerall = command = "hat_b"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact = 1
trigger3 = stateno = 205
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 215
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 5, >= 0
trigger5 = movecontact = 1
trigger5 = stateno = 220
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 225
trigger6 = AnimElem = 6, >= 0
trigger6 = AnimElem = 8, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 300
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 310
trigger8 = AnimElem = 4, >= 0
trigger8 = AnimElem = 6, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 330
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 8, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 600
trigger10 = AnimElem = 12, >= 0
trigger10 = AnimElem = 14, <= 0
trigger11 = MoveContact = 1
trigger11 = StateNo = 800
trigger11 = AnimElem = 4, >= 0
trigger11 = AnimElem = 6, <= 0

[State -1]
type = ChangeState
value = 3100
triggerall = command = "hat_b"
triggerall = power >= 2000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; ñÇê_îjìVíe (Level 3)
[State -1]
type = ChangeState
value = 3200
triggerall = command = "hat_c"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact = 1
trigger3 = stateno = 205
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 215
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 5, >= 0
trigger5 = movecontact = 1
trigger5 = stateno = 220
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 225
trigger6 = AnimElem = 6, >= 0
trigger6 = AnimElem = 8, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 300
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 310
trigger8 = AnimElem = 4, >= 0
trigger8 = AnimElem = 6, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 330
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 8, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 600
trigger10 = AnimElem = 12, >= 0
trigger10 = AnimElem = 14, <= 0
trigger11 = MoveContact = 1
trigger11 = StateNo = 800
trigger11 = AnimElem = 4, >= 0
trigger11 = AnimElem = 6, <= 0

[State -1]
type = ChangeState
value = 3200
triggerall = command = "hat_c"
triggerall = power >= 3000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; ñÇê_â~åéó÷ (Level 1)
[State -1]
type = ChangeState
value = 3500
triggerall = command = "eng_a"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact = 1
trigger3 = stateno = 205
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 215
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 5, >= 0
trigger5 = movecontact = 1
trigger5 = stateno = 220
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 225
trigger6 = AnimElem = 6, >= 0
trigger6 = AnimElem = 8, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 300
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 310
trigger8 = AnimElem = 4, >= 0
trigger8 = AnimElem = 6, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 330
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 8, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 600
trigger10 = AnimElem = 12, >= 0
trigger10 = AnimElem = 14, <= 0
trigger11 = MoveContact = 1
trigger11 = StateNo = 800
trigger11 = AnimElem = 4, >= 0
trigger11 = AnimElem = 6, <= 0

[State -1]
type = ChangeState
value = 3500
triggerall = command = "eng_a"
triggerall = power >= 1000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; ñÇê_â~åéó÷ (Level 2)
[State -1]
type = ChangeState
value = 3600
triggerall = command = "eng_b"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact = 1
trigger3 = stateno = 205
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 215
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 5, >= 0
trigger5 = movecontact = 1
trigger5 = stateno = 220
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 225
trigger6 = AnimElem = 6, >= 0
trigger6 = AnimElem = 8, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 300
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 310
trigger8 = AnimElem = 4, >= 0
trigger8 = AnimElem = 6, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 330
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 8, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 600
trigger10 = AnimElem = 12, >= 0
trigger10 = AnimElem = 14, <= 0
trigger11 = MoveContact = 1
trigger11 = StateNo = 800
trigger11 = AnimElem = 4, >= 0
trigger11 = AnimElem = 6, <= 0

[State -1]
type = ChangeState
value = 3600
triggerall = command = "eng_b"
triggerall = power >= 2000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; ñÇê_â~åéó÷ (Level 3)
[State -1]
type = ChangeState
value = 3700
triggerall = command = "eng_c"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact = 1
trigger3 = stateno = 205
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 215
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 5, >= 0
trigger5 = movecontact = 1
trigger5 = stateno = 220
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 225
trigger6 = AnimElem = 6, >= 0
trigger6 = AnimElem = 8, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 300
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 310
trigger8 = AnimElem = 4, >= 0
trigger8 = AnimElem = 6, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 330
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 8, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 600
trigger10 = AnimElem = 12, >= 0
trigger10 = AnimElem = 14, <= 0
trigger11 = MoveContact = 1
trigger11 = StateNo = 800
trigger11 = AnimElem = 4, >= 0
trigger11 = AnimElem = 6, <= 0

[State -1]
type = ChangeState
value = 3700
triggerall = command = "eng_c"
triggerall = power >= 3000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; ã•íπênÅEé„Å^ã≠
[State -1]
type = ChangeState
value = 1100
triggerall = command = "kyo_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact = 1
trigger3 = stateno = 205
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 215
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 5, >= 0
trigger5 = movecontact = 1
trigger5 = stateno = 220
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 225
trigger6 = AnimElem = 6, >= 0
trigger6 = AnimElem = 8, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 300
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 310
trigger8 = AnimElem = 4, >= 0
trigger8 = AnimElem = 6, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 330
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 8, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 600
trigger10 = AnimElem = 12, >= 0
trigger10 = AnimElem = 14, <= 0
trigger11 = MoveContact = 1
trigger11 = StateNo = 800
trigger11 = AnimElem = 4, >= 0
trigger11 = AnimElem = 6, <= 0

[State -1]
type = ChangeState
value = 1100
triggerall = command = "kyo_a"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1150
triggerall = command = "kyo_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact = 1
trigger3 = stateno = 205
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 215
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 5, >= 0
trigger5 = movecontact = 1
trigger5 = stateno = 220
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 225
trigger6 = AnimElem = 6, >= 0
trigger6 = AnimElem = 8, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 300
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 310
trigger8 = AnimElem = 4, >= 0
trigger8 = AnimElem = 6, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 330
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 8, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 600
trigger10 = AnimElem = 12, >= 0
trigger10 = AnimElem = 14, <= 0
trigger11 = MoveContact = 1
trigger11 = StateNo = 800
trigger11 = AnimElem = 4, >= 0
trigger11 = AnimElem = 6, <= 0

[State -1]
type = ChangeState
value = 1150
triggerall = command = "kyo_b"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; çãíeäNÅEé„Å^ã≠
[State -1]
type = ChangeState
value = 1300
triggerall = command = "gou_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact = 1
trigger3 = stateno = 205
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 215
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 5, >= 0
trigger5 = movecontact = 1
trigger5 = stateno = 220
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 225
trigger6 = AnimElem = 6, >= 0
trigger6 = AnimElem = 8, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 300
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 310
trigger8 = AnimElem = 4, >= 0
trigger8 = AnimElem = 6, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 330
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 8, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 600
trigger10 = AnimElem = 12, >= 0
trigger10 = AnimElem = 14, <= 0
trigger11 = MoveContact = 1
trigger11 = StateNo = 800
trigger11 = AnimElem = 4, >= 0
trigger11 = AnimElem = 6, <= 0

[State -1]
type = ChangeState
value = 1300
triggerall = command = "gou_a"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1350
triggerall = command = "gou_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact = 1
trigger3 = stateno = 205
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 215
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 5, >= 0
trigger5 = movecontact = 1
trigger5 = stateno = 220
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 225
trigger6 = AnimElem = 6, >= 0
trigger6 = AnimElem = 8, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 300
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 310
trigger8 = AnimElem = 4, >= 0
trigger8 = AnimElem = 6, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 330
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 8, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 600
trigger10 = AnimElem = 12, >= 0
trigger10 = AnimElem = 14, <= 0
trigger11 = MoveContact = 1
trigger11 = StateNo = 800
trigger11 = AnimElem = 4, >= 0
trigger11 = AnimElem = 6, <= 0

[State -1]
type = ChangeState
value = 1350
triggerall = command = "gou_b"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; çÑóÛè’ÅEé„Å^ã≠
[State -1]
type = ChangeState
value = 1400
triggerall = command = "ret_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact = 1
trigger3 = stateno = 205
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 215
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 5, >= 0
trigger5 = movecontact = 1
trigger5 = stateno = 220
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 225
trigger6 = AnimElem = 6, >= 0
trigger6 = AnimElem = 8, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 300
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 310
trigger8 = AnimElem = 4, >= 0
trigger8 = AnimElem = 6, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 330
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 8, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 600
trigger10 = AnimElem = 12, >= 0
trigger10 = AnimElem = 14, <= 0
trigger11 = MoveContact = 1
trigger11 = StateNo = 800
trigger11 = AnimElem = 4, >= 0
trigger11 = AnimElem = 6, <= 0

[State -1]
type = ChangeState
value = 1400
triggerall = command = "ret_a"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1450
triggerall = command = "ret_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact = 1
trigger3 = stateno = 205
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 215
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 5, >= 0
trigger5 = movecontact = 1
trigger5 = stateno = 220
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 225
trigger6 = AnimElem = 6, >= 0
trigger6 = AnimElem = 8, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 300
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 310
trigger8 = AnimElem = 4, >= 0
trigger8 = AnimElem = 6, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 330
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 8, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 600
trigger10 = AnimElem = 12, >= 0
trigger10 = AnimElem = 14, <= 0
trigger11 = MoveContact = 1
trigger11 = StateNo = 800
trigger11 = AnimElem = 4, >= 0
trigger11 = AnimElem = 6, <= 0

[State -1]
type = ChangeState
value = 1450
triggerall = command = "ret_b"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; çïâäó¨ÅEé„Å^ã≠
[State -1]
type = ChangeState
value = 1000
triggerall = command = "kok_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact = 1
trigger3 = stateno = 205
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 215
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 5, >= 0
trigger5 = movecontact = 1
trigger5 = stateno = 220
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 225
trigger6 = AnimElem = 6, >= 0
trigger6 = AnimElem = 8, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 300
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 310
trigger8 = AnimElem = 4, >= 0
trigger8 = AnimElem = 6, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 330
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 8, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 600
trigger10 = AnimElem = 12, >= 0
trigger10 = AnimElem = 14, <= 0
trigger11 = MoveContact = 1
trigger11 = StateNo = 800
trigger11 = AnimElem = 4, >= 0
trigger11 = AnimElem = 6, <= 0

[State -1]
type = ChangeState
value = 1000
triggerall = command = "kok_a"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1050
triggerall = command = "kok_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact = 1
trigger3 = stateno = 205
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 215
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 5, >= 0
trigger5 = movecontact = 1
trigger5 = stateno = 220
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 225
trigger6 = AnimElem = 6, >= 0
trigger6 = AnimElem = 8, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 300
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 310
trigger8 = AnimElem = 4, >= 0
trigger8 = AnimElem = 6, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 330
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 8, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 600
trigger10 = AnimElem = 12, >= 0
trigger10 = AnimElem = 14, <= 0
trigger11 = MoveContact = 1
trigger11 = StateNo = 800
trigger11 = AnimElem = 4, >= 0
trigger11 = AnimElem = 6, <= 0

[State -1]
type = ChangeState
value = 1050
triggerall = command = "kok_b"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; ñ≈èƒîÚôãÅEé„Å^ã≠
[State -1]
type = ChangeState
value = 1200
triggerall = Var(30) = 0
triggerall = command = "met_a"
triggerall = StateNo != 105
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = StateNo = 1110
trigger3 = StateNo = 1120
trigger3 = AnimElem = 4, < 0
trigger4 = StateNo = 1160
trigger5 = StateNo = 1170
trigger5 = AnimElem = 4, < 0
trigger6 = StateNo = 620
trigger6 = MoveContact = 0
trigger7 = StateNo = 1115
trigger8 = StateNo = 6210
trigger9 = StateNo = 6220
trigger9 = AnimElem = 4, < 0

[State -1]
type = ChangeState
value = 1200
triggerall = Var(30) = 1
triggerall = command = "met_a"
triggerall = StateNo != 105
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = Pos Y <= -150
trigger2 = StateNo = 1110
trigger3 = Pos Y <= -150
trigger3 = StateNo = 1120
trigger3 = AnimElem = 4, < 0
trigger4 = Pos Y <= -150
trigger4 = StateNo = 1160
trigger5 = Pos Y <= -150
trigger5 = StateNo = 1170
trigger5 = AnimElem = 4, < 0
trigger6 = StateNo = 620
trigger6 = MoveContact = 0
trigger7 = StateNo = 1115
trigger7 = Pos Y <= -150

[State -1]
type = ChangeState
value = 1200
triggerall = command = "met_a"
triggerall = Var(9) = 1
triggerall = StateType = A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1250
triggerall = Var(30) = 0
triggerall = command = "met_b"
triggerall = StateNo != 105
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = StateNo = 1110
trigger3 = StateNo = 1120
trigger3 = AnimElem = 4, < 0
trigger4 = StateNo = 1160
trigger5 = StateNo = 1170
trigger5 = AnimElem = 4, < 0
trigger6 = StateNo = 620
trigger6 = MoveContact = 0
trigger7 = StateNo = 1115
trigger8 = StateNo = 6210
trigger9 = StateNo = 6220
trigger9 = AnimElem = 4, < 0

[State -1]
type = ChangeState
value = 1250
triggerall = Var(30) = 1
triggerall = command = "met_b"
triggerall = StateNo != 105
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = Pos Y <= -200
trigger2 = StateNo = 1110
trigger3 = Pos Y <= -200
trigger3 = StateNo = 1120
trigger3 = AnimElem = 4, < 0
trigger4 = Pos Y <= -200
trigger4 = StateNo = 1160
trigger5 = Pos Y <= -200
trigger5 = StateNo = 1170
trigger5 = AnimElem = 4, < 0
trigger6 = StateNo = 620
trigger6 = MoveContact = 0
trigger7 = StateNo = 1115
trigger7 = Pos Y <= -150

[State -1]
type = ChangeState
value = 1250
triggerall = command = "met_b"
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
trigger1 = StateNo != 100

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
; à√çïóéÇ∆Çµ
[State -1]
type = ChangeState
value = 900
triggerall = StateNo != 100
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
; Avoiding Attack , T.O.P. Attack , Fake Action
;---------------------------------------------------------------------
;---------------------------------------------------------------------
; è„íiîÇØçUåÇ
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
; â∫íiîÇØçUåÇ
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

[State -1]
type = ChangeState
value = 700
triggerall = Var(5) = 1
triggerall = StateType != A
triggerall = command = "y"
trigger1 = movecontact = 1
trigger1 = stateno = 205
trigger1 = AnimElem = 6, <= 0
trigger1 = AnimElem = 4, >= 0
trigger2 = movecontact = 1
trigger2 = stateno = 215
trigger2 = AnimElem = 6, <= 0
trigger2 = AnimElem = 5, >= 0
trigger3 = movecontact = 1
trigger3 = stateno = 220
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = MoveContact = 1
trigger4 = StateNo = 225
trigger4 = AnimElem = 6, >= 0
trigger4 = AnimElem = 8, <= 0
trigger5 = MoveContact = 1
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, >= 0
trigger5 = AnimElem = 6, <= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 310
trigger6 = AnimElem = 4, >= 0
trigger6 = AnimElem = 6, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 330
trigger7 = AnimElem = 6, >= 0
trigger7 = AnimElem = 8, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 600
trigger8 = AnimElem = 12, >= 0
trigger8 = AnimElem = 14, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 800
trigger9 = AnimElem = 4, >= 0
trigger9 = AnimElem = 6, <= 0

[State -1]
type = ChangeState
value = 700
triggerall = Var(5) = 1
triggerall = StateType != A
triggerall = command = "by"
trigger1 = stateno = 205
trigger1 = AnimElem = 6, <= 0
trigger1 = AnimElem = 4, >= 0
trigger2 = movecontact = 1
trigger2 = stateno = 215
trigger2 = AnimElem = 6, <= 0
trigger2 = AnimElem = 5, >= 0
trigger3 = movecontact = 1
trigger3 = stateno = 220
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = MoveContact = 1
trigger4 = StateNo = 225
trigger4 = AnimElem = 6, >= 0
trigger4 = AnimElem = 8, <= 0
trigger5 = MoveContact = 1
trigger5 = StateNo = 300
trigger5 = AnimElem = 4, >= 0
trigger5 = AnimElem = 6, <= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 310
trigger6 = AnimElem = 4, >= 0
trigger6 = AnimElem = 6, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 330
trigger7 = AnimElem = 6, >= 0
trigger7 = AnimElem = 8, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 600
trigger8 = AnimElem = 12, >= 0
trigger8 = AnimElem = 14, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 800
trigger9 = AnimElem = 4, >= 0
trigger9 = AnimElem = 6, <= 0

;---------------------------------------------------------------------
; Fake Action 1
[State -1]
type = ChangeState
value =1900
triggerall = command = "down_xy"
trigger1 = ctrl = 1
trigger1 = StateType = S
trigger2 = StateType = C
trigger2 = ctrl = 1
trigger3 = movecontact = 1
trigger3 = stateno = 205
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 215
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 5, >= 0
trigger5 = movecontact = 1
trigger5 = stateno = 220
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 225
trigger6 = AnimElem = 6, >= 0
trigger6 = AnimElem = 8, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 300
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 310
trigger8 = AnimElem = 4, >= 0
trigger8 = AnimElem = 6, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 330
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 8, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 600
trigger10 = AnimElem = 12, >= 0
trigger10 = AnimElem = 14, <= 0
trigger11 = MoveContact = 1
trigger11 = StateNo = 800
trigger11 = AnimElem = 4, >= 0
trigger11 = AnimElem = 6, <= 0

; Fake Action 2
[State -1]
type = ChangeState
value = 1950
triggerall = command = "fwd_xy"
trigger1 = ctrl = 1
trigger1 = StateType = S
trigger2 = movecontact = 1
trigger2 = stateno = 205
trigger2 = AnimElem = 6, <= 0
trigger2 = AnimElem = 4, >= 0
trigger3 = movecontact = 1
trigger3 = stateno = 215
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 5, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 220
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 4, >= 0
trigger5 = MoveContact = 1
trigger5 = StateNo = 225
trigger5 = AnimElem = 6, >= 0
trigger5 = AnimElem = 8, <= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 300
trigger6 = AnimElem = 4, >= 0
trigger6 = AnimElem = 6, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 310
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, >= 0
trigger8 = AnimElem = 8, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 600
trigger9 = AnimElem = 12, >= 0
trigger9 = AnimElem = 14, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 800
trigger10 = AnimElem = 4, >= 0
trigger10 = AnimElem = 6, <= 0

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
trigger2 = movecontact = 1
trigger2 = stateno = 205
trigger2 = AnimElem = 6, <= 0
trigger2 = AnimElem = 4, >= 0
trigger3 = movecontact = 1
trigger3 = stateno = 215
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 5, >= 0
trigger4 = movecontact = 1
trigger4 = stateno = 220
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 4, >= 0
trigger5 = MoveContact = 1
trigger5 = StateNo = 225
trigger5 = AnimElem = 6, >= 0
trigger5 = AnimElem = 8, <= 0
trigger6 = MoveContact = 1
trigger6 = StateNo = 300
trigger6 = AnimElem = 4, >= 0
trigger6 = AnimElem = 6, <= 0
trigger7 = MoveContact = 1
trigger7 = StateNo = 310
trigger7 = AnimElem = 4, >= 0
trigger7 = AnimElem = 6, <= 0
trigger8 = MoveContact = 1
trigger8 = StateNo = 330
trigger8 = AnimElem = 6, >= 0
trigger8 = AnimElem = 8, <= 0
trigger9 = MoveContact = 1
trigger9 = StateNo = 600
trigger9 = AnimElem = 12, >= 0
trigger9 = AnimElem = 14, <= 0
trigger10 = MoveContact = 1
trigger10 = StateNo = 800
trigger10 = AnimElem = 4, >= 0
trigger10 = AnimElem = 6, <= 0

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
; Dir + Button
;=====================================================================

;---------------------------------------------------------------------
; ñÇï«
[State -1]
type = ChangeState
value = 800
triggerall = command = "downfwd_y"
triggerall = StateType != A
;triggerall = command != "holddown"
trigger1 = ctrl = 1
;trigger1 = statetype = S

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; ãﬂãóó£é„ÉpÉìÉ`
[State -1]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X < 25
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = StateNo = 205
trigger2 = Time >= 6

;---------------------------------------------------------------------
; ãﬂÅ^âìãóó£é„ÉLÉbÉN
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = ctrl = 1
trigger1 = statetype = S

;---------------------------------------------------------------------
; ãﬂãóó£ã≠ÉpÉìÉ`
[State -1]
type = ChangeState
value = 215
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2bodydist X < 25
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; ãﬂãóó£ã≠ÉLÉbÉN
[State -1]
type = ChangeState
value = 220
triggerall = command = "d"
triggerall = command != "holddown"
triggerall = P2bodydist X < 25
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; âìãóó£é„ÉpÉìÉ`
[State -1]
type = ChangeState
value = 225
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist   X >= 25 
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = StateNo = 205
trigger3 = StateNo = 225
trigger3 = Time >= 6

;---------------------------------------------------------------------
; âìãóó£ã≠ÉpÉìÉ`
[State -1]
type = ChangeState
value = 235
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2bodydist   X >= 25 
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; âìãóó£ã≠ÉLÉbÉN
[State -1]
type = ChangeState
value = 240
triggerall = command = "d"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 25
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; ÇµÇ·Ç™Ç›é„ÉpÉìÉ`
[State -1]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = StateNo = 300
trigger2 = Time >= 11

;---------------------------------------------------------------------
; ÇµÇ·Ç™Ç›é„ÉLÉbÉN
[State -1]
type = ChangeState
value = 310
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = StateNo = 310
trigger2 = Time >= 7

;---------------------------------------------------------------------
; ÇµÇ·Ç™Ç›ã≠ÉpÉìÉ`
[State -1]
type = ChangeState
value = 320
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; ÇµÇ·Ç™Ç›ã≠ÉLÉbÉN
[State -1]
type = ChangeState
value = 330
triggerall = command = "d"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; ÉWÉÉÉìÉvé„ÉpÉìÉ`
[State -1]
type = ChangeState
value = 500
triggerall = command = "a"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ÉWÉÉÉìÉvé„ÉLÉbÉN
[State -1]
type = ChangeState
value = 510
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ÉWÉÉÉìÉvã≠ÉpÉìÉ`
[State -1]
type = ChangeState
value = 520
triggerall = command = "c"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ÉWÉÉÉìÉvã≠ÉLÉbÉN
[State -1]
type = ChangeState
value = 530
triggerall = command = "d"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;-----------------
; Test Button
;[State -1]
;type = ChangeState
;value = 1150
;triggerall = command = "y"
;triggerall = StateType != A
;trigger1 = ctrl = 1
;trigger1 = StateType = S
;trigger2 = StateType = C
;trigger2 = ctrl = 1
;trigger3 = movecontact = 1
;trigger3 = stateno = 215
;trigger3 = AnimElem = 9, <= 0
;trigger3 = AnimElem = 8, >= 0
;trigger4 = movecontact = 1
;trigger4 = stateno = 220
;trigger4 = AnimElem = 7, <= 0
;trigger4 = AnimElem = 6, >= 0
;trigger5 = movecontact = 1
;trigger5 = stateno = 320
;trigger5 = AnimElem = 6, <= 0
;trigger5 = AnimElem = 4, >= 0
;trigger6 = MoveContact = 1
;trigger6 = StateNo = 600
;trigger6 = AnimElem = 10, >= 0
;trigger6 = AnimElem = 12, <= 0




