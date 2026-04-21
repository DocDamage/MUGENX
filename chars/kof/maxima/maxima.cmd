;=====================================================================
;  CMD File For "Maxima"                                Made By M.M.R.
;                                       Ver. 1.0           2001.Jan.23
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
; バンカーバスター				< Level 1 / 2 / 3 >
[Command]
name = "bun_a"
command = ~D,DF, F,DF, D,DB, B, x
time = 35

[Command]
name = "bun_b"
command = ~D,DF, F,DF, D,DB, B, y
time = 35

[Command]
name = "bun_c"
command = ~D,DF, F,DF, D,DB, B, z
time = 35

;---------------------------------------------------------------------
; マキシマ・リベンジャー			< Level 1 / 2 / 3 >
[Command]
name = "rev_a"
command = ~F,DF, D,DB, B, F,DF, D,DB, B, a
time = 40

[Command]
name = "rev_b"
command = ~F,DF, D,DB, B, F,DF, D,DB, B, b
time = 40

[Command]
name = "rev_c"
command = ~F,DF, D,DB, B, F,DF, D,DB, B, c
time = 40

;-| Special Motions |-------------------------------------------------

;---------------------------------------------------------------------
; Ｍ４型ベイパーキャノン
[Command]
name = "m4_a"
command = ~D,DB, B, x
time = 20

[Command]
name = "m4_b"
command = ~D,DB, B, y
time = 20

;---------------------------------------------------------------------
; ＳＹＳＴＥＭ　１　：　マキシマ・スクランブル
[Command]
name = "sys_1"
command = ~D,DF, F, x
time = 20

;---------------------------------------------------------------------
; ＳＹＳＴＥＭ　２　：　マキシマ・スクランブル
[Command]
name = "sys_2"
command = ~D,DF, F, y
time = 20

;---------------------------------------------------------------------
; Ｍ１１型デンジャラス・アーチ（弱／強共通）
[Command]
name = "m11"
command = ~B,DB, D,DF, F, a
time = 25

[Command]
name = "m11"
command = ~B,DB, D,DF, F, b
time = 25

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

[Command]
name = "abcd"
command = x+y+a+b
time = 1

[Command]
name = "abcd"
command = c+z
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

[Command]
name = "downfwd_y"
command = /DF,y
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
;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------
; マキシマ・リベンジャー				< Level 2 >
[State -1]
type = ChangeState
value = 3400
triggerall = Power >= 2000
triggerall = Command = "rev_b"
triggerall = Ctrl = 1
trigger1 = StateType != A

;------------------------通常技キャンセル設定
[State -1]
type = ChangeState
value = 3400
triggerall = Power >= 2000
triggerall = Command = "rev_b"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4
trigger3 = StateNo = 210
trigger3 = AnimElem = 4, <= 8
trigger4 = StateNo = 310
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 220
trigger5 = AnimElem = 5, <= 8
trigger6 = StateNo = 320
trigger6 = AnimElem = 7, <= 6
trigger7 = StateNo = 230
trigger7 = AnimElem = 6, <= 5
trigger8 = StateNo = 330
trigger8 = AnimElem = 5, <= 6
trigger9 = StateNo = 810
trigger9 = AnimElem = 9, <= 6
trigger10 = StateNo = 860
trigger10 = AnimElem = 5, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 9, <= 3

;---------------------------------------------------------------------
; マキシマ・リベンジャー				< Level 1 >
[State -1]
type = ChangeState
value = 3300
triggerall = Power >= 1000
triggerall = Command = "rev_a"
triggerall = Ctrl = 1
trigger1 = StateType != A

