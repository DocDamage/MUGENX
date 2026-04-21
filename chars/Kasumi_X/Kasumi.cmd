;=====================================================================
;  CMD File For "Kasumi Todo"                           Made By M.M.R.
;                                       Ver. 1.0           2000.Sep.25
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
; 超重ね当て（Ｌｖ１／Ｌｖ２／Ｌｖ３）
[Command]
name = "cho_a"
command = ~D,DF, F, D,DF, F, x
Time = 35

[Command]
name = "cho_b"
command = ~D,DF, F, D,DF, F, y
Time = 35

[Command]
name = "cho_c"
command = ~D,DF, F, D,DF, F, z
Time = 35

;---------------------------------------------------------------------
; 心眼　葛落とし（Ｌｖ１／Ｌｖ２／Ｌｖ３）
[Command]
name = "kaz_a"
command = ~D,DF, F,DF, D,DB, B, x
Time = 35

[Command]
name = "kaz_b"
command = ~D,DF, F,DF, D,DB, B, y
Time = 35

[Command]
name = "kaz_c"
command = ~D,DF, F,DF, D,DB, B, z
Time = 35

;-| Special Motions |-------------------------------------------------

;---------------------------------------------------------------------
; 重ね当て（空中）・弱／強
[Command]
name = "kas_a"
command = D,DF, F, x
Time = 25

[Command]
name = "kas_b"
command = D,DF, F, y
Time = 25

;---------------------------------------------------------------------
; 扇溝流し・弱／強
[Command]
name = "sen_a"
command = ~D,DB, B, x
Time = 25

[Command]
name = "sen_b"
command = ~D,DB, B, y
Time = 25

;---------------------------------------------------------------------
; 白山桃・弱／強
[Command]
name = "hak_a"
command = ~D,DB, B, a
Time = 25

[Command]
name = "hak_b"
command = ~D,DB, B, b
Time = 25

;---------------------------------------------------------------------
; 滅身無投・上段当て身
[Command]
name = "ate_a"
command = ~B,DB, D,DF, F, a
Time = 30

;---------------------------------------------------------------------
; 殺掌陰蹴・下段当て身
[Command]
name = "ate_b"
command = ~B,DB, D,DF, F, b
Time = 30

;---------------------------------------------------------------------
; 竜巻槍打・弱／強
[Command]
name = "sou_a"
command = ~F,DF, D,DB, B, x
Time = 30

[Command]
name = "sou_b"
command = ~F,DF, D,DB, B, y
Time = 30

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
command = a+x
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

;------------------- KOF Seriese only
[Command]
name = "gc_fwd"
command = a+x
time = 1

[Command]
name = "q_fwd"
command = a+x
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
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

;-----------------------------For KOF Seriese only
[Command]
name = "gc_fwd"
command = /DF, a+x
time = 1

[Command]
name = "gc_fwd"
command = /DF, z
time = 1

[Command]
name = "gc_fwd"
command = /F, a+x
time = 1

[Command]
name = "gc_fwd"
command = /F, z
time = 1

[Command]
name = "gc_back"
command = /DB, a+x
time = 1

[Command]
name = "gc_back"
command = /DB, z
time = 1

[Command]
name = "gc_back"
command = /B, a+x
time = 1

[Command]
name = "gc_back"
command = /B, z
time = 1

[Command]
name = "q_fwd"
command = /F, a+x
time = 1

[Command]
name = "q_fwd"
command = /F, z
time = 1

[Command]
name = "q_back"
command = /B, a+x
time = 1

[Command]
name = "q_back"
command = /B, z
time = 1

;-| Single Button |---------------------------------------------------
[Command]
name = "x"
command = x
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "y"
command = y
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
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "recovery"
command = z
time = 1

;----------------------------- KOF Seriese only
[Command]
name = "gc_fwd"
command = z
time = 1

[Command]
name = "q_fwd"
command = z
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
value = 3700
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = Power >= 3000
trigger1 = Var(29) = [0,24]
trigger1 = StateNo = 5120
trigger1 = AnimTime = 0
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 25
trigger1 = AnimTime = 0
trigger2 = Var(29) = [60,74]
trigger2 = P2BodyDist X <= 30
trigger2 = P2MoveType = A
trigger2 = Ctrl = 1

