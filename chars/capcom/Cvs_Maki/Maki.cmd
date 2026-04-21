;=====================================================================
;  CMD File For "Genryusai Maki"	                    Made By H"         
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================
;
;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15

command.buffer.time = 1

;-| Super Motions |---------------------------------------------------
[Command]
name = "Ajaratengu_Lv.1"
command = F,D,B,U,F,D,B, x
time = 40

[Command]
name = "Ajaratengu_Lv.1"
command = D,B,U,F,D,B,U, x
time = 40

[Command]
name = "Ajaratengu_Lv.1"
command = B,U,F,D,B,U,F, x
time = 40

[Command]
name = "Ajaratengu_Lv.1"
command = U,B,D,F,U,B,D, x
time = 40

[Command]
name = "Ajaratengu_Lv.1"
command = F,U,B,D,F,U,B, x
time = 40

[Command]
name = "Ajaratengu_Lv.1"
command = D,F,U,B,D,F,U, x
time = 40

[Command]
name = "Ajaratengu_Lv.1"
command = B,D,F,U,B,D,F, x
time = 40

[Command]
name = "Ajaratengu_Lv.1"
command = U,F,D,B,U,F,D, x
time = 40

[Command]
name = "Ajaratengu_Lv.2"
command = F,D,B,U,F,D,B, y
time = 40

[Command]
name = "Ajaratengu_Lv.2"
command = D,B,U,F,D,B,U, y
time = 40

[Command]
name = "Ajaratengu_Lv.2"
command = B,U,F,D,B,U,F, y
time = 40

[Command]
name = "Ajaratengu_Lv.2"
command = U,B,D,F,U,B,D, y
time = 40

[Command]
name = "Ajaratengu_Lv.2"
command = F,U,B,D,F,U,B, y
time = 40

[Command]
name = "Ajaratengu_Lv.2"
command = D,F,U,B,D,F,U, y
time = 40

[Command]
name = "Ajaratengu_Lv.2"
command = B,D,F,U,B,D,F, y
time = 40

[Command]
name = "Ajaratengu_Lv.2"
command = U,F,D,B,U,F,D, y
time = 40

[Command]
name = "Ajaratengu_Lv.3"
command = F,D,B,U,F,D,B, z
time = 40

[Command]
name = "Ajaratengu_Lv.3"
command = D,B,U,F,D,B,U, z
time = 40

[Command]
name = "Ajaratengu_Lv.3"
command = B,U,F,D,B,U,F, z
time = 40

[Command]
name = "Ajaratengu_Lv.3"
command = U,B,D,F,U,B,D, z
time = 40

[Command]
name = "Ajaratengu_Lv.3"
command = F,U,B,D,F,U,B, z
time = 40

[Command]
name = "Ajaratengu_Lv.3"
command = D,F,U,B,D,F,U, z
time = 40

[Command]
name = "Ajaratengu_Lv.3"
command = B,D,F,U,B,D,F, z
time = 40

[Command]
name = "Ajaratengu_Lv.3"
command = U,F,D,B,U,F,D, z
time = 40

[Command]
name = "Bushin Gouraiha_Lv.1"
command = ~D, DF, F, D, DF, x
time = 25

[Command]
name = "Bushin Gouraiha_Lv.2"
command = ~D, DF, F, D, DF, y
time = 25

[Command]
name = "Bushin Gouraiha_Lv.3"
command = ~D, DF, F, D, DF, z
time = 25

[Command]
name = "Tesshinhou_Lv.1"
command = ~D, DF, F, D, DF, a
time = 25

[Command]
name = "Tesshinhou_Lv.2"
command = ~D, DF, F, D, DF, b
time = 25

[Command]
name = "Tesshinhou_Lv.3"
command = ~D, DF, F, D, DF, c
time = 25

;-| Special Motions |-------------------------------------------------
[Command]
name = "Tengu Daoshi_x"
command = ~B, DB, D, DF, x
time = 20

