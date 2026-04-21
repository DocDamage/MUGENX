;=====================================================================
;  CMD File For "Juni"                                  Made By M.M.R.
;                                       Ver. 0.7           2001.Aug.20
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
; デスクロスダンシング
[Command]
name = "dcd"
command = x, x, F, a, z
time = 40

;---------------------------------------------------------------------
; サイコローリング
[Command]
name = "pr_a"
command = ~D,DF, F, D,DF, F, x
time = 30

[Command]
name = "pr_b"
command = ~D,DF, F, D,DF, F, y
time = 30

[Command]
name = "pr_c"
command = ~D,DF, F, D,DF, F, z
time = 30

;---------------------------------------------------------------------
; サイコストリーク
[Command]
name = "ps_a"
command = ~60$B, F, B, F, x
time = 35

[Command]
name = "ps_b"
command = ~60$B, F, B, F, y
time = 35

[Command]
name = "ps_c"
command = ~60$B, F, B, F, z
time = 35

;---------------------------------------------------------------------
; スピンドライブスマッシャー
[Command]
name = "sds_a"
command = ~60DB,DF,DB,$U, a
time = 35

[Command]
name = "sds_b"
command = ~60DB,DF,DB,$U, b
time = 35

[Command]
name = "sds_c"
command = ~60DB,DF,DB,$U, c
time = 35

;-| Special Motions |-------------------------------------------------

;---------------------------------------------------------------------
; スパイラルアロー
[Command]
name = "sa_a"
command = ~60$B, F, a
time = 15

[Command]
name = "sa_b"
command = ~60$B, F, b
time = 15

[Command]
name = "sa_c"
command = ~60$B, F, c
time = 15

;---------------------------------------------------------------------
; キャノンスパイク
[Command]
name = "cs_a"
command = ~60$D,$U, a
time = 15

[Command]
name = "cs_b"
command = ~60$D,$U, b
time = 15

[Command]
name = "cs_c"
command = ~60$D,$U, c
time = 15

;---------------------------------------------------------------------
; フーリガンコンビネーション
[Command]
name = "hc_a"
command = ~B,DB, D,DF, F,UF, x
time = 25

[Command]
name = "hc_b"
command = ~B,DB, D,DF, F,UF, y
time = 25

[Command]
name = "hc_c"
command = ~B,DB, D,DF, F,UF, z
time = 25

;---------------------------------------------------------------------
; キャノンストライク／マッハスライド
[Command]
name = "ms_a"
command = ~D,DF, F, a
time = 20

[Command]
name = "ms_b"
command = ~D,DF, F, b
time = 20

[Command]
name = "ms_c"
command = ~D,DF, F, c
time = 20

;---------------------------------------------------------------------
; アースダイレクト
[Command]
name = "ed_a"
command = ~B, D, F, U, x
time = 40

[Command]
name = "ed_a"
command = ~D, F, U, B, x
time = 40

[Command]
name = "ed_a"
command = ~F, U, B, D, x
time = 40

[Command]
name = "ed_a"
command = ~U, B, D, F, x
time = 40

[Command]
name = "ed_a"
command = ~B, U, F, D, x
time = 40

[Command]
name = "ed_a"
command = ~U, F, D, B, x
time = 40

[Command]
name = "ed_a"
command = ~F, D, B, U, x
time = 40

[Command]
name = "ed_a"
command = ~D, B, U, F, x
time = 40

[Command]
name = "ed_b"
command = ~B, D, F, U, y
time = 40

[Command]
name = "ed_b"
command = ~D, F, U, B, y
time = 40

[Command]
name = "ed_b"
command = ~F, U, B, D, y
time = 40

[Command]
name = "ed_b"
command = ~U, B, D, F, y
time = 40

[Command]
name = "ed_b"
command = ~B, U, F, D, y
time = 40

[Command]
name = "ed_b"
command = ~U, F, D, B, y
time = 40

[Command]
name = "ed_b"
command = ~F, D, B, U, y
time = 40

[Command]
name = "ed_b"
command = ~D, B, U, F, y
time = 40

[Command]
name = "ed_c"
command = ~B, D, F, U, z
time = 40

[Command]
name = "ed_c"
command = ~D, F, U, B, z
time = 40

[Command]
name = "ed_c"
command = ~F, U, B, D, z
time = 40

[Command]
name = "ed_c"
command = ~U, B, D, F, z
time = 40

[Command]
name = "ed_c"
command = ~B, U, F, D, z
time = 40

