;=====================================================================
;  CMD File For "raiden"	                                Made By H"
;                                       Ver. 1.05           
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================
;
;-| Super Motions |---------------------------------------------------
[Command]
name = "Destruction Drop_LV.3"
command = F,D,B,U,F,D,B, a+b
time = 50

[Command]
name = "Destruction Drop_LV.3"
command = D,B,U,F,D,B,U, a+b
time = 50

[Command]
name = "Destruction Drop_LV.3"
command = B,U,F,D,B,U,F, a+b
time = 50

[Command]
name = "Destruction Drop_LV.3"
command = U,B,D,F,U,B,D, a+b
time = 50

[Command]
name = "Destruction Drop_LV.2"
command = F,D,B,U,F,D,B, b
time = 50

[Command]
name = "Destruction Drop_LV.2"
command = D,B,U,F,D,B,U, b
time = 50

[Command]
name = "Destruction Drop_LV.2"
command = B,U,F,D,B,U,F, b
time = 50

[Command]
name = "Destruction Drop_LV.2"
command = U,B,D,F,U,B,D, b
time = 50

[Command]
name = "Destruction Drop_LV.1"
command = F,D,B,U,F,D,B, a
time = 50

[Command]
name = "Destruction Drop_LV.1"
command = D,B,U,F,D,B,U, a
time = 50

[Command]
name = "Destruction Drop_LV.1"
command = B,U,F,D,B,U,F, a
time = 50

[Command]
name = "Destruction Drop_LV.1"
command = U,B,D,F,U,B,D, a
time = 50

[Command]
name = "Fire Breath_LV.3"
command = ~F, D, B, F, D, B, x+y
time = 32

[Command]
name = "Fire Breath_LV.2"
command = ~F, D, B, F, D, B, y
time = 32

[Command]
name = "Fire Breath_LV.1"
command = ~F, D, B, F, D, B, x
time = 32

[Command]
name = "Galaxymissile"
command = ~D, DF, F, D, DF, F, a+b
time = 25

[Command]
name = "Crazy Train_LV.3"
command = ~D, DF, F, D, DF, F, x+y
time = 25

[Command]
name = "Crazy Train_LV.2"
command = ~D, DF, F, D, DF, F, y
time = 25

[Command]
name = "Crazy Train_LV.1"
command = ~D, DF, F, D, DF, F, x
time = 25

;-| Special Motions |-------------------------------------------------
[Command]
name = "Thunder Crush Bomb_a"
command = F,D,B,U, a
time = 30

[Command]
name = "Thunder Crush Bomb_a"
command = D,B,U,F, a
time = 30

[Command]
name = "Thunder Crush Bomb_a"
command = B,U,F,D, a
time = 30

[Command]
name = "Thunder Crush Bomb_a"
command = U,B,D,F, a
time = 30

[Command]
name = "Thunder Crush Bomb_b"
command = F,D,B,U, b
time = 30

[Command]
name = "Thunder Crush Bomb_b"
command = D,B,U,F, b
time = 30

[Command]
name = "Thunder Crush Bomb_b"
command = B,U,F,D, b
time = 30

[Command]
name = "Thunder Crush Bomb_b"
command = U,B,D,F, b
time = 30

[Command]
name = "Dokugiri_x"
command = ~F, DF, D, DB, B, x
time = 15

[Command]
name = "Dokugiri_y"
command = ~F, DF, D, DB, B, y
time = 15

[Command]
name = "Jumping Lariat Drop_x"
command = ~F, D, DF, x

[Command]
name = "Jumping Lariat Drop_y"
command = ~F, D, DF, y

[Command]
name = "Combination Bodyblow_x"
command = ~B, D, DB, x

[Command]
name = "Combination Bodyblow_y"
command = ~B, D, DB, y

[Command]
name = "Headbutt"
command = ~D, DB, B, x

[Command]
name = "Headbutt"
command = ~D, DB, B, y

[Command]
name = "Front Suplex"
command = ~D, DB, B, a

[Command]
name = "Front Suplex"
command = ~D, DB, B, b

[Command]
name = "Miracle drill"
command = ~D, DF, F, x

[Command]
name = "Miracle drill"
command = ~D, DF, F, y

[Command]
name = "Rainbow missile"
command = ~D, DF, F, a

[Command]
name = "Rainbow missile"
command = ~D, DF, F, b

[Command]
name = "Giant Bomb_x"
command = ~42$B, $F, x
time = 20

[Command]
name = "Giant Bomb_y"
command = ~42$B, $F, y
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
name = "recovery";Required (do not remove)
command = a+x
time = 1

[Command]
name = "call-st";Required (do not remove)
command = a+y
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
name = "down_y"
command = /D,y
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "charge1"
command = /b
time = 1

[Command]
name = "charge2"
command = /y
time = 1

