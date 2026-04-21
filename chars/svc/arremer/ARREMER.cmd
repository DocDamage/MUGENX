;=====================================================================
;  CMD File For "ARREMER"	                           Made By H"
;                                       Ver. 0.80           
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================

;-| Super Motions |---------------------------------------------------
[Command]
name = "Time"
command = ~D, F, D, F, a
time = 26

[Command]
name = "Time"
command = ~D, F, D, F, b
time = 26

;-| Special Motions |-------------------------------------------------

[Command]
name = "Death canon"
command = ~F, B, D, F, x
time = 22

[Command]
name = "Death canon"
command = ~F, B, D, F, y
time = 22

[Command]
name = "Demon_x"
command = ~F, D, DF, x

[Command]
name = "Demon_y"
command = ~F, D, DF, y

[Command]
name = "Hellhunter"
command = ~F, D, DF, a

[Command]
name = "Hellhunter"
command = ~F, D, DF, b

[Command]
name = "Fireball_x"
command = ~D, DF, F, x

[Command]
name = "Fireball_y"
command = ~D, DF, F, y

[Command]
name = "Zombie1"
command = ~D, DF, F, a

[Command]
name = "Zombie"
command = ~D, DF, F, b

[Command]
name = "Devil"
command = ~D, DF, F, a

[Command]
name = "Devil"
command = ~D, DF, F, b

[Command]
name = "Hellhunter(air)_a"
command = ~D, DB, B, a

[Command]
name = "Hellhunter(air)_b"
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
name = "Armor-Mode"
command = y+a+b
time = 1

[Command]
name = "Counter-Mode"
command = x+y+a
time = 1

[Command]
name = "Power-Max"
command = a+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1

[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "by"
command = b+y
time = 1

[Command]
name = "by"
command = c
time = 1

;-| Dir + Button |----------------------------------------------------
[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "Tsubame Yoku"
command = /F,x
time = 1

[Command]
name = "Senkai Kyaku"
command = /F,a
time = 1

[Command]
name = "Enyoku"
command = /DF,a
time = 1

[Command]
name = "Upward Kick"
command = /DF,b
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
; CPU Function
;=====================================================================
;
;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------
; サパータイム（MAX2）
[State -1]
type = ChangeState
value = 3000
triggerall= Command = "Time" && Life <= 250
triggerall = (Power >= 3000 && var(38) = 0 && var(25)=0) || (Power >= 1000 && var(38) = 1 && Fvar(3) > 0)
triggerall = var(25) != 1
trigger1 = StateType != A && (Ctrl || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))
trigger2  = MoveType = A && ((StateNo = [210,211]) || (StateNo = [410,411]) ||  StateNo = 230 || StateNo = 240)
trigger3  = MoveContact && (StateNo = 200 || StateNo = 400 || StateNo = 430)

;------------------------ EXCEED
[State -1]
type = ChangeState
value = 3000
triggerall= Command = "Time" && Life <= 500 && Var(37) = 0 && var(38) = 2
trigger1 = StateType != A && (Ctrl || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))
trigger2  = MoveType = A && ((StateNo = [210,211]) || (StateNo = [410,411]) ||  StateNo = 230 || StateNo = 240)
trigger3  = MoveContact =0 && (StateNo = 200 || StateNo = 400 || StateNo = 430)

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; デスキャノン
[State -1]
type = ChangeState
value = 1300
triggerall = command = "Death canon"
triggerall = NumProjid(1305)=0
trigger1 = StateType != A && (Ctrl || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))
trigger2  = MoveType = A && ((StateNo = [210,211]) || (StateNo = [410,411]) ||  StateNo = 230 || StateNo = 240)
trigger3  = MoveContact && (StateNo = 200 || StateNo = 400 || StateNo = 430)

;------------------------ どこでもキャンセル
[State -1]
type = ChangeState
value = 1300
triggerall = command = "Death canon"
triggerall = NumProjid(1305)=0
triggerall= StateType != A
triggerall= Fvar(3) > 0 && var(25) = 3
trigger1  = MoveContact =0  && MoveType = A && (StateNo = 200 || StateNo = 400 || StateNo = 430)
trigger2  = MoveType = A && StateNo = 440
trigger3  = MoveContact && (StateNo=[1150,1160])

