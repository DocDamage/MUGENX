;=====================================================================
;  CMD File For "Malin"                               Made By H"
;                                       Ver. 1.10           
;=====================================================================
; 
;=====================================================================
; Definition of the Commands
;=====================================================================

;-| Super Motions |---------------------------------------------------
[Command]
name = "Kumabachi"
command = ~B, D, F, B, D, F, x+y
time = 32

[Command]
name = "Daiousasori"
command = ~D, F, D, B, a+b
time = 26

[Command]
name = "Mizuti_x"
command = ~D, DF, F, D, DF, F, x
time = 25

[Command]
name = "Mizuti_y"
command = ~D, DF, F, D, DF, F, y
time = 25

[Command]
name = "Kagerou"
command = ~D, DF, F, D, DF, F, a
time = 25

[Command]
name = "Kagerou"
command = ~D, DF, F, D, DF, F, b
time = 25

;-| Special Motions |-------------------------------------------------
[Command]
name = "Suzumebachi(Sky)_x"
command = ~F, D, DF, x

[Command]
name = "Suzumebachi(Sky)_y"
command = ~F, D, DF, y

[Command]
name = "Suzumebachi(Ground)"
command = ~D, DF, F, x

[Command]
name = "Suzumebachi(Ground)"
command = ~D, DF, F, y

[Command]
name = "Dokusasori_a"
command = ~D, DF, F, a

[Command]
name = "Dokusasori_b"
command = ~D, DF, F, b

[Command]
name = "Onigumo_x"
command = ~D, DB, B, x

[Command]
name = "Onigumo_y"
command = ~D, DB, B, y

[Command]
name = "Direction Change_1"
command = /DB,x+y
time = 1

[Command]
name = "Direction Change_2"
command = /D,x+y
time = 1

[Command]
name = "Direction Change_3"
command = /DF,x+y
time = 1

[Command]
name = "Direction Change_4"
command = /B,x+y
time = 1

[Command]
name = "Direction Change_6"
command = /F,x+y
time = 1

[Command]
name = "Direction Change_7"
command = /UB,x+y
time = 1

[Command]
name = "Direction Change_8"
command = /U,x+y
time = 1

[Command]
name = "Direction Change_9"
command = /UF,x+y
time = 1

;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

[Command]
name = "longjump"
command = D, $U
time = 18

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

[Command]
name = "abcd"
command = x+y+a+b
time = 1

[Command]
name = "abcd"
command = c+z
time = 1

[Command]
name = "call-st"
command = x+a
time = 1

[Command]
name = "call-st"
command = s
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
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
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
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "down_x"
command = /D,x
time = 1

[Command]
name = "down_y"
command = /D,y
time = 1

[Command]
name = "up_x"
command = /U,x
time = 1

[Command]
name = "up_y"
command = /U,y
time = 1

[Command]
name = "upfwd_x"
command = /UF,x
time = 1

[Command]
name = "upfwd_y"
command = /UF,y
time = 1

[Command]
name = "upback_x"
command = /UB,x
time = 1

[Command]
name = "upback_y"
command = /UB,y
time = 1

[Command]
name = "downfwd_x"
command = /DF,x
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
time = 1

[Command]
name = "downback_x"
command = /DB,x
time = 1

[Command]
name = "downback_y"
command = /DB,y
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

;----------------------------- for add004
[Command]
name = "call-st"
command = s
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