[Command]
name = "Tengu Daoshi_y"
command = ~B, DB, D, DF, y
time = 20

[Command]
name = "Tengu Daoshi_z"
command = ~B, DB, D, DF, z
time = 20

[Command]
name = "Genko_x"
command = ~D, DF, F, x

[Command]
name = "Genko_y"
command = ~D, DF, F, y

[Command]
name = "Genko_z"
command = ~D, DF, F, z

[Command]
name = "Hayagake"
command = ~D, DF, F, a

[Command]
name = "Hayagake"
command = ~D, DF, F, b

[Command]
name = "Hayagake"
command = ~D, DF, F, c

[Command]
name = "Hassoukyaku_x"
command = ~D, DB, B, x

[Command]
name = "Hassoukyaku_y"
command = ~D, DB, B, y

[Command]
name = "Hassoukyaku_z"
command = ~D, DB, B, z

[Command]
name = "Hassoukyaku_a"
command = ~D, DB, B, a

[Command]
name = "Hassoukyaku_b"
command = ~D, DB, B, b

[Command]
name = "Hassoukyaku_c"
command = ~D, DB, B, c

[Command]
name = "Reppukyaku"
command = a+b
time = 1

[Command]
name = "Reppukyaku"
command = b+c
time = 1

[Command]
name = "Reppukyaku"
command = a+c
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

;-| 2/3 Button Combination |------------------------------------------
[Command]
name = "recovery_ground"
command = x+y+z
time = 1

[Command]
name = "Pow-MAX"
command = z+c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1

;-| Dir + Button |----------------------------------------------------
[Command]
name = "GC_Attack"
command = /F,y+b
time = 1

[Command]
name = "GC_fwd"
command = /F,x+a
time = 1

[Command]
name = "GC_back"
command = /B,x+a
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_y"
command = /D,y
time = 1

[Command]
name = "down_z"
command = /D,z
time = 1

[Command]
name = "charge1"
command = /c
time = 1

[Command]
name = "charge2"
command = /z
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