[Command]
name = "ed_c"
command = ~U, F, D, B, z
time = 40

[Command]
name = "ed_c"
command = ~F, D, B, U, z
time = 40

[Command]
name = "ed_c"
command = ~D, B, U, F, z
time = 40

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

;---------------------------------------------------------------------
; サイコチャージβ
[Command]
name = "pcb"
command = a+b+c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = z+x
time = 1

[Command]
name = "recovery_b"
command = a+b
time = 1

[Command]
name = "recovery_b"
command = b+c
time = 1

[Command]
name = "recovery_b"
command = c+a
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
name = "cz"
command = c+z
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "xyz"
command = x+y+z
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

;------------------- Street Fighter Zero 3
[Command]
name = "throw_p"
command = /F,x+y
time = 1

[Command]
name = "throw_p"
command = /F,y+z
time = 1

[Command]
name = "throw_p"
command = /F,z+x
time = 1

[Command]
name = "throw_p"
command = /B,x+y
time = 1

[Command]
name = "throw_p"
command = /B,y+z
time = 1

[Command]
name = "throw_p"
command = /B,z+x
time = 1

[Command]
name = "airthrow_p"
command = /$F,x+y
time = 1

[Command]
name = "airthrow_p"
command = /$F,y+z
time = 1

[Command]
name = "airthrow_p"
command = /$F,z+x
time = 1

[Command]
name = "airthrow_p"
command = /$B,x+y
time = 1

[Command]
name = "airthrow_p"
command = /$B,y+z
time = 1

[Command]
name = "airthrow_p"
command = /$B,z+x
time = 1

[Command]
name = "throw_k"
command = /F,a+b
time = 1

[Command]
name = "throw_k"
command = /F,b+c
time = 1

[Command]
name = "throw_k"
command = /F,c+a
time = 1

[Command]
name = "throw_k"
command = /B,a+b
time = 1

[Command]
name = "throw_k"
command = /B,b+c
time = 1

[Command]
name = "throw_k"
command = /B,c+a
time = 1

[Command]
name = "airthrow_k"
command = /$F,a+b
time = 1

[Command]
name = "airthrow_k"
command = /$F,b+c
time = 1

[Command]
name = "airthrow_k"
command = /$F,c+a
time = 1

[Command]
name = "airthrow_k"
command = /$B,a+b
time = 1

[Command]
name = "airthrow_k"
command = /$B,b+c
time = 1

[Command]
name = "airthrow_k"
command = /$B,c+a
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

;-| Hold Button |-----------------------------------------------------
[Command]
name = "xx"
command = /x
time = 1

[Command]
name = "aa"
command = /a
time = 1

[Command]
name = "yy"
command = /y
time = 1

[Command]
name = "bb"
command = /b
time = 1

[Command]
name = "cc"
command = /c
time = 1

[Command]
name = "zz"
command = /z
time = 1

[Command]
name = "ss"
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
; デスクロスダンシング
[State -1]
type = ChangeState
value = 3900
triggerall = Power >= 3000
triggerall = Command = "dcd"
triggerall = StateType != A
trigger1 = (StateNo = [200,500)) || StateNo = 600
trigger2 = Ctrl = 1

;---------------------------------------------------------------------
; サイコストリーク（Ｌｖ１）
[State -1]
type = ChangeState
value = 3000
triggerall = StateType != A
triggerall = Ctrl = 1
triggerall = Power >= 1000
trigger1 = Command = "ps_a"
trigger2 = Command = "ps_b" && Power < 2000
trigger3 = Command = "ps_c" && Power < 2000

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3000
triggerall = Power >= 1000
triggerall = StateType != A
triggerall = MoveContact
triggerall = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350
trigger1 = Command = "ps_a"
trigger2 = Command = "ps_b" && Power < 2000
trigger3 = Command = "ps_c" && Power < 2000

;---------------------------------------------------------------------
; サイコストリーク（Ｌｖ２）
[State -1]
type = ChangeState
value = 3100
triggerall = StateType != A
triggerall = Ctrl = 1
triggerall = Power >= 2000
trigger1 = Command = "ps_b"
trigger2 = Command = "ps_c" && Power < 3000

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3100
triggerall = Power >= 2000
triggerall = StateType != A
triggerall = MoveContact
triggerall = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350
trigger1 = Command = "ps_b"
trigger2 = Command = "ps_c" && Power < 3000

