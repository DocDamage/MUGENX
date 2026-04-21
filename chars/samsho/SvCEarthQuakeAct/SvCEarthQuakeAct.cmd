;=====================================================================
;MUGEN CharData (01.04.14)
;"SvC EarthQuake"                                                ActJapan
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================

;-| CPU Function |----------------------------------------------------
[Command]
name = "cpu01"
command = ~F,DF,D,DB,B,F,DF,D,DB,B,a+b+c+x+y+z
time = 1

;-| Super Motions |---------------------------------------------------
;ファットカーニバル
[Command]
name = "FatCrnvl_x"
command = ~D,DF,F,DF,D,DB,B,x+y
time = 26

; アースガッデム 2003
[Command]
name = "EarthGttm_x"
command = ~D,DF,F,D,DF,F,x
time = 22

[Command]
name = "EarthGttm_y"
command = ~D,DF,F,D,DF,F,y
time = 22

; ファットギルティー
[Command]
name = "FatGty_a"
command = ~D,DF,F,D,DF,F,a
time = 22

[Command]
name = "FatGty_b"
command = ~D,DF,F,D,DF,F,b
time = 22

;-| Special Motions |-------------------------------------------------
; ファットチェーンソー ※
[Command]
name = "FatChnso_x"
command = ~F,D,DF,x
time = 18

[Command]
name = "FatChnso_y"
command = ~F,D,DF,y
time = 18

; ファットフェイク
[Command]
name = "FatFake_a"
command = ~F,DF,D,DB,B,a
time = 18

; ファットレプリカアタック
[Command]
name = "FatFake_b"
command = ~F,DF,D,DB,B,b
time = 18

; ファットバースト ※ /チェンソーダイブ
[Command]
name = "FatBrst_x"
command = ~D,DF,F,x
time = 18

[Command]
name = "FatBrst_y"
command = ~D,DF,F,y
time = 18

; ファットブレス
[Command]
name = "FatBrss_x"
command = ~F,DF,D,DB,B,x
time = 18

[Command]
name = "FatBrss_y"
command = ~F,DF,D,DB,B,y
time = 18

;ファットバウンド
[Command]
name = "FatBound_a"
command = $D,a

[Command]
name = "FatBound_b"
command = $D,b


;---------------------------------------------------------------------
; Config
[Command]
name = "ConfigF"
command = $F
time = 1

[Command]
name = "ConfigB"
command = $B
time = 1

[Command]
name = "ConfigU"
command = $U
time = 1

[Command]
name = "ConfigD"
command = $D
time = 1

;---------------------------------------------------------------------

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
command = c+z
time = 1

[Command]
name = "axy"
command = a+x+y
time = 3

[Command]
name = "aby"
command = a+b+y
time = 3

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

;[Command]
;name = "gc_fwd"
;command = /DF, z
;time = 1

[Command]
name = "gc_fwd"
command = /F, a+x
time = 1

;[Command]
;name = "gc_fwd"
;command = /F, z
;time = 1

[Command]
name = "gc_back"
command = /DB, a+x
time = 1

;[Command]
;name = "gc_back"
;command = /DB, z
;time = 1

[Command]
name = "gc_back"
command = /B, a+x
time = 1

;[Command]
;name = "gc_back"
;command = /B, z
;time = 1

[Command]
name = "q_fwd"
command = /F, a+x
time = 1

;[Command]
;name = "q_fwd"
;command = /F, z
;time = 1

[Command]
name = "q_back"
command = /B, a+x
time = 1

;[Command]
;name = "q_back"
;command = /B, z
;time = 1

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

;[Command]
;name = "recovery"
;command = z
;time = 1

;----------------------------- KOF Seriese only
;[Command]
;name = "gc_fwd"
;command = z
;time = 1

;[Command]
;name = "q_fwd"
;command = z
;time = 1

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

[Command]
name = "holdfwdOnly"
command = /F
time = 1

[Command]
name = "holdup4t"
command = ~4U

[Command]
name = "holddown4t"
command = ~4D

[Command]
name = "holdup5t"
command = ~15$U

[Command]
name = "holddown5t"
command = ~15$D


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

