;=====================================================================
;  CMD File For "Hinako"                                Made By M.M.R.
;                                       Ver. 1.0           2001.Nov.27
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================

;-| CPU Function |----------------------------------------------------
[Command]
name = "cpu"
Command = ~D,DF, F, a
time = 1

[Command]
name = "cpu"
Command = ~D,DF, F, b
time = 1

[Command]
name = "cpu"
Command = ~D,DF, F, c
time = 1

[Command]
name = "cpu"
Command = ~D,DB, B, a
time = 1

[Command]
name = "cpu"
Command = ~D,DB, B, b
time = 1

[Command]
name = "cpu"
Command = ~D,DB, B, c
time = 1

[Command]
name = "cpu"
Command = ~D,DB, F, a
time = 1

[Command]
name = "cpu"
Command = ~D,DB, F, b
time = 1

[Command]
name = "cpu"
Command = ~D,DB, F, c
time = 1

[Command]
name = "cpu"
Command = ~D,UB, F, a
time = 1

[Command]
name = "cpu"
Command = ~D,UB, F, b
time = 1

[Command]
name = "cpu"
Command = ~D,UB, F, c
time = 1

[Command]
name = "cpu"
Command = ~D,DF, F, s
time = 1

[Command]
name = "cpu"
Command = ~D,DB, B, s
time = 1

[Command]
name = "cpu"
Command = ~D,UB, F, x
time = 1

[Command]
name = "cpu"
Command = ~D,UB, F, y
time = 1

[Command]
name = "cpu"
Command = ~D,UB, F, z
time = 1

[Command]
name = "cpu"
Command = ~D,DB, F, x
time = 1

[Command]
name = "cpu"
Command = ~D,DB, F, y
time = 1

[Command]
name = "cpu"
Command = ~D,DB, F, z
time = 1

[Command]
name = "cpu"
Command = ~D,DB, B, x
time = 1

[Command]
name = "cpu"
Command = ~D,DB, B, y
time = 1

[Command]
name = "cpu"
Command = ~D,DB, B, z
time = 1

[Command]
name = "cpu"
Command = ~D,DF, F, x
time = 1

[Command]
name = "cpu"
Command = ~D,DF, F, y
time = 1

[Command]
name = "cpu"
Command = ~D,DF, F, z
time = 1


;-| Super Motions |---------------------------------------------------

;---------------------------------------------------------------------
; 合掌ひねり
[Command]
name = "gh_a"
Command = ~B, D, F, B, D, F, a
time = 40

[Command]
name = "gh_a"
Command = ~B, D, F, B, D, F, b
time = 40

[Command]
name = "gh_b"
Command = ~B, D, F, B, D, F, a+b
time = 40

;-| Special Motions |-------------------------------------------------

;---------------------------------------------------------------------
; 突き出し  (Tsuki Dashi)
[Command]
name = "td_a"
Command = ~D,DF, F, x
time = 20

[Command]
name = "td_b"
Command = ~D,DF, F, y
time = 20

;---------------------------------------------------------------------
; 小手投げ（弱／強共通）  (Kote Nage)
[Command]
name = "kn"
Command = ~B, D, F, a		;~B,DB, D,DF, F, a
time = 25

[Command]
name = "kn"
Command = ~B, D, F, b		;~B,DB, D,DF, F, b
time = 25

;---------------------------------------------------------------------
; 寄り切り　(Yorikiri)
[Command]
name = "yk"
Command = ~F, D,DF, a
time = 20

[Command]
name = "yk"
Command = ~F, D,DF, b
time = 20

;---------------------------------------------------------------------
; 掛け投げ（弱／強共通）  (Kake Nage)
[Command]
name = "kn2"
Command = ~F, D, B, F, a	;~F,DF, D,DB, B, F, a
time = 30

[Command]
name = "kn2"
Command = ~F, D, B, F, b	;~F,DF, D,DB, B, F, b
time = 30

