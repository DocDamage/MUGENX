;=====================================================================
;  CMD File For "Marco Rodriguez"                       Made By M.M.R.
;                                       Ver. 1.0           2000.Aug.24
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================

;-| CPU Function |----------------------------------------------------
[Command]
name = "cpu_a"
command = ~D,DF, F, a
time = 1

[Command]
name = "cpu_b"
command = ~D,DF, F, b
time = 1

[Command]
name = "cpu_c"
command = ~D,DF, F, c
time = 1

[Command]
name = "cpu_d"
command = ~D,DB, B, a
time = 1

[Command]
name = "cpu_e"
command = ~D,DB, B, b
time = 1

[Command]
name = "cpu_f"
command = ~D,DB, B, c
time = 1

[Command]
name = "cpu_g"
command = ~D,DB, F, a
time = 1

[Command]
name = "cpu_h"
command = ~D,DB, F, b
time = 1

[Command]
name = "cpu_i"
command = ~D,DB, F, c
time = 1

[Command]
name = "cpu_j"
command = ~D,UB, F, a
time = 1

[Command]
name = "cpu_k"
command = ~D,UB, F, b
time = 1

[Command]
name = "cpu_l"
command = ~D,UB, F, c
time = 1

[Command]
name = "cpu_m"
command = ~D,DF, F, s
time = 1

[Command]
name = "cpu_n"
command = ~D,DB, B, s
time = 1

[Command]
name = "cpu_o"
command = ~D,UB, F, x
time = 1

[Command]
name = "cpu_p"
command = ~D,UB, F, y
time = 1

[Command]
name = "cpu_q"
command = ~D,UB, F, z
time = 1

[Command]
name = "cpu_r"
command = ~D,DB, F, x
time = 1

[Command]
name = "cpu_s"
command = ~D,DB, F, y
time = 1

[Command]
name = "cpu_t"
command = ~D,DB, F, z
time = 1

[Command]
name = "cpu_u"
command = ~D,DB, B, x
time = 1

[Command]
name = "cpu_v"
command = ~D,DB, B, y
time = 1

[Command]
name = "cpu_w"
command = ~D,DB, B, z
time = 1

[Command]
name = "cpu_x"
command = ~D,DF, F, x
time = 1

[Command]
name = "cpu_y"
command = ~D,DF, F, y
time = 1

[Command]
name = "cpu_z"
command = ~D,DF, F, z
time = 1


;-| Super Motions |---------------------------------------------------

;---------------------------------------------------------------------
; Midare Hien (Lv 1 / 2 / 3)
[Command]
name = "mid_a"
command = ~D,DB, B, D,DB, B, a
time = 35

[Command]
name = "mid_b"
command = ~D,DB, B, D,DB, B, b
time = 35

[Command]
name = "mid_c"
command = ~D,DB, B, D,DB, B, c
time = 35

;---------------------------------------------------------------------
; Ryuko Ranbu
[Command]
name = "ryu_1"
command = ~D,DF, F,DF, D,DB, B, y
Time = 35

;---------------------------------------------------------------------
; Haou Shoukouken (Level 1 / 2 / 3)
[Command]
name = "hao_a"
command = ~D,DF, F, D,DF, F, x
Time = 35

[Command]
name = "hao_b"
command = ~D,DF, F, D,DF, F, y
Time = 35

[Command]
name = "hao_c"
command = ~D,DF, F, D,DF, F, z
Time = 35

;---------------------------------------------------------------------
; Kyokugen Kohou  (Level 1 / 2 / 3)
[Command]
name = "kyo_a"
command = ~D,DF, F, D,DF, F, a
Time = 40

[Command]
name = "kyo_b"
command = ~D,DF, F, D,DF, F, b
Time = 40

[Command]
name = "kyo_c"
command = ~D,DF, F, D,DF, F, c
Time = 40

;-| Special Motions |-------------------------------------------------

;---------------------------------------------------------------------
; Kohou (Light/Hard)
[Command]
name = "koh_a"
command = ~F, D,DF, x
Time = 20

[Command]
name = "koh_b"
command = ~F, D,DF, y
Time = 20

;---------------------------------------------------------------------
; Kyokugenryuu Renbuken (Original Arts)
[Command]
name = "ren_a"
command = ~B,DB, D,DF, F, y
Time = 35

;---------------------------------------------------------------------
; Kyokugenryuu Renbukyaku (Original Arts)
[Command]
name = "ren_b"
command = ~B,DB, D,DF, F, b
Time = 35

;---------------------------------------------------------------------
; Koohken (Light/Hard)
[Command]
name = "koo_a"
command = ~D,DF, F, x
Time = 25