;------------------------ Or
[Command]
name = "Selectfwd"
command = F
time = 1

[Command]
name = "Selectback"
command = B
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]


;=====================================================================
; CPU Function
;=====================================================================

; ＣＰＵ専用フラグ
[State -1,cpu01]
type = VarSet
triggerall = var(30)=0
trigger1 = Command = "cpu01"
persistent = 0
v = 30
value = 1

;=====================================================================
; Super Arts
;=====================================================================
;-----------------------------------
;
[State -1]
type = ChangeState
value = 3400
triggerall = Command = "FatCrnvl_x"
triggerall = Life <= Var(7)
triggerall = Var(37)=0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemTime(4) >= 1)
trigger3 = MoveContact && (StateNo = 220 && AnimElemTime(7) >= 1)
trigger4 = MoveContact && (StateNo = 230 && AnimElemTime(4) >= 1)
trigger5 = MoveContact && (StateNo = 400 && AnimElemTime(6) >= 1)
trigger6 = MoveContact && (StateNo = 420 && AnimElemTime(7) >= 1)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(7) >= 1)
trigger8 = Var(32)!=0 && (StateNo = 200 && AnimElemTime(2) >= 1)
trigger9 = Var(32)!=0 && (StateNo = 220 && AnimElemTime(2) >= 1)
trigger10 = Var(32)!=0 && (StateNo = 230 && AnimElemTime(2) >= 1)
trigger11 = Var(32)!=0 && (StateNo = 400 && AnimElemTime(2) >= 1)
trigger12 = Var(32)!=0 && (StateNo = 420 && AnimElemTime(2) >= 1)
trigger13 = Var(32)!=0 && (StateNo = 430 && AnimElemTime(2) >= 1)
trigger14 = Var(32)!=0 && (StateNo = 210 && AnimElemTime(2) >= 1)
trigger15 = Var(32)!=0 && (StateNo = 410 && AnimElemTime(2) >= 1)
trigger16 = Var(32)!=0 && (StateNo = 225 && AnimElemTime(2) >= 1)

;-----------------------------------


; アースガッデム 2003
[State -1]
type = ChangeState
value = 3100
triggerall = Command = "EarthGttm_x" || Command = "EarthGttm_y"
triggerall = (Var(32)=0 && Power >=1000) || Var(32)!=0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemTime(4) >= 1)
trigger3 = MoveContact && (StateNo = 220 && AnimElemTime(7) >= 1)
trigger4 = MoveContact && (StateNo = 230 && AnimElemTime(4) >= 1)
trigger5 = MoveContact && (StateNo = 400 && AnimElemTime(6) >= 1)
trigger6 = MoveContact && (StateNo = 420 && AnimElemTime(7) >= 1)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(7) >= 1)
trigger8 = Var(32)!=0 && (StateNo = 200 && AnimElemTime(2) >= 1)
trigger9 = Var(32)!=0 && (StateNo = 220 && AnimElemTime(2) >= 1)
trigger10 = Var(32)!=0 && (StateNo = 230 && AnimElemTime(2) >= 1)
trigger11 = Var(32)!=0 && (StateNo = 400 && AnimElemTime(2) >= 1)
trigger12 = Var(32)!=0 && (StateNo = 420 && AnimElemTime(2) >= 1)
trigger13 = Var(32)!=0 && (StateNo = 430 && AnimElemTime(2) >= 1)
trigger14 = Var(32)!=0 && (StateNo = 210 && AnimElemTime(2) >= 1)
trigger15 = Var(32)!=0 && (StateNo = 410 && AnimElemTime(2) >= 1)
trigger16 = Var(32)!=0 && (StateNo = 225 && AnimElemTime(2) >= 1)