;---------------------------------------------------------------------
; 突き落とし　(Tsuki Otoshi)
[Command]
name = "to"
Command = ~D,DB, B, x
time = 20

[Command]
name = "to"
Command = ~D,DB, B, y
time = 20

;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
Command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
Command = B, B
time = 10

;-| 2/3 Button Combination |------------------------------------------
[Command]
name = "recovery";Required (do not remove)
Command = a+x
time = 1

[Command]
name = "ab"
Command = a+b
time = 1

[Command]
name = "ax"
Command = a+x
time = 1

[Command]
name = "bx"
Command = b+x
time = 1

[Command]
name = "by"
Command = b+y
time = 1

[Command]
name = "ay"
Command = a+y
time = 1

[Command]
name = "xy"
Command = x+y
time = 1

[Command]
name = "abcd"
Command = x+y+a+b
time = 1

[Command]
name = "abcd"
Command = c+z
time = 1

;------------------- KOF Seriese only
[Command]
name = "gc_fwd"
Command = a+x
time = 1

[Command]
name = "q_fwd"
Command = a+x
time = 1

;-| Dir + Button |----------------------------------------------------
[Command]
name = "fwd_a"
Command = /F,a
time = 1

[Command]
name = "fwd_b"
Command = /F,b
time = 1

[Command]
name = "fwd_c"
Command = /F,c
time = 1

[Command]
name = "fwd_x"
Command = /F,x
time = 1

[Command]
name = "fwd_y"
Command = /F,y
time = 1

[Command]
name = "fwd_z"
Command = /F,z
time = 1

[Command]
name = "back_a"
Command = /B,a
time = 1

[Command]
name = "back_b"
Command = /B,b
time = 1

[Command]
name = "back_c"
Command = /B,c
time = 1

[Command]
name = "back_x"
Command = /B,x
time = 1

[Command]
name = "back_y"
Command = /B,y
time = 1

[Command]
name = "back_z"
Command = /B,z
time = 1

[Command]
name = "downfwd_b"
Command = /DF, b
time = 1

[Command]
name = "downfwd_x"
Command = /DF,x
time = 1

[Command]
name = "downfwd_y"
Command = /DF,y
time = 1

;-----------------------------For KOF Seriese only
[Command]
name = "gc_fwd"
Command = /DF, a+x
time = 1

[Command]
name = "gc_fwd"
Command = /DF, z
time = 1

[Command]
name = "gc_fwd"
Command = /F, a+x
time = 1

[Command]
name = "gc_fwd"
Command = /F, z
time = 1

[Command]
name = "gc_back"
Command = /DB, a+x
time = 1

[Command]
name = "gc_back"
Command = /DB, z
time = 1

[Command]
name = "gc_back"
Command = /B, a+x
time = 1

[Command]
name = "gc_back"
Command = /B, z
time = 1

[Command]
name = "q_fwd"
Command = /F, a+x
time = 1

[Command]
name = "q_fwd"
Command = /F, z
time = 1

[Command]
name = "q_back"
Command = /B, a+x
time = 1

[Command]
name = "q_back"
Command = /B, z
time = 1

;-| Single Button |---------------------------------------------------
[Command]
name = "x"
Command = x
time = 1

[Command]
name = "a"
Command = a
time = 1

[Command]
name = "y"
Command = y
time = 1

[Command]
name = "b"
Command = b
time = 1

[Command]
name = "c"
Command = c
time = 1

[Command]
name = "z"
Command = z
time = 1

[Command]
name = "s"
Command = s
time = 1

[Command]
name = "recovery"
Command = z
time = 1

;----------------------------- KOF Seriese only
[Command]
name = "gc_fwd"
Command = z
time = 1

[Command]
name = "q_fwd"
Command = z
time = 1

;-| Hold Button |-----------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
Command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
Command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
Command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
Command = /$D
time = 1

