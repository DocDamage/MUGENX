;=====================================================================
;  CMD File For "Goketuji UME&TANE"			Made By H"
;                                       Ver. 0.91           
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================

;-| Super Motions |---------------------------------------------------

[Command]
name = "GoketuRyu-IkakuGan2"
command = ~D, F, D, F, D, F, y
time = 30

[Command]
name = "Shinra-Kyo(UME)"
command = ~DB, DF, B, F, x+y
time = 26

[Command]
name = "Shinra-Kyo(TANE)"
command = ~B, DB, B, F, y
time = 26

[Command]
name = "GoketuRyu-IkakuGan_x"
command = ~F, B, DB, D, DF, F, x
time = 26

[Command]
name = "GoketuRyu-IkakuGan_y"
command = ~D, F, D, F, y
time = 26

[Command]
name = "GoketuRyu-Oganda_x"
command = ~D, F, D, F, x
time = 26

[Command]
name = "GoketuRyu-Oganda_a"
command = ~D, F, D, F, a
time = 26

[Command]
name = "GoketuRyu-Oganda_y"
command = ~D, F, D, F, y
time = 26

[Command]
name = "GoketuRyu-Oganda_b"
command = ~D, F, D, F, b
time = 26

;-| Special Motions |-------------------------------------------------
[Command]
name = "Seiryu-RanbuDan(TANE)"
command = ~F, DF, D, DB, B, F, x
time = 22

[Command]
name = "Seiryu-RanbuDan(TANE)"
command = ~F, DF, D, DB, B, F, y
time = 22

[Command]
name = "Seiryu-RanbuDan(UME)_x"
command = ~F, DF, D, DB, B, x
time = 20

[Command]
name = "Seiryu-RanbuDan(UME)_y"
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "Ikaku-Gan(TANE)_a"
command = ~30$B,$F, a
time = 20

[Command]
name = "Ikaku-Gan(TANE)_b"
command = ~30$B,$F, b
time = 20

[Command]
name = "Ikaku-Gan(UME)_x"
command = ~F, D, DF, x

[Command]
name = "Ikaku-Gan(UME)_y"
command = ~F, D, DF, y

[Command]
name = "KOU-Shiki.GanShaiHa_x"
command = ~30$B,$F, x
time = 20

[Command]
name = "KOU-Shiki.GanShaiHa_y"
command = ~30$B,$F, y
time = 20

[Command]
name = "Tenbu-Kyaku(TANE)_a"
command = ~30$D,$U, a
time = 20

[Command]
name = "Tenbu-Kyaku(TANE)_b"
command = ~30$D,$U, b
time = 20

[Command]
name = "GanShaiHa_x"
command = ~D, DF, F, x

[Command]
name = "GanShaiHa_y"
command = ~D, DF, F, y

[Command]
name = "Tenbu-Kyaku(UME)_a"
command = ~D, DF, F, a

[Command]
name = "Tenbu-Kyaku(UME)_b"
command = ~D, DF, F, b

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
name = "down_a"
command = /D,a
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
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

[Command]
name = "holdupfwd"
command = /UF
time = 1

[Command]
name = "holdupback"
command = /UB
time = 1

[Command]
name = "holddownfwd"
command = /DF
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]

