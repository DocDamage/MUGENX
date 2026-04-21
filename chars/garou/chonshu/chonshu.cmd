;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "rojin1"
command = ~D, DB, B, F, y+b
time = 25

[Command]
name = "rojin2"
command = ~D, DF, F, B, y+b
time = 25

[Command]
name = "rojin3"
command = ~D, DB, B, F, b+c
time = 25

[Command]
name = "rojin4"
command = ~D, DB, B, F, x
time = 25

[Command]
name = "rojin5"
command = ~D, DB, B, F, y
time = 25

[Command]
name = "shukumyou_rb"
command = ~D, DB, B, F, c
time = 25

[Command]
name = "kairyu_rb"
command = ~F, B, DB, D, DF, c
time = 25

[Command]
name = "kairyu_kof"
command = ~F, B, DB, D, DF, F, a+b
time = 25

[Command]
name = "shukumyou_kof_1"
command = ~F, B, DB, D, DF, F, x
time = 25

[Command]
name = "shukumyou_kof_2"
command = ~F, B, DB, D, DF, F, y
time = 25

[Command]
name = "shukumyou_kof_3"
command = ~F, B, DB, D, DF, F, x+y
time = 25

[Command]
name = "ryuso1"
command = ~D, DB, B, D, DB, x
time = 25

[Command]
name = "ryuso2"
command = ~D, DB, B, D, DB, y
time = 25

;-| 必殺技 |------------------------------------------------------
[Command]
name = "tengen1"
command = ~D, DF, F, a
time = 12

[Command]
name = "tengen2"
command = ~D, DF, F, b
time = 12

[Command]
name = "tengen3"
command = ~D, DF, F, c
time = 12

[Command]
name = "tengen4"
command = ~D, DF, F, x
time = 12

[Command]
name = "tengen5"
command = ~D, DF, F, y
time = 12

[Command]
name = "tengen6"
command = ~D, DF, F, a+b
time = 15

[Command]
name = "tenni1"
command = ~F, D, DF, x
time = 12

[Command]
name = "tenni2"
command = ~F, D, DF, y
time = 12

[Command]
name = "tenni3"
command = ~F, D, DF, a
time = 12

[Command]
name = "tenni4"
command = ~F, D, DF, c
time = 12

[Command]
name = "singan1"
command = ~F, DF, D, DB, B, x
time = 18

[Command]
name = "singan2"
command = ~F, DF, D, DB, B, a
time = 18

[Command]
name = "singan3"
command = ~F, DF, D, DB, B, y
time = 18

[Command]
name = "singan4"
command = ~F, DF, D, DB, B, b
time = 18

[Command]
name = "singan5"
command = ~F, DF, D, DB, B, c
time = 18

[Command]
name = "singan6"
command = ~F, DF, D, a
time = 18

[Command]
name = "singan7"
command = ~B, DB, D, a
time = 18

[Command]
name = "singan8"
command = ~F, DF, D, b
time = 18

[Command]
name = "singan9"
command = ~B, DB, D, b
time = 18

[Command]
name = "jinsoku1"
command = ~DB, F, x
time = 12

[Command]
name = "jinsoku2"
command = ~DB, F, y
time = 12

[Command]
name = "jinsoku3"
command = ~F, F, x
time = 15

[Command]
name = "jinsoku4"
command = ~F, F, y
time = 15

[Command]
name = "jinsoku5"
command = ~F, F, a
time = 15

[Command]
name = "combo"
command = ~F, B, c
time = 12

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "longjump"
command = D, $U
time = 12

[Command]
name = "FF"     
command = F, F
time = 12

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 10

[Command]
name = "throw_1"
command = x+a
time = 10

[Command]
name = "throw_2"
command = y+b
time = 10

[Command]
name = "gc_step"
command = y+a
time = 10

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
[Command]
name = "a"
command = a
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
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command];（グルーヴセレクト用）
name = "up"
command = U
time = 3

[Command];（グルーヴセレクト用）
name = "down"
command = D
time = 3

; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;帝王龍双拳（KOF）
[State -1, gate]
type = ChangeState
value = 3500
triggerall = var(20) = [2,3]
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "ryuso1" || Command = "ryuso2"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 208 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 209 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 219 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 228 && ((animelem=4,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 229 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 408 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 418 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger9 = stateno = 428 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2)) && var(20) = 3
trigger10 = stateno = 438 && ((animelem=4,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 331 && ((animelem=5,>0 && animelem=6,<0) && (var(48) = 1 || var(48) = 2))
trigger12 = stateno = 342 && ((animelem=4,>0 && animelem=5,<0) && (var(48) = 1 || var(48) = 2))
trigger13 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(20) = 2 && power >= 2000
trigger14 = stateno = 1220 && var(48) = 2 && var(20) = 2 && power >= 2000
trigger15 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(46)
trigger16 = stateno = 1220 && var(48) = 2 && var(46)
trigger17 = stateno = 3506 && ((animelem=2,>0 && animelem=4,<0) && (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;帝王宿命拳（MAX版）（KOF）
[State -1, gate]
type = ChangeState
value = 3400
triggerall = var(20) = 2
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "shukumyou_kof_3"
triggerall = statetype != A
triggerall = power >= 2000
triggerall = NumProjID(1005) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 208 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 209 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 219 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 228 && ((animelem=4,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 229 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 408 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 418 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger9 = stateno = 428 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2)) && var(20) = 3
trigger10 = stateno = 438 && ((animelem=4,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 331 && ((animelem=5,>0 && animelem=6,<0) && (var(48) = 1 || var(48) = 2))
trigger12 = stateno = 342 && ((animelem=4,>0 && animelem=5,<0) && (var(48) = 1 || var(48) = 2))
trigger13 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(20) = 2 && power >= 3000
trigger14 = stateno = 1220 && var(48) = 2 && var(20) = 2 && power >= 3000
trigger15 = stateno = 3506 && ((animelem=2,>0 && animelem=4,<0) && (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;帝王宿命拳（KOF）
[State -1, gate]
type = ChangeState
value = 3210
triggerall = var(20) = [2,3]
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "shukumyou_kof_1" || Command = "shukumyou_kof_2"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = NumProjID(1005) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 208 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 209 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 219 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 228 && ((animelem=4,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 229 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 408 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 418 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger9 = stateno = 428 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2)) && var(20) = 3
trigger10 = stateno = 438 && ((animelem=4,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 331 && ((animelem=5,>0 && animelem=6,<0) && (var(48) = 1 || var(48) = 2))
trigger12 = stateno = 342 && ((animelem=4,>0 && animelem=5,<0) && (var(48) = 1 || var(48) = 2))
trigger13 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(20) = 2 && power >= 2000
trigger14 = stateno = 1220 && var(48) = 2 && var(20) = 2 && power >= 2000
trigger15 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(46)
trigger16 = stateno = 1220 && var(48) = 2 && var(46)
trigger17 = stateno = 3506 && ((animelem=2,>0 && animelem=4,<0) && (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;帝王漏尽拳（餓狼3）
[State -1, gate]
type = ChangeState
value = 3000
triggerall = var(20) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "rojin1"
triggerall = statetype != A
triggerall = (100*life/const(data.life))<=25
triggerall = NumProjID(1005) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 201 && (var(41) = [1,2])
trigger3 = stateno = 211 && animelem=4,<0 && (var(41) = [1,2])
trigger4 = stateno = 400 && (var(41) = [1,2])
trigger5 = stateno = 420 && (var(41) = [1,2])
trigger6 = stateno = 320 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;帝王漏尽拳（潜在）（餓狼3）
[State -1, gate]
type = ChangeState
value = 3100
triggerall = var(20) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "rojin2"
triggerall = statetype != A
triggerall = (100*life/const(data.life))<=25
triggerall = var(58) = 0
triggerall = NumProjID(1005) = 0
triggerall = P2Dist X = [60,70]
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 201 && (var(41) = [1,2])
trigger3 = stateno = 211 && animelem=4,<0 && (var(41) = [1,2])
trigger4 = stateno = 400 && (var(41) = [1,2])
trigger5 = stateno = 420 && (var(41) = [1,2])
trigger6 = stateno = 320 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;帝王漏尽拳（RB）
[State -1, gate]
type = ChangeState
value = 3010
triggerall = var(20) = 1
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "rojin3"
triggerall = statetype != A
triggerall = ((100*life/const(data.life))<=50) || var(56) = 1
triggerall = NumProjID(1005) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 205 && (var(41) = [1,2])
trigger3 = stateno = 206 && (var(41) = [1,2])
trigger4 = stateno = 215 && (var(41) = [1,2])
trigger5 = stateno = 225 && (var(41) = [1,2])
trigger6 = stateno = 226 && (var(41) = [1,2])
trigger7 = stateno = 405 && (var(41) = [1,2])
trigger8 = stateno = 415 && (var(41) = [1,2])
trigger9 = stateno = 425 && (var(41) = [1,2])
trigger10 = stateno = 207 && (var(41) = [1,2])
trigger11 = stateno = 426 && (var(41) = [1,2])
trigger12 = stateno = 227 && (var(41) = [1,2])
trigger13 = stateno = 321 && (var(41) = [1,2])
trigger14 = stateno = 216 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;帝王漏尽拳（フェイント）（RB）
[State -1, gate]
type = ChangeState
value = 3019
triggerall = var(20) = 1
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "holddown" && Command = "b" && Command = "c"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 205 && (var(41) = [1,2])
trigger3 = stateno = 206 && (var(41) = [1,2])
trigger4 = stateno = 215 && (var(41) = [1,2])
trigger5 = stateno = 225 && (var(41) = [1,2])
trigger6 = stateno = 226 && (var(41) = [1,2])
trigger7 = stateno = 405 && (var(41) = [1,2])
trigger8 = stateno = 415 && (var(41) = [1,2])
trigger9 = stateno = 425 && (var(41) = [1,2])
trigger10 = stateno = 207 && (var(41) = [1,2])
trigger11 = stateno = 426 && (var(41) = [1,2])
trigger12 = stateno = 227 && (var(41) = [1,2])
trigger13 = stateno = 321 && (var(41) = [1,2])
trigger14 = stateno = 216 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;帝王漏尽拳（KOF）
[State -1, gate]
type = ChangeState
value = 3020
triggerall = var(20) = [2,3]
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "rojin4" || Command = "rojin5"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = NumProjID(1005) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 208 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 209 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 219 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 228 && ((animelem=4,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 229 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 408 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 418 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger9 = stateno = 428 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2)) && var(20) = 3
trigger10 = stateno = 438 && ((animelem=4,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 331 && ((animelem=5,>0 && animelem=6,<0) && (var(48) = 1 || var(48) = 2))
trigger12 = stateno = 342 && ((animelem=4,>0 && animelem=5,<0) && (var(48) = 1 || var(48) = 2))
trigger13 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(20) = 2 && power >= 2000
trigger14 = stateno = 1220 && var(48) = 2 && var(20) = 2 && power >= 2000
trigger15 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(46)
trigger16 = stateno = 1220 && var(48) = 2 && var(46)
trigger17 = stateno = 3506 && ((animelem=2,>0 && animelem=4,<0) && (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;帝王空殺漏尽拳（RB）
[State -1, gate]
type = ChangeState
value = 3110
triggerall = var(20) = 1
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "rojin3"
triggerall = statetype = A
triggerall = ((100*life/const(data.life))<=50) || var(56) = 1
triggerall = NumProjID(1005) = 0
trigger1 = ctrl
trigger2 = StateNo = 1330 && animelem=17,>0

;---------------------------------------------------------------------------
;帝王空殺漏尽拳（KOF）
[State -1, gate]
type = ChangeState
value = 3120
triggerall = var(20) = [2,3]
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "rojin4" || Command = "rojin5"
triggerall = statetype = A
triggerall = power >= 1000
triggerall = NumProjID(1005) = 0
trigger1 = ctrl
trigger2 = StateNo = 1330 && animelem=17,>0
trigger3 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(20) = 2 && power >= 2000
trigger4 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(46)

;---------------------------------------------------------------------------
;帝王宿命拳（RB）
[State -1, gate]
type = ChangeState
value = 3200
triggerall = var(20) = 1
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "shukumyou_rb"
triggerall = statetype != A
triggerall = ((100*life/const(data.life))<=50) && var(56) = 1
triggerall = NumProjID(1005) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 205 && (var(41) = [1,2])
trigger3 = stateno = 206 && (var(41) = [1,2])
trigger4 = stateno = 215 && (var(41) = [1,2])
trigger5 = stateno = 225 && (var(41) = [1,2])
trigger6 = stateno = 226 && (var(41) = [1,2])
trigger7 = stateno = 405 && (var(41) = [1,2])
trigger8 = stateno = 415 && (var(41) = [1,2])
trigger9 = stateno = 425 && (var(41) = [1,2])
trigger10 = stateno = 207 && (var(41) = [1,2])
trigger11 = stateno = 426 && (var(41) = [1,2])
trigger12 = stateno = 227 && (var(41) = [1,2])
trigger13 = stateno = 321 && (var(41) = [1,2])
trigger14 = stateno = 216 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;海龍照臨（RB）
[State -1, gate]
type = ChangeState
value = 3300
triggerall = var(20) = 1
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "kairyu_rb"
triggerall = statetype != A
triggerall = ((100*life/const(data.life))<=50) && var(56) = 1
triggerall = NumProjID(1005) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 205 && (var(41) = [1,2])
trigger3 = stateno = 206 && (var(41) = [1,2])
trigger4 = stateno = 215 && (var(41) = [1,2])
trigger5 = stateno = 225 && (var(41) = [1,2])
trigger6 = stateno = 226 && (var(41) = [1,2])
trigger7 = stateno = 405 && (var(41) = [1,2])
trigger8 = stateno = 415 && (var(41) = [1,2])
trigger9 = stateno = 425 && (var(41) = [1,2])
trigger10 = stateno = 207 && (var(41) = [1,2])
trigger11 = stateno = 416 && (var(41) = [1,2])
trigger12 = stateno = 426 && (var(41) = [1,2])
trigger13 = stateno = 227 && (var(41) = [1,2])
trigger14 = stateno = 321 && (var(41) = [1,2])
trigger15 = stateno = 216 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;海龍照臨（KOF）
[State -1, gate]
type = ChangeState
value = 3310
triggerall = var(20) = 2
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "kairyu_kof"
triggerall = statetype != A
triggerall = power >= 2000
triggerall = NumProjID(1005) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 208 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 209 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 219 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 228 && ((animelem=4,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 229 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 408 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 418 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger9 = stateno = 428 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2)) && var(20) = 3
trigger10 = stateno = 438 && ((animelem=4,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 331 && ((animelem=5,>0 && animelem=6,<0) && (var(48) = 1 || var(48) = 2))
trigger12 = stateno = 342 && ((animelem=4,>0 && animelem=5,<0) && (var(48) = 1 || var(48) = 2))
trigger13 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(20) = 2 && power >= 3000
trigger14 = stateno = 1220 && var(48) = 2 && var(20) = 2 && power >= 3000
trigger15 = stateno = 3506 && ((animelem=2,>0 && animelem=4,<0) && (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;海龍照臨（SVC）
[State -1, gate]
type = ChangeState
value = 3320
triggerall = var(20) = 3
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "kairyu_kof"
triggerall = statetype != A
triggerall = (100*life/const(data.life))<=50
triggerall = var(53) = 0
triggerall = NumProjID(1005) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 208 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 209 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 219 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 228 && ((animelem=4,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 229 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 408 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 418 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger9 = stateno = 428 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2)) && var(20) = 3
trigger10 = stateno = 438 && ((animelem=4,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 331 && ((animelem=5,>0 && animelem=6,<0) && (var(48) = 1 || var(48) = 2))
trigger12 = stateno = 342 && ((animelem=4,>0 && animelem=5,<0) && (var(48) = 1 || var(48) = 2))
trigger13 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(46)
trigger14 = stateno = 1220 && var(48) = 2 && var(46)

;---------------------------------------------------------------------------
;帝王天耳拳（餓狼3）
[State -1, gate]
type = ChangeState
value = 1100
triggerall = var(20) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "tenni1" || Command = "tenni2"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 201 && (var(41) = [1,2])
trigger3 = stateno = 211 && animelem=4,<0 && (var(41) = [1,2])
trigger4 = stateno = 400 && (var(41) = [1,2])
trigger5 = stateno = 420 && (var(41) = [1,2])
trigger6 = stateno = 320 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;帝王天耳拳（RB）
[State -1, gate]
type = ChangeState
value = 1110
triggerall = var(20) = 1
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "tenni3" || Command = "tenni4"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 205 && (var(41) = [1,2])
trigger3 = stateno = 206 && (var(41) = [1,2])
trigger4 = stateno = 215 && (var(41) = [1,2])
trigger5 = stateno = 225 && (var(41) = [1,2])
trigger6 = stateno = 226 && (var(41) = [1,2])
trigger7 = stateno = 405 && (var(41) = [1,2])
trigger8 = stateno = 415 && (var(41) = [1,2])
trigger9 = stateno = 425 && (var(41) = [1,2])
trigger10 = stateno = 207 && (var(41) = [1,2])
trigger11 = stateno = 426 && (var(41) = [1,2])
trigger12 = stateno = 227 && (var(41) = [1,2])
trigger13 = stateno = 321 && (var(41) = [1,2])
trigger14 = stateno = 216 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;帝王天耳拳（ガードキャンセル）（RB）
[State -1, gate]
type = ChangeState
value = 1150
triggerall = var(20) = 1
triggerall = var(59) = 0
triggerall = var(57) >= 480
triggerall = roundstate = 2
triggerall = Command = "tenni4"
triggerall = statetype != A
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153

;---------------------------------------------------------------------------
;帝王天耳拳（KOF）
[State -1, gate]
type = ChangeState
value = 1120
triggerall = var(20) = [2,3]
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "tenni1" || Command = "tenni2"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101 || stateno = 102 || stateno = 103) && animelem=2,>0)
trigger2 = stateno = 208 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 209 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 219 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 228 && ((animelem=4,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 229 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 408 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 418 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger9 = stateno = 428 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2)) && var(20) = 3
trigger10 = stateno = 438 && ((animelem=4,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 331 && ((animelem=5,>0 && animelem=6,<0) && (var(48) = 1 || var(48) = 2))
trigger12 = stateno = 342 && ((animelem=4,>0 && animelem=5,<0) && (var(48) = 1 || var(48) = 2))
trigger13 = stateno = 208 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger14 = stateno = 209 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger15 = stateno = 219 && (animelem=4,<0 || animelem=6,>0) && var(46)
trigger16 = stateno = 228 && (animelem=4,<0 || animelem=6,>0) && var(46)
trigger17 = stateno = 229 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger18 = stateno = 408 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger19 = stateno = 418 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger20 = stateno = 428 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger21 = stateno = 438 && (animelem=4,<0 || animelem=5,>0) && var(46)
trigger22 = stateno = 218 && var(46)
trigger23 = stateno = 238 && var(46)
trigger24 = stateno = 239 && var(46)
trigger25 = stateno = 341 && (var(48) = 1 || var(48) = 2) && var(46)
trigger26 = stateno = 1220 && var(48) = 2 && var(46)
trigger27 = stateno = 3506 && ((animelem=2,>0 && animelem=4,<0) && (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;帝王神足拳（餓狼3）
[State -1, gate]
type = ChangeState
value = 1200
triggerall = var(20) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "jinsoku1" || Command = "jinsoku2"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 201 && (var(41) = [1,2])
trigger3 = stateno = 211 && animelem=4,<0 && (var(41) = [1,2])
trigger4 = stateno = 400 && (var(41) = [1,2])
trigger5 = stateno = 420 && (var(41) = [1,2])
trigger6 = stateno = 320 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;帝王神足拳（RB）
[State -1, gate]
type = ChangeState
value = 1210
triggerall = var(20) = 1
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "jinsoku5"
triggerall = statetype != A
trigger1 = ctrl || (stateno = 100 || stateno = 101)
trigger2 = stateno = 205 && (var(41) = [1,2])
trigger3 = stateno = 206 && (var(41) = [1,2])
trigger4 = stateno = 215 && (var(41) = [1,2])
trigger5 = stateno = 225 && (var(41) = [1,2])
trigger6 = stateno = 226 && (var(41) = [1,2])
trigger7 = stateno = 405 && (var(41) = [1,2])
trigger8 = stateno = 415 && (var(41) = [1,2])
trigger9 = stateno = 425 && (var(41) = [1,2])
trigger10 = stateno = 207 && (var(41) = [1,2])
trigger11 = stateno = 426 && (var(41) = [1,2])
trigger12 = stateno = 227 && (var(41) = [1,2])
trigger13 = stateno = 321 && (var(41) = [1,2])
trigger14 = stateno = 216 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;帝王神足拳（KOF）
[State -1, gate]
type = ChangeState
value = 1220
triggerall = var(20) = [2,3]
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "jinsoku3" || Command = "jinsoku4"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || (stateno = 103 && animelem=2,>0) || stateno = 102 || stateno = 103
trigger2 = stateno = 208 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 209 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 219 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 228 && ((animelem=4,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 229 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 408 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 418 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger9 = stateno = 428 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2)) && var(20) = 3
trigger10 = stateno = 438 && ((animelem=4,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 331 && ((animelem=5,>0 && animelem=6,<0) && (var(48) = 1 || var(48) = 2))
trigger12 = stateno = 342 && ((animelem=4,>0 && animelem=5,<0) && (var(48) = 1 || var(48) = 2))
trigger13 = stateno = 208 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger14 = stateno = 209 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger15 = stateno = 219 && (animelem=4,<0 || animelem=6,>0) && var(46)
trigger16 = stateno = 228 && (animelem=4,<0 || animelem=6,>0) && var(46)
trigger17 = stateno = 229 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger18 = stateno = 408 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger19 = stateno = 418 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger20 = stateno = 428 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger21 = stateno = 438 && (animelem=4,<0 || animelem=5,>0) && var(46)
trigger22 = stateno = 218 && var(46)
trigger23 = stateno = 238 && var(46)
trigger24 = stateno = 239 && var(46)
trigger25 = stateno = 341 && (var(48) = 1 || var(48) = 2) && var(46)
trigger26 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(46)
trigger27 = stateno = 3506 && ((animelem=2,>0 && animelem=4,<0) && (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;帝王天眼拳（フェイント）（餓狼3）
[State -1, gate]
type = ChangeState
value = 1080
triggerall = var(20) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "tengen6"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 201 && (var(41) = [1,2])
trigger3 = stateno = 211 && animelem=4,<0 && (var(41) = [1,2])
trigger4 = stateno = 400 && (var(41) = [1,2])
trigger5 = stateno = 420 && (var(41) = [1,2])
trigger6 = stateno = 320 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;帝王天眼拳（餓狼3）
[State -1, gate]
type = ChangeState
value = 1000
triggerall = var(20) = 0
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "tengen1" || Command = "tengen2"
triggerall = statetype != A
triggerall = NumProjID(1005) = 0 && NumProjID(1350) = 0 && NumProjID(3005) = 0 && NumProjID(3105) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 201 && (var(41) = [1,2])
trigger3 = stateno = 211 && animelem=4,<0 && (var(41) = [1,2])
trigger4 = stateno = 400 && (var(41) = [1,2])
trigger5 = stateno = 420 && (var(41) = [1,2])
trigger6 = stateno = 320 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;帝王天眼拳（RB）
[State -1, gate]
type = ChangeState
value = 1010
triggerall = var(20) = 1
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "tengen1" || Command = "tengen3"
triggerall = statetype != A
triggerall = NumProjID(1350) = 0 && NumProjID(3005) = 0 && NumProjID(3105) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 205 && (var(41) = [1,2])
trigger3 = stateno = 206 && (var(41) = [1,2])
trigger4 = stateno = 215 && (var(41) = [1,2])
trigger5 = stateno = 225 && (var(41) = [1,2])
trigger6 = stateno = 226 && (var(41) = [1,2])
trigger7 = stateno = 405 && (var(41) = [1,2])
trigger8 = stateno = 415 && (var(41) = [1,2])
trigger9 = stateno = 425 && (var(41) = [1,2])
trigger10 = stateno = 207 && (var(41) = [1,2])
trigger11 = stateno = 426 && (var(41) = [1,2])
trigger12 = stateno = 227 && (var(41) = [1,2])
trigger13 = stateno = 321 && (var(41) = [1,2])
trigger14 = stateno = 216 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;帝王天眼拳（KOF）
[State -1, gate]
type = ChangeState
value = 1020
triggerall = var(20) = [2,3]
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "tengen4" || Command = "tengen5"
triggerall = statetype != A
triggerall = NumProjID(1005) = 0 && NumProjID(1350) = 0 && NumProjID(3005) = 0 && NumProjID(3105) = 0
trigger1 = ctrl || ((stateno = 100 || stateno = 101 || stateno = 102 || stateno = 103) && animelem=2,>0)
trigger2 = stateno = 208 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 209 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 219 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 228 && ((animelem=4,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 229 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 408 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 418 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger9 = stateno = 428 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2)) && var(20) = 3
trigger10 = stateno = 438 && ((animelem=4,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 331 && ((animelem=5,>0 && animelem=6,<0) && (var(48) = 1 || var(48) = 2))
trigger12 = stateno = 342 && ((animelem=4,>0 && animelem=5,<0) && (var(48) = 1 || var(48) = 2))
trigger13 = stateno = 208 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger14 = stateno = 209 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger15 = stateno = 219 && (animelem=4,<0 || animelem=6,>0) && var(46)
trigger16 = stateno = 228 && (animelem=4,<0 || animelem=6,>0) && var(46)
trigger17 = stateno = 229 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger18 = stateno = 408 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger19 = stateno = 418 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger20 = stateno = 428 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger21 = stateno = 438 && (animelem=4,<0 || animelem=5,>0) && var(46)
trigger22 = stateno = 218 && var(46)
trigger23 = stateno = 238 && var(46)
trigger24 = stateno = 239 && var(46)
trigger25 = stateno = 341 && (var(48) = 1 || var(48) = 2) && var(46)
trigger26 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(46)
trigger27 = stateno = 1220 && var(48) = 2 && var(46)
trigger28 = stateno = 3506 && ((animelem=2,>0 && animelem=4,<0) && (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;帝王神眼拳（その場）（RB）
[State -1, gate]
type = ChangeState
value = 1300
triggerall = var(20) = 1
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "singan2"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 205 && (var(41) = [1,2])
trigger3 = stateno = 206 && (var(41) = [1,2])
trigger4 = stateno = 215 && (var(41) = [1,2])
trigger5 = stateno = 225 && (var(41) = [1,2])
trigger6 = stateno = 226 && (var(41) = [1,2])
trigger7 = stateno = 405 && (var(41) = [1,2])
trigger8 = stateno = 415 && (var(41) = [1,2])
trigger9 = stateno = 425 && (var(41) = [1,2])
trigger10 = stateno = 207 && (var(41) = [1,2])
trigger11 = stateno = 426 && (var(41) = [1,2])
trigger12 = stateno = 227 && (var(41) = [1,2])
trigger13 = stateno = 321 && (var(41) = [1,2])
trigger14 = stateno = 216 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;帝王神眼拳（上空）（RB）
[State -1, gate]
type = ChangeState
value = 1310
triggerall = var(20) = 1
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "singan4"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 205 && (var(41) = [1,2])
trigger3 = stateno = 206 && (var(41) = [1,2])
trigger4 = stateno = 215 && (var(41) = [1,2])
trigger5 = stateno = 225 && (var(41) = [1,2])
trigger6 = stateno = 226 && (var(41) = [1,2])
trigger7 = stateno = 405 && (var(41) = [1,2])
trigger8 = stateno = 415 && (var(41) = [1,2])
trigger9 = stateno = 425 && (var(41) = [1,2])
trigger10 = stateno = 207 && (var(41) = [1,2])
trigger11 = stateno = 426 && (var(41) = [1,2])
trigger12 = stateno = 227 && (var(41) = [1,2])
trigger13 = stateno = 321 && (var(41) = [1,2])
trigger14 = stateno = 216 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;帝王神眼拳（背後）（RB）
[State -1, gate]
type = ChangeState
value = 1320
triggerall = var(20) = 1
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "singan5"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 205 && (var(41) = [1,2])
trigger3 = stateno = 206 && (var(41) = [1,2])
trigger4 = stateno = 215 && (var(41) = [1,2])
trigger5 = stateno = 225 && (var(41) = [1,2])
trigger6 = stateno = 226 && (var(41) = [1,2])
trigger7 = stateno = 405 && (var(41) = [1,2])
trigger8 = stateno = 415 && (var(41) = [1,2])
trigger9 = stateno = 425 && (var(41) = [1,2])
trigger10 = stateno = 207 && (var(41) = [1,2])
trigger11 = stateno = 426 && (var(41) = [1,2])
trigger12 = stateno = 227 && (var(41) = [1,2])
trigger13 = stateno = 321 && (var(41) = [1,2])
trigger14 = stateno = 216 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;空中帝王神眼拳（上空）（RB）
[State -1, gate]
type = ChangeState
value = 1330
triggerall = var(20) = 1
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "singan8" || Command = "singan9"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;帝王神眼拳（その場）（KOF）
[State -1, gate]
type = ChangeState
value = 1300
triggerall = var(20) = [2,3]
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "singan1"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 208 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 209 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 219 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 228 && ((animelem=4,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 229 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 408 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 418 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger9 = stateno = 428 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2)) && var(20) = 3
trigger10 = stateno = 438 && ((animelem=4,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 331 && ((animelem=5,>0 && animelem=6,<0) && (var(48) = 1 || var(48) = 2))
trigger12 = stateno = 342 && ((animelem=4,>0 && animelem=5,<0) && (var(48) = 1 || var(48) = 2))
trigger13 = stateno = 208 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger14 = stateno = 209 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger15 = stateno = 219 && (animelem=4,<0 || animelem=6,>0) && var(46)
trigger16 = stateno = 228 && (animelem=4,<0 || animelem=6,>0) && var(46)
trigger17 = stateno = 229 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger18 = stateno = 408 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger19 = stateno = 418 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger20 = stateno = 428 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger21 = stateno = 438 && (animelem=4,<0 || animelem=5,>0) && var(46)
trigger22 = stateno = 218 && var(46)
trigger23 = stateno = 238 && var(46)
trigger24 = stateno = 239 && var(46)
trigger25 = stateno = 341 && (var(48) = 1 || var(48) = 2) && var(46)
trigger26 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(46)
trigger27 = stateno = 1220 && var(48) = 2 && var(46)
trigger28 = stateno = 3506 && ((animelem=2,>0 && animelem=4,<0) && (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;帝王神眼拳（上空）（KOF）
[State -1, gate]
type = ChangeState
value = 1310
triggerall = var(20) = [2,3]
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "singan2"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 208 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 209 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 219 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 228 && ((animelem=4,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 229 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 408 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 418 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger9 = stateno = 428 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2)) && var(20) = 3
trigger10 = stateno = 438 && ((animelem=4,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 331 && ((animelem=5,>0 && animelem=6,<0) && (var(48) = 1 || var(48) = 2))
trigger12 = stateno = 342 && ((animelem=4,>0 && animelem=5,<0) && (var(48) = 1 || var(48) = 2))
trigger13 = stateno = 208 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger14 = stateno = 209 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger15 = stateno = 219 && (animelem=4,<0 || animelem=6,>0) && var(46)
trigger16 = stateno = 228 && (animelem=4,<0 || animelem=6,>0) && var(46)
trigger17 = stateno = 229 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger18 = stateno = 408 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger19 = stateno = 418 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger20 = stateno = 428 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger21 = stateno = 438 && (animelem=4,<0 || animelem=5,>0) && var(46)
trigger22 = stateno = 218 && var(46)
trigger23 = stateno = 238 && var(46)
trigger24 = stateno = 239 && var(46)
trigger25 = stateno = 341 && (var(48) = 1 || var(48) = 2) && var(46)
trigger26 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(46)
trigger27 = stateno = 1220 && var(48) = 2 && var(46)
trigger28 = stateno = 3506 && ((animelem=2,>0 && animelem=4,<0) && (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;帝王神眼拳（背後）（KOF）
[State -1, gate]
type = ChangeState
value = 1320
triggerall = var(20) = [2,3]
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "singan3"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 208 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 209 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 219 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 228 && ((animelem=4,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 229 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 408 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 418 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger9 = stateno = 428 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2)) && var(20) = 3
trigger10 = stateno = 438 && ((animelem=4,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 331 && ((animelem=5,>0 && animelem=6,<0) && (var(48) = 1 || var(48) = 2))
trigger12 = stateno = 342 && ((animelem=4,>0 && animelem=5,<0) && (var(48) = 1 || var(48) = 2))
trigger13 = stateno = 208 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger14 = stateno = 209 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger15 = stateno = 219 && (animelem=4,<0 || animelem=6,>0) && var(46)
trigger16 = stateno = 228 && (animelem=4,<0 || animelem=6,>0) && var(46)
trigger17 = stateno = 229 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger18 = stateno = 408 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger19 = stateno = 418 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger20 = stateno = 428 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger21 = stateno = 438 && (animelem=4,<0 || animelem=5,>0) && var(46)
trigger22 = stateno = 218 && var(46)
trigger23 = stateno = 238 && var(46)
trigger24 = stateno = 239 && var(46)
trigger25 = stateno = 341 && (var(48) = 1 || var(48) = 2) && var(46)
trigger26 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(46)
trigger27 = stateno = 1220 && var(48) = 2 && var(46)
trigger28 = stateno = 3506 && ((animelem=2,>0 && animelem=4,<0) && (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;空中帝王神眼拳（上空）（KOF）
[State -1, gate]
type = ChangeState
value = 1330
triggerall = var(20) = [2,3]
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "singan6" || Command = "singan7" || Command = "singan8" || Command = "singan9"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(46)

;---------------------------------------------------------------------------
;龍灯掌（RB）
[State -1, gate]
type = ChangeState
value = 1400
triggerall = var(20) = 1
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "tengen2"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 205 && (var(41) = [1,2])
trigger3 = stateno = 206 && (var(41) = [1,2])
trigger4 = stateno = 215 && (var(41) = [1,2])
trigger5 = stateno = 225 && (var(41) = [1,2])
trigger6 = stateno = 226 && (var(41) = [1,2])
trigger7 = stateno = 405 && (var(41) = [1,2])
trigger8 = stateno = 415 && (var(41) = [1,2])
trigger9 = stateno = 425 && (var(41) = [1,2])
trigger10 = stateno = 207 && (var(41) = [1,2])
trigger11 = stateno = 426 && (var(41) = [1,2])
trigger12 = stateno = 227 && (var(41) = [1,2])
trigger13 = stateno = 321 && (var(41) = [1,2])
trigger14 = stateno = 216 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;龍灯掌（KOF）
[State -1, gate]
type = ChangeState
value = 1410
triggerall = var(20) = [2,3]
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = Command = "tengen1" || Command = "tengen2"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)
trigger2 = stateno = 208 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 209 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 219 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 228 && ((animelem=4,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 229 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 408 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 418 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger9 = stateno = 428 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2)) && var(20) = 3
trigger10 = stateno = 438 && ((animelem=4,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger11 = stateno = 331 && ((animelem=5,>0 && animelem=6,<0) && (var(48) = 1 || var(48) = 2))
trigger12 = stateno = 342 && ((animelem=4,>0 && animelem=5,<0) && (var(48) = 1 || var(48) = 2))
trigger13 = stateno = 208 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger14 = stateno = 209 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger15 = stateno = 219 && (animelem=4,<0 || animelem=6,>0) && var(46)
trigger16 = stateno = 228 && (animelem=4,<0 || animelem=6,>0) && var(46)
trigger17 = stateno = 229 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger18 = stateno = 408 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger19 = stateno = 418 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger20 = stateno = 428 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger21 = stateno = 438 && (animelem=4,<0 || animelem=5,>0) && var(46)
trigger22 = stateno = 218 && var(46)
trigger23 = stateno = 238 && var(46)
trigger24 = stateno = 239 && var(46)
trigger25 = stateno = 341 && (var(48) = 1 || var(48) = 2) && var(46)
trigger26 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(46)
trigger27 = stateno = 1220 && var(48) = 2 && var(46)
trigger28 = stateno = 3506 && ((animelem=2,>0 && animelem=4,<0) && (var(48) = 1 || var(48) = 2))

;===========================================================================
;---------------------------------------------------------------------------
;ガードキャンセルフロントステップ
[State -1]
type = ChangeState
value = 101
triggerall = var(59) = 0
triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = (Command = "gc_step" && Power >= 600) || (Command = "FF" && Power >= 200)
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = command = "start"
triggerall = statetype != A
triggerall = stateno != 195
trigger1 = ctrl || ((stateno = 102 || stateno = 103) && animelem=2,>0)

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "y"
triggerall = command != "holddown" && command != "holdfwd" && command != "holdback"
triggerall = P2Dist X > 160
triggerall = statetype != A
triggerall = stateno != 195
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = command = "c"
triggerall = command != "holddown" && command != "holdfwd" && command != "holdback"
triggerall = P2Dist X > 160
triggerall = statetype != A
triggerall = stateno != 195
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ歩き
[State -1, Taunt]
type = ChangeState
value = 25
triggerall = var(59) = 0
triggerall = var(20) = [0,1]
triggerall = command = "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;クイックスウェー
[State -1, Taunt]
type = ChangeState
value = 800
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = command = "throw_1"
triggerall = statetype != A
trigger1 = ctrl || stateno = 25

;---------------------------------------------------------------------------
;フロントグランドステップ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
triggerall = (var(20) = [0,1]) || var(20) = 3
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 102
triggerall = var(59) = 0
triggerall = var(20) = 2
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中振り向き（RB）
[State -1]
type = ChangeState
value = 48
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 1330 && animelem=17,>0

;---------------------------------------------------------------------------
;投げ（餓狼3）
[State -1, Throw]
type = ChangeState
value = 900
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = statetype = S
triggerall = ctrl
triggerall = p2bodydist X < 6
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;投げ（RB）
[State -1, Throw]
type = ChangeState
value = 910
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command = "holdfwd"
triggerall = statetype = S
triggerall = ctrl
triggerall = p2bodydist X < 6
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;投げ（KOF）
[State -1, Throw]
type = ChangeState
value = 920
triggerall = var(59) = 0
triggerall = var(20) = 2
triggerall = roundstate = 2
triggerall = (command = "holdfwd" || command = "holdback") && (command = "y" || command = "b")
triggerall = statetype = S
triggerall = ctrl
triggerall = p2bodydist X < 6
trigger1 = p2statetype = S || p2statetype = C
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;投げ（SVC）
[State -1, Throw]
type = ChangeState
value = 930
triggerall = var(59) = 0
triggerall = var(20) = 3
triggerall = roundstate = 2
triggerall = (command = "throw_1" || command = "throw_2")
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 102 || stateno = 103) && animelem=2,>0)

;---------------------------------------------------------------------------
;龍回頭（餓狼3）
[State -1, Taunt]
type = ChangeState
value = 300
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command = "holddown" && command = "holdfwd"
triggerall = P2Dist X <= 160
triggerall = statetype != A
trigger1 = ctrl || stateno = 25

;---------------------------------------------------------------------------
;避け攻撃（餓狼3）
[State -1]
type = ChangeState
value = 310
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = var(9) = 1
triggerall = var(10) = [1,12]
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = statetype != A
trigger1 = ctrl || stateno = 25

;---------------------------------------------------------------------------
;龍回頭（RB）
[State -1, Taunt]
type = ChangeState
value = 301
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command = "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl || stateno = 25

;---------------------------------------------------------------------------
;光輪殺（RB）
[State -1, Taunt]
type = ChangeState
value = 340
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl || stateno = 25

;---------------------------------------------------------------------------
;避け攻撃（RB）
[State -1]
type = ChangeState
value = 321
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = var(9) = 1
triggerall = var(10) = [1,12]
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype != A
trigger1 = ctrl || stateno = 25

;---------------------------------------------------------------------------
;コンビネーションアタック二段目立ちパンチ（RB）
[State -1]
type = ChangeState
value = 207
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = var(6) = 1
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 205 && (animelem=3,>0 || (var(42) = [1,2]))
trigger2 = stateno = 206 && (animelem=4,>0 || (var(42) = [1,2]))
trigger3 = stateno = 405 && (animelem=3,>0 || (var(42) = [1,2]))

;---------------------------------------------------------------------------
;コンビネーションアタック二段目立ちキック（RB）
[State -1]
type = ChangeState
value = 227
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = var(6) = 2
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 205 && (animelem=3,>0 || (var(42) = [1,2]))
trigger2 = stateno = 206 && (animelem=4,>0 || (var(42) = [1,2]))
trigger3 = stateno = 225 && (animelem=5,>0 || (var(42) = [1,2]))
trigger4 = stateno = 226 && (animelem=4,>0 || (var(42) = [1,2]))
trigger5 = stateno = 405 && (animelem=3,>0 || (var(42) = [1,2]))
trigger6 = stateno = 425 && (animelem=4,>0 || (var(42) = [1,2]))

;---------------------------------------------------------------------------
;コンビネーションアタック二段目しゃがみキック（RB）
[State -1]
type = ChangeState
value = 426
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = var(6) = 3
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 205 && (animelem=3,>0 || (var(42) = [1,2]))
trigger2 = stateno = 206 && (animelem=4,>0 || (var(42) = [1,2]))
trigger3 = stateno = 225 && (animelem=5,>0 || (var(42) = [1,2]))
trigger4 = stateno = 226 && (animelem=4,>0 || (var(42) = [1,2]))
trigger5 = stateno = 405 && (animelem=3,>0 || (var(42) = [1,2]))
trigger6 = stateno = 425 && (animelem=4,>0 || (var(42) = [1,2]))

;---------------------------------------------------------------------------
;コンビネーションアタック三段目立ち強攻撃（RB）
[State -1]
type = ChangeState
value = 217
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = var(6) = 4
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 207 && (animelem=5,>0 || (var(41) = [1,2]))
trigger2 = stateno = 227 && (animelem=5,>0 || (var(41) = [1,2]))
trigger3 = stateno = 426 && (animelem=4,>0 || (var(41) = [1,2]))

;---------------------------------------------------------------------------
;コンビネーションアタック三段目斜め前強攻撃（RB）
[State -1]
type = ChangeState
value = 216
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = var(6) = 5
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 207 && (animelem=5,>0 || (var(41) = [1,2]))
trigger2 = stateno = 227 && (animelem=5,>0 || (var(41) = [1,2]))
trigger3 = stateno = 426 && (animelem=4,>0 || (var(41) = [1,2]))

;---------------------------------------------------------------------------
;コンビネーションアタック三段目斜め前強攻撃（RB）
[State -1]
type = ChangeState
value = 416
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = var(6) = 6
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 207 && (animelem=5,>0 || (var(41) = [1,2]))
trigger2 = stateno = 227 && (animelem=5,>0 || (var(41) = [1,2]))
trigger3 = stateno = 426 && (animelem=4,>0 || (var(41) = [1,2]))

;---------------------------------------------------------------------------
;特殊コンビネーションアタック二段目（RB）
[State -1]
type = ChangeState
value = 350
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = var(6) = 7
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 215 && ((animelem=3,>0 && animelem=4,<0) || (animelem=3,>0 && animelem=4,<0 && (var(41) = [1,2])))

;---------------------------------------------------------------------------
;特殊コンビネーションアタック三段目（RB）
[State -1]
type = ChangeState
value = 360
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = var(6) = 8
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 350 && ((animelem=4,>0 && animelem=5,<0) || (animelem=4,>0 && animelem=5,<0 && (var(41) = [1,2])))

;---------------------------------------------------------------------------
;特殊コンビネーションアタック四段目（RB）
[State -1]
type = ChangeState
value = 380
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = var(6) = 9
triggerall = roundstate = 2
triggerall = statetype != A
trigger1 = stateno = 360 && animelem=4,>0 && animelem=7,<0 && (var(41) = [1,2])

;---------------------------------------------------------------------------
;前方緊急回避（KOF）
[State -1, Taunt]
type = ChangeState
value = 810
triggerall = var(59) = 0
triggerall = var(20) = 2
triggerall = roundstate = 2
triggerall = command = "throw_1"
triggerall = command != "holdback"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 102 || stateno = 103) && animelem=2,>0)

;---------------------------------------------------------------------------
;ガードキャンセル前方緊急回避（KOF）
[State -1, Taunt]
type = ChangeState
value = 815
triggerall = var(59) = 0
triggerall = var(20) = 2
triggerall = roundstate = 2
triggerall = command = "throw_1"
triggerall = command != "holdback"
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153

;---------------------------------------------------------------------------
;後方緊急回避（KOF）
[State -1, Taunt]
type = ChangeState
value = 820
triggerall = var(59) = 0
triggerall = var(20) = 2
triggerall = roundstate = 2
triggerall = command = "throw_1"
triggerall = command = "holdback"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 102 || stateno = 103) && animelem=2,>0)

;---------------------------------------------------------------------------
;ガードキャンセル後方緊急回避（KOF）
[State -1, Taunt]
type = ChangeState
value = 825
triggerall = var(59) = 0
triggerall = var(20) = 2
triggerall = roundstate = 2
triggerall = command = "throw_1"
triggerall = command = "holdback"
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153

;---------------------------------------------------------------------------
;光輪殺（KOF）
[State -1, Taunt]
type = ChangeState
value = 341
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl || stateno = 100 || (stateno = 103 && animelem=2,>0) || stateno = 102 || stateno = 103
trigger2 = stateno = 208 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger3 = stateno = 209 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger4 = stateno = 219 && (animelem=4,<0 || animelem=6,>0) && var(46)
trigger5 = stateno = 228 && (animelem=4,<0 || animelem=6,>0) && var(46)
trigger6 = stateno = 229 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger7 = stateno = 408 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger8 = stateno = 418 && (animelem=2,<0 || animelem=4,>0) && var(46)
trigger9 = stateno = 428 && (animelem=3,<0 || animelem=5,>0) && var(46)
trigger10 = stateno = 438 && (animelem=4,<0 || animelem=5,>0) && var(46)
trigger11 = stateno = 218 && var(46)
trigger12 = stateno = 238 && var(46)
trigger13 = stateno = 239 && var(46)
trigger14 = stateno = 1120 && (var(48) = 1 || var(48) = 2) && var(46)
trigger15 = stateno = 1220 && var(48) = 2 && var(46)

;---------------------------------------------------------------------------
;光輪殺（キャンセル版）（KOF）
[State -1, Taunt]
type = ChangeState
value = 342
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = stateno = 208 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger2 = stateno = 209 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger3 = stateno = 219 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger4 = stateno = 228 && ((animelem=4,>0 && animelem=6,<0) || (var(48) = 1 || var(48) = 2))
trigger5 = stateno = 229 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))
trigger6 = stateno = 408 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger7 = stateno = 418 && ((animelem=2,>0 && animelem=4,<0) || (var(48) = 1 || var(48) = 2))
trigger8 = stateno = 428 && ((animelem=3,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2)) && var(20) = 3
trigger9 = stateno = 438 && ((animelem=4,>0 && animelem=5,<0) || (var(48) = 1 || var(48) = 2))

;---------------------------------------------------------------------------
;ふっとばし攻撃（KOF）
[State -1, Taunt]
type = ChangeState
value = 331
triggerall = var(59) = 0
triggerall = var(20) = 2
triggerall = roundstate = 2
triggerall = command = "throw_2"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 102 || stateno = 103) && animelem=2,>0)

;---------------------------------------------------------------------------
;ガードキャンセルふっとばし攻撃（KOF）
[State -1, Taunt]
type = ChangeState
value = 332
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "throw_2"
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153

;---------------------------------------------------------------------------
;ジャンプふっとばし攻撃（KOF）
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = var(59) = 0
triggerall = var(20) = 2
triggerall = roundstate = 2
triggerall = command = "throw_2"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち弱パンチ（餓狼3）
[State -1, Taunt]
type = ChangeState
value = 201
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2Dist X <= 80
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち弱パンチ（餓狼3）
[State -1, Taunt]
type = ChangeState
value = 201
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = P2Dist X <= 80
triggerall = statetype != A
trigger1 = (stateno = 100 || stateno = 101) && animelem=2,>0

;---------------------------------------------------------------------------
;遠距離立ち弱パンチ（餓狼3）
[State -1, Taunt]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち弱パンチ（餓狼3）
[State -1, Taunt]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = statetype != A
trigger1 = (stateno = 100 || stateno = 101) && animelem=2,>0

;---------------------------------------------------------------------------
;近距離立ち強パンチ（餓狼3）
[State -1, Taunt]
type = ChangeState
value = 211
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2Dist X <= 80
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち強パンチ（餓狼3）
[State -1, Taunt]
type = ChangeState
value = 211
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = P2Dist X <= 80
triggerall = statetype != A
trigger1 = (stateno = 100 || stateno = 101) && animelem=2,>0

;---------------------------------------------------------------------------
;遠距離立ち強パンチ（餓狼3）
[State -1, Taunt]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = stateno != 195
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち強パンチ（餓狼3）
[State -1, Taunt]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = statetype != A
triggerall = stateno != 195
trigger1 = (stateno = 100 || stateno = 101) && animelem=2,>0

;---------------------------------------------------------------------------
;近距離立ち弱キック（餓狼3）
[State -1, Taunt]
type = ChangeState
value = 221
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2Dist X <= 68
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち弱キック（餓狼3）
[State -1, Taunt]
type = ChangeState
value = 221
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = P2Dist X <= 68
triggerall = statetype != A
trigger1 = (stateno = 100 || stateno = 101) && animelem=2,>0

;---------------------------------------------------------------------------
;遠距離立ち弱キック（餓狼3）
[State -1, Taunt]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち弱キック（餓狼3）
[State -1, Taunt]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype != A
trigger1 = (stateno = 100 || stateno = 101) && animelem=2,>0

;---------------------------------------------------------------------------
;近距離立ち強キック（餓狼3）
[State -1, Taunt]
type = ChangeState
value = 231
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2Dist X <= 76
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち強キック（餓狼3）
[State -1, Taunt]
type = ChangeState
value = 231
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = P2Dist X <= 76
triggerall = statetype != A
trigger1 = (stateno = 100 || stateno = 101) && animelem=2,>0

;---------------------------------------------------------------------------
;遠距離立ち強キック（餓狼3）
[State -1, Taunt]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち強キック（餓狼3）
[State -1, Taunt]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = statetype != A
trigger1 = (stateno = 100 || stateno = 101) && animelem=2,>0

;---------------------------------------------------------------------------
;しゃがみ弱パンチ（餓狼3）
[State -1]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 25

;---------------------------------------------------------------------------
;しゃがみ強パンチ（餓狼3）
[State -1]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 25

;---------------------------------------------------------------------------
;しゃがみ弱キック（餓狼3）
[State -1]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 25

;---------------------------------------------------------------------------
;しゃがみ強キック（餓狼3）
[State -1]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 25

;---------------------------------------------------------------------------
;ジャンプ弱パンチ（餓狼3）
[State -1]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ強パンチ（餓狼3）
[State -1]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ弱キック（餓狼3）
[State -1]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
 
;---------------------------------------------------------------------------
;ジャンプ強キック（餓狼3）
[State -1]
type = ChangeState
value = 630
triggerall = var(59) = 0
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ちパンチ（RB）
[State -1, Taunt]
type = ChangeState
value = 206
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2Dist X <= 80
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ちパンチ（RB）
[State -1, Taunt]
type = ChangeState
value = 206
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = P2Dist X <= 80
triggerall = statetype != A
trigger1 = (stateno = 100 || stateno = 101) && animelem=2,>0

;---------------------------------------------------------------------------
;遠距離立ちパンチ（RB）
[State -1, Taunt]
type = ChangeState
value = 205
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ちパンチ（RB）
[State -1, Taunt]
type = ChangeState
value = 205
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype != A
trigger1 = (stateno = 100 || stateno = 101) && animelem=2,>0

;---------------------------------------------------------------------------
;近距離立ち強攻撃（RB）
[State -1, Taunt]
type = ChangeState
value = 215
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2Dist X <= 80
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち強攻撃（RB）
[State -1, Taunt]
type = ChangeState
value = 215
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = P2Dist X <= 80
triggerall = statetype != A
trigger1 = (stateno = 100 || stateno = 101) && animelem=2,>0

;---------------------------------------------------------------------------
;遠距離立ち強攻撃（RB）
[State -1, Taunt]
type = ChangeState
value = 214
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = stateno != 195
trigger1 = ctrl || ((stateno = 100 || stateno = 101) && animelem=2,>0)

;---------------------------------------------------------------------------
;遠距離立ち強攻撃（RB）
[State -1, Taunt]
type = ChangeState
value = 214
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype != A
triggerall = stateno != 195
trigger1 = (stateno = 100 || stateno = 101) && animelem=2,>0

;---------------------------------------------------------------------------
;近距離立ち弱キック（RB）
[State -1, Taunt]
type = ChangeState
value = 226
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2Dist X <= 68
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち弱キック（RB）
[State -1, Taunt]
type = ChangeState
value = 226
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = P2Dist X <= 68
triggerall = statetype != A
trigger1 = (stateno = 100 || stateno = 101) && animelem=2,>0

;---------------------------------------------------------------------------
;遠距離立ちキック（RB）
[State -1, Taunt]
type = ChangeState
value = 225
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ちキック（RB）
[State -1, Taunt]
type = ChangeState
value = 225
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = statetype != A
trigger1 = (stateno = 100 || stateno = 101) && animelem=2,>0

;---------------------------------------------------------------------------
;しゃがみパンチ（RB）
[State -1]
type = ChangeState
value = 405
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 25

;---------------------------------------------------------------------------
;しゃがみ強攻撃（RB）
[State -1]
type = ChangeState
value = 415
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 25

;---------------------------------------------------------------------------
;しゃがみキック（RB）
[State -1]
type = ChangeState
value = 425
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || stateno = 25

;---------------------------------------------------------------------------
;ジャンプパンチ（RB）
[State -1]
type = ChangeState
value = 605
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 1330 && animelem=17,>0

;---------------------------------------------------------------------------
;ジャンプ強攻撃（RB）
[State -1]
type = ChangeState
value = 615
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 1330 && animelem=17,>0

;---------------------------------------------------------------------------
;ジャンプキック（RB）
[State -1]
type = ChangeState
value = 625
triggerall = var(59) = 0
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 1330 && animelem=17,>0

;---------------------------------------------------------------------------
;近距離立ち弱パンチ（KOF）
[State -1, Taunt]
type = ChangeState
value = 209
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 20
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 102 || stateno = 103) && animelem=2,>0)
trigger2 = StateNo = 208 && Time > 6
trigger3 = StateNo = 209 && Time > 6
trigger4 = StateNo = 229 && Time > 6
trigger5 = StateNo = 408 && Time > 6
trigger6 = StateNo = 428 && Time > 6

;---------------------------------------------------------------------------
;遠距離立ち弱パンチ（KOF）
[State -1, Taunt]
type = ChangeState
value = 208
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 102 || stateno = 103) && animelem=2,>0)
trigger2 = StateNo = 208 && Time > 6
trigger3 = StateNo = 209 && Time > 6
trigger4 = StateNo = 229 && Time > 6
trigger5 = StateNo = 408 && Time > 6
trigger6 = StateNo = 428 && Time > 6

;---------------------------------------------------------------------------
;近距離立ち強パンチ（KOF）
[State -1, Taunt]
type = ChangeState
value = 219
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 25
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 102 || stateno = 103) && animelem=2,>0)

;---------------------------------------------------------------------------
;遠距離立ち強パンチ（KOF）
[State -1, Taunt]
type = ChangeState
value = 218
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 102 || stateno = 103) && animelem=2,>0)

;---------------------------------------------------------------------------
;近距離立ち弱キック（KOF）
[State -1, Taunt]
type = ChangeState
value = 229
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 20
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 102 || stateno = 103) && animelem=2,>0)
trigger2 = StateNo = 208 && Time > 6
trigger3 = StateNo = 209 && Time > 6
trigger4 = StateNo = 229 && Time > 6
trigger5 = StateNo = 408 && Time > 6
trigger6 = StateNo = 428 && Time > 6

;---------------------------------------------------------------------------
;遠距離立ち弱キック（KOF）
[State -1, Taunt]
type = ChangeState
value = 228
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 102 || stateno = 103) && animelem=2,>0)
trigger2 = StateNo = 208 && Time > 6
trigger3 = StateNo = 209 && Time > 6
trigger4 = StateNo = 229 && Time > 6
trigger5 = StateNo = 408 && Time > 6
trigger6 = StateNo = 428 && Time > 6

;---------------------------------------------------------------------------
;近距離立ち強キック（KOF）
[State -1, Taunt]
type = ChangeState
value = 239
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 25
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 102 || stateno = 103) && animelem=2,>0)

;---------------------------------------------------------------------------
;遠距離立ち強キック（KOF）
[State -1, Taunt]
type = ChangeState
value = 238
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 102 || stateno = 103) && animelem=2,>0)

;---------------------------------------------------------------------------
;しゃがみ弱パンチ（KOF）
[State -1]
type = ChangeState
value = 408
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 102 || stateno = 103) && animelem=2,>0)
trigger2 = StateNo = 208 && Time > 6
trigger3 = StateNo = 209 && Time > 6
trigger4 = StateNo = 229 && Time > 6
trigger5 = StateNo = 408 && Time > 6
trigger6 = StateNo = 428 && Time > 6

;---------------------------------------------------------------------------
;しゃがみ強パンチ（KOF）
[State -1]
type = ChangeState
value = 418
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 102 || stateno = 103) && animelem=2,>0)

;---------------------------------------------------------------------------
;しゃがみ弱キック（KOF）
[State -1]
type = ChangeState
value = 428
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 102 || stateno = 103) && animelem=2,>0)
trigger2 = StateNo = 208 && Time > 6
trigger3 = StateNo = 209 && Time > 6
trigger4 = StateNo = 229 && Time > 6
trigger5 = StateNo = 408 && Time > 6
trigger6 = StateNo = 428 && Time > 6

;---------------------------------------------------------------------------
;しゃがみ強キック（KOF）
[State -1]
type = ChangeState
value = 438
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl || ((stateno = 102 || stateno = 103) && animelem=2,>0)

;---------------------------------------------------------------------------
;ジャンプ弱パンチ（KOF）
[State -1]
type = ChangeState
value = 608
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 1330 && animelem=17,>0

;---------------------------------------------------------------------------
;ジャンプ強パンチ（KOF）
[State -1]
type = ChangeState
value = 618
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 1330 && animelem=17,>0

;---------------------------------------------------------------------------
;ジャンプ弱キック（KOF）
[State -1]
type = ChangeState
value = 628
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 1330 && animelem=17,>0
 
;---------------------------------------------------------------------------
;ジャンプ強キック（KOF）
[State -1]
type = ChangeState
value = 638
triggerall = var(59) = 0
triggerall = var(20) = [2,3]
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 1330 && animelem=17,>0