;------------------------ For KOF Series Only
[Command]
name = "holdupfwd"
command = /UF
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]

;=====================================================================
; CPU Function
;=====================================================================
;
;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------
; ＭＡＸ版・合掌ひねり
[State -1]
type = ChangeState
value = 3100
triggerall = Command = "gh_b"
triggerall = !StateType = A
triggerall = Power >= 2000
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) <= 5)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) <= 9)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) <= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) <= 8)
trigger6 = MoveContact && (StateNo = 300 && AnimElemNo(0) <= 3)
trigger7 = MoveContact && (StateNo = 310 && AnimElemNo(0) <= 9)
trigger8 = MoveContact && (StateNo = 330 && AnimElemNo(0) <= 6)
trigger9 = MoveContact && (StateNo = 600 && AnimElemNo(0) <= 11)
trigger10 = MoveContact && (StateNo = 700 && AnimElemNo(0) <= 8)
trigger11 = MoveContact && (StateNo = 710 && AnimElemNo(0) <= 5)
trigger12 = MoveContact && (StateNo = 720 && AnimElemNo(0) <= 9)
trigger13 = MoveContact && (StateNo = 730 && AnimElemNo(0) <= 9)
trigger14 = MoveContact && (StateNo = 740 && AnimElemNo(0) <= 6)
trigger15 = MoveContact && (StateNo = 750 && AnimElemNo(0) <= 6)
trigger16 = MoveContact && (StateNo = 760 && AnimElemNo(0) <= 7)
trigger17 = MoveContact && (StateNo = 770 && AnimElemNo(0) <= 6)
trigger18 = MoveContact && (StateNo = 780 && AnimElemNo(0) <= 6)

;---------------------------------------------------------------------
; 合掌ひねり
[State -1]
type = ChangeState
value = 3000
triggerall = Command = "gh_a"
triggerall = !StateType = A
triggerall = Power >= 1000
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) <= 5)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) <= 9)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) <= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) <= 8)
trigger6 = MoveContact && (StateNo = 300 && AnimElemNo(0) <= 3)
trigger7 = MoveContact && (StateNo = 310 && AnimElemNo(0) <= 9)
trigger8 = MoveContact && (StateNo = 330 && AnimElemNo(0) <= 6)
trigger9 = MoveContact && (StateNo = 600 && AnimElemNo(0) <= 11)
trigger10 = MoveContact && (StateNo = 700 && AnimElemNo(0) <= 8)
trigger11 = MoveContact && (StateNo = 710 && AnimElemNo(0) <= 5)
trigger12 = MoveContact && (StateNo = 720 && AnimElemNo(0) <= 9)
trigger13 = MoveContact && (StateNo = 730 && AnimElemNo(0) <= 9)
trigger14 = MoveContact && (StateNo = 740 && AnimElemNo(0) <= 6)
trigger15 = MoveContact && (StateNo = 750 && AnimElemNo(0) <= 6)
trigger16 = MoveContact && (StateNo = 760 && AnimElemNo(0) <= 7)
trigger17 = MoveContact && (StateNo = 770 && AnimElemNo(0) <= 6)
trigger18 = MoveContact && (StateNo = 780 && AnimElemNo(0) <= 6)

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; 掛け投げ・弱／強共通
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "kn2"
triggerall = !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) <= 5)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) <= 9)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) <= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) <= 8)
trigger6 = MoveContact && (StateNo = 300 && AnimElemNo(0) <= 3)
trigger7 = MoveContact && (StateNo = 310 && AnimElemNo(0) <= 9)
trigger8 = MoveContact && (StateNo = 330 && AnimElemNo(0) <= 6)
trigger9 = MoveContact && (StateNo = 600 && AnimElemNo(0) <= 11)
trigger10 = MoveContact && (StateNo = 700 && AnimElemNo(0) <= 8)
trigger11 = MoveContact && (StateNo = 710 && AnimElemNo(0) <= 5)
trigger12 = MoveContact && (StateNo = 720 && AnimElemNo(0) <= 9)
trigger13 = MoveContact && (StateNo = 730 && AnimElemNo(0) <= 9)
trigger14 = MoveContact && (StateNo = 740 && AnimElemNo(0) <= 6)
trigger15 = MoveContact && (StateNo = 750 && AnimElemNo(0) <= 6)
trigger16 = MoveContact && (StateNo = 760 && AnimElemNo(0) <= 7)
trigger17 = MoveContact && (StateNo = 770 && AnimElemNo(0) <= 6)
trigger18 = MoveContact && (StateNo = 780 && AnimElemNo(0) <= 6)