;----------------------------- レバガチャ
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
command = z
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
command = c
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
; キャンセル設定
;=====================================================================
;------------------------ キャンセル設定リセット
[State -1]
type = varset
trigger1 = var(40)
var(40) = 0
;------------------------ スーパーキャンセル
[State -1]
type = varset
triggerall = RoundState = 2
triggerall = !var(40)
triggerall = MoveContact
trigger1  = StateNo = 1000 || StateNo = 1010
var(40) = -1
;------------------------ ダッシュキャンセル
[State -1]
type = varset
triggerall = RoundState = 2
trigger1 = !var(40)
trigger1 = StateNo = 100 || StateNo = 110 || (StateNo = 4100 && AnimElem = 3,> 0)
var(40) = 1
;------------------------ 特殊技キャンセル
[State -1]
type = varset
triggerall = RoundState = 2
triggerall = !var(40)
triggerall = MoveContact
trigger1  = StateNo = 205 || StateNo = 215 || StateNo = 230 || StateNo = 245
var(40) = 2
;------------------------ 必殺技・超必殺技キャンセル
[State -1]
type = varset
triggerall = RoundState = 2
triggerall = !var(40)
triggerall  = MoveContact
trigger1  = StateNo = 400 || StateNo = 410 || StateNo = 430 || StateNo = 610
trigger2  = StateNo = 500 || StateNo = 711
var(40) = 3
;------------------------ どこでもキャンセル
[State -1]
type = varset
triggerall = var(30)
triggerall = RoundState = 2
triggerall = !var(40)
triggerall = var(47) && fvar(0) > 0
trigger1  = !MoveContact && MoveType = A && (StateNo = 205 || StateNo = 215 || StateNo = 230 || StateNo = 245)
trigger2  = !MoveContact && MoveType = A && (StateNo = 400 || StateNo = 410 || StateNo = 430)
trigger3  = MoveType = A && (StateNo = 200 || StateNo = 210 || StateNo = 240)
trigger4  = MoveType = A && StateNo = 440
trigger5  = MoveHit && StateNo = 701
trigger6  = MoveHit && StateNo = [1000,1999]
var(40) = 4

;=====================================================================
; CPU Function
;=====================================================================
;
;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------
; クマバチ（MAX2）
[State -1]
type = ChangeState
value = 3600
triggerall= Command = "Kumabachi"
trigger1 = Power >= 3000 && var(30)=0 && var(47)=0
trigger2 = Power >= 1000 && var(30)=1 && fvar(0) > 0 && ((100*life/const(data.life))<=25 || var(44) = 2)
trigger3 = var(30)=2 && ((!var(49) && (100*life/const(data.life))<=50) || var(44) = 2)
triggerall = StateType = A && (Ctrl || (var(40)=[1,3]))

;------------------------ スーパーキャンセル
[State -1]
type = ChangeState
value = 3600
triggerall= Command = "Kumabachi"
trigger1 = var(30)=2 && var(47)=0 && fvar(0) > 0
triggerall = StateType = A && var(40)=-1
removeongethit = 1

;---------------------------------------------------------------------
; ダイオウサソリ（MAX版）
;------------------------ 
[State -1]
type = ChangeState
value = 3200
triggerall = Command = "Daiousasori" 
trigger1 = Power >= 2000 && var(30)=0 && var(47)=0
trigger2 = Power >= 1000 && var(30)=1 && fvar(0) > 0
triggerall = !StateType = A && (Ctrl || (var(40)=[1,3]))

;------------------------ スーパーキャンセル
[State -1]
type = ChangeState
value = 3200
triggerall = Command = "Daiousasori" 
trigger1 = var(30)=2 && var(47)=0 && fvar(0) > 0
triggerall = !StateType = A && var(40)=-1
removeongethit = 1

;---------------------------------------------------------------------
; ミズチ（MAX版）
;------------------------ 
[State 861,VarSet]
type = VarSet
triggerall = !var(15)
trigger1 =Command = "Mizuti_x" || Command = "Mizuti_y"
var(15) = IfElse(Command = "Mizuti_x" ,3500,3510)

;------------------------ 
[State -1]
type = ChangeState
value = 3500
triggerall = var(15)
trigger1 = Power >= 2000 && var(30)=0 && var(47)=0
trigger2 = Power >= 1000 && var(30)=1 && fvar(0) > 0
triggerall = !StateType = A && (Ctrl || (var(40)=[1,3]))

;------------------------ スーパーキャンセル
[State -1]
type = ChangeState
value = 3500
triggerall = var(15)
trigger1 = var(30)=2 && var(47)=0 && fvar(0) > 0
triggerall = !StateType = A && var(40)=-1
removeongethit = 1

