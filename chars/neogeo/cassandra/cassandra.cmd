;=====================================================================
;  CMD File For "cassandra"                                      Made By H"        
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================

;-| Super Motions |---------------------------------------------------
[Command]
name = "Whitewave1_x"
command = ~D, F, D, B, x
time = 26

[Command]
name = "Whitewave1_y"
command = ~D, F, D, B, y
time = 26

[Command]
name = "Whitewave2_x"
command = ~D, B, D, F, x
time = 26

[Command]
name = "Whitewave2_y"
command = ~D, B, D, F, y
time = 26

[Command]
name = "combo"
command = ~D, DF, F, a+y

[Command]
name = "combo2"
command = ~D, DB, B, a+y

;-| Special Motions |-------------------------------------------------
[Command]
name = "Inosense"
command = ~F, DF, D, DB, B, x
time = 20

[Command]
name = "Inosense"
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "angelslash_x"
command = ~F, D, DF, x

[Command]
name = "angelslash_y"
command = ~F, D, DF, y

[Command]
name = "Illusion_a"
command = ~D, DF, F, a

[Command]
name = "Illusion_b"
command = ~D, DF, F, b

[Command]
name = "forenangel_a"
command = ~D, DB, B, a

[Command]
name = "forenangel_b"
command = ~D, DB, B, b

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
name = "by"
command = b+y
time = 1

[Command]
name = "ay"
command = a+y
time = 1

[Command]
name = "abcd"
command = x+y+a+b
time = 1

;-| Dir + Button |----------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

;-----------------------------緊急回避用
[Command]
name = "q_fwd"
command = /F, a+x
time = 1

[Command]
name = "q_back"
command = /B, a+x
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

;------------------------ 気絶用
[Command]
name = "random"
command = x
time = 1

[Command]
name = "random"
command = y
time = 1

[Command]
name = "random"
command = a
time = 1

[Command]
name = "random"
command = b
time = 1

[Command]
name = "random"
command = F
time = 1

[Command]
name = "random"
command = DF
time = 1

[Command]
name = "random"
command = D
time = 1

[Command]
name = "random"
command = DB
time = 1

[Command]
name = "random"
command = B
time = 1

[Command]
name = "random"
command = UB
time = 1

[Command]
name = "random"
command = U
time = 1

[Command]
name = "random"
command = UF
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

;------------------------ For KOF Series Only
[Command]
name = "holdupfwd"
command = /UF
time = 1

[Command]
name = "holdupback"
command = /UB
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
;
;---------------------------------------------------------------------
;デュプレックスコンボ
[State -1]
type = ChangeState
value = 3500
triggerall = StateType != A && Power >= 1000
trigger1 = Command = "combo"
trigger1 = Ctrl

;---------------------------------------------------------------------
; ホワイトウェィブ（空中）						超必殺
[State -1]
type = ChangeState
value = 3000
triggerall = StateType = A && Power >= 1000
triggerall = Command = "Whitewave1_x" || (Command = "Whitewave1_y" && Power < 2000)
trigger1 = Ctrl || StateNo = 155
trigger2  = MoveContact && StateNo = [600,699]

;---------------------------------------------------------------------
; ホワイトウェィブ（空中）						潜在
[State -1]
type = ChangeState
value = 3010
triggerall = StateType = A && Power >= 2000
triggerall = Command = "Whitewave1_y"
trigger1 = Ctrl || StateNo = 155
trigger2  = MoveContact && StateNo = [600,699]

;---------------------------------------------------------------------
; ホワイトウェィブ（地上）						超必殺
[State -1]
type = ChangeState
value = 3100
triggerall = StateType != A && Power >= 1000
triggerall = Command = "Whitewave2_x" || (Command = "Whitewave2_y" && Power < 2000)
trigger1 = Ctrl
trigger2  = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2)
trigger3  = MoveContact && (StateNo = 205 && AnimElemNo(0) >= 2)
trigger4  = MoveContact && (StateNo = 215 && AnimElemNo(0) >= 4)
trigger5  = MoveContact && (StateNo = 235 && AnimElemNo(0) >= 4)
trigger6  = MoveContact && (StateNo = 245 && AnimElemNo(0) >= 4)
trigger7  = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2)
trigger8  = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9  = MoveContact && (StateNo = 430 && AnimElemNo(0) >= 2)
trigger10  = MoveContact && (StateNo = 300 && AnimElemNo(0) >= 7)
trigger11  = MoveContact && (StateNo = 310 && AnimElemNo(0) >= 5)
trigger12  = MoveContact && (StateNo = 300 && AnimElemNo(0) >= 7)
trigger13  = MoveContact && (StateNo = 310 && AnimElemNo(0) >= 4)