[State -1]
type = ChangeState
value = 3600
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = Power >= 2000
triggerall = Power < 3000
trigger1 = Var(29) = [0,24]
trigger1 = StateNo = 5120
trigger1 = AnimTime = 0
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 25
trigger1 = AnimTime = 0
trigger2 = Var(29) = [60,74]
trigger2 = P2BodyDist X <= 30
trigger2 = P2MoveType = A
trigger2 = Ctrl = 1

[State -1]
type = ChangeState
value = 3500
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = Power >= 1000
triggerall = Power < 2000
trigger1 = Var(29) = [0,24]
trigger1 = StateNo = 5120
trigger1 = AnimTime = 0
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 25
trigger1 = AnimTime = 0
trigger2 = Var(29) = [60,74]
trigger2 = P2BodyDist X <= 30
trigger2 = P2MoveType = A
trigger2 = Ctrl = 1

[State -1]
type = ChangeState
value = 1300
triggerall = Var(30) = 1
triggerall = StateType != A
trigger1 = Var(29) = [0,59]
trigger1 = StateNo = 5120
trigger1 = AnimTime = 0
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 25
trigger1 = P2StateType = A
trigger1 = AnimTime = 0
trigger2 = Var(29) = [60,89]
trigger2 = P2BodyDist X <= 30
trigger2 = P2MoveType = A
trigger2 = P2StateType = A
trigger2 = Ctrl = 1

[State -1]
type = ChangeState
value = 1400
triggerall = Var(30) = 1
triggerall = StateType != A
trigger1 = Var(29) = [0,59]
trigger1 = StateNo = 5120
trigger1 = AnimTime = 0
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 25
trigger1 = P2StateType = S
trigger1 = AnimTime = 0
trigger2 = Var(29) = [60,79]
trigger2 = P2BodyDist X <= 25
trigger2 = P2MoveType = A
trigger2 = P2StateType = S
trigger2 = Ctrl = 1

[State -1]
type = ChangeState
value = 1500
triggerall = Var(30) = 1
triggerall = StateType != A
trigger1 = Var(29) = [80,99]
trigger1 = StateNo = 5120
trigger1 = AnimTime = 0
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 15
trigger1 = P2StateType = S
trigger1 = AnimTime = 0
trigger2 = Var(29) = [80,99]
trigger2 = P2BodyDist X <= 15
trigger2 = P2StateType = S
trigger2 = Ctrl = 1

;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------
; 超重ね当て  (Level 1)
[State -1]
type = ChangeState
value = 3000
triggerall = command = "cho_a"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 3000
triggerall = Command = "cho_a"
triggerall = Power >= 1000
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 250
trigger2 = AnimElem = 3, <= 3
trigger3 = StateNo = 300
trigger3 = AnimElem = 3, <= 6
trigger4 = StateNo = 210
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 310
trigger5 = AnimElem = 3, <= 4
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 270
trigger7 = AnimElem = 6, <= 7
trigger8 = StateNo = 320
trigger8 = AnimElem = 5, <= 7
trigger9 = StateNo = 230
trigger9 = AnimElem = 5, <= 5
trigger10 = StateNo = 330
trigger10 = AnimElem = 4, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 5, <= 9
trigger12 = StateNo = 850
trigger12 = AnimElem = 7, <= 7

;---------------------------------------------------------------------
; 超重ね当て  (Level 2)
[State -1]
type = ChangeState
value = 3100
triggerall = command = "cho_b"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 3100
triggerall = Command = "cho_b"
triggerall = Power >= 2000
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 250
trigger2 = AnimElem = 3, <= 3
trigger3 = StateNo = 300
trigger3 = AnimElem = 3, <= 6
trigger4 = StateNo = 210
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 310
trigger5 = AnimElem = 3, <= 4
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 270
trigger7 = AnimElem = 6, <= 7
trigger8 = StateNo = 320
trigger8 = AnimElem = 5, <= 7
trigger9 = StateNo = 230
trigger9 = AnimElem = 5, <= 5
trigger10 = StateNo = 330
trigger10 = AnimElem = 4, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 5, <= 9
trigger12 = StateNo = 850
trigger12 = AnimElem = 7, <= 7