;---------------------------------------------------------------------
; デーモンピラー・弱
[State -1]
type = ChangeState
value = 1200
triggerall = command = "Demon_x"
triggerall = NumProjid(1205)=0 && NumProjid(1206)=0
trigger1 = StateType != A && (Ctrl || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))
trigger2  = MoveType = A && ((StateNo = [210,211]) || (StateNo = [410,411]) ||  StateNo = 230 || StateNo = 240)
trigger3  = MoveContact && (StateNo = 200 || StateNo = 400 || StateNo = 430)

;------------------------ どこでもキャンセル
[State -1]
type = ChangeState
value = 1200
triggerall = command = "Demon_x"
triggerall = NumProjid(1205)=0 && NumProjid(1206)=0
triggerall= StateType != A
triggerall= Fvar(3) > 0 && var(25) = 3
trigger1  = MoveContact =0  && MoveType = A && (StateNo = 200 || StateNo = 400 || StateNo = 430)
trigger2  = MoveType = A && StateNo = 440
trigger3  = MoveContact && (StateNo=[1150,1160])

;---------------------------------------------------------------------
; デーモンピラー・強
[State -1]
type = ChangeState
value = 1210
triggerall = command = "Demon_y"
triggerall = NumProjid(1205)=0 && NumProjid(1206)=0
trigger1 = StateType != A && (Ctrl || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))
trigger2  = MoveType = A && ((StateNo = [210,211]) || (StateNo = [410,411]) ||  StateNo = 230 || StateNo = 240)
trigger3  = MoveContact && (StateNo = 200 || StateNo = 400 || StateNo = 430)

;------------------------ どこでもキャンセル
[State -1]
type = ChangeState
value = 1210
triggerall = command = "Demon_y"
triggerall = NumProjid(1205)=0 && NumProjid(1206)=0
triggerall= StateType != A
triggerall= Fvar(3) > 0 && var(25) = 3
trigger1  = MoveContact =0  && MoveType = A && (StateNo = 200 || StateNo = 400 || StateNo = 430)
trigger2  = MoveType = A && StateNo = 440
trigger3  = MoveContact && (StateNo=[1150,1160])

;---------------------------------------------------------------------
; ヘルハンター（地上）
[State -1]
type = ChangeState
value = 1100
triggerall = command = "Hellhunter"
trigger1 = StateType != A && (Ctrl || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))
trigger2  = MoveType = A && ((StateNo = [210,211]) || (StateNo = [410,411]) ||  StateNo = 230 || StateNo = 240)
trigger3  = MoveContact && (StateNo = 200 || StateNo = 400 || StateNo = 430)

;------------------------ どこでもキャンセル
[State -1]
type = ChangeState
value = 1100
triggerall = command = "Hellhunter"
triggerall= StateType != A
triggerall= Fvar(3) > 0 && var(25) = 3
trigger1  = MoveContact =0 && MoveType = A && (StateNo = 200 || StateNo = 400 || StateNo = 430)
trigger2  = MoveType = A && StateNo = 440
trigger3  = MoveContact && (StateNo=[1150,1160])

;---------------------------------------------------------------------
; ヘルハンター（空中）・弱
[State -1]
type = ChangeState
value = 1150
triggerall = command = "Hellhunter(air)_a"
trigger1 = StateType != A && (Ctrl || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))
trigger2  = MoveType = A && ((StateNo = [210,211]) || (StateNo = [410,411]) ||  StateNo = 230 || StateNo = 240)
trigger3  = MoveContact && (StateNo = 200 || StateNo = 400 || StateNo = 430)

;------------------------ どこでもキャンセル
[State -1]
type = ChangeState
value = 1150
triggerall = command = "Hellhunter(air)_a"
triggerall= StateType != A
triggerall= Fvar(3) > 0 && var(25) = 3
trigger1  = MoveContact =0  && MoveType = A && (StateNo = 200 || StateNo = 400 || StateNo = 430)
trigger2  = MoveType = A && StateNo = 440
trigger3  = MoveContact && (StateNo=[1150,1160])

;---------------------------------------------------------------------
; ヘルハンター（空中）・強
[State -1]
type = ChangeState
value = 1160
triggerall = command = "Hellhunter(air)_b"
trigger1 = StateType != A && (Ctrl || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))
trigger2  = MoveType = A && ((StateNo = [210,211]) || (StateNo = [410,411]) ||  StateNo = 230 || StateNo = 240)
trigger3  = MoveContact && (StateNo = 200 || StateNo = 400 || StateNo = 430)