[Command]
name = "koo_b"
command = ~D,DF, F, y
Time = 25

;---------------------------------------------------------------------
; Hien Shippukyaku (Light/Hard)
[Command]
name = "hie_a"
command = ~D, DF, F, a
Time = 25

[Command]
name = "hie_b"
command = ~D, DF, F, b
Time = 25

;---------------------------------------------------------------------
; Joudan / Gedan Barai
[Command]
name = "jou_a"
command = ~D,DB, B, x
Time = 25

[Command]
name = "ged_b"
command = ~D,DB, B, a
Time = 25

;---------------------------------------------------------------------
; Ryuusenken (Level 1 ~ Level 4)
[Command]
name = "ryu_a"
command = ~120y

[Command]
name = "ryu_b"
command = ~240y

[Command]
name = "ryu_c"
command = ~540y

[Command]
name = "ryu_d"
command = ~1020y

;---------------------------------------------------------------------
; Kosenkyaku (Level 1 ~ Level 4)
[Command]
name = "kos_a"
command = ~120b

[Command]
name = "kos_b"
command = ~240b

[Command]
name = "kos_c"
command = ~540b

[Command]
name = "kos_d"
command = ~1020b

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

;-| Single Button Release |-------------------------------------------
[Command]
name = "rel_y"
command = ~y
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
value = 3600
triggerall = command = "cpu_a"
triggerall = P2BodyDist X <= 40
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 3200
triggerall = command = "cpu_b"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2BodyDist X >= 100
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger2 = P2BodyDist X >= 100
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 3100
triggerall = command = "cpu_b"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2BodyDist X >= 100
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger2 = P2BodyDist X >= 100
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 3000
triggerall = command = "cpu_b"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2BodyDist X >= 100
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger2 = P2BodyDist X >= 100
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 3500
triggerall = command = "cpu_c"
triggerall = power >= 3000
triggerall = P2BodyDist X <= 40
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 3400
triggerall = command = "cpu_c"
triggerall = power >= 2000
triggerall = P2BodyDist X <= 40
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 3300
triggerall = command = "cpu_c"
triggerall = power >= 1000
triggerall = P2BodyDist X <= 40
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1400
triggerall = command = "cpu_d"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2BodyDist X <= 20
trigger1 = P2BodyDist Y >= -50
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger2 = P2BodyDist X <= 20
trigger2 = P2BodyDist Y >= -50
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1450
triggerall = command = "cpu_e"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2BodyDist X <= 50
trigger1 = P2BodyDist Y >= -80
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger2 = P2BodyDist X <= 50
trigger2 = P2BodyDist Y >= -80
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1100
triggerall = command = "cpu_f"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2BodyDist X >= 80
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger1 = P2BodyDist X >= 80
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1200
triggerall = command = "cpu_g"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2BodyDist X <= 50
trigger1 = P2BodyDist Y >= -80
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger2 = P2BodyDist X <= 50
trigger2 = P2BodyDist Y >= -80
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0