;---------------------------------------------------------------------
; 超重ね当て  (Level 3)
[State -1]
type = ChangeState
value = 3200
triggerall = command = "cho_c"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 3200
triggerall = Command = "cho_c"
triggerall = Power >= 3000
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 250
trigger2 = AnimElem = 3, <= 3
trigger3 = StateNo = 300
trigger3 = AnimElem = 3, <= 6
trigger4 = StateNo = 210
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 310
trigger5 = AnimElem = 3, <= 4
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 270
trigger7 = AnimElem = 6, <= 7
trigger8 = StateNo = 320
trigger8 = AnimElem = 5, <= 7
trigger9 = StateNo = 230
trigger9 = AnimElem = 5, <= 5
trigger10 = StateNo = 330
trigger10 = AnimElem = 4, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 5, <= 9
trigger12 = StateNo = 850
trigger12 = AnimElem = 7, <= 7

;---------------------------------------------------------------------
; 心眼　葛落とし　(Level 1)
[State -1]
type = ChangeState
value = 3500
triggerall = command = "kaz_a"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 3500
triggerall = Command = "kaz_a"
triggerall = Power >= 1000
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 250
trigger2 = AnimElem = 3, <= 3
trigger3 = StateNo = 300
trigger3 = AnimElem = 3, <= 6
trigger4 = StateNo = 210
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 310
trigger5 = AnimElem = 3, <= 4
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 270
trigger7 = AnimElem = 6, <= 7
trigger8 = StateNo = 320
trigger8 = AnimElem = 5, <= 7
trigger9 = StateNo = 230
trigger9 = AnimElem = 5, <= 5
trigger10 = StateNo = 330
trigger10 = AnimElem = 4, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 5, <= 9
trigger12 = StateNo = 850
trigger12 = AnimElem = 7, <= 7

;---------------------------------------------------------------------
; 心眼　葛落とし (Level 2)
[State -1]
type = ChangeState
value = 3600
triggerall = command = "kaz_b"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 3600
triggerall = Command = "kaz_b"
triggerall = Power >= 2000
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 250
trigger2 = AnimElem = 3, <= 3
trigger3 = StateNo = 300
trigger3 = AnimElem = 3, <= 6
trigger4 = StateNo = 210
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 310
trigger5 = AnimElem = 3, <= 4
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 270
trigger7 = AnimElem = 6, <= 7
trigger8 = StateNo = 320
trigger8 = AnimElem = 5, <= 7
trigger9 = StateNo = 230
trigger9 = AnimElem = 5, <= 5
trigger10 = StateNo = 330
trigger10 = AnimElem = 4, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 5, <= 9
trigger12 = StateNo = 850
trigger12 = AnimElem = 7, <= 7

;---------------------------------------------------------------------
; 心眼　葛落とし (Level 3)
[State -1]
type = ChangeState
value = 3700
triggerall = command = "kaz_c"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 3700
triggerall = Command = "kaz_c"
triggerall = Power >= 3000
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 250
trigger2 = AnimElem = 3, <= 3
trigger3 = StateNo = 300
trigger3 = AnimElem = 3, <= 6
trigger4 = StateNo = 210
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 310
trigger5 = AnimElem = 3, <= 4
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 270
trigger7 = AnimElem = 6, <= 7
trigger8 = StateNo = 320
trigger8 = AnimElem = 5, <= 7
trigger9 = StateNo = 230
trigger9 = AnimElem = 5, <= 5
trigger10 = StateNo = 330
trigger10 = AnimElem = 4, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 5, <= 9
trigger12 = StateNo = 850
trigger12 = AnimElem = 7, <= 7

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; 滅身無投・上段当て身
[State -1]
type = ChangeState
value = 1300
triggerall = command = "ate_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "ate_a"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 250
trigger2 = AnimElem = 3, <= 3
trigger3 = StateNo = 300
trigger3 = AnimElem = 3, <= 6
trigger4 = StateNo = 210
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 310
trigger5 = AnimElem = 3, <= 4
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 270
trigger7 = AnimElem = 6, <= 7
trigger8 = StateNo = 320
trigger8 = AnimElem = 5, <= 7
trigger9 = StateNo = 230
trigger9 = AnimElem = 5, <= 5
trigger10 = StateNo = 330
trigger10 = AnimElem = 4, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 5, <= 9
trigger12 = StateNo = 850
trigger12 = AnimElem = 7, <= 7