;------------------------ ミズチコマンドリセット
[State -1]
type = varset
trigger1 = var(15)
trigger1 = Time > 0
var(15) = 0

;---------------------------------------------------------------------
; ジョオウバチ（ノーマル版）
[State -1]
type = ChangeState
value = 3000
triggerall = Command = "Mizuti_x" || Command = "Mizuti_y"
trigger1 = Power >= 1000 && var(30)=0 && var(47)=0
trigger2 = (Power >= 1000 || fvar(0) > 0) && (var(30)=[1,2])
triggerall = StateType = A && (Ctrl || (var(40)=[1,3]) || ((StateNo = 3500||StateNo = 3510)&&AnimElem = 18,> 0))

;------------------------ スーパーキャンセル
[State -1]
type = ChangeState
value = 3000
triggerall = Command = "Mizuti_x" || Command = "Mizuti_y"
trigger1 = Power >= 2000 && var(30)=0 && var(47)=0
trigger2 = (Power >= 2000 || (Power >= 1000 && fvar(0) > 0)) && var(30)=1
trigger3 = fvar(0) > 0 && var(30)= 2
triggerall = !StateType = A && var(40)=-1
removeongethit = 1

;---------------------------------------------------------------------
; カゲロウ（ノーマル版）
[State -1]
type = ChangeState
value = 3100
triggerall = Command = "Kagerou"
trigger1 = Power >= 1000 && var(30)=0 && var(47)=0
trigger2 = (Power >= 1000 || fvar(0) > 0) && (var(30)=[1,2])
triggerall = !StateType = A && (Ctrl || (var(40)=[1,3]))

;------------------------ スーパーキャンセル
[State -1]
type = ChangeState
value = 3100
triggerall = Command = "Kagerou"
trigger1 = Power >= 2000 && var(30)=0 && var(47)=0
trigger2 = (Power >= 2000 || (Power >= 1000 && fvar(0) > 0)) && var(30)=1
trigger3 = fvar(0) > 0 && var(30)= 2
triggerall = !StateType = A && var(40)=-1
removeongethit = 1

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------------
; スズメバチ(対空)・弱
[State -1]
type = ChangeState
value = 1300
triggerall = command = "Suzumebachi(Sky)_x"
trigger1 = !StateType = A && (Ctrl || (var(40)=[1,3]))
trigger2 = var(40) = 4 && (StateNo != [1100,1499])
removeongethit = (var(40) = 4)

;---------------------------------------------------------------------------
; スズメバチ(対空)・強
[State -1]
type = ChangeState
value = 1310
triggerall = command = "Suzumebachi(Sky)_y"
trigger1 = !StateType = A && (Ctrl || (var(40)=[1,3]))
trigger2 = var(40) = 4 && (StateNo != [1100,1499])
removeongethit = (var(40) = 4)

;---------------------------------------------------------------------------
; ドクサソリ・弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Dokusasori_a"
trigger1 = !StateType = A && (Ctrl || (var(40)=[1,3]))
trigger2 = var(40) = 4 && (StateNo != [1000,1499])
removeongethit = (var(40) = 4)

;---------------------------------------------------------------------------
; ドクサソリ・強
[State -1]
type = ChangeState
value = 1010
triggerall = command = "Dokusasori_b"
trigger1 = !StateType = A && (Ctrl || (var(40)=[1,3]))
trigger2 = var(40) = 4 && (StateNo != [1000,1499])
removeongethit = (var(40) = 4)

;---------------------------------------------------------------------------
; スズメバチ(地上)
[State -1]
type = ChangeState
value = 1100
triggerall = command = "Suzumebachi(Ground)"
trigger1 = !StateType = A && (Ctrl || (var(40)=[1,3]))