;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------
; Midare Hien (Level 1)
[State -1]
type = ChangeState
value = 6000
triggerall = command = "mid_a"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 6000
triggerall = command = "mid_a"
triggerall = power >= 1000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Midare Hien (Level 2)
[State -1]
type = ChangeState
value = 6100
triggerall = command = "mid_b"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 6100
triggerall = command = "mid_b"
triggerall = power >= 2000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Midare Hien (Level 3)
[State -1]
type = ChangeState
value = 6200
triggerall = command = "mid_c"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 6200
triggerall = command = "mid_c"
triggerall = power >= 3000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Ryuko Ranbu
[State -1]
type = ChangeState
value = 3600
triggerall = command = "ryu_1"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 3600
triggerall = command = "ryu_1"
triggerall = power >= 2000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Haou Shoukouken (Level 1)
[State -1]
type = ChangeState
value = 3000
triggerall = command = "hao_a"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 3000
triggerall = command = "hao_a"
triggerall = power >= 1000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Haou Shoukouken (Level 2)
[State -1]
type = ChangeState
value = 3100
triggerall = command = "hao_b"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 3100
triggerall = command = "hao_b"
triggerall = power >= 2000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Haou Shoukouken (Level 3)
[State -1]
type = ChangeState
value = 3200
triggerall = command = "hao_c"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 3200
triggerall = command = "hao_c"
triggerall = power >= 3000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Kyokugen Kohou (Level 1)
[State -1]
type = ChangeState
value = 3300
triggerall = command = "kyo_a"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 3300
triggerall = command = "kyo_a"
triggerall = power >= 1000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Kyokugen Kohou (Level 2)
[State -1]
type = ChangeState
value = 3400
triggerall = command = "kyo_b"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 3400
triggerall = command = "kyo_b"
triggerall = power >= 2000
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Kyokugen Kohou (Level 3)
[State -1]
type = ChangeState
value = 3500
triggerall = command = "kyo_c"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 3500
triggerall = command = "kyo_c"
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
; Kyokugenryuu Renbuken
[State -1]
type = ChangeState
value = 1700
triggerall = command = "ren_a"
triggerall = P2BodyDist X <= 12
triggerall = P2StateType != A
trigger1 = StateType = S
trigger1 = ctrl = 1
trigger2 = StateType = C
trigger2 = ctrl = 1
trigger3 = movehit
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movehit
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movehit
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movehit
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1700
triggerall = command = "ren_a"
triggerall = Var(9) = 1
triggerall = StateType != A
triggerall = P2StateType != A
triggerall = P2BodyDist X <= 15
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Kyokugenryuu Renbukyaku
[State -1]
type = ChangeState
value = 1750
triggerall = command = "ren_b"
triggerall = P2BodyDist X <= 12
triggerall = P2StateType != A
trigger1 = StateType = S
trigger1 = ctrl = 1
trigger2 = StateType = C
trigger2 = ctrl = 1
trigger3 = movehit
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movehit
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movehit
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movehit
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1750
triggerall = command = "ren_b"
triggerall = Var(9) = 1
triggerall = StateType != A
triggerall = P2StateType != A
triggerall = P2BodyDist X <= 15
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Kohou (Light/Hard)
[State -1]
type = ChangeState
value = 1400
triggerall = command = "koh_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1400
triggerall = command = "koh_a"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1450
triggerall = command = "koh_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1450
triggerall = command = "koh_b"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Koohken (Light/Hard)
[State -1]
type = ChangeState
value = 1000
triggerall = command = "koo_a"
triggerall = P2BodyDist X < 45
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1010
triggerall = command = "koo_a"
triggerall = P2BodyDist X >= 45
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1000
triggerall = command = "koo_a"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1050
triggerall = command = "koo_b"
triggerall = P2BodyDist X < 45
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1060
triggerall = command = "koo_b"
triggerall = P2BodyDist X >= 45
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1050
triggerall = command = "koo_b"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Hien Shippukyaku (Light/Hard)
[State -1]
type = ChangeState
value = 1100
triggerall = command = "hie_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1100
triggerall = command = "hie_a"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1200
triggerall = command = "hie_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1200
triggerall = command = "hie_b"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Joudan / Gedan Barai
[State -1]
type = ChangeState
value = 1300
triggerall = command = "jou_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1300
triggerall = command = "jou_a"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1350
triggerall = command = "ged_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1350
triggerall = command = "ged_b"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Ryuusenken (Level 1 - Level 4)
[State -1]
type = ChangeState
value = 1570
triggerall = command = "ryu_d"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1570
triggerall = command = "ryu_d"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1550
triggerall = command = "ryu_c"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1550
triggerall = command = "ryu_c"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1530
triggerall = command = "ryu_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1530
triggerall = command = "ryu_b"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1500
triggerall = command = "ryu_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1500
triggerall = command = "ryu_a"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

;---------------------------------------------------------------------
; Kosenkyaku (Level 1 - Level 4)
[State -1]
type = ChangeState
value = 1680
triggerall = command = "kos_d"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1680
triggerall = command = "kos_d"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1660
triggerall = command = "kos_c"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1660
triggerall = command = "kos_c"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1640
triggerall = command = "kos_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1640
triggerall = command = "kos_b"
triggerall = Var(9) = 1
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154

[State -1]
type = ChangeState
value = 1600
triggerall = command = "kos_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 1600
triggerall = command = "kos_a"
triggerall = Var(9) = 1
triggerall = StateType != A
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
;Standing Throw1 (Kyokugen Zutsuki)
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

[State -1]
type = ChangeState
value = 700
triggerall = Var(5) = 1
triggerall = StateType != A
triggerall = command = "y"
trigger1 = movecontact
trigger1 = stateno = 215
trigger1 = AnimElem = 9, <= 0
trigger1 = AnimElem = 8, >= 0
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = AnimElem = 7, <= 0
trigger2 = AnimElem = 6, >= 0
trigger3 = movecontact
trigger3 = stateno = 320
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact
trigger4 = StateNo = 600
trigger4 = AnimElem = 10, >= 0
trigger4 = AnimElem = 12, <= 0

