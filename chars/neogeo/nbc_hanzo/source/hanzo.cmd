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
time = 30

[Command]
name = "qcf2_b"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "qcb2_x"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "qcb2_y"
command = ~D, DB, B, D, DB, B, y
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "qcf_x"
command = ~D, DF, F, x

[Command]
name = "qcf_y"
command = ~D, DF, F, y

[Command]
name = "qcf2_x"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "qcf2_y"
command = ~D, DF, F, D, DF, F, y
time = 20

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
name = "dp_x"
command = ~F, D, DF, x

[Command]
name = "dp_y"
command = ~F, D, DF, y

[Command]
name = "rdp_a"
command = ~B, D, DB, a

[Command]
name = "rdp_b"
command = ~B, D, DB, b

[Command]
name = "du_x"
command = ~$D, $U, x
time = 10

[Command]
name = "du_y"
command = ~$D, $U, y
time = 10

[Command]
name = "du_a"
command = ~$D, $U, a
time = 10

[Command]
name = "du_b"
command = ~$D, $U, b
time = 10

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
; à…âÍîEñ@âúã` ûêìVëMåıêw é„
[State -1]
type = ChangeState
value = 3010
triggerall = roundstate = 2
triggerall = command = "qcb2_x" && pos Y < -20 && power >= 2000
trigger1 = statetype = A && ctrl
trigger2 = stateno = 1061 && AnimElem = 2,>= 0
;---------------------------------------------------------------------------
; à…âÍîEñ@âúã` ûêìVëMåıêw ã≠
[State -1]
type = ChangeState
value = 3015
triggerall = roundstate = 2
triggerall = command = "qcb2_y" && pos Y < -20 && power >= 2000
trigger1 = statetype = A && ctrl
trigger2 = stateno = 1061 && AnimElem = 2,>= 0
;---------------------------------------------------------------------------
; à…âÍîEñ@âúã` ûêìVëMåıêw(ínè„) é„
[State -1]
type = ChangeState
value = 3020
triggerall = roundstate = 2
triggerall = command = "qcb2_x" && power >= 2000
trigger1 = statetype != A && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
trigger11 = stateno = 1000 && AnimElemNo(0) = [10,12]
trigger12 = stateno = 1005 && AnimElemNo(0) = [10,12]
;---------------------------------------------------------------------------
; à…âÍîEñ@âúã` ûêìVëMåıêw(ínè„) ã≠
[State -1]
type = ChangeState
value = 3025
triggerall = roundstate = 2
triggerall = command = "qcb2_y" && power >= 2000
trigger1 = statetype != A && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
trigger11 = stateno = 1000 && AnimElemNo(0) = [10,12]
trigger12 = stateno = 1005 && AnimElemNo(0) = [10,12]
;---------------------------------------------------------------------------
; à…âÍîEñ@âúã` î™ñÂífåıéa é„
[State -1]
type = ChangeState
value = 3000
triggerall = roundstate = 2
triggerall = command = "qcf2_a" && power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
trigger11 = stateno = 1000 && AnimElemNo(0) = [10,12]
trigger12 = stateno = 1005 && AnimElemNo(0) = [10,12]
;---------------------------------------------------------------------------
; à…âÍîEñ@âúã` î™ñÂífåıéa ã≠
[State -1]
type = ChangeState
value = 3005
triggerall = roundstate = 2
triggerall = command = "qcf2_b" && power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
trigger11 = stateno = 1000 && AnimElemNo(0) = [10,12]
trigger12 = stateno = 1005 && AnimElemNo(0) = [10,12]
;---------------------------------------------------------------------------
; É_ÉuÉãóÛåıéa é„
[State -1]
type = ChangeState
value = 1010
triggerall = roundstate = 2
triggerall = command = "qcf2_x" && !numproj && power >= 500
trigger1 = statetype != A && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
;---------------------------------------------------------------------------
; É_ÉuÉãóÛåıéa ã≠
[State -1]
type = ChangeState
value = 1015
triggerall = roundstate = 2
triggerall = command = "qcf2_y" && !numproj && power >= 500
trigger1 = statetype != A && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
;---------------------------------------------------------------------------
; åıó¥îg é„
[State -1]
type = ChangeState
value = 1020
triggerall = roundstate = 2
triggerall = command = "dp_x"
trigger1 = statetype != A && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
;---------------------------------------------------------------------------
; åıó¥îg ã≠
[State -1]
type = ChangeState
value = 1025
triggerall = roundstate = 2
triggerall = command = "dp_y"
trigger1 = statetype != A && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
;---------------------------------------------------------------------------
; óÛåıéa é„
[State -1]
type = ChangeState
value = 1000
triggerall = roundstate = 2
triggerall = command = "qcf_x" && !numproj
trigger1 = statetype != A && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
;---------------------------------------------------------------------------
; óÛåıéa ã≠
[State -1]
type = ChangeState
value = 1005
triggerall = roundstate = 2
triggerall = command = "qcf_y" && !numproj
trigger1 = statetype != A && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
;---------------------------------------------------------------------------
; îEé“ÉåÉbÉOÉâÉäÉAÅ[Ég é„
[State -1]
type = ChangeState
value = 1030
triggerall = roundstate = 2
triggerall = command = "rdp_a"
trigger1 = statetype != A && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
;---------------------------------------------------------------------------
; îEé“ÉåÉbÉOÉâÉäÉAÅ[Ég ã≠
[State -1]
type = ChangeState
value = 1035
triggerall = roundstate = 2
triggerall = command = "rdp_b"
trigger1 = statetype != A && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
;---------------------------------------------------------------------------
; îEñ@åıó÷âQéa X
[State -1]
type = ChangeState
value = 1040
triggerall = roundstate = 2
triggerall = command = "qcb_x"
trigger1 = statetype != A && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
;---------------------------------------------------------------------------
; îEñ@åıó÷âQéa Y
[State -1]
type = ChangeState
value = 1045
triggerall = roundstate = 2
triggerall = command = "qcb_y"
trigger1 = statetype != A && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
;---------------------------------------------------------------------------
; îEñ@åıó÷âQéa A
[State -1]
type = ChangeState
value = 1050
triggerall = roundstate = 2
triggerall = command = "qcb_a"
trigger1 = statetype != A && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
;---------------------------------------------------------------------------
; îEñ@åıó÷âQéa B
[State -1]
type = ChangeState
value = 1055
triggerall = roundstate = 2
triggerall = command = "qcb_b"
trigger1 = statetype != A && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
;---------------------------------------------------------------------------
; î˜êoâBÇÍÇÃèp X
[State -1]
type = ChangeState
value = 1060
triggerall = roundstate = 2
triggerall = command = "du_x"
trigger1 = ctrl || stateno = 40
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
trigger11 = stateno = 1036 && movecontact && AnimElemNo(0) = [7,8]
trigger12 = stateno = 1036 && movecontact && AnimElemNo(0) = [18,19]
;---------------------------------------------------------------------------
; î˜êoâBÇÍÇÃèp Y
[State -1]
type = ChangeState
value = 1065
triggerall = roundstate = 2
triggerall = command = "du_y"
trigger1 = ctrl || stateno = 40
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
trigger11 = stateno = 1036 && movecontact && AnimElemNo(0) = [7,8]
trigger12 = stateno = 1036 && movecontact && AnimElemNo(0) = [18,19]
;---------------------------------------------------------------------------
; î˜êoâBÇÍÇÃèp A
[State -1]
type = ChangeState
value = 1070
triggerall = roundstate = 2
triggerall = command = "du_a"
trigger1 = ctrl || stateno = 40
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
trigger11 = stateno = 1036 && movecontact && AnimElemNo(0) = [7,8]
trigger12 = stateno = 1036 && movecontact && AnimElemNo(0) = [18,19]
;---------------------------------------------------------------------------
; î˜êoâBÇÍÇÃèp B
[State -1]
type = ChangeState
value = 1075
triggerall = roundstate = 2
triggerall = command = "du_b"
trigger1 = ctrl || stateno = 40
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger6 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger8 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger9 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger10 = stateno = 301 && AnimElemNo(0) = [5,6]
trigger11 = stateno = 1036 && movecontact && AnimElemNo(0) = [7,8]
trigger12 = stateno = 1036 && movecontact && AnimElemNo(0) = [18,19]
;---------------------------------------------------------------------------
; GCÉAÉ^ÉbÉN
[State -1]
type = ChangeState
value = 960
triggerall = roundstate = 2
triggerall = command = "c" && power >= 1000
trigger1 = stateno = [150,153]
;---------------------------------------------------------------------------
; GCÉ^ÉNÉeÉBÉJÉãÉXÉeÉbÉv
[State -1]
type = ChangeState
value = 950
triggerall = roundstate = 2
triggerall = command = "FF" && power >= 1000
trigger1 = stateno = [150,153]
;---------------------------------------------------------------------------
; É^ÉNÉeÉBÉJÉãÉXÉeÉbÉv
[State -1]
type = ChangeState
value = 950
triggerall = roundstate = 2
triggerall = ((command = "x" && command ="a") || command = "c") && power >= 500
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger3 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger4 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger5 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger6 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger7 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger8 = stateno = 430 && AnimElemNo(0) = [5,6]
trigger9 = stateno = 301 && AnimElemNo(0) = [5,6]
;---------------------------------------------------------------------------
; ó†ìäÇ∞
[State -1]
type = ChangeState
value = 900
triggerall = roundstate = 2
triggerall = command = "y" && command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 4,>= 0 || stateno = 101)
;---------------------------------------------------------------------------
; è∂íÍë≈(ÉLÉÉÉìÉZÉã)
[State -1]
type = ChangeState
value = 301
triggerall = roundstate = 2
triggerall = command = "y" && command = "holdfwd" && command != "holddown"
trigger1 = stateno = 200 && AnimElemNo(0) = [2,3]
trigger2 = stateno = 205 && AnimElemNo(0) = [2,3]
trigger3 = stateno = 215 && AnimElemNo(0) = [4,5]
trigger4 = stateno = 400 && AnimElemNo(0) = [2,3]
trigger5 = stateno = 410 && AnimElemNo(0) = [3,5]
trigger6 = stateno = 420 && AnimElemNo(0) = [2,3]
trigger7 = stateno = 430 && AnimElemNo(0) = [5,6]
;---------------------------------------------------------------------------
; è∂íÍë≈
[State -1]
type = ChangeState
value = 300
triggerall = roundstate = 2
triggerall = command = "y" && command = "holdfwd" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
;---------------------------------------------------------------------------
; ÉCÉYÉiéaÇË
[State -1]
type = ChangeState
value = 700
triggerall = roundstate = 2
triggerall = command = "x" && command = "holddown" && pos y <= -40
trigger1 = statetype = A && ctrl
trigger2 = stateno = 1061 && AnimElem = 3,>= 0
;---------------------------------------------------------------------------
; óßÇøé„P
[State -1]
type = ChangeState
value = ifelse(p2bodydist x < 20,205,200)
triggerall = roundstate = 2
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 200 && AnimElem = 3,>= 0
trigger4 = stateno = 205 && AnimElem = 3,>= 0
;---------------------------------------------------------------------------
; óßÇøã≠P
[State -1]
type = ChangeState
value = ifelse(p2bodydist x < 20,215,210)
triggerall = roundstate = 2
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
;---------------------------------------------------------------------------
; óßÇøé„K
[State -1]
type = ChangeState
value = ifelse(p2bodydist x < 20,225,220)
triggerall = roundstate = 2
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
;---------------------------------------------------------------------------
; óßÇøã≠K
[State -1]
type = ChangeState
value = ifelse(p2bodydist x < 20,235,230)
triggerall = roundstate = 2
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
;---------------------------------------------------------------------------
; ã¸Ç›é„P
[State -1]
type = ChangeState
value = 400
triggerall = roundstate = 2
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 400 && AnimElem = 3,>= 0
trigger4 = stateno = 420 && AnimElem = 3,>= 0
;---------------------------------------------------------------------------
; ã¸Ç›ã≠P
[State -1]
type = ChangeState
value = 410
triggerall = roundstate = 2
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 205 && AnimElemNo(0) = [2,3]
;---------------------------------------------------------------------------
; ã¸Ç›é„K
[State -1]
type = ChangeState
value = 420
triggerall = roundstate = 2
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
trigger3 = stateno = 420 && AnimElem = 3,>= 0
;---------------------------------------------------------------------------
; ã¸Ç›ã≠K
[State -1]
type = ChangeState
value = 430
triggerall = roundstate = 2
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
;---------------------------------------------------------------------------
; ÉWÉÉÉìÉvé„P
[State -1]
type = ChangeState
value = 600
triggerall = roundstate = 2
triggerall = command = "x"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 1061 && AnimElem = 3,>= 0
;---------------------------------------------------------------------------
; ÉWÉÉÉìÉvã≠P
[State -1]
type = ChangeState
value = 610
triggerall = roundstate = 2
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 1061 && AnimElem = 3,>= 0
;---------------------------------------------------------------------------
; ÉWÉÉÉìÉvé„K
[State -1]
type = ChangeState
value = ifelse(vel x,625,620)
triggerall = roundstate = 2
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 1061 && AnimElem = 3,>= 0
;---------------------------------------------------------------------------
; ÉWÉÉÉìÉvã≠K
[State -1]
type = ChangeState
value = ifelse(vel x,635,630)
triggerall = roundstate = 2
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 1061 && AnimElem = 3,>= 0
;---------------------------------------------------------------------------
; íßî≠
[State -1]
type = ChangeState
value = 195
triggerall = roundstate = 2
triggerall = command = "start" && command != "holddown"
trigger1 = statetype = S && ctrl && stateno != 195
trigger2 = ((stateno = 950 || stateno = 100) && AnimElem = 3,>= 0 || stateno = 101 || stateno = 951)
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
  