;---------------------------------------------------------------------
; サイコストリーク（Ｌｖ３）
[State -1]
type = ChangeState
value = 3200
triggerall = StateType != A
triggerall = Ctrl = 1
triggerall = Power >= 3000
trigger1 = Command = "ps_c"

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3200
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = MoveContact
triggerall = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350
trigger1 = Command = "ps_c"

;---------------------------------------------------------------------
; スピンドライブスマッシャー（Ｌｖ１）
[State -1]
type = ChangeState
value = 3300
triggerall = StateType != A
triggerall = Power >= 1000
triggerall = Command = "sds_a"
trigger1 = Ctrl = 1
trigger2 = StateNo = 40 && MoveType != H
trigger3 = MoveContact
trigger3 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

[State -1]
type = ChangeState
value = 3300
triggerall = StateType != A
triggerall = Power >= 1000
triggerall = Command = "sds_b" && Power < 2000
trigger1 = Ctrl = 1
trigger2 = StateNo = 40 && MoveType != H
trigger3 = MoveContact
trigger3 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

[State -1]
type = ChangeState
value = 3300
triggerall = StateType != A
triggerall = Power >= 1000
triggerall = Command = "sds_c" && Power < 2000
trigger1 = Ctrl = 1
trigger2 = StateNo = 40 && MoveType != H
trigger3 = MoveContact
trigger3 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;---------------------------------------------------------------------
; スピンドライブスマッシャー（Ｌｖ２）
[State -1]
type = ChangeState
value = 3400
triggerall = StateType != A
triggerall = Power >= 2000
triggerall = Command = "sds_b"
trigger1 = Ctrl = 1
trigger2 = StateNo = 40 && MoveType != H
trigger3 = MoveContact
trigger3 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

[State -1]
type = ChangeState
value = 3400
triggerall = StateType != A
triggerall = Power >= 2000
triggerall = Command = "sds_c" && Power < 3000
trigger1 = Ctrl = 1
trigger2 = StateNo = 40 && MoveType != H
trigger3 = MoveContact
trigger3 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;---------------------------------------------------------------------
; スピンドライブスマッシャー（Ｌｖ３）
[State -1]
type = ChangeState
value = 3500
triggerall = StateType != A
triggerall = Power >= 3000
triggerall = Command = "sds_c"
trigger1 = Ctrl = 1
trigger2 = StateNo = 40 && MoveType != H
trigger3 = MoveContact
trigger3 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;---------------------------------------------------------------------
; サイコローリング（Ｌｖ１）
[State -1]
type = ChangeState
value = 3600
triggerall = StateType != A
triggerall = Ctrl = 1
triggerall = Power >= 1000
triggerall = NumHelper(3600) = 0 && NumHelper(3700) = 0 && NumHelper(3800) = 0
trigger1 = Command = "pr_a"
trigger2 = Command = "pr_b" && Power < 2000
trigger3 = Command = "pr_c" && Power < 2000

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3600
triggerall = Power >= 1000
triggerall = StateType != A
triggerall = MoveContact
triggerall = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350
trigger1 = Command = "pr_a"
trigger2 = Command = "pr_b" && Power < 2000
trigger3 = Command = "pr_c" && Power < 2000

;---------------------------------------------------------------------
; サイコローリング（Ｌｖ２）
[State -1]
type = ChangeState
value = 3700
triggerall = StateType != A
triggerall = Ctrl = 1
triggerall = Power >= 2000
triggerall = NumHelper(3600) = 0 && NumHelper(3700) = 0 && NumHelper(3800) = 0
trigger1 = Command = "pr_b"
trigger2 = Command = "pr_c" && Power < 3000

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3700
triggerall = Power >= 2000
triggerall = StateType != A
triggerall = MoveContact
triggerall = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350
trigger1 = Command = "pr_b"
trigger2 = Command = "pr_c" && Power < 3000

;---------------------------------------------------------------------
; サイコローリング（Ｌｖ３）
[State -1]
type = ChangeState
value = 3800
triggerall = StateType != A
triggerall = Ctrl = 1
triggerall = Power >= 3000
triggerall = NumHelper(3600) = 0 && NumHelper(3700) = 0 && NumHelper(3800) = 0
trigger1 = Command = "pr_c"

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3800
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = MoveContact
triggerall = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350
trigger1 = Command = "pr_c"

