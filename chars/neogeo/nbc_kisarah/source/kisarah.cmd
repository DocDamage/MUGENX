; Command File 
;-------------------------------------------------
	
;-------------------
; Config 
;-------------------

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
 
;-------------------
; Command 
;-------------------

;-| Super Motions |--------------------------------------------------------
[Command]
name = "qcf2_a"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "qcf2_b"
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "hcf2_x"
command = ~B, D, F, B, D, F, x
time = 30

[Command]
name = "hcf2_y"
command = ~B, D, F, B, D, F, y
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "qcf_x"
command = ~D, DF, F, x

[Command]
name = "qcf_y"
command = ~D, DF, F, y

[Command]
name = "qcf_a"
command = ~D, DF, F, a

[Command]
name = "qcf_b"
command = ~D, DF, F, b

[Command]
name = "qcb_x"
command = ~D, DB, B, x

[Command]
name = "qcb_y"
command = ~D, DB, B, y

[Command]
name = "qcb_a"
command = ~D, DB, B, a

[Command]
name = "qcb_b"
command = ~D, DB, B, b

[Command]
name = "dp_a"
command = ~F, D, DF, a

[Command]
name = "dp_b"
command = ~F, D, DF, b

[Command]
name = "hcbf_x"
command = ~F, D, B, F, x
time = 20

[Command]
name = "hcbf_y"
command = ~F, D, B, F, y
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "highjump"
command = $D, $U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y+b
time = 1

;-| Dir + Button |---------------------------------------------------------

;-| Single Button |---------------------------------------------------------
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

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1
 
;-------------------
; State entry 
;-------------------