;-----------------------------------
; ファットギルティー
[State -1]
type = ChangeState
value = 3000
triggerall = Command = "FatGty_a" || Command = "FatGty_b"
triggerall = (Var(32)=0 && Power >=1000) || Var(32)!=0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemTime(4) >= 1)
trigger3 = MoveContact && (StateNo = 220 && AnimElemTime(7) >= 1)
trigger4 = MoveContact && (StateNo = 230 && AnimElemTime(4) >= 1)
trigger5 = MoveContact && (StateNo = 400 && AnimElemTime(6) >= 1)
trigger6 = MoveContact && (StateNo = 420 && AnimElemTime(7) >= 1)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(7) >= 1)
trigger8 = Var(32)!=0 && (StateNo = 200 && AnimElemTime(2) >= 1)
trigger9 = Var(32)!=0 && (StateNo = 220 && AnimElemTime(2) >= 1)
trigger10 = Var(32)!=0 && (StateNo = 230 && AnimElemTime(2) >= 1)
trigger11 = Var(32)!=0 && (StateNo = 400 && AnimElemTime(2) >= 1)
trigger12 = Var(32)!=0 && (StateNo = 420 && AnimElemTime(2) >= 1)
trigger13 = Var(32)!=0 && (StateNo = 430 && AnimElemTime(2) >= 1)
trigger14 = Var(32)!=0 && (StateNo = 210 && AnimElemTime(2) >= 1)
trigger15 = Var(32)!=0 && (StateNo = 410 && AnimElemTime(2) >= 1)
trigger16 = Var(32)!=0 && (StateNo = 225 && AnimElemTime(2) >= 1)

;=====================================================================
; Special Arts 
;=====================================================================

; ファットチェーンソー ※
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "FatChnso_x"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemTime(4) >= 1)
trigger3 = MoveContact && (StateNo = 220 && AnimElemTime(7) >= 1)
trigger4 = MoveContact && (StateNo = 230 && AnimElemTime(4) >= 1)
trigger5 = MoveContact && (StateNo = 400 && AnimElemTime(6) >= 1)
trigger6 = MoveContact && (StateNo = 420 && AnimElemTime(7) >= 1)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(7) >= 1)
trigger8 = Var(32)!=0 && (StateNo = 200 && AnimElemTime(2) >= 1)
trigger9 = Var(32)!=0 && (StateNo = 220 && AnimElemTime(2) >= 1)
trigger10 = Var(32)!=0 && (StateNo = 230 && AnimElemTime(2) >= 1)
trigger11 = Var(32)!=0 && (StateNo = 400 && AnimElemTime(2) >= 1)
trigger12 = Var(32)!=0 && (StateNo = 420 && AnimElemTime(2) >= 1)
trigger13 = Var(32)!=0 && (StateNo = 430 && AnimElemTime(2) >= 1)
trigger14 = Var(32)!=0 && (StateNo = 210 && AnimElemTime(2) >= 1)
trigger15 = Var(32)!=0 && (StateNo = 410 && AnimElemTime(2) >= 1)
trigger16 = Var(32)!=0 && (StateNo = 225 && AnimElemTime(2) >= 1)

[State -1]
type = ChangeState
value = 1350
triggerall = Command = "FatChnso_y"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemTime(4) >= 1)
trigger3 = MoveContact && (StateNo = 220 && AnimElemTime(7) >= 1)
trigger4 = MoveContact && (StateNo = 230 && AnimElemTime(4) >= 1)
trigger5 = MoveContact && (StateNo = 400 && AnimElemTime(6) >= 1)
trigger6 = MoveContact && (StateNo = 420 && AnimElemTime(7) >= 1)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(7) >= 1)
trigger8 = Var(32)!=0 && (StateNo = 200 && AnimElemTime(2) >= 1)
trigger9 = Var(32)!=0 && (StateNo = 220 && AnimElemTime(2) >= 1)
trigger10 = Var(32)!=0 && (StateNo = 230 && AnimElemTime(2) >= 1)
trigger11 = Var(32)!=0 && (StateNo = 400 && AnimElemTime(2) >= 1)
trigger12 = Var(32)!=0 && (StateNo = 420 && AnimElemTime(2) >= 1)
trigger13 = Var(32)!=0 && (StateNo = 430 && AnimElemTime(2) >= 1)
trigger14 = Var(32)!=0 && (StateNo = 210 && AnimElemTime(2) >= 1)
trigger15 = Var(32)!=0 && (StateNo = 410 && AnimElemTime(2) >= 1)
trigger16 = Var(32)!=0 && (StateNo = 225 && AnimElemTime(2) >= 1)