;---------------------------------------------------------------------
; オリジナルコンボ発動
[State -1]
type = Null;ChangeState
value = 7000 + IfElse(StateType = A,50,0)
triggerall = Command = "s"
trigger1 = Ctrl = 1

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; アースダイレクト・弱
[State -1]
type = ChangeState
value = 1600
triggerall = Command = "ed_a"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1600
triggerall = Command = "ed_a"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;---------------------------------------------------------------------
; アースダイレクト・中
[State -1]
type = ChangeState
value = 1650
triggerall = Command = "ed_b"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1650
triggerall = Command = "ed_b"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;---------------------------------------------------------------------
; アースダイレクト・強
[State -1]
type = ChangeState
value = 1700
triggerall = Command = "ed_c"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1700
triggerall = Command = "ed_c"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;---------------------------------------------------------------------
; フーリガンコンビネーション・弱
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "hc_a"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "hc_a"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;---------------------------------------------------------------------
; フーリガンコンビネーション・中
[State -1]
type = ChangeState
value = 1380
triggerall = Command = "hc_b"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1380
triggerall = Command = "hc_b"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;---------------------------------------------------------------------
; フーリガンコンビネーション・強
[State -1]
type = ChangeState
value = 1390
triggerall = Command = "hc_c"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1390
triggerall = Command = "hc_c"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;---------------------------------------------------------------------
; キャノンスパイク・弱
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "cs_a"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "cs_a"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;---------------------------------------------------------------------
; キャノンスパイク・中
[State -1]
type = ChangeState
value = 1250
triggerall = Command = "cs_b"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1250
triggerall = Command = "cs_b"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;---------------------------------------------------------------------
; キャノンスパイク・強
[State -1]
type = ChangeState
value = 1270
triggerall = Command = "cs_c"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1270
triggerall = Command = "cs_c"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;---------------------------------------------------------------------
; スパイラルアロー・弱
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "sa_a"
trigger1 = Ctrl = 1
trigger1 = StateType != A

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "sa_a"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;---------------------------------------------------------------------
; スパイラルアロー・中
[State -1]
type = ChangeState
value = 1030
triggerall = Command = "sa_b"
trigger1 = Ctrl = 1
trigger1 = StateType != A

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1030
triggerall = Command = "sa_b"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;---------------------------------------------------------------------
; スパイラルアロー・強
[State -1]
type = ChangeState
value = 1060
triggerall = Command = "sa_c"
trigger1 = Ctrl = 1
trigger1 = StateType != A

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1060
triggerall = Command = "sa_c"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;---------------------------------------------------------------------
; エアスパイラルアロー・弱
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "sa_a"
trigger1 = Ctrl = 1
trigger1 = StateType = A && Vel Y < 0

;---------------------------------------------------------------------
; エアスパイラルアロー・中
[State -1]
type = ChangeState
value = 1150
triggerall = Command = "sa_b"
trigger1 = Ctrl = 1
trigger1 = StateType = A && Vel Y < 0

;---------------------------------------------------------------------
; エアスパイラルアロー・強
[State -1]
type = ChangeState
value = 1170
triggerall = Command = "sa_c"
trigger1 = Ctrl = 1
trigger1 = StateType = A && Vel Y < 0

;---------------------------------------------------------------------
; キャノンストライク・弱
[State -1]
type = ChangeState
value = 1400
triggerall = Command = "ms_a"
trigger1 = Ctrl = 1
trigger1 = StateType = A && (Vel Y = [-2.0,2.0]) && Vel X > 0

;---------------------------------------------------------------------
; キャノンストライク・中
[State -1]
type = ChangeState
value = 1430
triggerall = Command = "ms_b"
trigger1 = Ctrl = 1
trigger1 = StateType = A && (Vel Y = [-2.0,2.0]) && Vel X > 0

;---------------------------------------------------------------------
; キャノンストライク・強
[State -1]
type = ChangeState
value = 1440
triggerall = Command = "ms_c"
trigger1 = Ctrl = 1
trigger1 = StateType = A && (Vel Y = [-2.0,2.0]) && Vel X > 0

;---------------------------------------------------------------------
; マッハスライド・弱
[State -1]
type = ChangeState
value = 1500
triggerall = Command = "ms_a"
trigger1 = Ctrl = 1
trigger1 = StateType != A

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1500
triggerall = Command = "ms_a"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;---------------------------------------------------------------------
; マッハスライド・中
[State -1]
type = ChangeState
value = 1510
triggerall = Command = "ms_b"
trigger1 = Ctrl = 1
trigger1 = StateType != A

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1510
triggerall = Command = "ms_b"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;---------------------------------------------------------------------
; マッハスライド・強
[State -1]
type = ChangeState
value = 1520
triggerall = Command = "ms_c"
trigger1 = Ctrl = 1
trigger1 = StateType != A

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1520
triggerall = Command = "ms_c"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = (StateNo = [200,220]) || (StateNo = [300,310]) || StateNo = 350