;----------------------------- 方向
[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "downfwd"
command = DF
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "downback"
command = DB
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "upback"
command = UB
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "upfwd"
command = UF
time = 1

[Command]
name = "Not-Neutral"
command = $U
time = 1

[Command]
name = "Not-Neutral"
command = $F
time = 1

[Command]
name = "Not-Neutral"
command = $D
time = 1

[Command]
name = "Not-Neutral"
command = $B
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
trigger1 = var(22)
var(22) = 0

;------------------------ オリジナルコンボ
[State -1]
type = varset
triggerall = RoundState = 2
triggerall = !var(22)
trigger1  = StateNo = 721 && AnimElem = 6,> 0
trigger2  = StateNo = 1131 && AnimElem = 1,> 0 && StateType != A || StateNo = 1132
trigger3  = !var(15) && (StateNo = 1161 && AnimElem = 2,> 0 && StateType != A  || StateNo = 1162)
trigger4  = MoveContact && (StateNo = 1000 || StateNo = 1010 || StateNo = 1020 || StateNo = 1300 || StateNo = 1301 || StateNo = 1450)
var(22) = 4
ignorehitpause = 1

;------------------------ Lv.2スパコンキャンセル
[State -1]
type = varset
triggerall = RoundState = 2
triggerall = !var(22)
triggerall = Var(30) = 1
triggerall = MoveHit
trigger1  = StateNo = 3110
trigger2  = StateNo = 3015
var(22) = -1
ignorehitpause = 1

;------------------------ ダッシュキャンセル
[State -1]
type = varset
triggerall = RoundState = 2
trigger1 = !var(22)
trigger1 = StateNo = 100
var(22) = 1
;------------------------ 必殺技キャンセル
[State -1]
type = varset
triggerall = RoundState = 2
triggerall = !var(22)
triggerall = MoveContact
trigger1  = StateNo = 200 && AnimElem = 2,> 0 || StateNo = 215 || StateNo = 225 || StateNo = 245
trigger2  = StateNo = 400 || StateNo = 410 || StateNo = 430
trigger3  = StateNo = 600 || StateNo = 610 || StateNo = 630
trigger4  = StateNo = 4000 && Time < 3 
trigger5  = StateNo = 52 
var(22) = 2
ignorehitpause = 1
;------------------------ SC・超必キャンセル
[State -1]
type = varset
triggerall = RoundState = 2
triggerall = !var(22)
triggerall  = MoveContact
trigger1  = StateNo = 210 || StateNo = 220 || StateNo = 230 || StateNo = 240 || StateNo = 250 && AnimElem = 6,>0 || StateNo = 255
trigger2  = StateNo = 420 || StateNo = 440 || StateNo = 450
trigger3  = StateNo = 620 || StateNo = 640 || StateNo = 650
var(22) = 3
ignorehitpause = 1

;------------------------ オリジナルコンボ
[State -1]
type = varset
triggerall = RoundState = 2
triggerall = !var(22)
trigger1  = StateType != A && StateNo = [200,719]
var(22) = 5
ignorehitpause = 1

;=====================================================================
; CPU Function
;=====================================================================
;
;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------
; 戯天狗（LV.3）
[State -1,Ajaratengu_Lv.3]
type = ChangeState
value = 3220+(StateType = A)*100
triggerall = Ctrl || (StateType != A && StateNo = 40) ||(var(22)=[1,3]) || (Var(30) = 1 && var(22) = -1)
trigger1 = (Var(30) != [2,6]) && Power >= 3000 && Command = "Ajaratengu_Lv.3"
trigger2 = Var(30) = 3 && Power >= 3000 || (Var(30) = 4 && (Fvar(8) = 1 && (100*life/const(data.life))<30)) || (((Var(30) = 5 && Power >= 1000)||Var(30) = 6) && Fvar(8))
trigger2 = Command = "Ajaratengu_Lv.1" || Command = "Ajaratengu_Lv.2" || Command = "Ajaratengu_Lv.3"

;---------------------------------------------------------------------
; 戯天狗（LV.2）
[State -1,Ajaratengu_Lv.2]
type = ChangeState
value = 3210+(StateType = A)*100
trigger1 = Ctrl || (StateType != A && StateNo = 40) || (var(22)=[1,3]) || (Var(30) = 1 && var(22) = -1)
trigger1 = (Var(30) != [2,6]) && Power >= 2000 
triggerall = Command = "Ajaratengu_Lv.2"  || (Command = "Ajaratengu_Lv.3" && Power < 3000)

;---------------------------------------------------------------------
; 戯天狗（LV.1）
[State -1,Ajaratengu_Lv.1]
type = ChangeState
value = 3200+(StateType = A)*100
triggerall = Ctrl || (StateType != A && StateNo = 40) || (var(22)=[1,3]) || (Var(30) = 1 && var(22) = -1)
triggerall = Var(30) != 3 && Var(30) != 6
trigger1 = Var(30) != 2 && Var(30) != 4 && Power >= 1000
trigger1 = Command = "Ajaratengu_Lv.1" || ((Command = "Ajaratengu_Lv.2" || Command = "Ajaratengu_Lv.3") && Power < 2000)
trigger2 = (Var(30) = 4 && (Fvar(8) = 1 || (100*life/const(data.life))<30)) || (Var(30) = 2 && (Power >= 1500 || Fvar(8))) || (Var(30) = 2 && Fvar(8) && (var(22)=[4,5])) || (Var(30) = 5 && (Power >= 1000 || Fvar(8)))
trigger2 = Command = "Ajaratengu_Lv.1" || Command = "Ajaratengu_Lv.2" || Command = "Ajaratengu_Lv.3"

;---------------------------------------------------------------------
; 鉄心崩（LV.3）
[State -1,Tesshinhou_Lv.3]
type = ChangeState
value =  3020
triggerall = StateType != A
triggerall = Ctrl || (var(22)=[1,3]) || (Var(30) = 1 && var(22) = -1)
trigger1 = (Var(30) != [2,6]) && Power >= 3000 && Command = "Tesshinhou_Lv.3"
trigger2 = Var(30) = 3 && Power >= 3000 || (Var(30) = 4 && (Fvar(8) = 1 && (100*life/const(data.life))<30)) || (((Var(30) = 5 && Power >= 1000)||Var(30) = 6) && Fvar(8))
trigger2 = Command = "Tesshinhou_Lv.1" || Command = "Tesshinhou_Lv.2" || Command = "Tesshinhou_Lv.3"

;---------------------------------------------------------------------
; 鉄心崩（LV.2）
[State -1,Tesshinhou_Lv.2]
type = ChangeState
value =  3010
triggerall = StateType != A
triggerall = Ctrl || (var(22)=[1,3]) || (Var(30) = 1 && var(22) = -1)
trigger1 = (Var(30) != [2,6]) && Power >= 2000
trigger1 = Command = "Tesshinhou_Lv.2" || (Command = "Tesshinhou_Lv.3" && Power < 3000)

;---------------------------------------------------------------------
; 鉄心崩（LV.1）
[State -1,Tesshinhou_Lv.1]
type = ChangeState
value =  3000
triggerall = StateType != A
triggerall = Ctrl || (var(22)=[1,3]) || (Var(30) = 1 && var(22) = -1)
triggerall = Var(30) != 3 && Var(30) != 6
trigger1 = Var(30) != 2 && Var(30) != 4 && Power >= 1000
trigger1 = Command = "Tesshinhou_Lv.1" || ((Command = "Tesshinhou_Lv.2" || Command = "Tesshinhou_Lv.3") && Power < 2000)
trigger2 = (Var(30) = 4 && (Fvar(8) = 1 || (100*life/const(data.life))<30)) || (Var(30) = 2 && (Power >= 1500 || Fvar(8))) || (Var(30) = 2 && Fvar(8) && (var(22)=[4,5])) || (Var(30) = 5 && (Power >= 1000 || Fvar(8)))
trigger2 = Command = "Tesshinhou_Lv.1" || Command = "Tesshinhou_Lv.2" || Command = "Tesshinhou_Lv.3"

;---------------------------------------------------------------------
; 武神剛雷破（LV.3）
[State -1,Bushin Gouraiha_Lv.3]
type = ChangeState
value =  3120
trigger1 = Var(30) = 3 && Power >= 3000 || (Var(30) = 4 && (Fvar(8) && (100*life/const(data.life))<30)) || (((Var(30) = 5 && Power >= 1000)||Var(30) = 6) && Fvar(8))
trigger1 = Command = "Bushin Gouraiha_Lv.1" || Command = "Bushin Gouraiha_Lv.2" || Command = "Bushin Gouraiha_Lv.3"
trigger2 = (Var(30) != [2,6]) && Power >= 3000 && Command = "Bushin Gouraiha_Lv.3"
triggerall = StateType != A
triggerall = Ctrl || (var(22)=[1,3]) || (Var(30) = 1 && var(22) = -1)

;---------------------------------------------------------------------
; 武神剛雷破（LV.2）
[State -1,Bushin Gouraiha_Lv.2]
type = ChangeState
value =  3110
trigger1 = (Var(30) != [2,6]) && Power >= 2000
triggerall = Command = "Bushin Gouraiha_Lv.2" || (Command = "Bushin Gouraiha_Lv.3" && Power < 3000)
trigger1 = StateType != A
trigger1 = Ctrl || (var(22)=[1,3]) || (Var(30) = 1 && var(22) = -1)

;---------------------------------------------------------------------
; 武神剛雷破（LV.1）
[State -1,Bushin Gouraiha_Lv.1]
type = ChangeState
value =  3100
triggerall = StateType != A
triggerall = Ctrl || (var(22)=[1,3]) || (Var(30) = 1 && var(22) = -1)
triggerall = Var(30) != 3 && Var(30) != 6
trigger1 = Var(30) != 2 && Var(30) != 4 && Power >= 1000
trigger1 = Command = "Bushin Gouraiha_Lv.1" || ((Command = "Bushin Gouraiha_Lv.2" || Command = "Bushin Gouraiha_Lv.3") && Power < 2000)
trigger2 = (Var(30) = 4 && (Fvar(8) = 1 || (100*life/const(data.life))<30)) || (Var(30) = 2 && (Power >= 1500 || Fvar(8))) || (Var(30) = 2 && Fvar(8) && (var(22)=[4,5])) || (Var(30) = 5 && (Power >= 1000 || Fvar(8)))
trigger2 = Command = "Bushin Gouraiha_Lv.1" || Command = "Bushin Gouraiha_Lv.2" || Command = "Bushin Gouraiha_Lv.3"

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; 天狗倒し・弱
[State -1,Tengu Daoshi]
type = ChangeState
value = 1500
triggerall= Command = "Tengu Daoshi_x"
triggerall= StateType = A
triggerall = pos y < -15 && var(32) != [2,3]
trigger1 = Ctrl || (var(22)=[1,2]) || (Var(30) = 1 && var(22) = -1)
trigger2 = Var(30) = 2 && Fvar(8) && (var(22)=[3,5])

;---------------------------------------------------------------------
; 天狗倒し・中
[State -1,Tengu Daoshi]
type = ChangeState
value = 1510
triggerall= Command = "Tengu Daoshi_y"
triggerall= StateType = A
triggerall = pos y < -15 && var(32) != [2,3]
trigger1 = Ctrl || (var(22)=[1,2]) || (Var(30) = 1 && var(22) = -1)
trigger2 = Var(30) = 2 && Fvar(8) && (var(22)=[3,5])

;---------------------------------------------------------------------
; 天狗倒し・強
[State -1,Tengu Daoshi]
type = ChangeState
value = 1520
triggerall= Command = "Tengu Daoshi_z"
triggerall= StateType = A
triggerall = pos y < -15 && var(32) != [2,3]
trigger1 = Ctrl || (var(22)=[1,2]) || (Var(30) = 1 && var(22) = -1)
trigger2 = Var(30) = 2 && Fvar(8) && (var(22)=[3,5])

;---------------------------------------------------------------------
; 拳コ・弱
[State -1,Genko]
type = ChangeState
value = 1000
triggerall= Command = "Genko_x"
triggerall= StateType != A
trigger1 = Ctrl || (var(22)=[1,2]) || (Var(30) = 1 && var(22) = -1)
trigger2 = Var(30) = 2 && Fvar(8) && (var(22)=[3,5])

;---------------------------------------------------------------------
; 拳コ・中
[State -1,Genko]
type = ChangeState
value = 1010
triggerall= Command = "Genko_y"
triggerall= StateType != A
trigger1 = Ctrl || (var(22)=[1,2]) || (Var(30) = 1 && var(22) = -1)
trigger2 = Var(30) = 2 && Fvar(8) && (var(22)=[3,5])

;---------------------------------------------------------------------
; 拳コ・強
[State -1,Genko]
type = ChangeState
value = 1020
triggerall= Command = "Genko_z"
triggerall= StateType != A
trigger1 = Ctrl || (var(22)=[1,2]) || (Var(30) = 1 && var(22) = -1)
trigger2 = Var(30) = 2 && Fvar(8) && (var(22)=[3,5])

;---------------------------------------------------------------------
; 疾駆け
[State -1,Hayagake]
type = ChangeState
value = 1100
triggerall= Command = "Hayagake"
triggerall= StateType != A
trigger1 = Ctrl || (var(22)=[1,2]) || (Var(30) = 1 && var(22) = -1)
trigger2 = Var(30) = 2 && Fvar(8) && (var(22)=[3,5])

;---------------------------------------------------------------------
; 逆疾駆け
[State -1,Hayagake]
type = ChangeState
value = 1200
triggerall= Command = "Hassoukyaku_a" || Command = "Hassoukyaku_b" || Command = "Hassoukyaku_c"
triggerall= StateType != A
trigger1 = Ctrl || (var(22)=[1,2]) || (Var(30) = 1 && var(22) = -1)
trigger2 = Var(30) = 2 && Fvar(8) && (var(22)=[3,5])

;---------------------------------------------------------------------
; 八艘脚
;------------------------ パンチ
[State -1,Hassoukyaku]
type = ChangeState
value = IfElse((Command = "Hassoukyaku_y" ),1410,IfElse((Command = "Hassoukyaku_z" ),1415,1400))
triggerall= Command = "Hassoukyaku_x" || Command = "Hassoukyaku_y" || Command = "Hassoukyaku_z"
triggerall= StateType = A
triggerall = pos y < -15 && var(32) != [2,3]
triggerall = backedgebodydist < 5
trigger1 = Ctrl || (var(22)=[1,2]) || (Var(30) = 1 && var(22) = -1)
trigger2 = Var(30) = 2 && Fvar(8) && (var(22)=[3,5])

;------------------------ 弱K
[State -1,Hassoukyaku]
type = ChangeState
value = IfElse((Command = "Hassoukyaku_b" ),1440,IfElse((Command = "Hassoukyaku_c" ),1445,1430))
triggerall= Command = "Hassoukyaku_a" || Command = "Hassoukyaku_b" || Command = "Hassoukyaku_c"
triggerall= StateType = A
triggerall = pos y < -15 && var(32) != [2,3]
trigger1 = backedgebodydist < 5
trigger1 = Ctrl || (var(22)=[1,2]) || (Var(30) = 1 && var(22) = -1)
trigger2 = Var(30) = 2 && Fvar(8) && (var(22)=[3,5])

;---------------------------------------------------------------------
; 烈風脚
[State -1,Reppukyaku]
type = ChangeState
value = 1300
triggerall= Command = "Reppukyaku"
triggerall= StateType != A
triggerall = Life > 1
trigger1 = Ctrl || (var(22)=[1,2]) || (Var(30) = 1 && var(22) = -1)
trigger2 = Var(30) = 2 && Fvar(8) && (var(22)=[3,5])

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;ステップ
[State -1]
type = ChangeState
value = 110
triggerall = var(30) = 1 || var(30) = 2 || var(30) = 3
trigger1 = Command = "FF" && StateType = S && Ctrl && StateNo != 100

;---------------------------------------------------------------------
;ラン
[State -1]
type = ChangeState
value = 100
triggerall = var(30) = 0 || var(30) = 4 || var(30) = 5 || var(30) = 6
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
; 猪狩（Ｐ通常投げ）
[State -1]
type = ChangeState
value = 800
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_z" && P2BodyDist X < 55
trigger2 = Command = "back_z" && P2BodyDist X < 20

;---------------------------------------------------------------------
; 膝かまし（Ｋ通常投げ）
[State -1]
type = ChangeState
value = 850
triggerall = StateNo != 100 && StateType = S && Ctrl = 1
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_c" && P2BodyDist X < 30
trigger2 = Command = "back_c" && P2BodyDist X < 20

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------

;---------------------------------------------------------------------
; 回り込み
[State -1]
type = ChangeState
value = 4000
triggerall = Command = "recovery" && (var(30)=1 || var(30)=2 || var(30)=5)
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 101)