[Command]
name = "charge"
command = /c
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
name = "random"
command = x
time = 1

[Command]
name = "random"
command = a
time = 1

[Command]
name = "random"
command = y
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
command = z
time = 1

[Command]
name = "random"
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
; ギャラクシーミサイル（LV.3専用）
[State -1]
type = ChangeState
value = 3500
triggerall= var(39)=1 && Command = "Galaxymissile" && Power >= 3000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430 || stateno = 230
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410 || stateno = 215

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 3500
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Galaxymissile"

;---------------------------------------------------------------------
; デストラクションドロップ（LV.3）
[State -1]
type = ChangeState
value = 3200
triggerall= Command = "Destruction Drop_LV.3" && Power >= 3000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430 || stateno = 230
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410 || stateno = 215

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 3200
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Destruction Drop_LV.3"

;---------------------------------------------------------------------
; デストラクションドロップ（LV.2）
[State -1]
type = ChangeState
value = 3100
triggerall= Command = "Destruction Drop_LV.2" && Power >= 2000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430 || stateno = 230
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410 || stateno = 215

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 3100
triggerall = Power >= 2000
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Destruction Drop_LV.2"

;---------------------------------------------------------------------
; デストラクションドロップ（LV.1）
[State -1]
type = ChangeState
value = 3000
triggerall= Power >= 1000
triggerall= (Command = "Destruction Drop_LV.1") || (Command = "Destruction Drop_LV.2" && Power < 2000)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430 || stateno = 230
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410 || stateno = 215

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 3200
triggerall = Power >= 1000
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Destruction Drop_LV.1"
trigger2 = Command = "Destruction Drop_LV.2" && Power < 2000

;---------------------------------------------------------------------
; ファイアーブレス（LV.3)
[State -1]
type = ChangeState
value = 3420
triggerall= Command = "Fire Breath_LV.3" && Power >= 3000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430 || stateno = 230
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410 || stateno = 215

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 3420
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Fire Breath_LV.3"

;---------------------------------------------------------------------
; ファイアーブレス（LV.2)
[State -1]
type = ChangeState
value = 3410
triggerall= Command = "Fire Breath_LV.2" && Power >= 2000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430 || stateno = 230
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410 || stateno = 215

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 3410
triggerall = Power >= 2000
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Fire Breath_LV.2"

;---------------------------------------------------------------------
; ファイアーブレス（LV.1)
[State -1]
type = ChangeState
value = 3400
triggerall= Power >= 1000
triggerall= (Command = "Fire Breath_LV.1") || (Command = "Fire Breath_LV.2" && Power < 2000)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430 || stateno = 230
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410 || stateno = 215

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 3400
triggerall = Power >= 1000
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Fire Breath_LV.1"
trigger2 = Command = "Fire Breath_LV.2" && Power < 2000

;---------------------------------------------------------------------
; クレイジートレイン（LV.3）
[State -1]
type = ChangeState
value = 3320
triggerall= var(39)=0 && Command = "Crazy Train_LV.3" && Power >= 3000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430 || stateno = 230
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410 || stateno = 215

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 3320
triggerall= var(39)=0 && Power >= 3000
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Crazy Train_LV.3"

;---------------------------------------------------------------------
; クレイジートレイン（LV.2）
[State -1]
type = ChangeState
value = 3310
triggerall= var(39)=0 && Command = "Crazy Train_LV.2" && Power >= 2000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430 || stateno = 230
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410 || stateno = 215

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 3310
triggerall= var(39)=0 && Power >= 2000
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Crazy Train_LV.2"

;---------------------------------------------------------------------
; クレイジートレイン（LV.1）
[State -1]
type = ChangeState
value = 3300
triggerall= Power >= 1000
triggerall= var(39)=0 && ((Command = "Crazy Train_LV.1") || (Command = "Crazy Train_LV.2" && Power < 2000))
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430 || stateno = 230
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410 || stateno = 215

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 3300
triggerall= var(39)=0 && Power >= 1000
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Crazy Train_LV.1"
trigger2 = Command = "Crazy Train_LV.2" && Power < 2000

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; サンダークラッシュボム・弱
[State -1]
type = ChangeState
value = 1300
triggerall= Command = "Thunder Crush Bomb_a"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1300
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Thunder Crush Bomb_a"

;---------------------------------------------------------------------
; サンダークラッシュボム・強
[State -1]
type = ChangeState
value = 1350
triggerall= Command = "Thunder Crush Bomb_b"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 40)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1350
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Thunder Crush Bomb_b"

;---------------------------------------------------------------------
; 毒霧・弱
[State -1]
type = ChangeState
value = 1000
triggerall= Command = "Dokugiri_x" && var(39)=0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1000
triggerall = StateType != A && var(39)=0
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Dokugiri_x"