[Statedef -1]
;---------------------------------------------------------------------------
; ジェラシー・ボンバー弱
[State -1]
type = ChangeState
value = 3010
triggerall = roundstate = 2
triggerall = command = "hcf2_x" && power >= 3000
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
trigger3 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger4 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger5 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger6 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger7 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger8 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger9 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger10 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger11 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger12 = stateno = 430 && AnimElemNo(0) = [6,7]
trigger13 = stateno = 1080 && AnimElemNo(0) = 10
;---------------------------------------------------------------------------
; ジェラシー・ボンバー強
[State -1]
type = ChangeState
value = 3015
triggerall = roundstate = 2
triggerall = command = "hcf2_y" && power >= 3000
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
trigger3 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger4 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger5 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger6 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger7 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger8 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger9 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger10 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger11 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger12 = stateno = 430 && AnimElemNo(0) = [6,7]
trigger13 = stateno = 1080 && AnimElemNo(0) = 10
;---------------------------------------------------------------------------
; スプラッシュ・エアダンス弱
[State -1]
type = ChangeState
value = 3000
triggerall = roundstate = 2
triggerall = command = "qcf2_a" && power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
trigger3 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger4 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger5 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger6 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger7 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger8 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger9 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger10 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger11 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger12 = stateno = 430 && AnimElemNo(0) = [6,7]
trigger13 = stateno = 1080 && AnimElemNo(0) = 10
;---------------------------------------------------------------------------
; スプラッシュ・エアダンス強
[State -1]
type = ChangeState
value = 3005
triggerall = roundstate = 2
triggerall = command = "qcf2_b" && power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
trigger3 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger4 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger5 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger6 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger7 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger8 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger9 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger10 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger11 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger12 = stateno = 430 && AnimElemNo(0) = [6,7]
trigger13 = stateno = 1080 && AnimElemNo(0) = 10
;---------------------------------------------------------------------------
; 空中スプラッシュ・エアダンス弱
[State -1]
type = ChangeState
value = 3020
triggerall = roundstate = 2
triggerall = command = "qcf2_a" && power >= 1000
triggerall = statetype = A && Pos Y < -25
trigger1 = ctrl
trigger2 = stateno = 1040 && MoveContact = [1,6]
trigger3 = stateno = 1045 && MoveContact = [1,6]
trigger4 = stateno = 1050 && MoveContact = [1,6]
trigger5 = stateno = 1055 && MoveContact = [1,6]
trigger6 = stateno = 1065 && MoveContact = [1,6]
trigger7 = stateno = 1091 && MoveContact = [1,6]
trigger8 = stateno = 1096 && MoveContact = [1,6]
;---------------------------------------------------------------------------
; 空中スプラッシュ・エアダンス強
[State -1]
type = ChangeState
value = 3025
triggerall = roundstate = 2
triggerall = command = "qcf2_b" && power >= 1000
triggerall = statetype = A && Pos Y < -25
trigger1 = ctrl
trigger2 = stateno = 1040 && MoveContact = [1,6]
trigger3 = stateno = 1045 && MoveContact = [1,6]
trigger4 = stateno = 1050 && MoveContact = [1,6]
trigger5 = stateno = 1055 && MoveContact = [1,6]
trigger6 = stateno = 1065 && MoveContact = [1,6]
trigger7 = stateno = 1091 && MoveContact = [1,6]
trigger8 = stateno = 1096 && MoveContact = [1,6]
;---------------------------------------------------------------------------
; ヴォールティング・オーバー弱
[State -1]
type = ChangeState
value = 1090
triggerall = roundstate = 2
triggerall = command = "hcbf_x"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
trigger3 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger4 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger5 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger6 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger7 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger8 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger9 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger10 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger11 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger12 = stateno = 430 && AnimElemNo(0) = [6,7]
;---------------------------------------------------------------------------
; ヴォールティング・オーバー強
[State -1]
type = ChangeState
value = 1095
triggerall = roundstate = 2
triggerall = command = "hcbf_y"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
trigger3 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger4 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger5 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger6 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger7 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger8 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger9 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger10 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger11 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger12 = stateno = 430 && AnimElemNo(0) = [6,7]
;---------------------------------------------------------------------------
; キューティー・レインボー弱
[State -1]
type = ChangeState
value = 1050
triggerall = roundstate = 2
triggerall = command = "dp_a"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
trigger3 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger4 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger5 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger6 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger7 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger8 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger9 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger10 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger11 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger12 = stateno = 430 && AnimElemNo(0) = [6,7]
trigger13 = stateno = 1080 && AnimElemNo(0) = 10
;---------------------------------------------------------------------------
; キューティー・レインボー強
[State -1]
type = ChangeState
value = 1055
triggerall = roundstate = 2
triggerall = command = "dp_b"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
trigger3 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger4 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger5 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger6 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger7 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger8 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger9 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger10 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger11 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger12 = stateno = 430 && AnimElemNo(0) = [6,7]
trigger13 = stateno = 1080 && AnimElemNo(0) = 10
;---------------------------------------------------------------------------
; ヒップ・バズーカ弱
[State -1]
type = ChangeState
value = 1030
triggerall = roundstate = 2
triggerall = command = "qcf_x"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
trigger3 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger4 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger5 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger6 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger7 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger8 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger9 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger10 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger11 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger12 = stateno = 430 && AnimElemNo(0) = [6,7]
trigger13 = stateno = 1080 && AnimElemNo(0) = 10
;---------------------------------------------------------------------------
; ヒップ・バズーカ強
[State -1]
type = ChangeState
value = 1035
triggerall = roundstate = 2
triggerall = command = "qcf_y"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
trigger3 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger4 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger5 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger6 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger7 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger8 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger9 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger10 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger11 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger12 = stateno = 430 && AnimElemNo(0) = [6,7]
trigger13 = stateno = 1080 && AnimElemNo(0) = 10
;---------------------------------------------------------------------------
; チアリーダー・キック弱
[State -1]
type = ChangeState
value = 1040
triggerall = roundstate = 2
triggerall = command = "qcf_a"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
trigger3 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger4 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger5 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger6 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger7 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger8 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger9 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger10 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger11 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger12 = stateno = 430 && AnimElemNo(0) = [6,7]
trigger13 = stateno = 1080 && AnimElemNo(0) = 10
;---------------------------------------------------------------------------
; チアリーダー・キック強
[State -1]
type = ChangeState
value = 1045
triggerall = roundstate = 2
triggerall = command = "qcf_b"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
trigger3 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger4 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger5 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger6 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger7 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger8 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger9 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger10 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger11 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger12 = stateno = 430 && AnimElemNo(0) = [6,7]
trigger13 = stateno = 1080 && AnimElemNo(0) = 10
;---------------------------------------------------------------------------
; ハーティ・ブランディッシュ解除
[State -1]
type = ChangeState
value = 1014
triggerall = roundstate = 2
trigger1 = stateno = 1010 && AnimElem = 4,> 0 && command ="b"
trigger2 = stateno = 1020 && AnimElem = 4,> 0 && command ="y"
;---------------------------------------------------------------------------
; ハーティ・ブランディッシュ～タイプB(C派生)
[State -1]
type = ChangeState
value = 1016
triggerall = roundstate = 2
triggerall = command = "qcb_a"
trigger1 = stateno = 1012 && AnimElem = 7,> 0 && AnimElem = 10,< 0
trigger2 = stateno = 1013 && AnimElem = 7,> 0 && AnimElem = 10,< 0
;---------------------------------------------------------------------------
; ハーティ・ブランディッシュ～タイプC(D派生)
[State -1]
type = ChangeState
value = 1013
triggerall = roundstate = 2
triggerall = command = "qcb_y"
trigger1 = stateno = 1023 && AnimElem = 5,> 0 && AnimElem = 14,< 0
;---------------------------------------------------------------------------
; ハーティ・ブランディッシュ～タイプA
[State -1]
type = ChangeState
value = 1000
triggerall = roundstate = 2
triggerall = command = "qcb_x"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
;---------------------------------------------------------------------------
; ハーティ・ブランディッシュ～タイプA(キャンセル)
[State -1]
type = ChangeState
value = 1002
triggerall = roundstate = 2
triggerall = command = "qcb_x"
trigger1 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger2 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger3 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger4 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger5 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger6 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger7 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger8 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger9 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger10 = stateno = 430 && AnimElemNo(0) = [6,7]
trigger11 = stateno = 1080 && AnimElemNo(0) = 10
;---------------------------------------------------------------------------
; ハーティ・ブランディッシュ～タイプB
[State -1]
type = ChangeState
value = 1015
triggerall = roundstate = 2
triggerall = command = "qcb_a"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
;---------------------------------------------------------------------------
; ハーティ・ブランディッシュ～タイプB(キャンセル)
[State -1]
type = ChangeState
value = 1018
triggerall = roundstate = 2
triggerall = command = "qcb_a"
trigger1 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger2 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger3 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger4 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger5 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger6 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger7 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger8 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger9 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger10 = stateno = 430 && AnimElemNo(0) = [6,7]
trigger11 = stateno = 1080 && AnimElemNo(0) = 10
;---------------------------------------------------------------------------
; ハーティ・ブランディッシュ～タイプC
[State -1]
type = ChangeState
value = 1010
triggerall = roundstate = 2
triggerall = command = "qcb_y"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
trigger3 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger4 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger5 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger6 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger7 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger8 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger9 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger10 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger11 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger12 = stateno = 430 && AnimElemNo(0) = [6,7]
trigger13 = stateno = 1080 && AnimElemNo(0) = 10
;---------------------------------------------------------------------------
; ハーティ・ブランディッシュ～タイプD
[State -1]
type = ChangeState
value = 1020
triggerall = roundstate = 2
triggerall = command = "qcb_b"
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
trigger3 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger4 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger5 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger6 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger7 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger8 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger9 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger10 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger11 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger12 = stateno = 430 && AnimElemNo(0) = [6,7]
trigger13 = stateno = 1080 && AnimElemNo(0) = 10
;---------------------------------------------------------------------------
; リズミック・バウンドA
[State -1]
type = ChangeState
value = 1060
triggerall = roundstate = 2
triggerall = command = "x"
trigger1 = stateno = 1030 && MoveContact = [1,6]
trigger2 = stateno = 1035 && MoveContact = [1,6]
;---------------------------------------------------------------------------
; リズミック・バウンドB
[State -1]
type = ChangeState
value = 1062
triggerall = roundstate = 2
triggerall = command = "a"
trigger1 = stateno = 1030 && MoveContact = [1,6]
trigger2 = stateno = 1035 && MoveContact = [1,6]
;---------------------------------------------------------------------------
; リズミック・バウンドC
[State -1]
type = ChangeState
value = 1061
triggerall = roundstate = 2
triggerall = command = "y"
trigger1 = stateno = 1030 && MoveContact = [1,6]
trigger2 = stateno = 1035 && MoveContact = [1,6]
;---------------------------------------------------------------------------
; リズミック・バウンドD
[State -1]
type = ChangeState
value = 1063
triggerall = roundstate = 2
triggerall = command = "b"
trigger1 = stateno = 1030 && MoveContact = [1,6]
trigger2 = stateno = 1035 && MoveContact = [1,6]
;---------------------------------------------------------------------------
; リズミック・キック
[State -1]
type = ChangeState
value = 1065
triggerall = roundstate = 2
triggerall = command = "x" || command = "y" || command = "a" || command = "b"
trigger1 = AnimElem = 2,>= 0 && stateno = [1060,1063]
;---------------------------------------------------------------------------
; GCアタック
[State -1]
type = ChangeState
value = 960
triggerall = roundstate = 2
triggerall = ((command = "y" && command ="b") || command = "c") && power >= 1000
trigger1 = stateno = [150,153]
;---------------------------------------------------------------------------
; GCタクティカルステップ
[State -1]
type = ChangeState
value = 950
triggerall = roundstate = 2
triggerall = command = "FF" && power >= 1000
trigger1 = stateno = [150,153]
;---------------------------------------------------------------------------
; タクティカルステップ
[State -1]
type = ChangeState
value = 950
triggerall = roundstate = 2
triggerall = ((command = "x" && command ="a") || command = "c") && power >= 500
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger3 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger4 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger5 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger6 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger7 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger8 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger9 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger10 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger11 = stateno = 430 && AnimElemNo(0) = [6,7]
;---------------------------------------------------------------------------
; スウェアリング・スマッシュ
[State -1]
type = ChangeState
value = 900
triggerall = roundstate = 2
triggerall = command = "y" && command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
;---------------------------------------------------------------------------
; ラウンド・ヒールキック
[State -1]
type = ChangeState
value = 300
triggerall = roundstate = 2
triggerall = command = "b" && command = "holdfwd" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
;---------------------------------------------------------------------------
; ラウンド・ヒールキック(キャンセル)
[State -1]
type = ChangeState
value = 301
triggerall = roundstate = 2
triggerall = command = "b" && command = "holdfwd" && command != "holddown"
trigger1 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger2 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger3 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger4 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger5 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger6 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger7 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger8 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger9 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger10 = stateno = 430 && AnimElemNo(0) = [6,7]
;---------------------------------------------------------------------------
; スナッピング・スタンプキック
[State -1]
type = ChangeState
value = 310
triggerall = roundstate = 2
triggerall = command = "b" && command = "holdback" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
;---------------------------------------------------------------------------
; スナッピング・スタンプキック(キャンセル)
[State -1]
type = ChangeState
value = 311
triggerall = roundstate = 2
triggerall = command = "b" && command = "holdback" && command != "holddown"
trigger1 = stateno = 200 && AnimElemNo(0) = [4,5]
trigger2 = stateno = 205 && AnimElemNo(0) = [4,6]
trigger3 = stateno = 215 && AnimElemNo(0) = [7,8]
trigger4 = stateno = 225 && AnimElemNo(0) = [5,6]
trigger5 = stateno = 230 && AnimElemNo(0) = [11,12]
trigger6 = stateno = 235 && AnimElemNo(0) = [6,7]
trigger7 = stateno = 400 && AnimElemNo(0) = [4,5]
trigger8 = stateno = 410 && AnimElemNo(0) = [7,8]
trigger9 = stateno = 420 && AnimElemNo(0) = [3,4]
trigger10 = stateno = 430 && AnimElemNo(0) = [6,7]
trigger11 = stateno = 301 && AnimElemNo(0) = [8,9]
;---------------------------------------------------------------------------
; 立ち弱P
[State -1]
type = ChangeState
value = ifelse(p2bodydist x < 20,205,200)
triggerall = roundstate = 2
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
trigger3 = stateno = 200 && AnimElem = 5,> 0
trigger4 = stateno = 205 && AnimElem = 5,> 0
trigger5 = stateno = 400 && AnimElem = 5,> 0
trigger6 = stateno = 420 && AnimElem = 4,> 0
;---------------------------------------------------------------------------
; 立ち強P
[State -1]
type = ChangeState
value = ifelse(p2bodydist x < 20,215,210)
triggerall = roundstate = 2
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
;---------------------------------------------------------------------------
; 立ち弱K
[State -1]
type = ChangeState
value = ifelse(p2bodydist x < 20,225,220)
triggerall = roundstate = 2
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
;---------------------------------------------------------------------------
; 立ち強K
[State -1]
type = ChangeState
value = ifelse(p2bodydist x < 20,235,230)
triggerall = roundstate = 2
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
;---------------------------------------------------------------------------
; 屈み弱P
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
trigger3 = stateno = 200 && AnimElem = 5,> 0
trigger4 = stateno = 205 && AnimElem = 5,> 0
trigger5 = stateno = 400 && AnimElem = 5,> 0
trigger6 = stateno = 420 && AnimElem = 4,> 0
;---------------------------------------------------------------------------
; 屈み強P
[State -1]
type = ChangeState
value = 410
triggerall = roundstate = 2
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
;---------------------------------------------------------------------------
; 屈み弱K
[State -1]
type = ChangeState
value = 420
triggerall = roundstate = 2
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
trigger3 = stateno = 200 && AnimElem = 5,> 0
trigger4 = stateno = 205 && AnimElem = 5,> 0
trigger5 = stateno = 400 && AnimElem = 5,> 0
trigger6 = stateno = 420 && AnimElem = 4,> 0
;---------------------------------------------------------------------------
; 屈み強K
[State -1]
type = ChangeState
value = 430
triggerall = roundstate = 2
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
;---------------------------------------------------------------------------
; ジャンプ弱P
[State -1]
type = ChangeState
value = 600
triggerall = roundstate = 2
triggerall = command = "x"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ強P
[State -1]
type = ChangeState
value = 610
triggerall = roundstate = 2
triggerall = command = "y"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ弱K
[State -1]
type = ChangeState
value = 620
triggerall = roundstate = 2
triggerall = command = "a"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ強K
[State -1]
type = ChangeState
value = 630
triggerall = roundstate = 2
triggerall = command = "b"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = roundstate = 2
triggerall = command = "start" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 950 || stateno = [100,102]) && AnimElem = 4,>= 0
;---------------------------------------------------------------------------
; Run foward
[State -1, Run foward]
type = ChangeState
value = 100
triggerall = roundstate = 2
trigger1 = command = "FF"
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; Hop back
[State -1, Hop back]
type = ChangeState
value = 105
triggerall = roundstate = 2
trigger1 = command = "BB"
trigger1 = statetype != A && ctrl
  