;---------------------------------------------------------------------
; ホワイトウェィブ（地上）						潜在
[State -1]
type = ChangeState
value = 3110
triggerall = StateType != A && Power >= 2000
triggerall = Command = "Whitewave2_y"
trigger1 = Ctrl
trigger2  = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2)
trigger3  = MoveContact && (StateNo = 205 && AnimElemNo(0) >= 2)
trigger4  = MoveContact && (StateNo = 215 && AnimElemNo(0) >= 4)
trigger5  = MoveContact && (StateNo = 235 && AnimElemNo(0) >= 4)
trigger6  = MoveContact && (StateNo = 245 && AnimElemNo(0) >= 4)
trigger7  = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2)
trigger8  = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9  = MoveContact && (StateNo = 430 && AnimElemNo(0) >= 2)
trigger10  = MoveContact && (StateNo = 300 && AnimElemNo(0) >= 7)
trigger11  = MoveContact && (StateNo = 310 && AnimElemNo(0) >= 5)
trigger12  = MoveContact && (StateNo = 300 && AnimElemNo(0) >= 7)
trigger13  = MoveContact && (StateNo = 310 && AnimElemNo(0) >= 4)

;=====================================================================
; Special Arts 
;=====================================================================
;
;---------------------------------------------------------------------
; イノセンス
[State -1]
type = ChangeState
value = 1200
triggerall= Command = "Inosense"
triggerall= StateType != A
trigger1  = Ctrl || StateNo = 100
trigger2  = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2)
trigger3  = MoveContact && (StateNo = 205 && AnimElemNo(0) >= 2)
trigger4  = MoveContact && (StateNo = 215 && AnimElemNo(0) >= 4)
trigger5  = MoveContact && (StateNo = 235 && AnimElemNo(0) >= 4)
trigger6  = MoveContact && (StateNo = 245 && AnimElemNo(0) >= 4)
trigger7  = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2)
trigger8  = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9  = MoveContact && (StateNo = 430 && AnimElemNo(0) >= 2)
trigger10  = MoveContact && (StateNo = 4640 && AnimElemNo(0) >= 6)
trigger11  = MoveContact && (StateNo = 300 && AnimElemNo(0) >= 7)
trigger12  = MoveContact && (StateNo = 310 && AnimElemNo(0) >= 4)

;---------------------------------------------------------------------
; アンジェル・スラッシュ・弱
[State -1]
type = ChangeState
value = 1100
triggerall= Command = "angelslash_x"
triggerall= StateType != A
trigger1  = Ctrl || StateNo = 100
trigger2  = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2)
trigger3  = MoveContact && (StateNo = 205 && AnimElemNo(0) >= 2)
trigger4  = MoveContact && (StateNo = 215 && AnimElemNo(0) >= 4)
trigger5  = MoveContact && (StateNo = 235 && AnimElemNo(0) >= 4)
trigger6  = MoveContact && (StateNo = 245 && AnimElemNo(0) >= 4)
trigger7  = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2)
trigger8  = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9  = MoveContact && (StateNo = 430 && AnimElemNo(0) >= 2)
trigger10  = MoveContact && (StateNo = 4640 && AnimElemNo(0) >= 6)
trigger11  = MoveContact && (StateNo = 300 && AnimElemNo(0) >= 7)
trigger12  = MoveContact && (StateNo = 310 && AnimElemNo(0) >= 4)