;-----------------------------------
; ファットブレス
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "FatBrss_x"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemTime(4) >= 1)
trigger3 = MoveContact && (StateNo = 220 && AnimElemTime(7) >= 1)
trigger4 = MoveContact && (StateNo = 230 && AnimElemTime(4) >= 1)
trigger5 = MoveContact && (StateNo = 400 && AnimElemTime(6) >= 1)
trigger6 = MoveContact && (StateNo = 420 && AnimElemTime(7) >= 1)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(7) >= 1)
trigger8 = Var(32)!=0 && (StateNo = 200 && AnimElemTime(2) >= 1)
trigger9 = Var(32)!=0 && (StateNo = 220 && AnimElemTime(2) >= 1)
trigger10 = Var(32)!=0 && (StateNo = 230 && AnimElemTime(2) >= 1)
trigger11 = Var(32)!=0 && (StateNo = 400 && AnimElemTime(2) >= 1)
trigger12 = Var(32)!=0 && (StateNo = 420 && AnimElemTime(2) >= 1)
trigger13 = Var(32)!=0 && (StateNo = 430 && AnimElemTime(2) >= 1)
trigger14 = Var(32)!=0 && (StateNo = 210 && AnimElemTime(2) >= 1)
trigger15 = Var(32)!=0 && (StateNo = 410 && AnimElemTime(2) >= 1)
trigger16 = Var(32)!=0 && (StateNo = 225 && AnimElemTime(2) >= 1)
; 
[State -1]
type = ChangeState
value = 1050
triggerall = Command = "FatBrss_y"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemTime(4) >= 1)
trigger3 = MoveContact && (StateNo = 220 && AnimElemTime(7) >= 1)
trigger4 = MoveContact && (StateNo = 230 && AnimElemTime(4) >= 1)
trigger5 = MoveContact && (StateNo = 400 && AnimElemTime(6) >= 1)
trigger6 = MoveContact && (StateNo = 420 && AnimElemTime(7) >= 1)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(7) >= 1)
trigger8 = Var(32)!=0 && (StateNo = 200 && AnimElemTime(2) >= 1)
trigger9 = Var(32)!=0 && (StateNo = 220 && AnimElemTime(2) >= 1)
trigger10 = Var(32)!=0 && (StateNo = 230 && AnimElemTime(2) >= 1)
trigger11 = Var(32)!=0 && (StateNo = 400 && AnimElemTime(2) >= 1)
trigger12 = Var(32)!=0 && (StateNo = 420 && AnimElemTime(2) >= 1)
trigger13 = Var(32)!=0 && (StateNo = 430 && AnimElemTime(2) >= 1)
trigger14 = Var(32)!=0 && (StateNo = 210 && AnimElemTime(2) >= 1)
trigger15 = Var(32)!=0 && (StateNo = 410 && AnimElemTime(2) >= 1)
trigger16 = Var(32)!=0 && (StateNo = 225 && AnimElemTime(2) >= 1)

;-----------------------------------
; ファットバースト ※
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "FatBrst_x"
triggerall = !NumHelper(1110)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemTime(4) >= 1)
trigger3 = MoveContact && (StateNo = 220 && AnimElemTime(7) >= 1)
trigger4 = MoveContact && (StateNo = 230 && AnimElemTime(4) >= 1)
trigger5 = MoveContact && (StateNo = 400 && AnimElemTime(6) >= 1)
trigger6 = MoveContact && (StateNo = 420 && AnimElemTime(7) >= 1)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(7) >= 1)
trigger8 = Var(32)!=0 && (StateNo = 200 && AnimElemTime(2) >= 1)
trigger9 = Var(32)!=0 && (StateNo = 220 && AnimElemTime(2) >= 1)
trigger10 = Var(32)!=0 && (StateNo = 230 && AnimElemTime(2) >= 1)
trigger11 = Var(32)!=0 && (StateNo = 400 && AnimElemTime(2) >= 1)
trigger12 = Var(32)!=0 && (StateNo = 420 && AnimElemTime(2) >= 1)
trigger13 = Var(32)!=0 && (StateNo = 430 && AnimElemTime(2) >= 1)
trigger14 = Var(32)!=0 && (StateNo = 210 && AnimElemTime(2) >= 1)
trigger15 = Var(32)!=0 && (StateNo = 410 && AnimElemTime(2) >= 1)
trigger16 = Var(32)!=0 && (StateNo = 225 && AnimElemTime(2) >= 1)