;---------------------------------------------------------------------
; 避け
[State -1]
type = ChangeState
value = 4010
triggerall = Command = "recovery" && var(30)=4
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------
; カウンター攻撃
;------------------------パンチ
[State -1]
type = ChangeState
value = 4020
triggerall = Command = "x" || Command = "y" || Command = "z"
trigger1 = StateNo = 4010
trigger1 = AnimElem = 3,>1

;------------------------キック
[State -1]
type = ChangeState
value = 4025
triggerall = Command = "a" || Command = "b" || Command = "c"
trigger1 = StateNo = 4010
trigger1 = Time = [14,23]

;---------------------------------------------------------------------
; パワー溜め動作
[State -1]
type = ChangeState
value = 4100
triggerall = command = "charge1" && command = "charge2" && fvar(8)!
triggerall = statetype != A && var(30)=4 && fvar(7) <100
trigger1 = ctrl

;---------------------------------------------------------------------
; パワーMAX発動
[State -1]
type = ChangeState
value = 4150
triggerall = command = "Pow-MAX"
triggerall = statetype != A && var(30)=5 && Power >= 1000 && fvar(8)!
trigger1 = ctrl

;---------------------------------------------------------------------
; オリコン発動
;------------------- 地上
[State -1]
type = ChangeState
value = 4200
triggerall = command = "Pow-MAX"
triggerall = statetype != A && var(30)=2 && Power >= 3000 && fvar(8)!
trigger1 = ctrl