[State -1]
type = ChangeState
value = 700
triggerall = Var(5) = 1
triggerall = StateType != A
triggerall = command = "by"
trigger1 = movecontact
trigger1 = stateno = 215
trigger1 = AnimElem = 9, <= 0
trigger1 = AnimElem = 8, >= 0
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = AnimElem = 7, <= 0
trigger2 = AnimElem = 6, >= 0
trigger3 = movecontact
trigger3 = stateno = 320
trigger3 = AnimElem = 6, <= 0
trigger3 = AnimElem = 4, >= 0
trigger4 = movecontact
trigger4 = StateNo = 600
trigger4 = AnimElem = 10, >= 0
trigger4 = AnimElem = 12, <= 0

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
trigger3 = movecontact
trigger3 = stateno = 215
trigger3 = AnimElem = 9, <= 0
trigger3 = AnimElem = 8, >= 0
trigger4 = movecontact
trigger4 = stateno = 220
trigger4 = AnimElem = 7, <= 0
trigger4 = AnimElem = 6, >= 0
trigger5 = movecontact
trigger5 = stateno = 320
trigger5 = AnimElem = 6, <= 0
trigger5 = AnimElem = 4, >= 0
trigger6 = movecontact
trigger6 = StateNo = 600
trigger6 = AnimElem = 10, >= 0
trigger6 = AnimElem = 12, <= 0

; Fake Action 2
[State -1]
type = ChangeState
value = 1950
triggerall = command = "fwd_xy"
trigger1 = ctrl = 1
trigger1 = StateType = S
trigger2 = movecontact
trigger2 = stateno = 215
trigger2 = AnimElem = 9, <= 0
trigger2 = AnimElem = 8, >= 0
trigger3 = movecontact
trigger3 = stateno = 220
trigger3 = AnimElem = 7, <= 0
trigger3 = AnimElem = 6, >= 0
trigger4 = movecontact
trigger4 = stateno = 320
trigger4 = AnimElem = 6, <= 0
trigger4 = AnimElem = 4, >= 0
trigger5 = movecontact
trigger5 = StateNo = 600
trigger5 = AnimElem = 10, >= 0
trigger5 = AnimElem = 12, <= 0

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
; Dir + Button
;=====================================================================

;---------------------------------------------------------------------
; Kyokugen Elbow (-> + A)
[State -1]
type = ChangeState
value = 800
triggerall = command = "fwd_x"
triggerall = command != "holddown"
triggerall = ctrl = 1
trigger1 = statetype = S

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
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = StateNo = 205
trigger2 = Time >= 6

;---------------------------------------------------------------------
;Standing B - At the Close Range - (Weak Kick)
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X < 30
triggerall = ctrl = 1
trigger1 = statetype = S

;---------------------------------------------------------------------
;Standing C - At the Close Range - (Heavy Punch)
[State -1]
type = ChangeState
value = 215
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2bodydist X < 30
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
trigger2 = StateNo = 205
trigger3 = StateNo = 225
trigger3 = Time >= 6

;---------------------------------------------------------------------
;Standing B - At the Long Range - (Weak Kick)
[State -1]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist   X >= 30 
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
;Standing C - At the Long Range - (Heavy Punch)
[State -1]
type = ChangeState
value = 235
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2bodydist   X >= 30 
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
;Standing D - At the Long Range - (Heavy Kick)
[State -1]
type = ChangeState
value = 240
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
trigger2 = StateNo = 300
trigger2 = Time >= 11

;---------------------------------------------------------------------
;Crouching B (Weak Kick)
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

;-----------------
; Test Button
;[State -1]
;type = ChangeState
;value = 1800
;triggerall = command = "y"
;triggerall = StateType != A
;trigger1 = ctrl = 1
;trigger1 = StateType = S
;trigger2 = StateType = C
;trigger2 = ctrl = 1
;trigger3 = movecontact
;trigger3 = stateno = 215
;trigger3 = AnimElem = 9, <= 0
;trigger3 = AnimElem = 8, >= 0
;trigger4 = movecontact
;trigger4 = stateno = 220
;trigger4 = AnimElem = 7, <= 0
;trigger4 = AnimElem = 6, >= 0
;trigger5 = movecontact
;trigger5 = stateno = 320
;trigger5 = AnimElem = 6, <= 0
;trigger5 = AnimElem = 4, >= 0
;trigger6 = movecontact
;trigger6 = StateNo = 600
;trigger6 = AnimElem = 10, >= 0
;trigger6 = AnimElem = 12, <= 0