[State -1]
type = ChangeState
value = 1150
triggerall = Command = "FatBrst_y"
triggerall = !NumHelper(1110)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemTime(4) >= 1)
trigger3 = MoveContact && (StateNo = 220 && AnimElemTime(7) >= 1)
trigger4 = MoveContact && (StateNo = 230 && AnimElemTime(4) >= 1)
trigger5 = MoveContact && (StateNo = 400 && AnimElemTime(6) >= 1)
trigger6 = MoveContact && (StateNo = 420 && AnimElemTime(7) >= 1)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(7) >= 1)
trigger8 = Var(32)!=0 && (StateNo = 200 && AnimElemTime(2) >= 1)
trigger9 = Var(32)!=0 && (StateNo = 220 && AnimElemTime(2) >= 1)
trigger10 = Var(32)!=0 && (StateNo = 230 && AnimElemTime(2) >= 1)
trigger11 = Var(32)!=0 && (StateNo = 400 && AnimElemTime(2) >= 1)
trigger12 = Var(32)!=0 && (StateNo = 420 && AnimElemTime(2) >= 1)
trigger13 = Var(32)!=0 && (StateNo = 430 && AnimElemTime(2) >= 1)
trigger14 = Var(32)!=0 && (StateNo = 210 && AnimElemTime(2) >= 1)
trigger15 = Var(32)!=0 && (StateNo = 410 && AnimElemTime(2) >= 1)
trigger16 = Var(32)!=0 && (StateNo = 225 && AnimElemTime(2) >= 1)

;-----------------------------------
; ファットフェイク
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "FatFake_a"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemTime(4) >= 1)
trigger3 = MoveContact && (StateNo = 220 && AnimElemTime(7) >= 1)
trigger4 = MoveContact && (StateNo = 230 && AnimElemTime(4) >= 1)
trigger5 = MoveContact && (StateNo = 400 && AnimElemTime(6) >= 1)
trigger6 = MoveContact && (StateNo = 420 && AnimElemTime(7) >= 1)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(7) >= 1)
trigger8 = Var(32)!=0 && (StateNo = 200 && AnimElemTime(2) >= 1)
trigger9 = Var(32)!=0 && (StateNo = 220 && AnimElemTime(2) >= 1)
trigger10 = Var(32)!=0 && (StateNo = 230 && AnimElemTime(2) >= 1)
trigger11 = Var(32)!=0 && (StateNo = 400 && AnimElemTime(2) >= 1)
trigger12 = Var(32)!=0 && (StateNo = 420 && AnimElemTime(2) >= 1)
trigger13 = Var(32)!=0 && (StateNo = 430 && AnimElemTime(2) >= 1)
trigger14 = Var(32)!=0 && (StateNo = 210 && AnimElemTime(2) >= 1)
trigger15 = Var(32)!=0 && (StateNo = 410 && AnimElemTime(2) >= 1)
trigger16 = Var(32)!=0 && (StateNo = 225 && AnimElemTime(2) >= 1)

; ファットレプリカアタック
[State -1]
type = ChangeState
value = 1250
triggerall = Command = "FatFake_b"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && (StateNo = 200 && AnimElemTime(4) >= 1)
trigger3 = MoveContact && (StateNo = 220 && AnimElemTime(7) >= 1)
trigger4 = MoveContact && (StateNo = 230 && AnimElemTime(4) >= 1)
trigger5 = MoveContact && (StateNo = 400 && AnimElemTime(6) >= 1)
trigger6 = MoveContact && (StateNo = 420 && AnimElemTime(7) >= 1)
trigger7 = MoveContact && (StateNo = 430 && AnimElemTime(7) >= 1)
trigger8 = Var(32)!=0 && (StateNo = 200 && AnimElemTime(2) >= 1)
trigger9 = Var(32)!=0 && (StateNo = 220 && AnimElemTime(2) >= 1)
trigger10 = Var(32)!=0 && (StateNo = 230 && AnimElemTime(2) >= 1)
trigger11 = Var(32)!=0 && (StateNo = 400 && AnimElemTime(2) >= 1)
trigger12 = Var(32)!=0 && (StateNo = 420 && AnimElemTime(2) >= 1)
trigger13 = Var(32)!=0 && (StateNo = 430 && AnimElemTime(2) >= 1)
trigger14 = Var(32)!=0 && (StateNo = 210 && AnimElemTime(2) >= 1)
trigger15 = Var(32)!=0 && (StateNo = 410 && AnimElemTime(2) >= 1)
trigger16 = Var(32)!=0 && (StateNo = 225 && AnimElemTime(2) >= 1)