;------------------------通常技キャンセル設定
[State -1]
type = ChangeState
value = 3300
triggerall = Power >= 1000
triggerall = Command = "rev_a"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4
trigger3 = StateNo = 210
trigger3 = AnimElem = 4, <= 8
trigger4 = StateNo = 310
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 220
trigger5 = AnimElem = 5, <= 8
trigger6 = StateNo = 320
trigger6 = AnimElem = 7, <= 6
trigger7 = StateNo = 230
trigger7 = AnimElem = 6, <= 5
trigger8 = StateNo = 330
trigger8 = AnimElem = 5, <= 6
trigger9 = StateNo = 810
trigger9 = AnimElem = 9, <= 6
trigger10 = StateNo = 860
trigger10 = AnimElem = 5, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 9, <= 3

;---------------------------------------------------------------------
; バンカーバスター				< Level 2 >
[State -1]
type = ChangeState
value = 3100
triggerall = Power >= 2000
triggerall = Command = "bun_b"
triggerall = Ctrl = 1
trigger1 = StateType != A

;------------------------通常技キャンセル設定
[State -1]
type = ChangeState
value = 3100
triggerall = Power >= 2000
triggerall = Command = "bun_b"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4
trigger3 = StateNo = 210
trigger3 = AnimElem = 4, <= 8
trigger4 = StateNo = 310
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 220
trigger5 = AnimElem = 5, <= 8
trigger6 = StateNo = 320
trigger6 = AnimElem = 7, <= 6
trigger7 = StateNo = 230
trigger7 = AnimElem = 6, <= 5
trigger8 = StateNo = 330
trigger8 = AnimElem = 5, <= 6
trigger9 = StateNo = 810
trigger9 = AnimElem = 9, <= 6
trigger10 = StateNo = 860
trigger10 = AnimElem = 5, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 9, <= 3

;---------------------------------------------------------------------
; バンカーバスター				< Level 1 >
[State -1]
type = ChangeState
value = 3000
triggerall = Power >= 1000
triggerall = Command = "bun_a"
triggerall = Ctrl = 1
trigger1 = StateType != A

;------------------------通常技キャンセル設定
[State -1]
type = ChangeState
value = 3000
triggerall = Power >= 1000
triggerall = Command = "bun_a"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4
trigger3 = StateNo = 210
trigger3 = AnimElem = 4, <= 8
trigger4 = StateNo = 310
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 220
trigger5 = AnimElem = 5, <= 8
trigger6 = StateNo = 320
trigger6 = AnimElem = 7, <= 6
trigger7 = StateNo = 230
trigger7 = AnimElem = 6, <= 5
trigger8 = StateNo = 330
trigger8 = AnimElem = 5, <= 6
trigger9 = StateNo = 810
trigger9 = AnimElem = 9, <= 6
trigger10 = StateNo = 860
trigger10 = AnimElem = 5, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 9, <= 3

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; Ｍ１１型デンジャラス・アーチ　（弱／強共通）
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "m11"
triggerall = Ctrl = 1
trigger1 = StateType != A

;------------------------通常技キャンセル設定
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "m11"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4
trigger3 = StateNo = 210
trigger3 = AnimElem = 4, <= 8
trigger4 = StateNo = 310
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 220
trigger5 = AnimElem = 5, <= 8
trigger6 = StateNo = 320
trigger6 = AnimElem = 7, <= 6
trigger7 = StateNo = 230
trigger7 = AnimElem = 6, <= 5
trigger8 = StateNo = 330
trigger8 = AnimElem = 5, <= 6
trigger9 = StateNo = 810
trigger9 = AnimElem = 9, <= 6
trigger10 = StateNo = 860
trigger10 = AnimElem = 5, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 9, <= 3

;---------------------------------------------------------------------
; Ｍ４型ベイパーキャノン・弱
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "m4_a"
triggerall = Ctrl = 1
trigger1 = StateType != A

;------------------------通常技キャンセル設定
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "m4_a"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4
trigger3 = StateNo = 210
trigger3 = AnimElem = 4, <= 8
trigger4 = StateNo = 310
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 220
trigger5 = AnimElem = 5, <= 8
trigger6 = StateNo = 320
trigger6 = AnimElem = 7, <= 6
trigger7 = StateNo = 230
trigger7 = AnimElem = 6, <= 5
trigger8 = StateNo = 330
trigger8 = AnimElem = 5, <= 6
trigger9 = StateNo = 810
trigger9 = AnimElem = 9, <= 6
trigger10 = StateNo = 860
trigger10 = AnimElem = 5, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 9, <= 3