;------------------- 空中
[State -1]
type = ChangeState
value = 4210
triggerall = command = "Pow-MAX"
triggerall = statetype = A && var(30)=2 && Power >= 3000 && fvar(8)!
trigger1 = ctrl

;---------------------------------------------------------------------
; ダウン回避
[State -1]
type = ChangeState
value = 5201
triggerall = command = "recovery_ground"
triggerall = var(30) = 2 || var(30) = 5 || var(30) = 6
triggerall = alive
triggerall = CanRecover
trigger1 = StateNo = 5100

;---------------------------------------------------------------------
; ガードキャンセル攻撃
[State -1]
type = ChangeState
value = 4500
triggerall = Command = "GC_Attack"
triggerall = (StateNo = 150 || StateNo = 152) && StateType != A
triggerall = Var(30) = 1 || Var(30) = 2|| Var(30) = 4 || Var(30) = 5
trigger1 = Var(30) != 2 && Power >= 1000
trigger2 = (Var(30) = 4 && Fvar(8) = 1) || (Var(30) = 2 && Power >= 1500)

;---------------------------------------------------------------------
; ガードキャンセル移動
[State -1]
type = ChangeState
value = IfElse((Command = "GC_back"),4520,4510)
triggerall = Command = "GC_fwd" || Command = "GC_back"
triggerall = (StateNo = 150 || StateNo = 152) && StateType != A
trigger1 = (Var(30) = 5 && (Fvar(8) = 1 || Power >= 1000)) 