;---------------------------------------------------------------------
; 殺掌陰蹴・下段当て身
[State -1]
type = ChangeState
value = 1400
triggerall = command = "ate_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 1400
triggerall = Command = "ate_b"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 250
trigger2 = AnimElem = 3, <= 3
trigger3 = StateNo = 300
trigger3 = AnimElem = 3, <= 6
trigger4 = StateNo = 210
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 310
trigger5 = AnimElem = 3, <= 4
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 270
trigger7 = AnimElem = 6, <= 7
trigger8 = StateNo = 320
trigger8 = AnimElem = 5, <= 7
trigger9 = StateNo = 230
trigger9 = AnimElem = 5, <= 5
trigger10 = StateNo = 330
trigger10 = AnimElem = 4, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 5, <= 9
trigger12 = StateNo = 850
trigger12 = AnimElem = 7, <= 7

;---------------------------------------------------------------------
; 竜巻槍打・弱／強
;----------------------------- 弱
[State -1]
type = ChangeState
value = 1500
triggerall = command = "sou_a"
triggerall = P2BodyDist X <= 20
triggerall = P2StateType != A
triggerall = P2StateNo != 5100
triggerall = P2StateNo != 5101
triggerall = P2StateNo != 5110
triggerall = P2StateNo != 5120
triggerall = P2StateNo != 5150
trigger1 = StateType = S
trigger1 = ctrl = 1
trigger2 = StateType = C
trigger2 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 1500
triggerall = Command = "sou_a"
triggerall = movecontact
triggerall = P2BodyDist X <= 20
triggerall = P2StateType != A
triggerall = P2StateNo != 5100
triggerall = P2StateNo != 5101
triggerall = P2StateNo != 5110
triggerall = P2StateNo != 5120
triggerall = P2StateNo != 5150
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 250
trigger2 = AnimElem = 3, <= 3
trigger3 = StateNo = 300
trigger3 = AnimElem = 3, <= 6
trigger4 = StateNo = 210
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 310
trigger5 = AnimElem = 3, <= 4
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 270
trigger7 = AnimElem = 6, <= 7
trigger8 = StateNo = 320
trigger8 = AnimElem = 5, <= 7
trigger9 = StateNo = 230
trigger9 = AnimElem = 5, <= 5
trigger10 = StateNo = 330
trigger10 = AnimElem = 4, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 5, <= 9
trigger12 = StateNo = 850
trigger12 = AnimElem = 7, <= 7

;----------------------------- 強
[State -1]
type = ChangeState
value = 1550
triggerall = command = "sou_b"
triggerall = P2BodyDist X <= 20
triggerall = P2StateType != A
triggerall = P2StateNo != 5100
triggerall = P2StateNo != 5101
triggerall = P2StateNo != 5110
triggerall = P2StateNo != 5120
triggerall = P2StateNo != 5150
trigger1 = StateType = S
trigger1 = ctrl = 1
trigger2 = StateType = C
trigger2 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 1550
triggerall = Command = "sou_b"
triggerall = movecontact
triggerall = P2BodyDist X <= 20
triggerall = P2StateType != A
triggerall = P2StateNo != 5100
triggerall = P2StateNo != 5101
triggerall = P2StateNo != 5110
triggerall = P2StateNo != 5120
triggerall = P2StateNo != 5150
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 250
trigger2 = AnimElem = 3, <= 3
trigger3 = StateNo = 300
trigger3 = AnimElem = 3, <= 6
trigger4 = StateNo = 210
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 310
trigger5 = AnimElem = 3, <= 4
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 270
trigger7 = AnimElem = 6, <= 7
trigger8 = StateNo = 320
trigger8 = AnimElem = 5, <= 7
trigger9 = StateNo = 230
trigger9 = AnimElem = 5, <= 5
trigger10 = StateNo = 330
trigger10 = AnimElem = 4, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 5, <= 9
trigger12 = StateNo = 850
trigger12 = AnimElem = 7, <= 7

;---------------------------------------------------------------------
; 重ね当て・弱／強
;----------------------------- 弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "kas_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "kas_a"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 250
trigger2 = AnimElem = 3, <= 3
trigger3 = StateNo = 300
trigger3 = AnimElem = 3, <= 6
trigger4 = StateNo = 210
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 310
trigger5 = AnimElem = 3, <= 4
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 270
trigger7 = AnimElem = 6, <= 7
trigger8 = StateNo = 320
trigger8 = AnimElem = 5, <= 7
trigger9 = StateNo = 230
trigger9 = AnimElem = 5, <= 5
trigger10 = StateNo = 330
trigger10 = AnimElem = 4, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 5, <= 9
trigger12 = StateNo = 850
trigger12 = AnimElem = 7, <= 7