;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------
; 豪血流御顔打（禁じ手）
[State -1]
type = ChangeState
value = 3400
triggerall = Command = "GoketuRyu-IkakuGan2" && var(39)!=2
triggerall = power >= 3000 && NumProj = 0 && NumHelper(3250) = 0 && NumProj = 0
trigger1 = StateType != A && (ctrl || StateNo = [100,101])
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 豪血流威嚇顔（禁じ手）
[State -1]
type = ChangeState
value = 3500
triggerall = (Command = "GoketuRyu-IkakuGan2" && var(39)!=1)
triggerall = NumHelper(3250) = 0  && NumProj = 0 && power >= 3000 && var(39)!=1
trigger1 = StateType != A && (ctrl || StateNo = [100,101])
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 森羅鏡（お梅）
[State -1]
type = ChangeState
value = 3300
triggerall = Command = "Shinra-Kyo(TANE)" && var(39)!=1
triggerall = power >= 2000 && NumHelper(3250) = 0  && NumProj = 0
trigger1 = StateType != A && (ctrl || StateNo = [100,101])
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 森羅鏡（お梅）
[State -1]
type = ChangeState
value = 3200
triggerall = Command = "Shinra-Kyo(UME)" && var(39)!=2
triggerall = power >= 2000 && NumHelper(3250) = 0  && NumProj = 0
trigger1 = StateType != A && (ctrl || StateNo = [100,101])
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 豪血流威嚇顔（ストレスシュート）
[State -1]
type = ChangeState
value = 3100
triggerall = (Command = "GoketuRyu-IkakuGan_y" && var(39)!=1) || (Command = "GoketuRyu-IkakuGan_x" && var(39)=0)
triggerall = NumHelper(3250) = 0  && NumProj = 0 && power >= 1000 && var(39)!=1
trigger1 = StateType != A && (ctrl || StateNo = [100,101])
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 豪血流御顔打（ストレスシュート）
[State -1,VarSet(24)]
type = VarSet
var(24) = IfElse((Command = "GoketuRyu-Oganda_x"),1,IfElse((Command = "GoketuRyu-Oganda_a"),2,IfElse((Command = "GoketuRyu-Oganda_y"),3,4)))
triggerall = Command = "GoketuRyu-Oganda_x" || Command = "GoketuRyu-Oganda_a" || Command = "GoketuRyu-Oganda_y" || Command = "GoketuRyu-Oganda_b"
triggerall = StateNo != 3000 && power >= 1000 && var(39)!=2 && RoundState = 2
trigger1 = StateType != A && (ctrl || StateNo = [100,101])
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;------------------------
[State -1]
type = ChangeState
value = 3000
triggerall = Command = "GoketuRyu-Oganda_x" || Command = "GoketuRyu-Oganda_a" || Command = "GoketuRyu-Oganda_y" || Command = "GoketuRyu-Oganda_b"
triggerall = power >= 1000 && var(39)!=2 && RoundState = 2
trigger1 = StateType != A && (ctrl || StateNo = [100,101])
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; 星流乱舞弾（お種）
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "Seiryu-RanbuDan(TANE)" && var(39)=0
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 星流乱舞弾（お梅）・弱
[State -1]
type = ChangeState
value = IfElse(var(39)=2,1100,1000)
triggerall = Command = "Seiryu-RanbuDan(UME)_x"
triggerall = StateType != A && NumHelper(3250) = 0  && NumProj = 0
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 星流乱舞弾（お梅）・強
[State -1]
type = ChangeState
value = IfElse(var(39)=2,1100,1010)
triggerall = Command = "Seiryu-RanbuDan(UME)_y"
triggerall = StateType != A && NumHelper(3250) = 0  && NumProj = 0
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 威嚇顔（お梅）・ダッシュ
[State -1]
type = ChangeState
value = 1320
triggerall = var(39)!=2
triggerall = Command = "Ikaku-Gan(UME)_x" || Command = "Ikaku-Gan(UME)_y"
trigger1 = StateNo = [100,101]
trigger2 = MoveContact && StateNo = [300,310]

;---------------------------------------------------------------------
; 威嚇顔（お種）・弱
[State -1]
type = ChangeState
value = 1330
triggerall = var(39)!=1
triggerall = Command = "Ikaku-Gan(TANE)_a" && NumProj = 0
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 威嚇顔（お種）・強
[State -1]
type = ChangeState
value = 1340
triggerall = var(39)!=1
triggerall = Command = "Ikaku-Gan(TANE)_b" && NumProj = 0
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 威嚇顔（お梅）・弱
[State -1]
type = ChangeState
value = 1300
triggerall = var(39)!=2
triggerall = Command = "Ikaku-Gan(UME)_x"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 威嚇顔（お梅）・強
[State -1]
type = ChangeState
value = 1310
triggerall = var(39)!=2
triggerall = Command = "Ikaku-Gan(UME)_y"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 甲式岩砕歯・弱
[State -1]
type = ChangeState
value = 1220
triggerall = var(39)!=1
triggerall = Command = "KOU-Shiki.GanShaiHa_x" && NumHelper(3250) = 0  && NumProj = 0
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 甲式岩砕歯・強
[State -1]
type = ChangeState
value = 1230
triggerall = var(39)!=1
triggerall = Command = "KOU-Shiki.GanShaiHa_y" && NumHelper(3250) = 0  && NumProj = 0
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 岩砕歯・弱
[State -1]
type = ChangeState
value = 1200
triggerall = var(39)!=2
triggerall = Command = "GanShaiHa_x" && NumHelper(3250) = 0  && NumProj = 0
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 岩砕歯・強
[State -1]
type = ChangeState
value = 1210
triggerall = var(39)!=2
triggerall = Command = "GanShaiHa_y"
triggerall = StateType != A && NumHelper(3250) = 0  && NumProj = 0
trigger1 = Ctrl = 1 || StateNo = 100
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 天舞脚（お種）・弱
[State -1]
type = ChangeState
value = 1430
triggerall = var(39)!=1
triggerall = Command = "Tenbu-Kyaku(TANE)_a"
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 40
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 天舞脚（お種）・強
[State -1]
type = ChangeState
value = 1440
triggerall = var(39)!=1
triggerall = Command = "Tenbu-Kyaku(TANE)_b"
triggerall = StateType != A
trigger1 = Ctrl = 1 || StateNo = 40
trigger2 = MoveContact && StateNo = [200,599]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 天舞脚（お梅）・弱
[State -1]
type = ChangeState
value = 1400
triggerall = var(39)!=2
triggerall = Command = "Tenbu-Kyaku(UME)_a"
triggerall = StateType = A
trigger1 = Ctrl = 1
trigger2 = MoveContact && StateNo = [600,699]
trigger3 = MoveContact && StateNo = [700,799]