;---------------------------------------------------------------------
; 毒霧・強
[State -1]
type = ChangeState
value = 1010
triggerall= Command = "Dokugiri_y" && var(39)=0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1010
triggerall = StateType != A && var(39)=0
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Dokugiri_y"

;---------------------------------------------------------------------
; ジャンピングネックブリーカードロップ・弱
[State -1]
type = ChangeState
value = 1600
triggerall= Command = "Jumping Lariat Drop_x" && var(39)=0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1600
triggerall = StateType != A && var(39)=0
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Jumping Lariat Drop_x"

;---------------------------------------------------------------------
; ジャンピングネックブリーカードロップ・強
[State -1]
type = ChangeState
value = 1610
triggerall= Command = "Jumping Lariat Drop_y" && var(39)=0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1610
triggerall = StateType != A && var(39)=0
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Jumping Lariat Drop_y"

;---------------------------------------------------------------------
; コンビネーションブロー・弱
[State -1]
type = ChangeState
value = 1100
triggerall= Command = "Combination Bodyblow_x"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1100
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Combination Bodyblow_x"

;---------------------------------------------------------------------
; コンビネーションブロー・強
[State -1]
type = ChangeState
value = 1110
triggerall= Command = "Combination Bodyblow_y"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1110
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Combination Bodyblow_y"

;---------------------------------------------------------------------
; ヘッドバッド
[State -1]
type = ChangeState
value = 1200
triggerall= var(15) = 1
trigger1  = StateNo = 1100 && AnimElem = 5,>= 0
trigger2  = StateNo = 1110 && AnimElem = 5,>= 0

;------------------------先行入力
[State -1,VarSet(15)]
type = VarSet
var(15) = 1
triggerall = Command = "Headbutt" && Time > 0 && var(15) = 0
trigger1  = StateNo = 1100 && AnimElem = 4,> 0 && AnimElem = 5,< 5
trigger2  = StateNo = 1110 && AnimElem = 4,> 0 && AnimElem = 5,< 7

;---------------------------------------------------------------------
; フロントスープレックス
[State -1]
type = ChangeState
value = 1250
triggerall= var(15) = 2
trigger1  = StateNo = 1100 && AnimElem = 5,> 0
trigger2  = StateNo = 1110 && AnimElem = 5,> 0

;------------------------先行入力
[State -1,VarSet(15)]
type = VarSet
var(15) = 2
triggerall = Command = "Front Suplex" && Time > 0 && var(15) = 0
trigger1  = StateNo = 1100 && AnimElem = 4,> 0 && AnimElem = 5,< 5
trigger2  = StateNo = 1110 && AnimElem = 4,> 0 && AnimElem = 5,< 7

;---------------------------------------------------------------------
; ミラクルドリル
[State -1]
type = ChangeState
value = 1900
triggerall= Command = "Miracle drill" && var(39)=1
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1900
triggerall = StateType != A && var(39)=1
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Miracle drill"

;---------------------------------------------------------------------
; レインボーミサイル
[State -1]
type = ChangeState
value = 1800
triggerall= Command = "Rainbow missile" && var(39)=1
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1800
triggerall = StateType != A && var(39)=1
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Rainbow missile"

;---------------------------------------------------------------------
; ジャイアントボム・弱
[State -1]
type = ChangeState
value = 1400
triggerall= Command = "Giant Bomb_x" && var(39)=0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1400
triggerall = StateType != A && var(39)=0
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Giant Bomb_x"

;---------------------------------------------------------------------
; ジャイアントボム・強
[State -1]
type = ChangeState
value = 1410
triggerall= Command = "Giant Bomb_y" && var(39)=0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1410
triggerall = StateType != A && var(39)=0
triggerall = StateNo = 400 && Time <= 3
trigger1 = Command = "Giant Bomb_y"

;---------------------------------------------------------------------
; スーパードロップキック・1段階(Super Dropkick)
[State -1]
type = ChangeState
value = 1500
triggerall= (Var(16) >= 42 && Var(16) < 337 && Command != "hold_a") || (Var(17) >= 42 && Var(17) < 337 && Command != "hold_b")
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1500
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = (Var(16) >= 42 && Var(16) < 337 && Command != "hold_a") || (Var(17) >= 42 && Var(17) < 337 && Command != "hold_b")

;---------------------------------------------------------------------
; スーパードロップキック・2段階
[State -1]
type = ChangeState
value = 1510
triggerall= (Var(16) >= 337 && Var(16) < 1011 && Command != "hold_a") || (Var(17) >= 337 && Var(17) < 1011 && Command != "hold_b") 
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1510
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = (Var(16) >= 337 && Var(16) < 1011 && Command != "hold_a") || (Var(17) >= 337 && Var(17) < 1011 && Command != "hold_b") 