;-----------------------------------
; チェンソーダイブ ※
[State -1]
type = ChangeState
value = 1400
triggerall = Command = "FatBrst_x"
trigger1 = StateType = A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 1280 && AnimElemTime(2) >= 6)

[State -1]
type = ChangeState
value = 1450
triggerall = Command = "FatBrst_y"
trigger1 = StateType = A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 1280 && AnimElemTime(2) >= 6)

;-----------------------------------
;  ファットバウンド※
[State -1]
type = ChangeState
value = 1500
triggerall = Command = "FatBound_a"
trigger1 = StateType = A && (Ctrl = 1 || StateNo = 105)
trigger2 = (StateNo = 1280 && AnimElemTime(2) >= 6)

[State -1]
type = ChangeState
value = 1550
triggerall = Command = "FatBound_b"
trigger1 = StateType = A && (Ctrl = 1 || StateNo = 105)
trigger2 = (StateNo = 1280 && AnimElemTime(2) >= 6)

;-----------------------------------
;怒り 発動
[State -1]
type = Null ;ChangeState
value = 950
triggerall = Command = "axy"
triggerall = Life <= Var(7)
triggerall = NumHelper(8889)=0
triggerall = Var(37)=0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = MoveContact && StateNo = [200,430]
trigger3 = MoveContact && StateNo = 600
trigger4 = MoveContact && StateNo = [700,799]

;-----------------------------------
;ＭＡＸモード 発動
[State 960]
type = Helper
triggerall = NumHelper(8888)=0
trigger1 = Var(32)=0 && Power = 3000
name = "Timer"
id = 8888
stateno = 8888
postype = p1
pos = (-1*(BackEdgeBodyDist+20)),floor(0-(Pos Y))
ownpal = 1

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
; 
[State -1]
type = ChangeState
value = 800
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
trigger1 = Var(30)=0
trigger1 = Command = "ax" && !Command = "axy"
trigger2 = Command = "ax" && !Command = "axy"
trigger2 = P2MoveType != H && !P2StateType = A
trigger2 = Var(30)!=0

;---------------------------------------------------------------------
; 
[State -1]
type = ChangeState
value = 850
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
trigger1 = Var(30)=0
trigger1 = Command = "by" && !Command = "aby"
trigger2 = Command = "by" && !Command = "aby"
trigger2 = P2MoveType != H && !P2StateType = A
trigger2 = Var(30)!=0

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------
;---------------------------------------------------------------------
; 地上ふっとばし攻撃
[State -1]
type = Null ;ChangeState
value = 600
triggerall = Command = "by"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100) & Var(30)=0
trigger2 = StateType = S && (Ctrl = 1 || StateNo = 100) & Var(30)!=0

;---------------------------------------------------------------------
; 空中ふっとばし攻撃
[State -1]
type = Null ;ChangeState
value = 610
triggerall = Command = "by"
triggerall = StateType = A
trigger1 =  Ctrl = 1
trigger2 = MoveContact && StateNo = 500 && Var(32)=2
trigger3 = MoveContact && StateNo = 510 && Var(32)=2
trigger4 = MoveContact && StateNo = 520 && Var(32)=2
trigger5 = MoveContact && StateNo = 530 && Var(32)=2

;---------------------------------------------------------------------
; ガードキャンセルFS
[State -1]
type = ChangeState
value = 4000
triggerall = Var(4) = 1 && StateType != A
triggerall = StateNo = 150 || StateNo = 152
trigger1 =  (Command = "ax" && Power >= 350) || (Command = "FF" && Power >= 250)
trigger1 =  Var(32)=0
trigger2 =  Command = "ax" || Command = "FF"
trigger2 =  Var(32)!=0