;---------------------------------------------------------------------
; アンジェル・スラッシュ・強
[State -1]
type = ChangeState
value = 1110
triggerall= Command = "angelslash_y"
triggerall= StateType != A
trigger1  = Ctrl || StateNo = 100
trigger2  = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2)
trigger3  = MoveContact && (StateNo = 205 && AnimElemNo(0) >= 2)
trigger4  = MoveContact && (StateNo = 215 && AnimElemNo(0) >= 4)
trigger5  = MoveContact && (StateNo = 235 && AnimElemNo(0) >= 4)
trigger6  = MoveContact && (StateNo = 245 && AnimElemNo(0) >= 4)
trigger7  = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2)
trigger8  = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9  = MoveContact && (StateNo = 430 && AnimElemNo(0) >= 2)
trigger10  = MoveContact && (StateNo = 4640 && AnimElemNo(0) >= 6)
trigger11  = MoveContact && (StateNo = 300 && AnimElemNo(0) >= 7)
trigger12  = MoveContact && (StateNo = 310 && AnimElemNo(0) >= 4)

;---------------------------------------------------------------------
; イリュージョン・弱
[State -1]
type = ChangeState
value = 1300
triggerall= Command = "Illusion_a"
triggerall= StateType != A
trigger1  = Ctrl || StateNo = 100
trigger2  = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2)
trigger3  = MoveContact && (StateNo = 205 && AnimElemNo(0) >= 2)
trigger4  = MoveContact && (StateNo = 215 && AnimElemNo(0) >= 4)
trigger5  = MoveContact && (StateNo = 235 && AnimElemNo(0) >= 4)
trigger6  = MoveContact && (StateNo = 245 && AnimElemNo(0) >= 4)
trigger7  = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2)
trigger8  = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9  = MoveContact && (StateNo = 430 && AnimElemNo(0) >= 2)
trigger10  = MoveContact && (StateNo = 4640 && AnimElemNo(0) >= 6)
trigger11  = MoveContact && (StateNo = 300 && AnimElemNo(0) >= 7)
trigger12  = MoveContact && (StateNo = 310 && AnimElemNo(0) >= 4)

;---------------------------------------------------------------------
; イリュージョン・強
[State -1]
type = ChangeState
value = 1310
triggerall= Command = "Illusion_b"
triggerall= StateType != A
trigger1  = Ctrl || StateNo = 100
trigger2  = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2)
trigger3  = MoveContact && (StateNo = 205 && AnimElemNo(0) >= 2)
trigger4  = MoveContact && (StateNo = 215 && AnimElemNo(0) >= 4)
trigger5  = MoveContact && (StateNo = 235 && AnimElemNo(0) >= 4)
trigger6  = MoveContact && (StateNo = 245 && AnimElemNo(0) >= 4)
trigger7  = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2)
trigger8  = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9  = MoveContact && (StateNo = 430 && AnimElemNo(0) >= 2)
trigger10  = MoveContact && (StateNo = 4640 && AnimElemNo(0) >= 6)
trigger11  = MoveContact && (StateNo = 300 && AnimElemNo(0) >= 7)
trigger12  = MoveContact && (StateNo = 310 && AnimElemNo(0) >= 4)

;---------------------------------------------------------------------
; フォーレン・エンジェル
[State -1]
type = ChangeState
value = 1000
triggerall= Command = "forenangel_a"
triggerall= StateType = A
trigger1  = Ctrl || StateNo = 155
trigger2  = MoveContact && StateNo = [600,699]
trigger3  = MoveContact && (StateNo = 4690 && AnimElemNo(0) >= 5)

;---------------------------------------------------------------------
; フォーレン・エンジェル
[State -1]
type = ChangeState
value = 1010
triggerall= Command = "forenangel_b"
triggerall= StateType = A
trigger1  = Ctrl || StateNo = 155
trigger2  = MoveContact && StateNo = [600,699]
trigger3  = MoveContact && (StateNo = 4690 && AnimElemNo(0) >= 5)

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = Command = "FF" && StateType = S && Ctrl && StateNo != 100

;---------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = Command = "BB" && StateType = S && Ctrl

;=====================================================================
; 2/3 Buttons
;=====================================================================
;
;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; 通常投げ
[State -1]
type = ChangeState
value = 800
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_y" && P2BodyDist X < 8
trigger2 = Command = "back_y" && P2BodyDist X < 20

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------
;
;---------------------------------------------------------------------
; 緊急回避動作（前）
[State -1]
type = ChangeState
value = 4010
triggerall = Command = "q_fwd" && !Command = "holdback"
trigger1 = StateType = S && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; 緊急回避動作（後）
[State -1]
type = ChangeState
value = 4020
triggerall = Command = "q_back" && !Command = "holdfwd"
trigger1 = StateType = S && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; 攻撃避け
[State -1]
type = ChangeState
value = 4000
triggerall = Command = "recovery"
trigger1 = StateType = S && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; ガードキャンセル攻撃
[State -1]
type = ChangeState
value = 4100
triggerall = Command = "by" && Power >= 1000
triggerall = Var(10) = 1 && StateType != A
trigger1 = StateNo = 150 || StateNo = 152