;----------------------------- 強
[State -1]
type = ChangeState
value = 1050
triggerall = command = "kas_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 1050
triggerall = Command = "kas_b"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 250
trigger2 = AnimElem = 3, <= 3
trigger3 = StateNo = 300
trigger3 = AnimElem = 3, <= 6
trigger4 = StateNo = 210
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 310
trigger5 = AnimElem = 3, <= 4
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 270
trigger7 = AnimElem = 6, <= 7
trigger8 = StateNo = 320
trigger8 = AnimElem = 5, <= 7
trigger9 = StateNo = 230
trigger9 = AnimElem = 5, <= 5
trigger10 = StateNo = 330
trigger10 = AnimElem = 4, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 5, <= 9
trigger12 = StateNo = 850
trigger12 = AnimElem = 7, <= 7

;---------------------------------------------------------------------
; 空中重ね当て・弱／強
;----------------------------- 弱
[State -1]
type = ChangeState
value = 1100
triggerall = command = "kas_a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "kas_a"
triggerall = StateType = A
triggerall = movecontact
triggerall = Pos Y <= -40
trigger1 = StateNo = 500
trigger1 = AnimElem = 3, <= 12
trigger2 = StateNo = 510
trigger2 = AnimElem = 4, <= 12
trigger3 = StateNo = 520
trigger3 = AnimElem = 5, <= 6
trigger4 = StateNo = 530
trigger4 = AnimElem = 7, <= 2

;----------------------------- 強
[State -1]
type = ChangeState
value = 1150
triggerall = command = "kas_b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 1150
triggerall = Command = "kas_b"
triggerall = StateType = A
triggerall = movecontact
triggerall = Pos Y <= -40
trigger1 = StateNo = 500
trigger1 = AnimElem = 3, <= 12
trigger2 = StateNo = 510
trigger2 = AnimElem = 4, <= 12
trigger3 = StateNo = 520
trigger3 = AnimElem = 5, <= 6
trigger4 = StateNo = 530
trigger4 = AnimElem = 7, <= 2

;---------------------------------------------------------------------
; 扇溝流し・弱／強
;----------------------------- 弱
[State -1]
type = ChangeState
value = 1600
triggerall = command = "sen_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 1600
triggerall = Command = "sen_a"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 250
trigger2 = AnimElem = 3, <= 3
trigger3 = StateNo = 300
trigger3 = AnimElem = 3, <= 6
trigger4 = StateNo = 210
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 310
trigger5 = AnimElem = 3, <= 4
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 270
trigger7 = AnimElem = 6, <= 7
trigger8 = StateNo = 320
trigger8 = AnimElem = 5, <= 7
trigger9 = StateNo = 230
trigger9 = AnimElem = 5, <= 5
trigger10 = StateNo = 330
trigger10 = AnimElem = 4, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 5, <= 9
trigger12 = StateNo = 850
trigger12 = AnimElem = 7, <= 7

;---------------------------- 強
[State -1]
type = ChangeState
value = 1600
triggerall = command = "sen_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 1600
triggerall = Command = "sen_b"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 250
trigger2 = AnimElem = 3, <= 3
trigger3 = StateNo = 300
trigger3 = AnimElem = 3, <= 6
trigger4 = StateNo = 210
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 310
trigger5 = AnimElem = 3, <= 4
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 270
trigger7 = AnimElem = 6, <= 7
trigger8 = StateNo = 320
trigger8 = AnimElem = 5, <= 7
trigger9 = StateNo = 230
trigger9 = AnimElem = 5, <= 5
trigger10 = StateNo = 330
trigger10 = AnimElem = 4, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 5, <= 9
trigger12 = StateNo = 850
trigger12 = AnimElem = 7, <= 7

;---------------------------------------------------------------------
; 白山桃・弱／強
;----------------------------- 弱
[State -1]
type = ChangeState
value = 1200
triggerall = command = "hak_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "hak_a"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 250
trigger2 = AnimElem = 3, <= 3
trigger3 = StateNo = 300
trigger3 = AnimElem = 3, <= 6
trigger4 = StateNo = 210
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 310
trigger5 = AnimElem = 3, <= 4
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 270
trigger7 = AnimElem = 6, <= 7
trigger8 = StateNo = 320
trigger8 = AnimElem = 5, <= 7
trigger9 = StateNo = 230
trigger9 = AnimElem = 5, <= 5
trigger10 = StateNo = 330
trigger10 = AnimElem = 4, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 5, <= 9
trigger12 = StateNo = 850
trigger12 = AnimElem = 7, <= 7