;---------------------------------------------------------------------
; 小手投げ・弱／強共通
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "kn"
triggerall = !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) <= 5)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) <= 9)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) <= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) <= 8)
trigger6 = MoveContact && (StateNo = 300 && AnimElemNo(0) <= 3)
trigger7 = MoveContact && (StateNo = 310 && AnimElemNo(0) <= 9)
trigger8 = MoveContact && (StateNo = 330 && AnimElemNo(0) <= 6)
trigger9 = MoveContact && (StateNo = 600 && AnimElemNo(0) <= 11)
trigger10 = MoveContact && (StateNo = 700 && AnimElemNo(0) <= 8)
trigger11 = MoveContact && (StateNo = 710 && AnimElemNo(0) <= 5)
trigger12 = MoveContact && (StateNo = 720 && AnimElemNo(0) <= 9)
trigger13 = MoveContact && (StateNo = 730 && AnimElemNo(0) <= 9)
trigger14 = MoveContact && (StateNo = 740 && AnimElemNo(0) <= 6)
trigger15 = MoveContact && (StateNo = 750 && AnimElemNo(0) <= 6)
trigger16 = MoveContact && (StateNo = 760 && AnimElemNo(0) <= 7)
trigger17 = MoveContact && (StateNo = 770 && AnimElemNo(0) <= 6)
trigger18 = MoveContact && (StateNo = 780 && AnimElemNo(0) <= 6)

;---------------------------------------------------------------------
; 寄り切り・弱／強共通
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "yk"
triggerall = !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) <= 5)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) <= 9)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) <= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) <= 8)
trigger6 = MoveContact && (StateNo = 300 && AnimElemNo(0) <= 3)
trigger7 = MoveContact && (StateNo = 310 && AnimElemNo(0) <= 9)
trigger8 = MoveContact && (StateNo = 330 && AnimElemNo(0) <= 6)
trigger9 = MoveContact && (StateNo = 600 && AnimElemNo(0) <= 11)
trigger10 = MoveContact && (StateNo = 700 && AnimElemNo(0) <= 8)
trigger11 = MoveContact && (StateNo = 710 && AnimElemNo(0) <= 5)
trigger12 = MoveContact && (StateNo = 720 && AnimElemNo(0) <= 9)
trigger13 = MoveContact && (StateNo = 730 && AnimElemNo(0) <= 9)
trigger14 = MoveContact && (StateNo = 740 && AnimElemNo(0) <= 6)
trigger15 = MoveContact && (StateNo = 750 && AnimElemNo(0) <= 6)
trigger16 = MoveContact && (StateNo = 760 && AnimElemNo(0) <= 7)
trigger17 = MoveContact && (StateNo = 770 && AnimElemNo(0) <= 6)
trigger18 = MoveContact && (StateNo = 780 && AnimElemNo(0) <= 6)