;---------------------------------------------------------------------
; スーパードロップキック・3段階
[State -1]
type = ChangeState
value = 1520
triggerall= (Var(16) >= 1011 && Var(16) < 2358 && Command != "hold_a") || (Var(17) >= 1011 && Var(17) < 2358 && Command != "hold_b")
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1520
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = (Var(16) >= 1011 && Var(16) < 2358 && Command != "hold_a") || (Var(17) >= 1011 && Var(17) < 2358 && Command != "hold_b")


;---------------------------------------------------------------------
; スーパードロップキック・4段階
[State -1]
type = ChangeState
value = 1530
triggerall= (Var(16) >= 2358 && Command != "hold_a") || (Var(17) >= 2358 && Command != "hold_b")
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Var(38) = [1,10]
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger3 = Var(38) = [1,16]
trigger3 = stateno = 235 || stateno = 410

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 1530
triggerall = StateType != A
triggerall = StateNo = 400 && Time <= 3
trigger1 = (Var(16) >= 2358 && Command != "hold_a") || (Var(17) >= 2358 && Command != "hold_b")

;------------------------ ボタン押しフラグ・弱キック
[State -1,Varadd(16)]
type = Varadd
V = 16
trigger1 = Command = "hold_a"
value = 1

[State -1,VarSet(16)]
type = VarSet
V = 16
triggerall = Command != "hold_a"
trigger1 = Ctrl = 0
trigger2 = Var(16) < 42
value = 0

;------------------------ ボタン押しフラグ・強キック
[State -1,Varadd(17)]
type = Varadd
V = 17
trigger1 = Command = "hold_b"
value = 1

[State -1,VarSet(17)]
type = VarSet
V = 17
triggerall = Command != "hold_b"
trigger1 = Ctrl = 0
trigger2 = Var(17) < 42
value = 0

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = Command = "FF" && StateType = S && Ctrl = 1 && StateNo != 100 && var(39)=0

;---------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = Command = "BB" && StateType = S && Ctrl = 1 && var(39)=0

;=====================================================================
; 2/3 Buttons
;=====================================================================
;
;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; クラッシャーボム（Ｐ通常投げ）
[State -1]
type = ChangeState
value = 800
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_y" && P2BodyDist X < 55
trigger2 = Command = "back_y" && P2BodyDist X < 20

;---------------------------------------------------------------------
; ネックハンギングツリー（K通常投げ）
[State -1]
type = ChangeState
value = 850
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_b" && P2BodyDist X < 30
trigger2 = Command = "back_b" && P2BodyDist X < 20

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------

;---------------------------------------------------------------------
; 緊急回避動作
[State -1]
type = ChangeState
value = 4000
triggerall = Command = "recovery" && var(39)=0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = Time <= 1 && ((StateNo = [200,499]) ||  (StateNo = 700))

;---------------------------------------------------------------------
; パワー溜め動作
;Power Charge
[State -1]
type = ChangeState
value = 4100
triggerall = (command = "charge1" && command = "charge2") || command = "charge" 
triggerall = statetype != A && var(39)=0 && Power < 3000
trigger1 = ctrl
trigger2 = Time <= 1 && ((StateNo = [200,499]) ||  (StateNo = 700))

;=====================================================================
; Dir + Button
;=====================================================================

;---------------------------------------------------------------------
; スタンプキック（3＋B）
[State -1]
type = ChangeState
value = 700
triggerall= Command = "downfwd_b"
trigger1 = StateType = C && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; フライングボディプレス（斜めジャンプ中↓＋Y）
[State -1]
type = ChangeState
value = 710
triggerall= Command = "down_y" && Vel X != 0
trigger1 = StateType = A && Ctrl = 1

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; 挑発
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
value = 200
triggerall = Command = "x" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2  = (StateNo = 400 && AnimElem = 3,> 1)

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 28,235,230)
triggerall = Command = "a" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2  = (StateNo = 400 && AnimElem = 3,> 1)

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 44,215,210)
triggerall = Command = "y" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = 240
triggerall = Command = "b" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown"
trigger1 =  (StateType = C && Ctrl = 1) || StateNo = 100
trigger2  = (StateNo = 400 && AnimElem = 3,> 1)

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 410
triggerall = Command = "y" && Command = "holddown"
trigger1 = (StateType = C && Ctrl = 1) || StateNo = 100

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = Command = "a" && Command = "holddown"
trigger1 = (StateType = C && Ctrl = 1) || StateNo = 100
trigger2  = (StateNo = 400 && AnimElem = 3,> 1)

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 440
triggerall = Command = "b" && Command = "holddown"
trigger1 = (StateType = C && Ctrl = 1) || StateNo = 100

;---------------------------------------------------------------------
; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600
triggerall = Command = "x" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = 610
triggerall = Command = "y" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = 630
triggerall = Command = "a" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = 640
triggerall = Command = "b" && StateType = A && Ctrl = 1
trigger1 = StateNo != 105