;=====================================================================
; Dir + Button
;=====================================================================
;---------------------------------------------------------------------
; 肘落とし
[State -1]
type = ChangeState
value = 700
triggerall = Command = "down_y" && StateType = A
triggerall = Ctrl || (Var(30) = 2 && var(22) = 4)
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; 武神獄鎖拳
;------------------------中P
[State -1]
type = ChangeState
value = 710
triggerall = Command = "y"
trigger1 = Movecontact && StateNo = 200
trigger1 = AnimElem = 2,> 0 && AnimElem = 3,< 0

;------------------------強P
[State -1]
type = ChangeState
value = 711
triggerall = Command = "z"
trigger1 = Movecontact && StateNo = 710
trigger1 = AnimElem = 2,> 0 && AnimElem = 3,< 0

;------------------------強K
[State -1]
type = ChangeState
value = 712
triggerall = Command = "c"
trigger1 = Movecontact && StateNo = 711

;------------------------↓強P
[State -1]
type = ChangeState
value = 720
triggerall = Command = "down_z"
trigger1 = Movecontact && StateNo = 711

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
trigger1 = Ctrl || (Var(30) = 2 && Fvar(8) && (var(22)=[3,4]))

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; 弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = Command = "x" && !Command = "holddown"
trigger1 = StateType != A && (Ctrl || var(22) = 1 || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5)))
trigger2  = (StateNo = 200 && AnimElem = 3,> 0)
trigger3  = (StateNo = 400 && AnimElem = 3,> 0)