;---------------------------------------------------------------------
; 天舞脚（お梅）・強
[State -1]
type = ChangeState
value = 1410
triggerall = var(39)!=2
triggerall = Command = "Tenbu-Kyaku(UME)_b"
triggerall = StateType = A
trigger1 = Ctrl = 1
trigger2 = MoveContact && StateNo = [600,699]
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
; 通常投げ・お梅
[State -1]
type = ChangeState
value = IfElse((Command = "fwd_y"),IfElse(var(39)!=1,850,800),IfElse(var(39)!=1,851,801))
triggerall = StateNo != 100 && StateType = S && Ctrl
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_y" && P2BodyDist X < 10
trigger2 = Command = "back_y" && P2BodyDist X < 20

;---------------------------------------------------------------------
; 通常投げ・お種
[State -1]
type = ChangeState
value = IfElse((Command = "fwd_b"),850,851)
triggerall = var(39)=0
triggerall = StateNo != 100 && StateType = S && Ctrl
triggerall = P2MoveType != H && !P2StateType = A
trigger1 = Command = "fwd_b" && P2BodyDist X < 10
trigger2 = Command = "back_b" && P2BodyDist X < 20

;---------------------------------------------------------------------
; 空中投げ
[State -1]
type = ChangeState
value = 900
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
; コンビネーション・遠立ち弱K１
[State -1]
type = ChangeState
value = 231
triggerall = command = "a"
trigger1 = MoveContact && MoveType = A && StateNo = 230

;---------------------------------------------------------------------------
; コンビネーション・遠立ち弱K２
[State -1]
type = ChangeState
value = 231
triggerall = command = "a" && var(39)!=2
trigger1 = MoveContact && MoveType = A && StateNo = 231 && PrevStateNo = 230

;---------------------------------------------------------------------------
; コンビネーション・近立ち弱K
[State -1]
type = ChangeState
value = 236
triggerall = command = "a" && var(39)!=1
trigger1 = MoveContact && MoveType = A && StateNo = 430

;---------------------------------------------------------------------------
; コンビネーション・遠立ち強P
[State -1]
type = ChangeState
value = 211
triggerall = command = "y" && var(39)!=2
trigger1 = MoveContact && StateNo = 410

;---------------------------------------------------------------------------
; コンビネーション・近立ち強P
[State -1]
type = ChangeState
value = 217
triggerall = command = "y" && var(39)!=1
trigger1 = MoveContact && StateNo = 216

;---------------------------------------------------------------------------
; コンビネーション・遠立ち強K
[State -1]
type = ChangeState
value = 241
triggerall = command = "b" && var(39)!=1
trigger1 = MoveContact && MoveType = A && StateNo = 236

;---------------------------------------------------------------------------
; コンビネーション３・ジャンプ強K
[State -1]
type = ChangeState
value = 646
triggerall = command = "b" && var(39)!=2
trigger1 = MoveContact && StateType = A && StateNo = 615 && Vel X!=0

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

;---------------------------------------------------------------------
; 黒子呼び
[State -1]
type = ChangeState
value = 4300
triggerall = Command = "ay"
trigger1 = StateType != A && Ctrl

;---------------------------------------------------------------------
; しゃがみ歩き
[State -1]
type = ChangeState
value = 25
triggerall = var(39)!=1
triggerall = Command = "holddownfwd"
trigger1 = StateType = C && StateNo = 11 && Ctrl

;=====================================================================
; Dir + Button
;=====================================================================
;---------------------------------------------------------------------
; スライディング（仮称）
[State -1]
type = ChangeState
value = 700
triggerall= Command = "downfwd_a" && var(39)!=2
trigger1 = StateType != A && Ctrl
trigger2 = MoveContact && StateNo = [200,599]

;---------------------------------------------------------------------
; 踏み付け（仮称）
[State -1]
type = ChangeState
value = 710
triggerall= Command = "down_a"
trigger1 = StateType = A && Ctrl
trigger2 = MoveContact && StateNo = [600,699]

---------------------------------------------------------------------
; 連撃（仮称）
[State -1]
type = ChangeState
value = 720
triggerall= Command = "downfwd_y" && var(39)!=1
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
triggerall = Command = "x"
trigger1 = StateType = S && Ctrl
trigger2  = (StateNo = 200 && AnimElem = 4,>= 0)
trigger3  = (StateNo = 205 && AnimElem = 4,>= 0)

;---------------------------------------------------------------------
; 弱キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 50,235,230)
triggerall = Command = "a"
trigger1 = StateType = S && Ctrl
trigger2 = MoveContact && P2BodyDist X <= 50 && StateNo = 230

;---------------------------------------------------------------------
; 強パンチ
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 30,IfElse(var(39)=2,216,215),210)
triggerall = Command = "y"
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------
; 強キック
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 50,245,240)
triggerall = Command = "b"
trigger1 = StateType = S && Ctrl

;---------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = Command = "x"
trigger1 =  StateType = C && Ctrl
trigger2  = (StateNo = 400 && AnimElem = 4,>= 0)

;---------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 410
triggerall = Command = "y"
trigger1 =  StateType = C && Ctrl

;---------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = Command = "a"
trigger1 =  StateType = C && Ctrl
trigger2  = (StateNo = 430 && AnimElem = 3,>= 2)

;---------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 440
triggerall = Command = "b"
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