;----------------------------- 強
[State -1]
type = ChangeState
value = 1250
triggerall = command = "hak_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 1250
triggerall = Command = "hak_b"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 250
trigger2 = AnimElem = 3, <= 3
trigger3 = StateNo = 300
trigger3 = AnimElem = 3, <= 6
trigger4 = StateNo = 210
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 310
trigger5 = AnimElem = 3, <= 4
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 270
trigger7 = AnimElem = 6, <= 7
trigger8 = StateNo = 320
trigger8 = AnimElem = 5, <= 7
trigger9 = StateNo = 230
trigger9 = AnimElem = 5, <= 5
trigger10 = StateNo = 330
trigger10 = AnimElem = 4, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 5, <= 9
trigger12 = StateNo = 850
trigger12 = AnimElem = 7, <= 7

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
; 巻き上げ（パンチ投げ）
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
; 合気投げ（キック投げ）
[State -1]
type = ChangeState
value = 950
triggerall = StateNo != 100
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
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------
;---------------------------------------------------------------------
; 地上ふっとばし攻撃
[State -1]
type = ChangeState
value = 600
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 600
triggerall = command = "by"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; 空中ふっとばし攻撃
[State -1]
type = ChangeState
value = 610
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 610
triggerall = command = "by"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; ガードキャンセル緊急回避動作（前・後）
[State -1]
type = ChangeState
value = 4000
triggerall = Command = "gc_fwd"
triggerall = Var(4) = 1
triggerall = Power >= 500
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152

;---------------------------------------------------------------------
; 緊急回避動作（前）  （ＫＯＦ９８仕様）
[State -1]
type = ChangeState
value = 4050
triggerall = Command = "q_fwd"
triggerall = Command != "holdback"
triggerall = StateType = S
trigger1 = Ctrl = 1

;---------------------------------------------------------------------
; 緊急回避動作（後）  （ＫＯＦ９８仕様）
[State -1]
type = ChangeState
value = 4150
triggerall = Command = "q_back"
triggerall = Command != "holdfwd"
triggerall = StateType = S
trigger1 = Ctrl = 1

;---------------------------------------------------------------------
; ガードキャンセル吹っ飛ばし攻撃
[State -1]
type = ChangeState
value = 4500
triggerall = Command = "by"
triggerall = Var(4) = 1
triggerall = Power >= 500
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152

[State -1]
type = ChangeState
value = 4500
triggerall = Command = "c"
triggerall = Var(4) = 1
triggerall = Power >= 500
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152

;=====================================================================
; Dir + Button
;=====================================================================

;---------------------------------------------------------------------
; 肘当て
[State -1]
type = ChangeState
value = 800
triggerall = command = "fwd_x"
triggerall = StateType != A
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = S

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 850
triggerall = Command = "fwd_x"
triggerall = Command != "holddown"
triggerall = StateType != A
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 6
trigger3 = StateNo = 210
trigger3 = AnimElem = 5, <= 4
trigger4 = StateNo = 310
trigger4 = AnimElem = 3, <= 4
trigger5 = StateNo = 220
trigger5 = AnimElem = 5, <= 3
trigger6 = StateNo = 320
trigger6 = AnimElem = 5, <= 7
trigger7 = StateNo = 230
trigger7 = AnimElem = 5, <= 5
trigger8 = StateNo = 330
trigger8 = AnimElem = 4, <= 5

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = StateType = S
trigger1 = ctrl = 1

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 195
triggerall = Command = "s"
triggerall = Command != "holddown"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 250
trigger2 = AnimElem = 3, <= 3
trigger3 = StateNo = 300
trigger3 = AnimElem = 3, <= 6
trigger4 = StateNo = 210
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 310
trigger5 = AnimElem = 3, <= 4
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, <= 3
trigger7 = StateNo = 270
trigger7 = AnimElem = 6, <= 7
trigger8 = StateNo = 320
trigger8 = AnimElem = 5, <= 7
trigger9 = StateNo = 230
trigger9 = AnimElem = 5, <= 5
trigger10 = StateNo = 330
trigger10 = AnimElem = 4, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 5, <= 9
trigger12 = StateNo = 850
trigger12 = AnimElem = 7, <= 7

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; 近距離弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X < 20
trigger1 = ctrl = 1
trigger1 = statetype = S