;---------------------------------------------------------------------
; 突き出し・弱
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "td_a"
triggerall = !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) <= 5)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) <= 9)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) <= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) <= 8)
trigger6 = MoveContact && (StateNo = 300 && AnimElemNo(0) <= 3)
trigger7 = MoveContact && (StateNo = 310 && AnimElemNo(0) <= 9)
trigger8 = MoveContact && (StateNo = 330 && AnimElemNo(0) <= 6)
trigger9 = MoveContact && (StateNo = 600 && AnimElemNo(0) <= 11)
trigger10 = MoveContact && (StateNo = 700 && AnimElemNo(0) <= 8)
trigger11 = MoveContact && (StateNo = 710 && AnimElemNo(0) <= 5)
trigger12 = MoveContact && (StateNo = 720 && AnimElemNo(0) <= 9)
trigger13 = MoveContact && (StateNo = 730 && AnimElemNo(0) <= 9)
trigger14 = MoveContact && (StateNo = 740 && AnimElemNo(0) <= 6)
trigger15 = MoveContact && (StateNo = 750 && AnimElemNo(0) <= 6)
trigger16 = MoveContact && (StateNo = 760 && AnimElemNo(0) <= 7)
trigger17 = MoveContact && (StateNo = 770 && AnimElemNo(0) <= 6)
trigger18 = MoveContact && (StateNo = 780 && AnimElemNo(0) <= 6)

;---------------------------------------------------------------------
; 突き出し・強
[State -1]
type = ChangeState
value = 1050
triggerall = Command = "td_b"
triggerall = !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) <= 5)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) <= 9)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) <= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) <= 8)
trigger6 = MoveContact && (StateNo = 300 && AnimElemNo(0) <= 3)
trigger7 = MoveContact && (StateNo = 310 && AnimElemNo(0) <= 9)
trigger8 = MoveContact && (StateNo = 330 && AnimElemNo(0) <= 6)
trigger9 = MoveContact && (StateNo = 600 && AnimElemNo(0) <= 11)
trigger10 = MoveContact && (StateNo = 700 && AnimElemNo(0) <= 8)
trigger11 = MoveContact && (StateNo = 710 && AnimElemNo(0) <= 5)
trigger12 = MoveContact && (StateNo = 720 && AnimElemNo(0) <= 9)
trigger13 = MoveContact && (StateNo = 730 && AnimElemNo(0) <= 9)
trigger14 = MoveContact && (StateNo = 740 && AnimElemNo(0) <= 6)
trigger15 = MoveContact && (StateNo = 750 && AnimElemNo(0) <= 6)
trigger16 = MoveContact && (StateNo = 760 && AnimElemNo(0) <= 7)
trigger17 = MoveContact && (StateNo = 770 && AnimElemNo(0) <= 6)
trigger18 = MoveContact && (StateNo = 780 && AnimElemNo(0) <= 6)

;---------------------------------------------------------------------
; 突き落とし・弱／強共通
[State -1]
type = ChangeState
value = 1400
triggerall = Command = "to"
triggerall = !StateType = A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) <= 5)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) <= 9)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) <= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) <= 8)
trigger6 = MoveContact && (StateNo = 300 && AnimElemNo(0) <= 3)
trigger7 = MoveContact && (StateNo = 310 && AnimElemNo(0) <= 9)
trigger8 = MoveContact && (StateNo = 330 && AnimElemNo(0) <= 6)
trigger9 = MoveContact && (StateNo = 600 && AnimElemNo(0) <= 11)
trigger10 = MoveContact && (StateNo = 700 && AnimElemNo(0) <= 8)
trigger11 = MoveContact && (StateNo = 710 && AnimElemNo(0) <= 5)
trigger12 = MoveContact && (StateNo = 720 && AnimElemNo(0) <= 9)
trigger13 = MoveContact && (StateNo = 730 && AnimElemNo(0) <= 9)
trigger14 = MoveContact && (StateNo = 740 && AnimElemNo(0) <= 6)
trigger15 = MoveContact && (StateNo = 750 && AnimElemNo(0) <= 6)
trigger16 = MoveContact && (StateNo = 760 && AnimElemNo(0) <= 7)
trigger17 = MoveContact && (StateNo = 770 && AnimElemNo(0) <= 6)
trigger18 = MoveContact && (StateNo = 780 && AnimElemNo(0) <= 6)

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = Command = "FF"
trigger1 = StateType = S
trigger1 = Ctrl = 1
trigger1 = StateNo != 100