;---------------------------------------------------------------------------
; スズメバチ(空中)
;------------------------ 
[State 861,VarSet]
type = VarSet
triggerall = !var(10) && !fvar(3)
trigger1 = (Command = "Direction Change_6" || Command = "Direction Change_9" || Command = "Direction Change_8" || Command = "Direction Change_7")
fvar(3) = IfElse(Command = "Direction Change_6",6,IfElse(Command = "Direction Change_9",9,IfElse(Command = "Direction Change_8",8,7)))
[State 861,VarSet]
type = VarSet
triggerall = !var(10) && !fvar(3)
trigger1 = (Command = "Direction Change_4" || Command = "Direction Change_1" || Command = "Direction Change_2" || Command = "Direction Change_3")
fvar(3) = IfElse(Command = "Direction Change_4",4,IfElse(Command = "Direction Change_1",1,IfElse(Command = "Direction Change_2",2,3)))
;------------------------ 
[State -1]
type = ChangeState
value = 1200
triggerall = fvar(3) && !var(10) && StateType = A
trigger1 = Ctrl || StateNo = 105
trigger2 = HitShakeOver = 1 && var(40) = 3

;---------------------------------------------------------------------------
; オニグモ・弱
[State -1]
type = ChangeState
value = 1400
triggerall = command = "Onigumo_x" && NumHelper(1450)!
trigger1 = !StateType = A && (Ctrl || (var(40)=[1,3]))
trigger2 = var(40) = 4 && (StateNo != [1100,1499])
removeongethit = (var(40) = 4)

;---------------------------------------------------------------------------
; オニグモ・強
[State -1]
type = ChangeState
value = 1410
triggerall = command = "Onigumo_y" && NumHelper(1460)!
trigger1 = !StateType = A && (Ctrl || (var(40)=[1,3]))
trigger2 = var(40) = 4 && (StateNo != [1100,1499])
removeongethit = (var(40) = 4)

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = IfElse(var(30)=2,110,100)
trigger1 = Command = "FF" && StateType = S && Ctrl

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
; 通常投げ（Ｐ通常投げ）
[State -1]
type = ChangeState
value = 800
triggerall = StateType = S && Ctrl
trigger1 = var(30) = 2 && Command = "recovery"
trigger2 = var(30) != 2 && P2MoveType != H && !P2StateType = A
trigger2 = (Command = "fwd_y" && P2BodyDist X < 8) || (Command = "back_y" && P2BodyDist X < 20)

;---------------------------------------------------------------------
; 通常投げ（Ｋ通常投げ）
[State -1]
type = ChangeState
value = 850
triggerall = StateType = S && Ctrl
trigger1 = var(30) = 2 && Command = "by"
trigger2 = var(30) != 2 && P2MoveType != H && !P2StateType = A
trigger2 = (Command = "fwd_b" && P2BodyDist X < 8) || (Command = "back_b" && P2BodyDist X < 20)

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------

;---------------------------------------------------------------------
; 三角跳び
[State -1]
type = ChangeState
value = 53
triggerall = StateNo = 50 && StateNo != 53
triggerall = pos y < -12 && PrevStateNo != 53
trigger1 = command = "holdupfwd" && backedgebodydist < 3
trigger2 = command = "holdupback" && frontedgebodydist < 3

;---------------------------------------------------------------------------
; パワーMAXモード発動
[State -1]
type = ChangeState
value = 4200
triggerall = command = "ay"
triggerall = power >= 1000 && var(47) = 0 && var(30) = 1
trigger1 = ctrl && statetype != A
trigger2 = var(40)=1

;------------------------ クイックMAX発動
[State -1]
type = ChangeState
value = 4210
triggerall = command = "ay"
triggerall = power >= 2000 && var(47) = 0 && var(30) = 1
trigger1 = statetype != A
trigger1 = MoveContact && StateNo = [200,799]

;---------------------------------------------------------------------
; 地上ふっとばし攻撃
[State -1]
type = ChangeState
value = 500
triggerall = Command = "by"
trigger1 = StateType != A && (Ctrl || var(40)=1)
trigger1 = var(30) != 2

;---------------------------------------------------------------------
; 空中ふっとばし攻撃
[State -1]
type = ChangeState
value = 510
triggerall = Command = "by"
trigger1 = StateType = A && Ctrl
trigger1 = var(30) != 2