;---------------------------------------------------------------------
; 近距離弱キック
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X < 20
trigger1 = ctrl = 1
trigger1 = statetype = S

;----------------------------- チェーン設定
[State -1]
type = ChangeState
value = 210
triggerall = Command = "a"
triggerall = Command != "holddown"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 6

;---------------------------------------------------------------------
; 近距離強パンチ
[State -1]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X < 28
trigger1 = statetype = S
trigger1 = ctrl = 1

;----------------------------- チェーン設定
[State -1]
type = ChangeState
value = 220
triggerall = Command = "y"
triggerall = Command != "holddown"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 6
trigger3 = StateNo = 210
trigger3 = AnimElem = 5, <= 4
trigger4 = StateNo = 310
trigger4 = AnimElem = 3, <= 4

;---------------------------------------------------------------------
; 近距離強キック
[State -1]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl = 1

;----------------------------- チェーン設定
[State -1]
type = ChangeState
value = 230
triggerall = Command = "b"
triggerall = Command != "holddown"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 6
trigger3 = StateNo = 210
trigger3 = AnimElem = 5, <= 4
trigger4 = StateNo = 310
trigger4 = AnimElem = 3, <= 4
trigger5 = StateNo = 220
trigger5 = AnimElem = 5, <= 3
trigger6 = StateNo = 320
trigger6 = AnimElem = 5, <= 7

;---------------------------------------------------------------------
; 遠距離弱パンチ
[State -1]
type = ChangeState
value = 250
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist   X >= 20 
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = StateNo = 205
trigger3 = StateNo = 225
trigger3 = Time >= 6

;---------------------------------------------------------------------
; 遠距離弱キック
[State -1]
type = ChangeState
value = 260
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist   X >= 20 
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = StateNo = 205
trigger3 = StateNo = 225
trigger3 = Time >= 6

;---------------------------------------------------------------------
; 遠距離強パンチ
[State -1]
type = ChangeState
value = 270
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist   X >= 28
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; 遠距離強キック
[State -1]
type = ChangeState
value = 280
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 20
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = StateNo = 300
trigger2 = Time >= 11

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 310
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = StateNo = 310
trigger2 = Time >= 7

;----------------------------- チェーン設定
[State -1]
type = ChangeState
value = 310
triggerall = Command = "a"
triggerall = Command = "holddown"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 6

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 320
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;----------------------------- チェーン設定
[State -1]
type = ChangeState
value = 320
triggerall = Command = "y"
triggerall = Command = "holddown"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 6
trigger3 = StateNo = 210
trigger3 = AnimElem = 5, <= 4
trigger4 = StateNo = 310
trigger4 = AnimElem = 3, <= 4

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 330
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;----------------------------- チェーン設定
[State -1]
type = ChangeState
value = 330
triggerall = Command = "b"
triggerall = Command = "holddown"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, <= 5
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 6
trigger3 = StateNo = 210
trigger3 = AnimElem = 5, <= 4
trigger4 = StateNo = 310
trigger4 = AnimElem = 3, <= 4
trigger5 = StateNo = 220
trigger5 = AnimElem = 5, <= 3
trigger6 = StateNo = 320
trigger6 = AnimElem = 5, <= 7

;---------------------------------------------------------------------
; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 500
triggerall = command = "x"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = 510
triggerall = command = "a"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;----------------------------- チェーン設定
[State -1]
type = ChangeState
value = 510
triggerall = Command = "a"
triggerall = StateType = A
triggerall = movecontact
triggerall = Pos Y <= -40
trigger1 = StateNo = 500
trigger1 = AnimElem = 3, <= 12

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = 520
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;----------------------------- チェーン設定
[State -1]
type = ChangeState
value = 520
triggerall = Command = "y"
triggerall = StateType = A
triggerall = movecontact
triggerall = Pos Y <= -40
trigger1 = StateNo = 500
trigger1 = AnimElem = 3, <= 12
trigger2 = StateNo = 510
trigger2 = AnimElem = 4, <= 12

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = 530
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;----------------------------- チェーン設定
[State -1]
type = ChangeState
value = 530
triggerall = Command = "b"
triggerall = StateType = A
triggerall = movecontact
triggerall = Pos Y <= -40
trigger1 = StateNo = 500
trigger1 = AnimElem = 3, <= 12
trigger2 = StateNo = 510
trigger2 = AnimElem = 4, <= 12
trigger3 = StateNo = 520
trigger3 = AnimElem = 5, <= 6

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