;---------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = Command = "BB"
trigger1 = StateType = S
trigger1 = Ctrl = 1

;=====================================================================
; 2/3 Buttons
;=====================================================================
;
;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; 襷投げ（Ｐ通常投げ）
[State -1]
type = ChangeState
value = 900
triggerall = StateNo != 100
triggerall = StateType = S
triggerall = Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_y"
trigger1 = P2BodyDist X < 8
trigger2 = Command = "back_y"
trigger2 = P2BodyDist X < 20

;---------------------------------------------------------------------
; 上手投げ（Ｋ通常投げ）
[State -1]
type = ChangeState
value = 950
triggerall = StateNo != 100
triggerall = StateType = S
triggerall = Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_b"
trigger1 = P2BodyDist X < 8
trigger2 = Command = "back_b"
trigger2 = P2BodyDist X < 20

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------
;---------------------------------------------------------------------
; 地上ふっとばし攻撃
[State -1]
type = ChangeState
value = 600
triggerall = Command = "c" || Command = "by"
trigger1 = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100

;---------------------------------------------------------------------
; 空中ふっとばし攻撃
[State -1]
type = ChangeState
value = 610
triggerall = Command = "c" || Command = "by"
trigger1 = StateType = A
trigger1 = Ctrl = 1

;---------------------------------------------------------------------
; ガードキャンセル緊急回避動作（前・後）
[State -1]
type = ChangeState
value = 4000
triggerall = Command = "gc_fwd"
triggerall = Var(4) = 1
triggerall = Power >= 1000
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152

;---------------------------------------------------------------------
; 緊急回避動作（前）
[State -1]
type = ChangeState
value = 4050
triggerall = Command = "q_fwd"
triggerall = Command != "holdback"
triggerall = StateType = S
trigger1 = Ctrl = 1 || StateNo = 100

;---------------------------------------------------------------------
; 緊急回避動作（後）
[State -1]
type = ChangeState
value = 4150
triggerall = Command = "q_back"
triggerall = Command != "holdfwd"
triggerall = StateType = S
trigger1 = Ctrl = 1 || StateNo = 100

;---------------------------------------------------------------------
; ガードキャンセル吹っ飛ばし攻撃
[State -1]
type = ChangeState
value = 4500
triggerall = Command = "by" || Command = "c"
triggerall = Var(4) = 1
triggerall = Power >= 1000
triggerall = StateType != A
trigger1 = StateNo = 150
trigger2 = StateNo = 152

;=====================================================================
; Dir + Button
;=====================================================================

;---------------------------------------------------------------------
; 張り手（→＋Ｘ）
[State -1]
type = ChangeState
value = 700
triggerall = Command = "fwd_x"
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) <= 5)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) <= 9)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) <= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) <= 8)
trigger6 = MoveContact && (StateNo = 300 && AnimElemNo(0) <= 3)
trigger7 = MoveContact && (StateNo = 310 && AnimElemNo(0) <= 9)
trigger8 = MoveContact && (StateNo = 330 && AnimElemNo(0) <= 6)
trigger9 = MoveContact && (StateNo = 600 && AnimElemNo(0) <= 11)

;---------------------------------------------------------------------
; まえみつ叩き（３＋Ｘ）
[State -1]
type = ChangeState
value = 730
triggerall = Command = "downfwd_x"
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) <= 5)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) <= 9)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) <= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) <= 8)
trigger6 = MoveContact && (StateNo = 300 && AnimElemNo(0) <= 3)
trigger7 = MoveContact && (StateNo = 310 && AnimElemNo(0) <= 9)
trigger8 = MoveContact && (StateNo = 330 && AnimElemNo(0) <= 6)
trigger9 = MoveContact && (StateNo = 600 && AnimElemNo(0) <= 11)