;---------------------------------------------------------------------
; ガードキャンセル緊急回避動作（前・後）
[State -1]
type = ChangeState
value = 4050
triggerall = Command = "recovery" && Power >= 1000 && var(30) != 2
triggerall = StateType != A
trigger1 = (StateNo = 150 || StateNo = 152)
trigger2 = MoveContact && Var(30) = 1 && StateNo = [200,799]

;---------------------------------------------------------------------
; 緊急回避動作（前）
[State -1]
type = ChangeState
value = 4000
triggerall = Command = "recovery" && !Command = "holdback" && var(30) != 2
trigger1 = StateType = S && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; 緊急回避動作（後）
[State -1]
type = ChangeState
value = 4010
triggerall = Command = "q_back" && !Command = "holdfwd" && var(30) != 2
trigger1 = StateType = S && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; ガードキャンセルグランドフロントステップ
[State -1]
type = ChangeState
value = 4100
triggerall = Var(30) = 2
triggerall = (Command = "ay" || Command = "FF")
triggerall = (Power >= 600 || (var(30) = 2 && fvar(0) > 0)) && StateType != A
trigger1 = (StateNo = 150 || StateNo = 151 || StateNo = 152 || StateNo = 153)

;---------------------------------------------------------------------
; ガードキャンセル吹っ飛ばし攻撃
[State -1]
type = ChangeState
value = 4500
triggerall = Command = "by"
triggerall = (Power >= 1000 || (var(30) = 2 && fvar(0) > 0)) && StateType != A
trigger1 = (StateNo = 150 || StateNo = 152)

;=====================================================================
; Dir + Button
;=====================================================================
;---------------------------------------------------------------------
; ベニサソリ（→＋A）
[State -1]
type = ChangeState
value = IfElse(MoveContact,710,700)
triggerall= Command = "fwd_a" && !Command = "holddown"
trigger1= !StateType = A && (Ctrl || (var(40)=[1,2]))

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = StateType = S && Ctrl = 1 && StateNo != 195

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; 弱パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 15,205,200)
triggerall = Command = "x" && !Command = "holddown" 
trigger1  = !StateType = A && (Ctrl || var(40)=1)
trigger2 = StateNo = 200 && AnimElemNo(0) > 4
trigger3 = StateNo = 205 && AnimElemNo(0) > 6
trigger4 = StateNo = 400 && AnimElemNo(0) > 5
trigger5 = StateNo = 430 && AnimElemNo(0) > 3

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = 230
triggerall = Command = "a" && !Command = "holddown"
trigger1  = !StateType = A && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 10,215,210)
triggerall = Command = "y" && !Command = "holddown"
trigger1  = !StateType = A && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 10,245,240)
triggerall = Command = "b" && !Command = "holddown"
trigger1  = !StateType = A && (Ctrl || var(40)=1)

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown" 
trigger1 =  (StateType = C && Ctrl) || var(40)=1
trigger2 = StateNo = 200 && AnimElemNo(0) > 4
trigger3 = StateNo = 205 && AnimElemNo(0) > 6
trigger4 = StateNo = 400 && AnimElemNo(0) > 5
trigger5 = StateNo = 430 && AnimElemNo(0) > 3

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 410
triggerall = Command = "y" && Command = "holddown"
trigger1 =  (StateType = C && Ctrl) || var(40)=1

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = Command = "a" && Command = "holddown" 
trigger1 =  (StateType = C && Ctrl) || var(40)=1
trigger2 = StateNo = 200 && AnimElemNo(0) > 4
trigger3 = StateNo = 205 && AnimElemNo(0) > 6
trigger4 = StateNo = 400 && AnimElemNo(0) > 5
trigger5 = StateNo = 430 && AnimElemNo(0) > 3

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 440
triggerall = Command = "b" && Command = "holddown"
trigger1 =  (StateType = C && Ctrl) || var(40)=1

;---------------------------------------------------------------------
; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600
triggerall = Command = "x" && StateType = A && Ctrl
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = 610
triggerall = Command = "y" && StateType = A && Ctrl
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = 630
triggerall = Command = "a" && StateType = A && Ctrl
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = 640
triggerall = Command = "b" && StateType = A && Ctrl
trigger1 = StateNo != 105

