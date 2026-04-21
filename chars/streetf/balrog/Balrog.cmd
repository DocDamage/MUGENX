;=====================================================================
;  CMD File For "Balrog"                                Made By M.M.R.
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
; レッドインパクト  (Red Impact)
[Command]
name = "ri"
command = ~50$B, F, B, F, x
time = 35

[Command]
name = "ri"
command = ~50$B, F, B, F, y
time = 35

[Command]
name = "ri"
command = ~50$B, F, B, F, z
time = 35

;---------------------------------------------------------------------
; ローリングイズナドロップ  (Rolling Izuna Drop)
[Command]
name = "rid_a"
command = ~50DB,DF,DB,$U, a
time = 35

[Command]
name = "rid_b"
command = ~50DB,DF,DB,$U, b
time = 35

[Command]
name = "rid_c"
command = ~50DB,DF,DB,$U, c
time = 35

;---------------------------------------------------------------------
; スカーレットミラージュ  (Scarlet Mirage)
[Command]
name = "sm_a"
command = ~50$B, F, B, F, a
time = 35

[Command]
name = "sm_b"
command = ~50$B, F, B, F, b
time = 35

[Command]
name = "sm_c"
command = ~50$B, F, B, F, c
time = 35

;-| Special Motions |-------------------------------------------------

;---------------------------------------------------------------------
; ローリングクリスタルフラッシュ  (Rolling Crystal Flash)
[Command]
name = "rcf_a"
command = ~50$B, F, x
time = 20

[Command]
name = "rcf_b"
command = ~50$B, F, y
time = 20

[Command]
name = "rcf_c"
command = ~50$B, F, z
time = 20

;---------------------------------------------------------------------
; 壁向かいジャンプ　(Wall Jump [Special])
[Command]
name = "wj"
command = ~50$D,$U, a
time = 20

[Command]
name = "wj"
command = ~50$D,$U, b
time = 20

[Command]
name = "wj"
command = ~50$D,$U, c
time = 20

;---------------------------------------------------------------------
; スカイハイクロー　(Sky High Claw)
[Command]
name = "shc_a"
command = ~50$D,$U, x
time = 20

[Command]
name = "shc_b"
command = ~50$D,$U, y
time = 20

[Command]
name = "shc_c"
command = ~50$D,$U, z
time = 20

;---------------------------------------------------------------------
; スカーレットテラー　(Scarlet Terror)
[Command]
name = "st_a"
command = ~50DB, F, a
time = 20

[Command]
name = "st_b"
command = ~50DB, F, b
time = 20

[Command]
name = "st_c"
command = ~50DB, F, c
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

[Command]
name = "abc"
command = a+b+c
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
command = /$D, b
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

;------------------------ Balrog Only
[Command]
name = "holdupback"
command = /UB
time = 1

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
; レッドインパクト					Ｌｖ３　　専用
[State -1]
type = ChangeState
value = 3600
triggerall = StateType != A
triggerall = Ctrl = 1
triggerall = Power >= 3000
trigger1 = Command = "ri"

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3600
triggerall = StateType != A
triggerall = Power >= 3000
triggerall = MoveContact
triggerall = Command = "ri"
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

;---------------------------------------------------------------------
; ローリングイズナドロップ					Ｌｖ１
[State -1]
type = ChangeState
value = 3000
triggerall = StateType != A
triggerall = Power >= 1000
trigger1 = (Command = "rid_a") && (Ctrl = 1 || StateNo = 40)
trigger2 = (Command = "rid_b" && Power < 2000) && (Ctrl = 1 || StateNo = 40)
trigger3 = (Command = "rid_c" && Power < 2000) && (Ctrl = 1 || StateNo = 40)

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3000
triggerall = StateType != A
triggerall = Power >= 1000
triggerall = MoveContact
triggerall = (Command = "rid_a") || (Command = "rid_b" && Power < 2000) || (Command = "rid_c" && Power < 2000)
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

;---------------------------------------------------------------------
; ローリングイズナドロップ					Ｌｖ２
[State -1]
type = ChangeState
value = 3100
triggerall = StateType != A
triggerall = Power >= 2000
trigger1 = (Command = "rid_b") && (Ctrl = 1 || StateNo = 40)
trigger2 = (Command = "rid_c" && Power < 3000) && (Ctrl = 1 || StateNo = 40)

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3100
triggerall = StateType != A
triggerall = Power >= 2000
triggerall = MoveContact
triggerall = (Command = "rid_b") || (Command = "rid_c" && Power < 3000)
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

;---------------------------------------------------------------------
; ローリングイズナドロップ					Ｌｖ３
[State -1]
type = ChangeState
value = 3200
triggerall = StateType != A
triggerall = Ctrl = 1 || StateNo = 40
triggerall = Power >= 3000
trigger1 = Command = "rid_c"

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3200
triggerall = StateType != A
triggerall = Power >= 3000
triggerall = MoveContact
triggerall = Command = "rid_c"
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

;---------------------------------------------------------------------
; スカーレットミラージュ					Ｌｖ１
[State -1]
type = ChangeState
value = 3300
triggerall = StateType != A
triggerall = Power >= 1000
triggerall = Ctrl = 1
trigger1 = Command = "sm_a"
trigger2 = Command = "sm_b" && Power < 2000
trigger3 = Command = "sm_c" && Power < 2000

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3300
triggerall = StateType != A
triggerall = Power >= 1000
triggerall = MoveContact
triggerall = (Command = "sm_a") || (Command = "sm_b" && Power < 2000) || (Command = "sm_c" && Power < 2000)
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