;---------------------------------------------------------------------
; 中パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 15,215,210)
triggerall = Command = "y" && !Command = "holddown"
trigger1 = StateType != A && (Ctrl || var(22) = 1 || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5)))

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 20,225,220)
triggerall = Command = "z" && !Command = "holddown"
trigger1 = StateType != A && (Ctrl || var(22) = 1 || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5)))

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = 230
triggerall = Command = "a" && !Command = "holddown"
trigger1 = StateType != A && (Ctrl || var(22) = 1 || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5)))
trigger2  = (StateNo = 200 && AnimElem = 3,> 0)
trigger3  = (StateNo = 400 && AnimElem = 3,> 0)

;---------------------------------------------------------------------
; 中キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 20,245,240)
triggerall = Command = "b" && !Command = "holddown"
trigger1 = StateType != A && (Ctrl || var(22) = 1 || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5)))

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 5,255,250)
triggerall = Command = "c" && !Command = "holddown"
trigger1 = StateType != A && (Ctrl || var(22) = 1 || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5)))

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown" && StateType != A
trigger1 = StateType != A && (Ctrl || var(22) = 1 || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5)))
trigger2  = (StateNo = 200 && AnimElem = 3,> 0)
trigger3  = (StateNo = 400 && AnimElem = 3,> 0)