;=====================================================================
; Special Attacks , Moves and so on.
;=====================================================================

;---------------------------------------------------------------------
; ＺＥＲＯカウンター
[State -1]
type = ChangeState
value = 4000 + IfElse(Var(31) = 1,50,0)
triggerall = Command = "holdfwd"
triggerall = Command = "ax" || Command = "by" || Command = "cz"
triggerall = Var(31) != -1
trigger1 = Var(31) = 0 && Power >= 1000
trigger1 = StateNo = [150,153]
trigger2 = Var(31) = 1 && Power >= 1500
trigger2 = StateNo = [150,153]

;---------------------------------------------------------------------
; サイコチャージβ
[State -1]
type = ChangeState
value = 4500
triggerall = Command = "pcb"
triggerall = StateType != A
trigger1 = Ctrl = 1

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = Null;ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = StateNo != 100

;---------------------------------------------------------------------
;RunBack
[State -1]
type = Null;ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; フーリガンスープレックス（Ｐ通常投げ）
[State -1]
type = ChangeState
value = 800
triggerall = StateNo != 100
triggerall = StateType = S
triggerall = Ctrl = 1
trigger1 = Command = "throw_p"

;---------------------------------------------------------------------
; フランケンシュタイナー（Ｋ通常投げ）
[State -1]
type = ChangeState
value = 850
triggerall = StateNo != 100
triggerall = StateType = S
triggerall = Ctrl = 1
trigger1 = Command = "throw_k"

;---------------------------------------------------------------------
; フライングネックハント（Ｐ空中投げ）
[State -1]
type = ChangeState
value = 900
triggerall = StateType = A
triggerall = Ctrl = 1
trigger1 = Command = "airthrow_p"

;---------------------------------------------------------------------
; エアフランケンシュタイナー（Ｋ空中投げ）
[State -1]
type = ChangeState
value = 950
triggerall = StateType = A
triggerall = Ctrl = 1
trigger1 = Command = "airthrow_k"

;=====================================================================
; Dir + Button
;=====================================================================

;---------------------------------------------------------------------
; フォーリングアーク（→＋中Ｋ）
[State -1]
type = ChangeState
value = 600
triggerall = Command = "fwd_b"
triggerall = Command != "holddown"
trigger1 = Ctrl = 1
trigger1 = StateType = S

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
trigger1 = Ctrl = 1

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; 弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = StateNo = 200 && Time >= 10
trigger3 = StateNo = 215 && Time >= 10
trigger4 = StateNo = 300 && Time >= 9
trigger5 = StateNo = 350 && Time >= 9

;---------------------------------------------------------------------
; 中パンチ
[State -1]
type = ChangeState
value = 205
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = 210
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = 215
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = StateNo = 200 && Time >= 10
trigger3 = StateNo = 215 && Time >= 10
trigger4 = StateNo = 300 && Time >= 9
trigger5 = StateNo = 350 && Time >= 9

;---------------------------------------------------------------------
; 中キック
[State -1]
type = ChangeState
value = 220
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = S

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = 225
triggerall = command = "c"
triggerall = command != "holddown"
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
trigger2 = StateNo = 200 && Time >= 10
trigger3 = StateNo = 215 && Time >= 10
trigger4 = StateNo = 300 && Time >= 9
trigger5 = StateNo = 350 && Time >= 9

;---------------------------------------------------------------------
; しゃがみ中パンチ
[State -1]
type = ChangeState
value = 310
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 320
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 350
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = StateNo = 200 && Time >= 10
trigger3 = StateNo = 215 && Time >= 10
trigger4 = StateNo = 300 && Time >= 9
trigger5 = StateNo = 350 && Time >= 9

;---------------------------------------------------------------------
; しゃがみ中キック
[State -1]
type = ChangeState
value = 360
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 370
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

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
; ジャンプ中パンチ
[State -1]
type = ChangeState
value = 510
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = 520
triggerall = command = "z"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = 530
triggerall = command = "a"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ中キック
[State -1]
type = ChangeState
value = 540
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = 550
triggerall = command = "c"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