;---------------------------------------------------------------------
; スカーレットミラージュ					Ｌｖ２
[State -1]
type = ChangeState
value = 3400
triggerall = StateType != A
triggerall = Power >= 2000
triggerall = Ctrl = 1
trigger1 = Command = "sm_b"
trigger2 = Command = "sm_c" && Power < 3000

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3400
triggerall = StateType != A
triggerall = Power >= 2000
triggerall = MoveContact
triggerall = (Command = "sm_b") || (Command = "sm_c" && Power < 3000)
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

;---------------------------------------------------------------------
; スカーレットミラージュ					Ｌｖ３
[State -1]
type = ChangeState
value = 3500
triggerall = StateType != A
triggerall = Ctrl = 1
triggerall = Power >= 3000
trigger1 = Command = "sm_c"

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3500
triggerall = StateType != A
triggerall = Power >= 3000
triggerall = MoveContact
triggerall = Command = "sm_c"
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

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
; 壁向かいジャンプ
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "wj"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40 && !MoveType = H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "wj"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

;---------------------------------------------------------------------
; ローリングクリスタルフラッシュ・弱
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "rcf_a"
triggerall = StateType != A
trigger1 = Ctrl = 1

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "rcf_a"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

;---------------------------------------------------------------------
; ローリングクリスタルフラッシュ・中
[State -1]
type = ChangeState
value = 1030
triggerall = Command = "rcf_b"
triggerall = StateType != A
trigger1 = Ctrl = 1

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1030
triggerall = Command = "rcf_b"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

;---------------------------------------------------------------------
; ローリングクリスタルフラッシュ・強
[State -1]
type = ChangeState
value = 1060
triggerall = Command = "rcf_c"
triggerall = StateType != A
trigger1 = Ctrl = 1

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1060
triggerall = Command = "rcf_c"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

;---------------------------------------------------------------------
; スカーレットテラー・弱
[State -1]
type = ChangeState
value = 1500
triggerall = Command = "st_a"
triggerall = StateType != A
trigger1 = Ctrl = 1

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1500
triggerall = Command = "st_a"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

;---------------------------------------------------------------------
; スカーレットテラー・中
[State -1]
type = ChangeState
value = 1530
triggerall = Command = "st_b"
triggerall = StateType != A
trigger1 = Ctrl = 1

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1530
triggerall = Command = "st_b"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

;---------------------------------------------------------------------
; スカーレットテラー・強
[State -1]
type = ChangeState
value = 1560
triggerall = Command = "st_c"
triggerall = StateType != A
trigger1 = Ctrl = 1

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1560
triggerall = Command = "st_c"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

;---------------------------------------------------------------------
; スカイハイクロー・弱
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "shc_a"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40 && !MoveType = H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "shc_a"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

;---------------------------------------------------------------------
; スカイハイクロー・中
[State -1]
type = ChangeState
value = 1260
triggerall = Command = "shc_b"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40 && !MoveType = H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1260
triggerall = Command = "shc_b"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

;---------------------------------------------------------------------
; スカイハイクロー・強
[State -1]
type = ChangeState
value = 1280
triggerall = Command = "shc_c"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40 && !MoveType = H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1280
triggerall = Command = "shc_c"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

;---------------------------------------------------------------------
; バックスラッシュ
[State -1]
type = ChangeState
value = 1600
triggerall = Command = "xyz"
triggerall = StateType != A
trigger1 = Ctrl = 1

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1600
triggerall = Command = "xyz"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

;---------------------------------------------------------------------
; ショートバックスラッシュ
[State -1]
type = ChangeState
value = 1650
triggerall = Command = "abc"
triggerall = StateType != A
trigger1 = Ctrl = 1

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1650
triggerall = Command = "abc"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || (StateNo = [215,220])
trigger2 = StateNo = 300 || (StateNo = [350,360])

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
; レインボースープレックス（Ｐ通常投げ）
[State -1]
type = ChangeState
value = 800
triggerall = StateNo != 100
triggerall = StateType = S
triggerall = Ctrl = 1
trigger1 = Command = "throw_p"

;---------------------------------------------------------------------
; スターダストドロップ（Ｐ空中投げ）
[State -1]
type = ChangeState
value = 900
triggerall = StateType = A
triggerall = Ctrl = 1
trigger1 = Command = "airthrow_p"

;---------------------------------------------------------------------
; クレセントライン（Ｋ空中投げ）
[State -1]
type = ChangeState
value = 950
triggerall = StateType = A
triggerall = Ctrl = 1
trigger1 = Command = "airthrow_k"

;=====================================================================
; 特殊能力
;=====================================================================
;
;---------------------------------------------------------------------
; 三角跳び
;------------------------ 後方
[State -1]
type = ChangeState
value = 4300
triggerall = StateType = A
triggerall = Vel X < 0 && Pos Y <= -50 && Ctrl = 1
triggerall = BackEdgeDist <= 20
trigger1 = Command = "holdfwd" && !Command = "holddown"

;------------------------ 前方
[State -1]
type = ChangeState
value = 4350
triggerall = StateType = A
triggerall = Vel X > 0 && Pos Y <= -50 && Ctrl = 1
triggerall = FrontEdgeDist <= 20
trigger1 = Command = "holdback" && !Command = "holddown"

;=====================================================================
; Dir + Button
;=====================================================================

;---------------------------------------------------------------------
; コズミックスマート（→＋強Ｋ）
[State -1]
type = ChangeState
value = 600
triggerall = StateType = S
triggerall = Ctrl = 1
trigger1 = Command = "fwd_c"

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

;---------------------------------------------------------------------
; しゃがみ中キック
[State -1]
type = ChangeState
value = 360
triggerall = Command = "b"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl = 1

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 370
triggerall = Command = "c"
triggerall = Command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl = 1

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


