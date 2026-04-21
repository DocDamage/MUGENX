;=====================================================================
;  CMD File For "Buntaro" 	                                Made By H"        
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================
;-| Super Motions |---------------------------------------------------
[Command]
name = "Ippatsu Ougi"
command = b,a,b,a
time = 35

[Command]
name = "Stress shot"
command = ~D, B, D, F, b
time = 26

;-| Special Motions |-------------------------------------------------

[Command]
name = "Slider!"
command = ~F, DF, D, DB, B, a
time = 20

[Command]
name = "Slider!"
command = ~F, DF, D, DB, B, b
time = 20

[Command]
name = "Chivalry!"
command = ~F, DF, D, DB, B, x
time = 20

[Command]
name = "Chivalry!"
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "Buntaro-Kick!_a"
command = ~F, D, DF, a

[Command]
name = "Buntaro-Kick!_b"
command = ~F, D, DF, b

[Command]
name = "Kick!_a"
command = ~D, DF, F, a

[Command]
name = "Kick!_b"
command = ~D, DF, F, b

[Command]
name = "unknown"
command = D, D, a
time = 20

[Command]
name = "unknown"
command = D, D, b
time = 20

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
name = "abcd"
command = x+y+a+b
time = 1

[Command]
name = "abcd"
command = c+z
time = 1

[Command]
name = "yab"
command = y+a+b
time = 1

[Command]
name = "xya"
command = x+y+a
time = 1

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
name = "bx"
command = b+x
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
name = "down_b"
command = /D,b
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
time = 1

[Command]
name = "q_fwd"
command = a+x
time = 1

[Command]
name = "q_fwd"
command = z
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

;---------------------------------------------------------------------
; 一発奥義
[State -1]
type = ChangeState
value = 3100
triggerall = Command = "holdback" && Command = "Ippatsu Ougi"
triggerall = power >= 2000
trigger1 = StateType != A && (ctrl || StateNo = [100,101])
trigger2 = (MoveType != A || MoveContact) && StateNo = [200,599]
trigger3 = (MoveType != A || MoveContact) && StateNo = [700,799]
trigger4 = MoveContact && StateNo = 1335 && AnimElem = 17,<0

;---------------------------------------------------------------------
; ストレスシュート
[State -1]
type = ChangeState
value = 3000
triggerall = Command = "Stress shot"
triggerall = power >= 1000
trigger1 = StateType != A && (ctrl || StateNo = [100,101])
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]
trigger4 = MoveContact && StateNo = 1335 && AnimElem = 17,<0

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; 激速！スライダー！
[State -1]
type = ChangeState
value = 1100+Var(20)*10
triggerall = Command = "Slider!"
trigger1 = StateType != A && Ctrl
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 爆！男気！
[State -1]
type = ChangeState
value = 1300+Var(20)*10
triggerall = Command = "Chivalry!"
trigger1 = StateType != A && Ctrl
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 文ちゃんキック！（ダッシュ）
[State -1]
type = ChangeState
value = 1020
triggerall = Command = "Buntaro-Kick!_a" || Command = "Buntaro-Kick!_b"
trigger1 = StateNo = [100,101]
trigger2 = MoveContact && StateNo = [300,310]

;---------------------------------------------------------------------
; 文ちゃんキック！（弱）
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "Buntaro-Kick!_a"
trigger1 = StateType != A && Ctrl
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 文ちゃんキック！（強）
[State -1]
type = ChangeState
value = 1010
triggerall = Command = "Buntaro-Kick!_b"
trigger1 = StateType != A && Ctrl
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; カカツンキーック！（弱）
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "Kick!_a"
trigger1 = StateType = A && Ctrl
trigger2 = MoveContact && StateNo = [600,699]

;---------------------------------------------------------------------
; カカツンキーック！（強）
[State -1]
type = ChangeState
value = 1210
triggerall = Command = "Kick!_b"
trigger1 = StateType = A && Ctrl
trigger2 = MoveContact && StateNo = [600,699]

;---------------------------------------------------------------------
; カカツンキーック！（追加攻撃）
;---------------------------弱Ｋ
[State -1]
type = ChangeState
value = 1205
triggerall= var(21) = 1
trigger1  = (StateNo = 1200 || StateNo = 1210) && AnimElem = 2,> 0 && Pos Y < -10

;---------------------------強Ｋ
[State -1]
type = ChangeState
value = 1215
triggerall= var(21) = 2
trigger1  = StateNo = 1250

;------------------------先行入力
[State -1,VarSet(21)]
type = VarSet
var(21) = IfElse((Command = "a"),1,2)
triggerall = var(21) = 0 && (Command = "a" || Command = "b")
trigger1  = StateNo = 1200 || StateNo = 1210
trigger1  = AnimElem = 1,> 0 && Pos Y < -10
ignorehitpause = 1

;---------------------------------------------------------------------
; 名称不明
[State -1]
type = ChangeState
value = 1400+Var(20)*10
triggerall = Command = "unknown" && Var(20) < 3
trigger1 = StateType != A && Ctrl
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = Command = "FF" && StateType = S && Ctrl = 1 && StateNo != 100

;---------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = Command = "BB" && StateType = S && Ctrl = 1

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
value = IfElse((Command = "fwd_y"),800,801)
triggerall = StateNo != 100 && StateType = S && Ctrl
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_y" && P2BodyDist X < 10
trigger2 = Command = "back_y" && P2BodyDist X < 20