;---------------------------------------------------------------------
; 突っ張り（→＋Ａ）
[State -1]
type = ChangeState
value = 740
triggerall = Command = "fwd_a"
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) <= 5)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) <= 9)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) <= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) <= 8)
trigger6 = MoveContact && (StateNo = 300 && AnimElemNo(0) <= 3)
trigger7 = MoveContact && (StateNo = 310 && AnimElemNo(0) <= 9)
trigger8 = MoveContact && (StateNo = 330 && AnimElemNo(0) <= 6)
trigger9 = MoveContact && (StateNo = 600 && AnimElemNo(0) <= 11)

;---------------------------------------------------------------------
; 喉輪（３＋Ｙ）
[State -1]
type = ChangeState
value = 760
triggerall = Command = "downfwd_y"
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) <= 5)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) <= 9)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) <= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) <= 8)
trigger6 = MoveContact && (StateNo = 300 && AnimElemNo(0) <= 3)
trigger7 = MoveContact && (StateNo = 310 && AnimElemNo(0) <= 9)
trigger8 = MoveContact && (StateNo = 330 && AnimElemNo(0) <= 6)
trigger9 = MoveContact && (StateNo = 600 && AnimElemNo(0) <= 11)

;---------------------------------------------------------------------
; けたぐり（３＋Ｂ）
[State -1]
type = ChangeState
value = 780
triggerall = Command = "downfwd_b"
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && (StateNo = 200 && AnimElemNo(0) <= 5)
trigger3 = MoveContact && (StateNo = 210 && AnimElemNo(0) <= 9)
trigger4 = MoveContact && (StateNo = 220 && AnimElemNo(0) <= 5)
trigger5 = MoveContact && (StateNo = 230 && AnimElemNo(0) <= 8)
trigger6 = MoveContact && (StateNo = 300 && AnimElemNo(0) <= 3)
trigger7 = MoveContact && (StateNo = 310 && AnimElemNo(0) <= 9)
trigger8 = MoveContact && (StateNo = 330 && AnimElemNo(0) <= 6)
trigger9 = MoveContact && (StateNo = 600 && AnimElemNo(0) <= 11)

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = Command = "s"
trigger1 = StateType = S
trigger1 = Ctrl = 1 || StateNo = 100

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; 弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = Ctrl = 1 || StateNo = 100
trigger1 = StateType = S
trigger2 = StateNo = 320 && AnimElemNo(0) >= 5
trigger3 = StateNo = 200 && AnimElemNo(0) >= 5

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = 220
triggerall = Command = "a"
triggerall = Command != "holddown"
trigger1 = Ctrl = 1 || StateNo = 100
trigger1 = StateType = S
trigger2 = StateNo = 320 && AnimElemNo(0) >= 5

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = 210
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl = 1 || StateNo = 100

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = 230
triggerall = Command = "b"
triggerall = Command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl = 1 || StateNo = 100

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 300
triggerall = Command = "x"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl = 1
trigger2 = StateNo = 320 && AnimElemNo(0) >= 5
trigger3 = StateNo = 100

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 310
triggerall = Command = "y"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl = 1
trigger3 = StateNo = 100

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 320
triggerall = Command = "a"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl = 1
trigger2 = StateNo = 320 && AnimElemNo(0) >= 4
trigger3 = StateNo = 100

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 330
triggerall = Command = "b"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl = 1
trigger3 = StateNo = 100

;---------------------------------------------------------------------
; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 500
triggerall = Command = "x"
triggerall = StateType = A
triggerall = Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = 510
triggerall = Command = "y"
triggerall = StateType = A
triggerall = Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = 520
triggerall = Command = "a"
triggerall = StateType = A
triggerall = Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = 530
triggerall = Command = "b"
triggerall = StateType = A
triggerall = Ctrl = 1
trigger1 = StateNo != 105