;------------------------ どこでもキャンセル
[State -1]
type = ChangeState
value = 1160
triggerall = command = "Hellhunter(air)_b"
triggerall= StateType != A
triggerall= Fvar(3) > 0 && var(25) = 3
trigger1  = MoveContact =0 && MoveType = A && (StateNo = 200 || StateNo = 400 || StateNo = 430)
trigger2  = MoveType = A && StateNo = 440
trigger3  = MoveContact && (StateNo=[1150,1160])

;---------------------------------------------------------------------
; ファイアーボール（地上）・弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Fireball_x"
triggerall = NumProjid(1050)=0
trigger1 = StateType != A && (Ctrl || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))
trigger2  = MoveType = A && ((StateNo = [210,211]) || (StateNo = [410,411]) ||  StateNo = 230 || StateNo = 240)
trigger3  = MoveContact && (StateNo = 200 || StateNo = 400 || StateNo = 430)

;------------------------ どこでもキャンセル
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Fireball_x"
triggerall = NumProjid(1050)=0
triggerall= StateType != A
triggerall= Fvar(3) > 0 && var(25) = 3
trigger1  = MoveContact =0 && MoveType = A && (StateNo = 200 || StateNo = 400 || StateNo = 430)
trigger2  = MoveType = A && StateNo = 440
trigger3  = MoveContact && (StateNo=[1150,1160])

;---------------------------------------------------------------------
; ファイアーボール（地上）・強
[State -1]
type = ChangeState
value = 1005
triggerall = command = "Fireball_y"
triggerall = NumProjid(1050)=0
trigger1 = StateType != A && (Ctrl || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))
trigger2  = MoveType = A && ((StateNo = [210,211]) || (StateNo = [410,411]) ||  StateNo = 230 || StateNo = 240)
trigger3  = MoveContact && (StateNo = 200 || StateNo = 400 || StateNo = 430)

;------------------------ どこでもキャンセル
[State -1]
type = ChangeState
value = 1005
triggerall = command = "Fireball_y"
triggerall = NumProjid(1050)=0
triggerall= StateType != A
triggerall= Fvar(3) > 0 && var(25) = 3
trigger1  = MoveContact =0 && MoveType = A && (StateNo = 200 || StateNo = 400 || StateNo = 430)
trigger2  = MoveType = A && StateNo = 440
trigger3  = MoveContact && (StateNo=[1150,1160])

;---------------------------------------------------------------------
; ゾンビ
[State -1,1]
type = ChangeState
value = 1500
triggerall = command = "Zombie"
triggerall = NumProjid(1500)=0
triggerall = Numhelper(1500)=0
trigger1 = StateType != A && (Ctrl || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))
trigger2  = MoveType = A && ((StateNo = [210,211]) || (StateNo = [410,411]) ||  StateNo = 230 || StateNo = 240)
trigger3  = MoveContact && (StateNo = 200 || StateNo = 400 || StateNo = 430)

;------------------------ どこでもキャンセル
[State -1]
type = ChangeState
value = 1500
triggerall = command = "Zombie"
triggerall = NumProjid(1500)=0
triggerall = Numhelper(1500)=0
triggerall= StateType != A
triggerall= Fvar(3) > 0 && var(25) = 3
trigger1  = MoveContact =0 && MoveType = A && (StateNo = 200 || StateNo = 400 || StateNo = 430)
trigger2  = MoveType = A && StateNo = 440
trigger3  = MoveContact && (StateNo=[1150,1160])

;---------------------------------------------------------------------
; ウッディピッグ
[State -1,1]
type = ChangeState
value = 1550
triggerall = command = "Zombie1"
triggerall = NumProjid(1550)=0
triggerall = NumProjid(1560)=0
trigger1 = StateType != A && (Ctrl || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))
trigger2  = MoveType = A && ((StateNo = [210,211]) || (StateNo = [410,411]) ||  StateNo = 230 || StateNo = 240)
trigger3  = MoveContact && (StateNo = 200 || StateNo = 400 || StateNo = 430)

;------------------------ どこでもキャンセル
[State -1]
type = ChangeState
value = 1550
triggerall = command = "Zombie1"
triggerall = NumProjid(1550)=0
triggerall = NumProjid(1560)=0
triggerall= StateType != A
triggerall= Fvar(3) > 0 && var(25) = 3
trigger1  = MoveContact =0 && MoveType = A && (StateNo = 200 || StateNo = 400 || StateNo = 430)
trigger2  = MoveType = A && StateNo = 440
trigger3  = MoveContact && (StateNo=[1150,1160])