;---------------------------------------------------------------------
; Ｍ４型ベイパーキャノン・強
[State -1]
type = ChangeState
value = 1050
triggerall = Command = "m4_b"
triggerall = Ctrl = 1
trigger1 = StateType != A

;------------------------通常技キャンセル設定
[State -1]
type = ChangeState
value = 1050
triggerall = Command = "m4_b"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4
trigger3 = StateNo = 210
trigger3 = AnimElem = 4, <= 8
trigger4 = StateNo = 310
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 220
trigger5 = AnimElem = 5, <= 8
trigger6 = StateNo = 320
trigger6 = AnimElem = 7, <= 6
trigger7 = StateNo = 230
trigger7 = AnimElem = 6, <= 5
trigger8 = StateNo = 330
trigger8 = AnimElem = 5, <= 6
trigger9 = StateNo = 810
trigger9 = AnimElem = 9, <= 6
trigger10 = StateNo = 860
trigger10 = AnimElem = 5, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 9, <= 3

;---------------------------------------------------------------------
; ＳＹＳＴＥＭ　１　：　マキシマ・スクランブル
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "sys_1"
triggerall = Ctrl = 1
trigger1 = StateType != A

;------------------------通常技キャンセル設定
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "sys_1"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4
trigger3 = StateNo = 210
trigger3 = AnimElem = 4, <= 8
trigger4 = StateNo = 310
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 220
trigger5 = AnimElem = 5, <= 8
trigger6 = StateNo = 320
trigger6 = AnimElem = 7, <= 6
trigger7 = StateNo = 230
trigger7 = AnimElem = 6, <= 5
trigger8 = StateNo = 330
trigger8 = AnimElem = 5, <= 6
trigger9 = StateNo = 810
trigger9 = AnimElem = 9, <= 6
trigger10 = StateNo = 860
trigger10 = AnimElem = 5, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 9, <= 3

;---------------------------------------------------------------------
; ＳＹＳＴＥＭ　２　：　マキシマ・スクランブル
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "sys_2"
triggerall = Ctrl = 1
trigger1 = StateType != A

;------------------------通常技キャンセル設定
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "sys_2"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4
trigger3 = StateNo = 210
trigger3 = AnimElem = 4, <= 8
trigger4 = StateNo = 310
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 220
trigger5 = AnimElem = 5, <= 8
trigger6 = StateNo = 320
trigger6 = AnimElem = 7, <= 6
trigger7 = StateNo = 230
trigger7 = AnimElem = 6, <= 5
trigger8 = StateNo = 330
trigger8 = AnimElem = 5, <= 6
trigger9 = StateNo = 810
trigger9 = AnimElem = 9, <= 6
trigger10 = StateNo = 860
trigger10 = AnimElem = 5, <= 5
trigger11 = StateNo = 600
trigger11 = AnimElem = 9, <= 3

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
; ダイナマイトドロップキック（Ｐ通常投げ）
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
; チョーキングバイス（Ｋ通常投げ）
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
; モンゴリアン
[State -1]
type = ChangeState
value = 800
triggerall = command = "fwd_x"
triggerall = StateType != A
triggerall = ctrl = 1
trigger1 = statetype = S
trigger2 = statetype = C

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 810
triggerall = Command = "fwd_x"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4
trigger3 = StateNo = 210
trigger3 = AnimElem = 4, <= 8
trigger4 = StateNo = 310
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 220
trigger5 = AnimElem = 5, <= 8
trigger6 = StateNo = 320
trigger6 = AnimElem = 7, <= 6
trigger7 = StateNo = 230
trigger7 = AnimElem = 6, <= 5
trigger8 = StateNo = 330
trigger8 = AnimElem = 5, <= 6