;---------------------------------------------------------------------
; しゃがみ中パンチ
[State -1]
type = ChangeState
value = 410
triggerall = Command = "y" && Command = "holddown" && StateType != A
trigger1 = StateType != A && (Ctrl || var(22) = 1 || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5)))

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 420
triggerall = Command = "z" && Command = "holddown" && StateType != A
trigger1 = StateType != A && (Ctrl || var(22) = 1 || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5)))

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = Command = "a" && Command = "holddown" && StateType != A
trigger1 = StateType != A && (Ctrl || var(22) = 1 || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5)))
trigger2  = (StateNo = 200 && AnimElem = 3,> 0)
trigger3  = (StateNo = 400 && AnimElem = 3,> 0)

;---------------------------------------------------------------------
; しゃがみ中キック
[State -1]
type = ChangeState
value = 440
triggerall = Command = "b" && Command = "holddown" && StateType != A
trigger1 = StateType != A && (Ctrl || var(22) = 1 || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5)))

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 450
triggerall = Command = "c" && Command = "holddown" && StateType != A
trigger1 = StateType != A && (Ctrl || var(22) = 1 || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5)))

;---------------------------------------------------------------------
; ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600
triggerall = Command = "x" && StateType = A
triggerall = StateNo != 105
trigger1 = Ctrl || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5))

;---------------------------------------------------------------------
; ジャンプ中パンチ
[State -1]
type = ChangeState
value = 610
triggerall = Command = "y" && StateType = A
triggerall = StateNo != 105
trigger1 = Ctrl || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5))

;---------------------------------------------------------------------
; ジャンプ強パンチ
[State -1]
type = ChangeState
value = 620
triggerall = Command = "z" && StateType = A
triggerall = StateNo != 105
trigger1 = Ctrl || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5))

;---------------------------------------------------------------------
; ジャンプ弱キック
[State -1]
type = ChangeState
value = 630
triggerall = Command = "a" && StateType = A
triggerall = StateNo != 105
trigger1 = Ctrl || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5))

;---------------------------------------------------------------------
; ジャンプ中キック
[State -1]
type = ChangeState
value = 640
triggerall = Command = "b" && StateType = A
triggerall = StateNo != 105
trigger1 = Ctrl || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5))

;---------------------------------------------------------------------
; ジャンプ強キック
[State -1]
type = ChangeState
value = 650
triggerall = Command = "c" && StateType = A
triggerall = StateNo != 105
trigger1 = Ctrl || (Var(30) = 2 && fvar(8) && ((var(22)=[2,4]) || MoveContact && var(22)=5))