;---------------------------------------------------------------------
; ファイアーボール（空中）・弱
[State -1]
type = ChangeState
value = 1010
triggerall = command = "Fireball_x"
triggerall = NumProjid(1060)=0
trigger1 = StateType = A && Ctrl
trigger2 = (StateNo = 1150 || StateNo = 1160) && StateType = A
trigger2 = AnimElem = 27,> 0 && AnimElem = 30,< 0

;---------------------------------------------------------------------
; ファイアーボール（空中）・強
[State -1]
type = ChangeState
value = 1015
triggerall = command = "Fireball_y"
triggerall = NumProjid(1060)=0
trigger1 = StateType = A && Ctrl
trigger2 = (StateNo = 1150 || StateNo = 1160) && StateType = A
trigger2 = AnimElem = 27,> 0 && AnimElem = 30,< 0

;---------------------------------------------------------------------
; プチデビル
[State -1]
type = ChangeState
value = 1400
triggerall = command = "Devil"
triggerall = NumProjid(1060)=0
trigger1 = StateType = A && Ctrl
trigger2 = (StateNo = 1150 || StateNo = 1160) && StateType = A
trigger2 = AnimElem = 27,> 0 && AnimElem = 30,< 0

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
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
; 通常投げ
[State -1]
type = ChangeState
value = 800
triggerall = StateType = S && Ctrl
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "recovery" || Command = "by"

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------

;---------------------------------------------------------------------
; ガードキャンセルグランドフロントステップ
[State -1]
type = ChangeState
value = 4100
triggerall = (Command = "Power-Max" || Command = "FF")
triggerall = (Power >= 600 || (var(38) = 2 && Fvar(3) > 0)) && StateType != A
trigger1 = (StateNo = 150 || StateNo = 151 || StateNo = 152 || StateNo = 153)

;---------------------------------------------------------------------
; ガードキャンセル吹っ飛ばし攻撃
[State -1]
type = ChangeState
value = 4500
triggerall = Command = "by"
triggerall = (Power >= 1000 || (var(38) = 2 && Fvar(3) > 0)) && StateType != A
trigger1 = (StateNo = 150 || StateNo = 152)

;=====================================================================
; Dir + Button
;=====================================================================

;---------------------------------------------------------------------
; 三角跳び
[State -1]
type = ChangeState
value = 53
triggerall = StateNo = 50 && StateNo != 53
triggerall = pos y < -12 && PrevStateNo != 53
trigger1 = command = "holdupfwd" && backedgebodydist < 3
trigger2 = command = "holdupback" && frontedgebodydist < 3

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = StateType != A && Ctrl = 1

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; 弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = Command = "x" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))
trigger2  = (StateNo = 200 && AnimElem = 4,> 0)

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = 230
triggerall = Command = "a" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = 210
triggerall = Command = "y" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = 240
triggerall = Command = "b" && !Command = "holddown"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x" && Command = "holddown"
trigger1 = StateType = C && (Ctrl || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))
trigger2  = (StateNo = 400 && AnimElem = 4,> 0)

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 410
triggerall = Command = "y" && Command = "holddown"
trigger1 = StateType = C && (Ctrl || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = Command = "a" && Command = "holddown"
trigger1 = StateType = C && (Ctrl || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))
trigger2  = (StateNo = 430 && AnimElem = 3,> 0)

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 440
triggerall = Command = "b" && Command = "holddown"
trigger1 = StateType = C && (Ctrl || StateNo = 100 || (StateNo = 4100 && AnimElem = 3,> 0))
trigger2  = (StateNo = 210 && AnimElem = 3,> 0) || StateNo = 211
trigger3  = (StateNo = 410 && AnimElem = 3,> 0) || StateNo = 411
trigger4  = MoveContact
trigger4  = StateNo = 200 || StateNo = 230 || StateNo = 400 || StateNo = 430

;---------------------------------------------------------------------
; ジャンプ弱攻撃
[State -1]
type = ChangeState
value = 600
triggerall = Command = "x" || Command = "a"
triggerall = StateType = A && StateNo != 105
trigger1 = Ctrl

;---------------------------------------------------------------------
; ジャンプ強攻撃
[State -1]
type = ChangeState
value = 610
triggerall = Command = "y" || Command = "b"
triggerall = StateType = A && StateNo != 105
trigger1 = Ctrl