;---------------------------------------------------------------------
; Ｍ９型マキシマミサイル（試作）
[State -1]
type = ChangeState
value = 850
triggerall = command = "downfwd_y"
triggerall = StateType != A
triggerall = ctrl = 1
trigger1 = statetype = S
trigger2 = statetype = C

;----------------------------- 通常技キャンセル設定
[State -1]
type = ChangeState
value = 860
triggerall = Command = "downfwd_y"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4
trigger3 = StateNo = 210
trigger3 = AnimElem = 4, <= 8
trigger4 = StateNo = 310
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 220
trigger5 = AnimElem = 5, <= 8
trigger6 = StateNo = 320
trigger6 = AnimElem = 7, <= 6
trigger7 = StateNo = 230
trigger7 = AnimElem = 6, <= 5
trigger8 = StateNo = 330
trigger8 = AnimElem = 5, <= 6

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
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4
trigger3 = StateNo = 210
trigger3 = AnimElem = 4, <= 8
trigger4 = StateNo = 310
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 220
trigger5 = AnimElem = 5, <= 8
trigger6 = StateNo = 320
trigger6 = AnimElem = 7, <= 6
trigger7 = StateNo = 230
trigger7 = AnimElem = 6, <= 5
trigger8 = StateNo = 330
trigger8 = AnimElem = 5, <= 6

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

;------------------------チェーン設定
[State -1]
type = ChangeState
value = 210
triggerall = Command = "a"
triggerall = Command != "holddown"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4

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

;------------------------チェーン設定
[State -1]
type = ChangeState
value = 220
triggerall = Command = "y"
triggerall = Command != "holddown"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4
trigger3 = StateNo = 210
trigger3 = AnimElem = 4, <= 8
trigger4 = StateNo = 310
trigger4 = AnimElem = 5, <= 4

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

;------------------------チェーン設定
[State -1]
type = ChangeState
value = 230
triggerall = Command = "b"
triggerall = Command != "holddown"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4
trigger3 = StateNo = 210
trigger3 = AnimElem = 4, <= 8
trigger4 = StateNo = 310
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 220
trigger5 = AnimElem = 5, <= 8
trigger6 = StateNo = 320
trigger6 = AnimElem = 7, <= 6

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
trigger1 = ctrl = 1
trigger1 = statetype = S

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

;------------------------チェーン設定
[State -1]
type = ChangeState
value = 310
triggerall = Command = "a"
triggerall = Command = "holddown"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 320
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;------------------------チェーン設定
[State -1]
type = ChangeState
value = 320
triggerall = Command = "y"
triggerall = Command = "holddown"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4
trigger3 = StateNo = 210
trigger3 = AnimElem = 4, <= 8
trigger4 = StateNo = 310
trigger4 = AnimElem = 5, <= 4

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 330
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;------------------------チェーン設定
[State -1]
type = ChangeState
value = 330
triggerall = Command = "b"
triggerall = Command = "holddown"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 4, <= 3
trigger2 = StateNo = 300
trigger2 = AnimElem = 3, <= 4
trigger3 = StateNo = 210
trigger3 = AnimElem = 4, <= 8
trigger4 = StateNo = 310
trigger4 = AnimElem = 5, <= 4
trigger5 = StateNo = 220
trigger5 = AnimElem = 5, <= 8
trigger6 = StateNo = 320
trigger6 = AnimElem = 7, <= 6

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

;------------------------チェーン設定
[State -1]
type = ChangeState
value = 510
triggerall = Command = "a"
triggerall = movecontact
trigger1 = StateNo = 500

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = 520
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;------------------------チェーン設定
[State -1]
type = ChangeState
value = 520
triggerall = Command = "y"
triggerall = movecontact
trigger1 = StateNo = 500
trigger2 = StateNo = 510

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = 530
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;------------------------チェーン設定
[State -1]
type = ChangeState
value = 530
triggerall = Command = "b"
triggerall = movecontact
trigger1 = StateNo = 500
trigger2 = StateNo = 510