;---------------------------------------------------------------------
; ガードキャンセル吹っ飛ばし攻撃
[State -1]
type = ChangeState
value = 4500
triggerall = Command = "by" && ((Power >= 1000 && Var(32)=0) || Var(32)!=0)
triggerall = Var(4) = 1
triggerall = StateNo = 150 || StateNo = 152
trigger1 = Power >= 1000 && StateType != A && Var(32)=0
trigger2 = StateType != A && Var(32)!=0

;=====================================================================
; Dir + Button
;=====================================================================
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
trigger2 = (StateNo = 200 && AnimElemTime(5) >= 2)
trigger3 = (StateNo = 210 && AnimElemTime(6) >= 0)
trigger4 = (StateNo = 400 && AnimElemTime(6) >= 8)

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = 210
triggerall = Command = "a" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemTime(5) >= 2)
trigger3 = (StateNo = 210 && AnimElemTime(6) >= 0)
trigger4 = (StateNo = 400 && AnimElemTime(6) >= 8)

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = 220
triggerall = Command = "y" && !Command = "holddown"
triggerall = P2BodyDist X = [0,32]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = 225
triggerall = Command = "y" && !Command = "holddown"
triggerall = P2BodyDist X != [0,32]
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = 230
triggerall = Command = "b" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown"
trigger1 = StateType = C && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(5) >= 2)
trigger4 = (StateNo = 210 && AnimElemTime(6) >= 0)
trigger5 = MoveContact && (StateNo = 400 && AnimElemTime(6) >= 6)
trigger6 = !MoveContact && (StateNo = 400 && AnimElemTime(6) >= 1)

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 410
triggerall = Command = "a" && Command = "holddown"
trigger1 = StateType = C && Ctrl = 1
trigger2 = StateNo = 100
trigger3 = (StateNo = 200 && AnimElemTime(5) >= 2)
trigger4 = (StateNo = 210 && AnimElemTime(6) >= 2)
trigger5 = (StateNo = 400 && AnimElemTime(7) >= 2)

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 420
triggerall = Command = "y" && Command = "holddown"
trigger1 = StateType = C && Ctrl = 1
trigger2 = StateNo = 100

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 430
triggerall = Command = "b" && Command = "holddown"
trigger1 = StateType = C && Ctrl = 1
trigger2 = StateNo = 100

;---------------------------------------------------------------------
; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,500,500)
triggerall = Command = "x" && StateType = A
trigger1 = StateNo != 105 && Ctrl = 1
trigger2 = MoveContact && StateNo = 510 && Var(32)=2

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,520,520)
triggerall = Command = "y" && StateType = A
trigger1 = StateNo != 105 && Ctrl = 1
trigger2 = MoveContact && StateNo = 500 && Var(32)=2
trigger3 = MoveContact && StateNo = 510 && Var(32)=2

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,510,510)
triggerall = Command = "a" && StateType = A
trigger1 = StateNo != 105 && Ctrl = 1
trigger2 = MoveContact && StateNo = 500 && Var(32)=2

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = IfElse(Var(25) = 0 && Vel X = 0,530,530)
triggerall = Command = "b" && StateType = A
trigger1 = StateNo != 105 && Ctrl = 1
trigger2 = MoveContact && StateNo = 500 && Var(32)=2
trigger3 = MoveContact && StateNo = 510 && Var(32)=2

;---------------------------------------------------------------------
; 
[State -1, 5050] ;Recover near ground
type = ChangeState
triggerall = Stateno = 5050
triggerall = Vel Y > 0 && Pos Y >= -20
triggerall = alive && CanRecover
trigger1 = Var(30)!=0 && Random < 100
value = 5200 ;HITFALL_RECOVER

[State -1, 5050]; Recover in mid air
type = ChangeState
triggerall = Stateno = 5050
triggerall = Vel Y > -1
triggerall = alive && CanRecover
trigger1 = Var(30)!=0 && Random < 100
value = 5210 ;HITFALL_AIRRECOVER