;---------------------------------------------------------------------
; コンビネーション攻撃
[State -1]
type = ChangeState
value = 4500
triggerall = Command = "by" && Command != "holddown"
trigger1 = StateType = S && (Ctrl || StateNo = 100)

;=====================================================================
; Dir + Button
;=====================================================================
;---------------------------------------------------------------------
; 特殊技１（→＋A）
[State -1]
type = ChangeState
value = 300
triggerall= Command = "fwd_a" && !Command = "holddown"
triggerall= StateType != A
trigger1  = Ctrl || StateNo = 100
trigger2  = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2)
trigger3  = MoveContact && (StateNo = 205 && AnimElemNo(0) >= 2)
trigger4  = MoveContact && (StateNo = 215 && AnimElemNo(0) >= 4)
trigger5  = MoveContact && (StateNo = 235 && AnimElemNo(0) >= 4)
trigger6  = MoveContact && (StateNo = 245 && AnimElemNo(0) >= 4)
trigger7  = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2)
trigger8  = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9  = MoveContact && (StateNo = 430 && AnimElemNo(0) >= 2)
trigger10  = MoveContact && (StateNo = 4640 && AnimElemNo(0) >= 5)

;---------------------------------------------------------------------
; 特殊技２（3＋B）
[State -1]
type = ChangeState
value = 310
triggerall= Command = "downfwd_a"
triggerall= StateType != A
trigger1  = Ctrl
trigger2  = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 2)
trigger3  = MoveContact && (StateNo = 205 && AnimElemNo(0) >= 2)
trigger4  = MoveContact && (StateNo = 215 && AnimElemNo(0) >= 4)
trigger5  = MoveContact && (StateNo = 235 && AnimElemNo(0) >= 4)
trigger6  = MoveContact && (StateNo = 245 && AnimElemNo(0) >= 4)
trigger7  = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 2)
trigger8  = MoveContact && (StateNo = 410 && AnimElemNo(0) >= 3)
trigger9  = MoveContact && (StateNo = 430 && AnimElemNo(0) >= 2)
trigger10  = MoveContact && (StateNo = 4640 && AnimElemNo(0) >= 5)

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "s" && StateNo != 195
trigger1 = StateType != A && Ctrl

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; 弱パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 15,205,200)
triggerall = Command = "x" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl || StateNo = 100)
trigger2  = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 3)
trigger3  = MoveContact && (StateNo = 205 && AnimElemNo(0) >= 3)
trigger4  = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)
trigger5  = MoveContact && (StateNo = 4640 && AnimElemNo(0) >= 5)

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 25,235,230)
triggerall = Command = "a" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl || StateNo = 100)
trigger2  = MoveContact && (StateNo = 4640 && AnimElemNo(0) >= 5)

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 25,215,210)
triggerall = Command = "y" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 20,245,240)
triggerall = Command = "b" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown"
trigger1 = StateType = C && (Ctrl || StateNo = 100)
trigger2  = MoveContact && (StateNo = 200 && AnimElemNo(0) >= 3)
trigger3  = MoveContact && (StateNo = 205 && AnimElemNo(0) >= 3)
trigger4  = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 410
triggerall = Command = "y" && Command = "holddown"
trigger1 = StateType = C && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = Command = "a" && Command = "holddown"
trigger1 = StateType = C && (Ctrl || StateNo = 100)
trigger2  = MoveContact && (StateNo = 400 && AnimElemNo(0) >= 3)

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 440
triggerall = Command = "b" && Command = "holddown"
trigger1 = StateType = C && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600
trigger1 = Command = "x" && StateType = A && (Ctrl || StateNo = 155)

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,610,615)
trigger1 = Command = "y" && StateType = A && (Ctrl || StateNo = 155)

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = 630
trigger1 = Command = "a" && StateType = A && (Ctrl || StateNo = 155)

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,640,645)
trigger1 = Command = "b" && StateType = A && (Ctrl || StateNo = 155)