;---------------------------------------------------------------------
; 空中投げ
[State -1]
type = ChangeState
value = 850
triggerall = StateType = A && Ctrl
triggerall = P2StateType = A
trigger1 = Command = "fwd_y" && P2BodyDist X < 10

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------

;---------------------------------------------------------------------
; ダッシュP
[State -1]
type = ChangeState
value = 300
triggerall = command = "x"  || command = "y"
trigger1 = StateNo = 100 && Time > 3
trigger2 = StateNo = 101

;---------------------------------------------------------------------
; ダッシュK
[State -1]
type = ChangeState
value = 310
triggerall = command = "a"  || command = "b"
trigger1 = StateNo = 100 && Time > 3
trigger2 = StateNo = 101

;---------------------------------------------------------------------------
; コンビネーション・近立ち強K
[State -1]
type = ChangeState
value = 246
triggerall = command = "b"
trigger1 = MoveContact && StateNo = 235

;---------------------------------------------------------------------------
; コンビネーション・遠立ち強K
[State -1]
type = ChangeState
value = 241
triggerall = command = "b"
trigger1 = MoveContact && StateNo = 430

;---------------------------------------------------------------------------
; コンビネーション３・ジャンプ強K
[State -1]
type = ChangeState
value = 646
triggerall = command = "b"
trigger1 = MoveContact && StateNo = 630 && Vel X!=0

;---------------------------------------------------------------------
; 立ごっつい攻撃
[State -1]
type = ChangeState
value = 500
triggerall = Command = "c" || Command = "by"
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------
; 屈ごっつい攻撃
[State -1]
type = ChangeState
value = 510
triggerall = Command = "c" || Command = "by"
trigger1 = StateType = C && Ctrl

;---------------------------------------------------------------------
; 緊急回避動作（前）
[State -1]
type = ChangeState
value = 4000
triggerall = (Command = "q_fwd" || Command = "z") && !Command = "holdback"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 緊急回避動作（後）
[State -1]
type = ChangeState
value = 4010
triggerall = Command = "q_back" && !Command = "holdfwd"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------------
; 2段ジャンプ
[State -1]
type = ChangeState
value = 45
triggerall = command = "holdup"
triggerall = var(13) = 0 && var(14) = 0
trigger1 = StateType = A && ctrl
trigger1 = ((Anim = [41,43]) || (Anim = [51,53])) && AnimElem = 3,>= 0
trigger2 = MoveHit && StateNo = 600 & AnimElem = 5,>= 0
trigger3 = MoveHit && StateNo = 610 & AnimElem = 7,>= 0
trigger4 = MoveHit && StateNo = 615 & AnimElem = 7,>= 0
trigger5 = MoveHit && StateNo = 630 & AnimElem = 5,>= 0
trigger6 = MoveHit && StateNo = 640 & AnimElem = 9,>= 0
trigger7 = MoveHit && StateNo = 645 & AnimElem = 6,>= 0

;---------------------------------------------------------------------
; ガードキャンセル攻撃
[State -1]
type = ChangeState
value = 4500
triggerall = (Command = "c" || Command = "by") && Power >= 1000
triggerall = StateType != A
trigger1 = (StateNo = 150 || StateNo = 152)

;---------------------------------------------------------------------
; 黒子呼び
[State -1]
type = ChangeState
value = 4300
triggerall = Command = "ay"
trigger1 = StateType != A && Ctrl

;=====================================================================
; Dir + Button
;=====================================================================
;---------------------------------------------------------------------
; 頭突き（仮称）
[State -1]
type = ChangeState
value = 700
triggerall= Command = "fwd_x" && !Command = "holddown"
trigger1 = StateType != A && Ctrl
trigger2 = MoveContact && StateNo = [200,599]

;---------------------------------------------------------------------
; 体当たり（仮称）
[State -1]
type = ChangeState
value = 710
triggerall= Command = "downfwd_y"
trigger1 = StateType != A && Ctrl
trigger2 = MoveContact && StateNo = [200,599]

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; 手合わせ合図
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = StateType = S && Ctrl = 1

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; 弱パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 20,205,200)
triggerall = Command = "x" && !Command = "holddown"
trigger1 = StateType = S && Ctrl
trigger2  = (StateNo = 200 && AnimElem = 5,>= 0)
trigger3  = (StateNo = 205 && AnimElem = 4,>= 0)

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 10,235,230)
triggerall = Command = "a" && !Command = "holddown"
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 30,215,210)
triggerall = Command = "y" && !Command = "holddown"
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 25,245,240)
triggerall = Command = "b" && !Command = "holddown"
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown"
trigger1 =  StateType = C && Ctrl
trigger2  = (StateNo = 400 && AnimElem = 4,>= 0)

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 410
triggerall = Command = "y" && Command = "holddown"
trigger1 =  StateType = C && Ctrl

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = Command = "a" && Command = "holddown"
trigger1 =  StateType = C && Ctrl

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 440
triggerall = Command = "b" && Command = "holddown"
trigger1 =  StateType = C && Ctrl

;---------------------------------------------------------------------
; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600
trigger1 = Command = "x" && StateType = A && Ctrl

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = IfElse(Vel X = 0,610,615)
trigger1 = Command = "y" && StateType = A && Ctrl

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = 630
trigger1 = Command = "a" && StateType = A && Ctrl

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = IfElse(Vel X=0,640,645)
triggerall = Command = "b"
trigger1 = StateType = A && Ctrl
