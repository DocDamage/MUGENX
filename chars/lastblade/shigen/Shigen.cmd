;=====================================================================
;  CMD File For "Shigen Naoe"                           Made By M.M.R.
;                                       Ver. 0.9           2001.Jun.20
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
; “®“V‹Á’n or k“V“®’n
[Command]
name = "douten"
command = ~F,DF, D,DB, B, F,DF, D,DB, B, x+y
time = 45

[Command]
name = "douten"
command = ~F,DF, D,DB, B, F,DF, D,DB, B, b
time = 45

[Command]
name = "douten"
command = ~DF, D,DB,DF, D,DB, x+y
time = 30

[Command]
name = "douten"
command = ~DF, D,DB,DF, D,DB, b
time = 30

;---------------------------------------------------------------------
; –\ŒÕég‰Í
[Command]
name = "bouko"
command = ~D,DF, F, D,DF, F, x+y
time = 40

[Command]
name = "bouko"
command = ~D,DF, F, D,DF, F, b
time = 40

[Command]
name = "bouko"
command = ~D,DF, D,DF, x+y
time = 25

[Command]
name = "bouko"
command = ~D,DF, D,DF, b
time = 25

;---------------------------------------------------------------------
; ‹Á“V“®’n or •s‹ä‘Õ“V
[Command]
name = "douchi"
command = ~F,DF, D,DB, B, F,DF, D,DB, B, y
time = 45

[Command]
name = "douchi"
command = ~DF, D,DB,DF, D,DB, y
time = 30

;---------------------------------------------------------------------
; ˆö‰Ê‰ž•ñ
[Command]
name = "inga"
command = ~B,DB, D,DF, F, B, x+y
time = 40

[Command]
name = "inga"
command = ~B,DB, D,DF, F, B, b
time = 40

[Command]
name = "inga"
command = ~B,DB, D,DF, B, x+y
time = 30

[Command]
name = "inga"
command = ~B,DB, D,DF, B, b
time = 30

;---------------------------------------------------------------------
; “{”¯Õ“V
[Command]
name = "dohatsu"
command = ~F,DF, D,DB, B, F,DF, D,DB, B, z
time = 45

[Command]
name = "dohatsu"
command = ~DF, D,DB,DF, D,DB, z
time = 30

;-| Special Motions |-------------------------------------------------

;---------------------------------------------------------------------
; ‹à„Ó
[Command]
name = "kongou"
command = ~F,DF, D,DB, B, F, z
time = 35

[Command]
name = "kongou"
command = ~F,DF, D,DB, F, z
time = 30

;---------------------------------------------------------------------
; ãÅ‰Ó@iŽã^’†^‹­j
[Command]
name = "hisui_a"
command = ~B,DB, D,DF, F, x
time = 30

[Command]
name = "hisui_a"
command = ~B,DB, D,DF, x
time = 25

[Command]
name = "hisui_b"
command = ~B,DB, D,DF, F, y
time = 30

[Command]
name = "hisui_b"
command = ~B,DB, D,DF, y
time = 25

[Command]
name = "hisui_c"
command = ~B,DB, D,DF, F, z
time = 30

[Command]
name = "hisui_c"
command = ~B,DB, D,DF, z
time = 25

;---------------------------------------------------------------------
; —ó™ô™áEâ™ô™á
[Command]
name = "retsu"
command = ~F, D,DF, x
time = 25

[Command]
name = "zetsu"
command = ~F, D,DF, y
time = 25

;---------------------------------------------------------------------
; ”’ŒÕ’ÜEŽã^‹­
[Command]
name = "bya_a"
command = ~D,DB, B, x
time = 20

[Command]
name = "bya_b"
command = ~D,DB, B, y
time = 20

[Command]
name = "bya_c"
command = ~D,DB, B, z
time = 20

;---------------------------------------------------------------------
; ”’ŒÕP
[Command]
name = "bya_c"
command = ~D,DB, B, z
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
command = a
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
name = "xy"
command = x+y
time = 1

[Command]
name = "yz"
command = y+z
time = 1

[Command]
name = "xz"
command = x+z
time = 1

[Command]
name = "az"
command = a+z
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
name = "downfwd_x"
command = /DF,x
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
time = 1

[Command]
name = "downfwd_z"
command = /DF,z
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

;-----------------------------For Last Blade 2
[Command]
name = "holddfwd"
command = /$DF
time = 1

[Command]
name = "upfwd"
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
; “®“V‹Á’n
[State -1]
type = ChangeState
value = 3300
triggerall = Command = "douten"
triggerall = Power >= 1000
triggerall = StateType != A
trigger1 = Ctrl = 1

;-------------------’Êí‹ZƒLƒƒƒ“ƒZƒ‹Ý’è
[State -1]
type = ChangeState
value = 3300
triggerall = Command = "douten"
triggerall = Power >= 1000
triggerall = movecontact
triggerall = StateType != A
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7
trigger2 = StateNo = 205
trigger2 = AnimElem = 3, >= 0
trigger2 = AnimElem = 3, <= 7
trigger3 = StateNo = 210
trigger3 = AnimElem = 6, >= 0
trigger3 = AnimElem = 6, <= 12
trigger4 = StateNo = 215
trigger4 = AnimElem = 6, >= 0
trigger4 = AnimElem = 6, <= 12
trigger5 = StateNo = 218
trigger5 = AnimElem = 6, >= 0
trigger5 = AnimElem = 6, <= 12
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, >= 0
trigger6 = AnimElem = 5, <= 9
trigger7 = StateNo = 300
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 3, <= 10
trigger8 = StateNo = 305
trigger8 = AnimElem = 3, >= 0
trigger8 = AnimElem = 3, <= 10
trigger9 = StateNo = 305
trigger9 = AnimElem = 3, >= 0
trigger9 = AnimElem = 3, <= 10
trigger10 = StateNo = 310
trigger10 = AnimElem = 5, >= 0
trigger10 = AnimElem = 6, <= 12
trigger11 = StateNo = 320
trigger11 = AnimElem = 2, >= 0
trigger11 = AnimElem = 2, <= 10
trigger12 = StateNo = 600
trigger12 = AnimElem = 3, >= 0
trigger12 = AnimElem = 3, <= 7
trigger13 = StateNo = 630
trigger13 = AnimElem = 3, >= 0
trigger13 = AnimElem = 5, <= 7
trigger14 = StateNo = 700
trigger14 = AnimElem = 5, >= 0
trigger14 = AnimElem = 7, <= 2
trigger15 = StateNo = 750
trigger15 = AnimElem = 3, >= 0
trigger15 = AnimElem = 6, <= 8
trigger16 = StateNo = 1120
trigger16 = AnimElem = 5, >= 0
trigger16 = AnimElem = 6, <= 5
trigger17 = StateNo = 1000
trigger18 = StateNo = 1050

;---------------------------------------------------------------------
; •s‹ä‘Õ“V
[State -1]
type = ChangeState
value = 3600
triggerall = Command = "douchi"
triggerall = Power >= 2000
triggerall = StateType != A
trigger1 = Ctrl = 1

;-------------------’Êí‹ZƒLƒƒƒ“ƒZƒ‹Ý’è
[State -1]
type = ChangeState
value = 3600
triggerall = Command = "douchi"
triggerall = Power >= 2000
triggerall = movecontact
triggerall = StateType != A
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7
trigger2 = StateNo = 205
trigger2 = AnimElem = 3, >= 0
trigger2 = AnimElem = 3, <= 7
trigger3 = StateNo = 210
trigger3 = AnimElem = 6, >= 0
trigger3 = AnimElem = 6, <= 12
trigger4 = StateNo = 215
trigger4 = AnimElem = 6, >= 0
trigger4 = AnimElem = 6, <= 12
trigger5 = StateNo = 218
trigger5 = AnimElem = 6, >= 0
trigger5 = AnimElem = 6, <= 12
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, >= 0
trigger6 = AnimElem = 5, <= 9
trigger7 = StateNo = 300
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 3, <= 10
trigger8 = StateNo = 305
trigger8 = AnimElem = 3, >= 0
trigger8 = AnimElem = 3, <= 10
trigger9 = StateNo = 305
trigger9 = AnimElem = 3, >= 0
trigger9 = AnimElem = 3, <= 10
trigger10 = StateNo = 310
trigger10 = AnimElem = 5, >= 0
trigger10 = AnimElem = 6, <= 12
trigger11 = StateNo = 320
trigger11 = AnimElem = 2, >= 0
trigger11 = AnimElem = 2, <= 10
trigger12 = StateNo = 600
trigger12 = AnimElem = 3, >= 0
trigger12 = AnimElem = 3, <= 7
trigger13 = StateNo = 630
trigger13 = AnimElem = 3, >= 0
trigger13 = AnimElem = 5, <= 7
trigger14 = StateNo = 700
trigger14 = AnimElem = 5, >= 0
trigger14 = AnimElem = 7, <= 2
trigger15 = StateNo = 750
trigger15 = AnimElem = 3, >= 0
trigger15 = AnimElem = 6, <= 8
trigger16 = StateNo = 1120
trigger16 = AnimElem = 5, >= 0
trigger16 = AnimElem = 6, <= 5

;---------------------------------------------------------------------
; ˆö‰Ê‰ž•ñ
[State -1]
type = ChangeState
value = 3400
triggerall = Command = "inga"
triggerall = Power >= 1000
triggerall = StateType != A
trigger1 = Ctrl = 1

;-------------------’Êí‹ZƒLƒƒƒ“ƒZƒ‹Ý’è
[State -1]
type = ChangeState
value = 3400
triggerall = Command = "inga"
triggerall = Power >= 1000
triggerall = movecontact
triggerall = StateType != A
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7
trigger2 = StateNo = 205
trigger2 = AnimElem = 3, >= 0
trigger2 = AnimElem = 3, <= 7
trigger3 = StateNo = 210
trigger3 = AnimElem = 6, >= 0
trigger3 = AnimElem = 6, <= 12
trigger4 = StateNo = 215
trigger4 = AnimElem = 6, >= 0
trigger4 = AnimElem = 6, <= 12
trigger5 = StateNo = 218
trigger5 = AnimElem = 6, >= 0
trigger5 = AnimElem = 6, <= 12
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, >= 0
trigger6 = AnimElem = 5, <= 9
trigger7 = StateNo = 300
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 3, <= 10
trigger8 = StateNo = 305
trigger8 = AnimElem = 3, >= 0
trigger8 = AnimElem = 3, <= 10
trigger9 = StateNo = 305
trigger9 = AnimElem = 3, >= 0
trigger9 = AnimElem = 3, <= 10
trigger10 = StateNo = 310
trigger10 = AnimElem = 5, >= 0
trigger10 = AnimElem = 6, <= 12
trigger11 = StateNo = 320
trigger11 = AnimElem = 2, >= 0
trigger11 = AnimElem = 2, <= 10
trigger12 = StateNo = 600
trigger12 = AnimElem = 3, >= 0
trigger12 = AnimElem = 3, <= 7
trigger13 = StateNo = 630
trigger13 = AnimElem = 3, >= 0
trigger13 = AnimElem = 5, <= 7
trigger14 = StateNo = 700
trigger14 = AnimElem = 5, >= 0
trigger14 = AnimElem = 7, <= 2
trigger15 = StateNo = 750
trigger15 = AnimElem = 3, >= 0
trigger15 = AnimElem = 6, <= 8
trigger16 = StateNo = 1120
trigger16 = AnimElem = 5, >= 0
trigger16 = AnimElem = 6, <= 5
trigger17 = StateNo = 1000
trigger18 = StateNo = 1050

;---------------------------------------------------------------------
; –\ŒÕég‰Í
[State -1]
type = ChangeState
value = 3100
triggerall = Command = "bouko"
triggerall = Power >= 1000
triggerall = StateType != A
trigger1 = Ctrl = 1

;-------------------’Êí‹ZƒLƒƒƒ“ƒZƒ‹Ý’è
[State -1]
type = ChangeState
value = 3100
triggerall = Command = "bouko"
triggerall = Power >= 1000
triggerall = movecontact
triggerall = StateType != A
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7
trigger2 = StateNo = 205
trigger2 = AnimElem = 3, >= 0
trigger2 = AnimElem = 3, <= 7
trigger3 = StateNo = 210
trigger3 = AnimElem = 6, >= 0
trigger3 = AnimElem = 6, <= 12
trigger4 = StateNo = 215
trigger4 = AnimElem = 6, >= 0
trigger4 = AnimElem = 6, <= 12
trigger5 = StateNo = 218
trigger5 = AnimElem = 6, >= 0
trigger5 = AnimElem = 6, <= 12
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, >= 0
trigger6 = AnimElem = 5, <= 9
trigger7 = StateNo = 300
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 3, <= 10
trigger8 = StateNo = 305
trigger8 = AnimElem = 3, >= 0
trigger8 = AnimElem = 3, <= 10
trigger9 = StateNo = 305
trigger9 = AnimElem = 3, >= 0
trigger9 = AnimElem = 3, <= 10
trigger10 = StateNo = 310
trigger10 = AnimElem = 5, >= 0
trigger10 = AnimElem = 6, <= 12
trigger11 = StateNo = 320
trigger11 = AnimElem = 2, >= 0
trigger11 = AnimElem = 2, <= 10
trigger12 = StateNo = 600
trigger12 = AnimElem = 3, >= 0
trigger12 = AnimElem = 3, <= 7
trigger13 = StateNo = 630
trigger13 = AnimElem = 3, >= 0
trigger13 = AnimElem = 5, <= 7
trigger14 = StateNo = 700
trigger14 = AnimElem = 5, >= 0
trigger14 = AnimElem = 7, <= 2
trigger15 = StateNo = 750
trigger15 = AnimElem = 3, >= 0
trigger15 = AnimElem = 6, <= 8
trigger16 = StateNo = 1120
trigger16 = AnimElem = 5, >= 0
trigger16 = AnimElem = 6, <= 5
trigger17 = StateNo = 1000
trigger18 = StateNo = 1050

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; ‹à„Ó
[State -1]
type = ChangeState
value = 1500
triggerall = Command = "kongou"
triggerall = StateType != A
trigger1 = Ctrl = 1

;-------------------’Êí‹ZƒLƒƒƒ“ƒZƒ‹Ý’è
[State -1]
type = ChangeState
value = 1500
triggerall = Command = "kongou"
triggerall = movecontact
triggerall = StateType != A
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7
trigger2 = StateNo = 205
trigger2 = AnimElem = 3, >= 0
trigger2 = AnimElem = 3, <= 7
trigger3 = StateNo = 210
trigger3 = AnimElem = 6, >= 0
trigger3 = AnimElem = 6, <= 12
trigger4 = StateNo = 215
trigger4 = AnimElem = 6, >= 0
trigger4 = AnimElem = 6, <= 12
trigger5 = StateNo = 218
trigger5 = AnimElem = 6, >= 0
trigger5 = AnimElem = 6, <= 12
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, >= 0
trigger6 = AnimElem = 5, <= 9
trigger7 = StateNo = 300
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 3, <= 10
trigger8 = StateNo = 305
trigger8 = AnimElem = 3, >= 0
trigger8 = AnimElem = 3, <= 10
trigger9 = StateNo = 305
trigger9 = AnimElem = 3, >= 0
trigger9 = AnimElem = 3, <= 10
trigger10 = StateNo = 310
trigger10 = AnimElem = 5, >= 0
trigger10 = AnimElem = 6, <= 12
trigger11 = StateNo = 320
trigger11 = AnimElem = 2, >= 0
trigger11 = AnimElem = 2, <= 10
trigger12 = StateNo = 600
trigger12 = AnimElem = 3, >= 0
trigger12 = AnimElem = 3, <= 7
trigger13 = StateNo = 630
trigger13 = AnimElem = 3, >= 0
trigger13 = AnimElem = 5, <= 7
trigger14 = StateNo = 700
trigger14 = AnimElem = 5, >= 0
trigger14 = AnimElem = 7, <= 2
trigger15 = StateNo = 750
trigger15 = AnimElem = 3, >= 0
trigger15 = AnimElem = 6, <= 8
trigger16 = StateNo = 1120
trigger16 = AnimElem = 5, >= 0
trigger16 = AnimElem = 6, <= 5

;---------------------------------------------------------------------
; ãÅ‰ÓEŽã
[State -1]
type = ChangeState
value = 1400
triggerall = Command = "hisui_a"
triggerall = StateType != A
trigger1 = Ctrl = 1

;-------------------’Êí‹ZƒLƒƒƒ“ƒZƒ‹Ý’è
[State -1]
type = ChangeState
value = 1400
triggerall = Command = "hisui_a"
triggerall = movecontact
triggerall = StateType != A
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7
trigger2 = StateNo = 205
trigger2 = AnimElem = 3, >= 0
trigger2 = AnimElem = 3, <= 7
trigger3 = StateNo = 210
trigger3 = AnimElem = 6, >= 0
trigger3 = AnimElem = 6, <= 12
trigger4 = StateNo = 215
trigger4 = AnimElem = 6, >= 0
trigger4 = AnimElem = 6, <= 12
trigger5 = StateNo = 218
trigger5 = AnimElem = 6, >= 0
trigger5 = AnimElem = 6, <= 12
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, >= 0
trigger6 = AnimElem = 5, <= 9
trigger7 = StateNo = 300
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 3, <= 10
trigger8 = StateNo = 305
trigger8 = AnimElem = 3, >= 0
trigger8 = AnimElem = 3, <= 10
trigger9 = StateNo = 305
trigger9 = AnimElem = 3, >= 0
trigger9 = AnimElem = 3, <= 10
trigger10 = StateNo = 310
trigger10 = AnimElem = 5, >= 0
trigger10 = AnimElem = 6, <= 12
trigger11 = StateNo = 320
trigger11 = AnimElem = 2, >= 0
trigger11 = AnimElem = 2, <= 10
trigger12 = StateNo = 600
trigger12 = AnimElem = 3, >= 0
trigger12 = AnimElem = 3, <= 7
trigger13 = StateNo = 630
trigger13 = AnimElem = 3, >= 0
trigger13 = AnimElem = 5, <= 7
trigger14 = StateNo = 700
trigger14 = AnimElem = 5, >= 0
trigger14 = AnimElem = 7, <= 2
trigger15 = StateNo = 750
trigger15 = AnimElem = 3, >= 0
trigger15 = AnimElem = 6, <= 8
trigger16 = StateNo = 1120
trigger16 = AnimElem = 5, >= 0
trigger16 = AnimElem = 6, <= 5

;---------------------------------------------------------------------
; ãÅ‰ÓE’†
[State -1]
type = ChangeState
value = 1410
triggerall = Command = "hisui_b"
triggerall = StateType != A
trigger1 = Ctrl = 1

;-------------------’Êí‹ZƒLƒƒƒ“ƒZƒ‹Ý’è
[State -1]
type = ChangeState
value = 1410
triggerall = Command = "hisui_b"
triggerall = movecontact
triggerall = StateType != A
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7
trigger2 = StateNo = 205
trigger2 = AnimElem = 3, >= 0
trigger2 = AnimElem = 3, <= 7
trigger3 = StateNo = 210
trigger3 = AnimElem = 6, >= 0
trigger3 = AnimElem = 6, <= 12
trigger4 = StateNo = 215
trigger4 = AnimElem = 6, >= 0
trigger4 = AnimElem = 6, <= 12
trigger5 = StateNo = 218
trigger5 = AnimElem = 6, >= 0
trigger5 = AnimElem = 6, <= 12
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, >= 0
trigger6 = AnimElem = 5, <= 9
trigger7 = StateNo = 300
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 3, <= 10
trigger8 = StateNo = 305
trigger8 = AnimElem = 3, >= 0
trigger8 = AnimElem = 3, <= 10
trigger9 = StateNo = 305
trigger9 = AnimElem = 3, >= 0
trigger9 = AnimElem = 3, <= 10
trigger10 = StateNo = 310
trigger10 = AnimElem = 5, >= 0
trigger10 = AnimElem = 6, <= 12
trigger11 = StateNo = 320
trigger11 = AnimElem = 2, >= 0
trigger11 = AnimElem = 2, <= 10
trigger12 = StateNo = 600
trigger12 = AnimElem = 3, >= 0
trigger12 = AnimElem = 3, <= 7
trigger13 = StateNo = 630
trigger13 = AnimElem = 3, >= 0
trigger13 = AnimElem = 5, <= 7
trigger14 = StateNo = 700
trigger14 = AnimElem = 5, >= 0
trigger14 = AnimElem = 7, <= 2
trigger15 = StateNo = 750
trigger15 = AnimElem = 3, >= 0
trigger15 = AnimElem = 6, <= 8
trigger16 = StateNo = 1120
trigger16 = AnimElem = 5, >= 0
trigger16 = AnimElem = 6, <= 5

;---------------------------------------------------------------------
; ãÅ‰ÓE‹­
[State -1]
type = ChangeState
value = 1420
triggerall = Command = "hisui_c"
triggerall = StateType != A
trigger1 = Ctrl = 1

;-------------------’Êí‹ZƒLƒƒƒ“ƒZƒ‹Ý’è
[State -1]
type = ChangeState
value = 1420
triggerall = Command = "hisui_c"
triggerall = movecontact
triggerall = StateType != A
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7
trigger2 = StateNo = 205
trigger2 = AnimElem = 3, >= 0
trigger2 = AnimElem = 3, <= 7
trigger3 = StateNo = 210
trigger3 = AnimElem = 6, >= 0
trigger3 = AnimElem = 6, <= 12
trigger4 = StateNo = 215
trigger4 = AnimElem = 6, >= 0
trigger4 = AnimElem = 6, <= 12
trigger5 = StateNo = 218
trigger5 = AnimElem = 6, >= 0
trigger5 = AnimElem = 6, <= 12
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, >= 0
trigger6 = AnimElem = 5, <= 9
trigger7 = StateNo = 300
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 3, <= 10
trigger8 = StateNo = 305
trigger8 = AnimElem = 3, >= 0
trigger8 = AnimElem = 3, <= 10
trigger9 = StateNo = 305
trigger9 = AnimElem = 3, >= 0
trigger9 = AnimElem = 3, <= 10
trigger10 = StateNo = 310
trigger10 = AnimElem = 5, >= 0
trigger10 = AnimElem = 6, <= 12
trigger11 = StateNo = 320
trigger11 = AnimElem = 2, >= 0
trigger11 = AnimElem = 2, <= 10
trigger12 = StateNo = 600
trigger12 = AnimElem = 3, >= 0
trigger12 = AnimElem = 3, <= 7
trigger13 = StateNo = 630
trigger13 = AnimElem = 3, >= 0
trigger13 = AnimElem = 5, <= 7
trigger14 = StateNo = 700
trigger14 = AnimElem = 5, >= 0
trigger14 = AnimElem = 7, <= 2
trigger15 = StateNo = 750
trigger15 = AnimElem = 3, >= 0
trigger15 = AnimElem = 6, <= 8
trigger16 = StateNo = 1120
trigger16 = AnimElem = 5, >= 0
trigger16 = AnimElem = 6, <= 5

;---------------------------------------------------------------------
; —ó™ô™á
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "retsu"
triggerall = StateType != A
trigger1 = Ctrl = 1

;-------------------’Êí‹ZƒLƒƒƒ“ƒZƒ‹Ý’è
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "retsu"
triggerall = movecontact
triggerall = StateType != A
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7
trigger2 = StateNo = 205
trigger2 = AnimElem = 3, >= 0
trigger2 = AnimElem = 3, <= 7
trigger3 = StateNo = 210
trigger3 = AnimElem = 6, >= 0
trigger3 = AnimElem = 6, <= 12
trigger4 = StateNo = 215
trigger4 = AnimElem = 6, >= 0
trigger4 = AnimElem = 6, <= 12
trigger5 = StateNo = 218
trigger5 = AnimElem = 6, >= 0
trigger5 = AnimElem = 6, <= 12
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, >= 0
trigger6 = AnimElem = 5, <= 9
trigger7 = StateNo = 300
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 3, <= 10
trigger8 = StateNo = 305
trigger8 = AnimElem = 3, >= 0
trigger8 = AnimElem = 3, <= 10
trigger9 = StateNo = 305
trigger9 = AnimElem = 3, >= 0
trigger9 = AnimElem = 3, <= 10
trigger10 = StateNo = 310
trigger10 = AnimElem = 5, >= 0
trigger10 = AnimElem = 6, <= 12
trigger11 = StateNo = 320
trigger11 = AnimElem = 2, >= 0
trigger11 = AnimElem = 2, <= 10
trigger12 = StateNo = 600
trigger12 = AnimElem = 3, >= 0
trigger12 = AnimElem = 3, <= 7
trigger13 = StateNo = 630
trigger13 = AnimElem = 3, >= 0
trigger13 = AnimElem = 5, <= 7
trigger14 = StateNo = 700
trigger14 = AnimElem = 5, >= 0
trigger14 = AnimElem = 7, <= 2
trigger15 = StateNo = 750
trigger15 = AnimElem = 3, >= 0
trigger15 = AnimElem = 6, <= 8
trigger16 = StateNo = 1120
trigger16 = AnimElem = 5, >= 0
trigger16 = AnimElem = 6, <= 5

;---------------------------------------------------------------------
; â™ô™á
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "zetsu"
triggerall = StateType != A
trigger1 = Ctrl = 1

;-------------------’Êí‹ZƒLƒƒƒ“ƒZƒ‹Ý’è
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "zetsu"
triggerall = movecontact
triggerall = StateType != A
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7
trigger2 = StateNo = 205
trigger2 = AnimElem = 3, >= 0
trigger2 = AnimElem = 3, <= 7
trigger3 = StateNo = 210
trigger3 = AnimElem = 6, >= 0
trigger3 = AnimElem = 6, <= 12
trigger4 = StateNo = 215
trigger4 = AnimElem = 6, >= 0
trigger4 = AnimElem = 6, <= 12
trigger5 = StateNo = 218
trigger5 = AnimElem = 6, >= 0
trigger5 = AnimElem = 6, <= 12
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, >= 0
trigger6 = AnimElem = 5, <= 9
trigger7 = StateNo = 300
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 3, <= 10
trigger8 = StateNo = 305
trigger8 = AnimElem = 3, >= 0
trigger8 = AnimElem = 3, <= 10
trigger9 = StateNo = 305
trigger9 = AnimElem = 3, >= 0
trigger9 = AnimElem = 3, <= 10
trigger10 = StateNo = 310
trigger10 = AnimElem = 5, >= 0
trigger10 = AnimElem = 6, <= 12
trigger11 = StateNo = 320
trigger11 = AnimElem = 2, >= 0
trigger11 = AnimElem = 2, <= 10
trigger12 = StateNo = 600
trigger12 = AnimElem = 3, >= 0
trigger12 = AnimElem = 3, <= 7
trigger13 = StateNo = 630
trigger13 = AnimElem = 3, >= 0
trigger13 = AnimElem = 5, <= 7
trigger14 = StateNo = 700
trigger14 = AnimElem = 5, >= 0
trigger14 = AnimElem = 7, <= 2
trigger15 = StateNo = 750
trigger15 = AnimElem = 3, >= 0
trigger15 = AnimElem = 6, <= 8
trigger16 = StateNo = 1120
trigger16 = AnimElem = 5, >= 0
trigger16 = AnimElem = 6, <= 5

;---------------------------------------------------------------------
; ”’ŒÕ’ÜEŽã
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "bya_a"
triggerall = StateType != A
trigger1 = Ctrl = 1

;-------------------’Êí‹ZƒLƒƒƒ“ƒZƒ‹Ý’è
[State -1]
type = ChangeState
value = 1000
triggerall = Command = "bya_a"
triggerall = movecontact
triggerall = StateType != A
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7
trigger2 = StateNo = 205
trigger2 = AnimElem = 3, >= 0
trigger2 = AnimElem = 3, <= 7
trigger3 = StateNo = 210
trigger3 = AnimElem = 6, >= 0
trigger3 = AnimElem = 6, <= 12
trigger4 = StateNo = 215
trigger4 = AnimElem = 6, >= 0
trigger4 = AnimElem = 6, <= 12
trigger5 = StateNo = 218
trigger5 = AnimElem = 6, >= 0
trigger5 = AnimElem = 6, <= 12
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, >= 0
trigger6 = AnimElem = 5, <= 9
trigger7 = StateNo = 300
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 3, <= 10
trigger8 = StateNo = 305
trigger8 = AnimElem = 3, >= 0
trigger8 = AnimElem = 3, <= 10
trigger9 = StateNo = 305
trigger9 = AnimElem = 3, >= 0
trigger9 = AnimElem = 3, <= 10
trigger10 = StateNo = 310
trigger10 = AnimElem = 5, >= 0
trigger10 = AnimElem = 6, <= 12
trigger11 = StateNo = 320
trigger11 = AnimElem = 2, >= 0
trigger11 = AnimElem = 2, <= 10
trigger12 = StateNo = 600
trigger12 = AnimElem = 3, >= 0
trigger12 = AnimElem = 3, <= 7
trigger13 = StateNo = 630
trigger13 = AnimElem = 3, >= 0
trigger13 = AnimElem = 5, <= 7
trigger14 = StateNo = 700
trigger14 = AnimElem = 5, >= 0
trigger14 = AnimElem = 7, <= 2
trigger15 = StateNo = 750
trigger15 = AnimElem = 3, >= 0
trigger15 = AnimElem = 6, <= 8
trigger16 = StateNo = 1120
trigger16 = AnimElem = 5, >= 0
trigger16 = AnimElem = 6, <= 5

;---------------------------------------------------------------------
; ”’ŒÕ’ÜE‹­
[State -1]
type = ChangeState
value = 1050
triggerall = Command = "bya_b"
triggerall = StateType != A
trigger1 = Ctrl = 1

;-------------------’Êí‹ZƒLƒƒƒ“ƒZƒ‹Ý’è
[State -1]
type = ChangeState
value = 1050
triggerall = Command = "bya_b"
triggerall = movecontact
triggerall = StateType != A
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7
trigger2 = StateNo = 205
trigger2 = AnimElem = 3, >= 0
trigger2 = AnimElem = 3, <= 7
trigger3 = StateNo = 210
trigger3 = AnimElem = 6, >= 0
trigger3 = AnimElem = 6, <= 12
trigger4 = StateNo = 215
trigger4 = AnimElem = 6, >= 0
trigger4 = AnimElem = 6, <= 12
trigger5 = StateNo = 218
trigger5 = AnimElem = 6, >= 0
trigger5 = AnimElem = 6, <= 12
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, >= 0
trigger6 = AnimElem = 5, <= 9
trigger7 = StateNo = 300
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 3, <= 10
trigger8 = StateNo = 305
trigger8 = AnimElem = 3, >= 0
trigger8 = AnimElem = 3, <= 10
trigger9 = StateNo = 305
trigger9 = AnimElem = 3, >= 0
trigger9 = AnimElem = 3, <= 10
trigger10 = StateNo = 310
trigger10 = AnimElem = 5, >= 0
trigger10 = AnimElem = 6, <= 12
trigger11 = StateNo = 320
trigger11 = AnimElem = 2, >= 0
trigger11 = AnimElem = 2, <= 10
trigger12 = StateNo = 600
trigger12 = AnimElem = 3, >= 0
trigger12 = AnimElem = 3, <= 7
trigger13 = StateNo = 630
trigger13 = AnimElem = 3, >= 0
trigger13 = AnimElem = 5, <= 7
trigger14 = StateNo = 700
trigger14 = AnimElem = 5, >= 0
trigger14 = AnimElem = 7, <= 2
trigger15 = StateNo = 750
trigger15 = AnimElem = 3, >= 0
trigger15 = AnimElem = 6, <= 8
trigger16 = StateNo = 1120
trigger16 = AnimElem = 5, >= 0
trigger16 = AnimElem = 6, <= 5

;---------------------------------------------------------------------
; ”’ŒÕP
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "bya_c"
triggerall = StateType != A
trigger1 = Ctrl = 1

;-------------------’Êí‹ZƒLƒƒƒ“ƒZƒ‹Ý’è
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "bya_c"
triggerall = movecontact
triggerall = StateType != A
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7
trigger2 = StateNo = 205
trigger2 = AnimElem = 3, >= 0
trigger2 = AnimElem = 3, <= 7
trigger3 = StateNo = 210
trigger3 = AnimElem = 6, >= 0
trigger3 = AnimElem = 6, <= 12
trigger4 = StateNo = 215
trigger4 = AnimElem = 6, >= 0
trigger4 = AnimElem = 6, <= 12
trigger5 = StateNo = 218
trigger5 = AnimElem = 6, >= 0
trigger5 = AnimElem = 6, <= 12
trigger6 = StateNo = 220
trigger6 = AnimElem = 5, >= 0
trigger6 = AnimElem = 5, <= 9
trigger7 = StateNo = 300
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 3, <= 10
trigger8 = StateNo = 305
trigger8 = AnimElem = 3, >= 0
trigger8 = AnimElem = 3, <= 10
trigger9 = StateNo = 305
trigger9 = AnimElem = 3, >= 0
trigger9 = AnimElem = 3, <= 10
trigger10 = StateNo = 310
trigger10 = AnimElem = 5, >= 0
trigger10 = AnimElem = 6, <= 12
trigger11 = StateNo = 320
trigger11 = AnimElem = 2, >= 0
trigger11 = AnimElem = 2, <= 10
trigger12 = StateNo = 600
trigger12 = AnimElem = 3, >= 0
trigger12 = AnimElem = 3, <= 7
trigger13 = StateNo = 630
trigger13 = AnimElem = 3, >= 0
trigger13 = AnimElem = 5, <= 7
trigger14 = StateNo = 700
trigger14 = AnimElem = 5, >= 0
trigger14 = AnimElem = 7, <= 2
trigger15 = StateNo = 750
trigger15 = AnimElem = 3, >= 0
trigger15 = AnimElem = 6, <= 8

;---------------------------------------------------------------------
; ”’ŒÕPi”’ŒÕPƒLƒƒƒ“ƒZƒ‹Žžj
[State -1]
type = ChangeState
value = 1150
triggerall = Command = "bya_c"
triggerall = movecontact
triggerall = StateType != A
trigger1 = StateNo = 1120
trigger1 = AnimElem = 5, >= 0
trigger1 = AnimElem = 6, <= 5

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = StateNo != 100

;---------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; ’Êí“Š‚°i‚y{‚` or ‚bj
[State -1]
type = ChangeState
value = 900
triggerall = StateNo != 101
triggerall = StateType = S
triggerall = Ctrl = 1
triggerall = P2StateType != L
trigger1 = Command = "az"
trigger2 = Command = "c"

;---------------------------------------------------------------------
; ƒ_ƒEƒ““Š‚°i‘ŠŽèƒ_ƒEƒ“’†‚É‚y{‚` or ‚bj
[State -1]
type = ChangeState
value = 950
triggerall = StateType = S
triggerall = Ctrl = 1
triggerall = P2StateType = L
trigger1 = Command = "az"
trigger2 = Command = "c"

;---------------------------------------------------------------------
; —Ú—žÓi‹ó’†‚Å‚y{‚` or ‚bi‹ó’†“Š‚°jj
[State -1]
type = ChangeState
value = 990
triggerall = StateType = A
triggerall = Ctrl = 1
trigger1 = Command = "az"
trigger2 = Command = "c"

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------

;=====================================================================
; Dir + Button , 2Button or more...
;=====================================================================

;---------------------------------------------------------------------
; ’†’iUŒ‚
[State -1]
type = ChangeState
value = 710
triggerall = Command = "yz"
triggerall = StateType != A
triggerall = Ctrl = 1
trigger1 = StateType = S
trigger2 = StateType = C

;-------------------˜AŽEŽaÝ’è
[State -1]
type = ChangeState
value = 710
triggerall = Command = "yz"
triggerall = movecontact
trigger1 = StateNo = 310
trigger1 = AnimElem = 5, >= 0
trigger1 = AnimElem = 6, <= 12
trigger2 = StateNo = 215
trigger2 = AnimElem = 6, >= 0
trigger2 = AnimElem = 6, <= 12
trigger3 = StateNo = 600
trigger3 = AnimElem = 3, >= 0
trigger3 = AnimElem = 3, <= 7
trigger4 = StateNo = 205
trigger4 = AnimElem = 3, >= 0
trigger4 = AnimElem = 3, <= 7
trigger5 = StateNo = 700
trigger5 = AnimElem = 5, >= 0
trigger5 = AnimElem = 7, <= 2
trigger6 = StateNo = 305
trigger6 = AnimElem = 3, >= 0
trigger6 = AnimElem = 3, <= 10
trigger7 = StateNo = 750
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 6, <= 8
trigger8 = StateNo = 200
trigger8 = AnimElem = 3, >= 0
trigger8 = AnimElem = 3, <= 7
trigger9 = StateNo = 218
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 6, <= 12

;---------------------------------------------------------------------
; ƒ_ƒbƒVƒ…ã’iUŒ‚
[State -1]
type = ChangeState
value = 750
triggerall = StateNo = 100
triggerall = StateType = S
trigger1 = Command = "fwd_x"
trigger2 = Command = "fwd_y"

;---------------------------------------------------------------------
; ƒ_ƒbƒVƒ…‰º’iUŒ‚
[State -1]
type = ChangeState
value = 760
triggerall = StateNo = 100
;triggerall = StateType = S
trigger1 = Command = "downfwd_x"
trigger2 = Command = "downfwd_y"
trigger3 = Command = "downfwd_z"

;---------------------------------------------------------------------
; ©{ŽãŽa‚è
[State -1]
type = ChangeState
value = 600
triggerall = Command = "back_x"
triggerall = StateType != A
triggerall = Ctrl = 1
trigger1 = StateType = S
trigger2 = StateType = C

;---------------------------------------------------------------------
; ¨{‹­Ža‚è
[State -1]
type = ChangeState
value = 610
triggerall = Command = "fwd_y"
triggerall = StateType != A
triggerall = Ctrl = 1
trigger1 = StateType = S
trigger2 = StateType = C

;-----------------------------˜AŽEŽaÝ’è
[State -1]
type = ChangeState
value = 610
triggerall = Command = "fwd_y"
triggerall = movecontact
trigger1 = StateNo = 310
trigger1 = AnimElem = 5, >= 0
trigger1 = AnimElem = 6, <= 12
trigger2 = StateNo = 215
trigger2 = AnimElem = 6, >= 0
trigger2 = AnimElem = 6, <= 12
trigger3 = StateNo = 600
trigger3 = AnimElem = 3, >= 0
trigger3 = AnimElem = 3, <= 7
trigger4 = StateNo = 205
trigger4 = AnimElem = 3, >= 0
trigger4 = AnimElem = 3, <= 7
trigger5 = StateNo = 700
trigger5 = AnimElem = 5, >= 0
trigger5 = AnimElem = 7, <= 2
trigger6 = StateNo = 305
trigger6 = AnimElem = 3, >= 0
trigger6 = AnimElem = 3, <= 10
trigger7 = StateNo = 750
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 6, <= 8
trigger8 = StateNo = 200
trigger8 = AnimElem = 3, >= 0
trigger8 = AnimElem = 3, <= 7
trigger9 = StateNo = 218
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 6, <= 12

;---------------------------------------------------------------------
; ©{‹­Ža‚è
[State -1]
type = ChangeState
value = 620
triggerall = Command = "back_y"
triggerall = StateType != A
triggerall = Ctrl = 1
trigger1 = StateType = S
trigger2 = StateType = C

;-----------------------------˜AŽEŽaÝ’è
[State -1]
type = ChangeState
value = 625
triggerall = Command = "back_y"
triggerall = movecontact
trigger1 = StateNo = 305
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 10
trigger2 = StateNo = 215
trigger2 = AnimElem = 6, >= 0
trigger2 = AnimElem = 6, <= 12
trigger3 = StateNo = 700
trigger3 = AnimElem = 5, >= 0
trigger3 = AnimElem = 7, <= 2
trigger4 = StateNo = 600
trigger4 = AnimElem = 3, >= 0
trigger4 = AnimElem = 3, <= 7
trigger5 = StateNo = 205
trigger5 = AnimElem = 3, >= 0
trigger5 = AnimElem = 3, <= 7
trigger6 = StateNo = 750
trigger6 = AnimElem = 3, >= 0
trigger6 = AnimElem = 6, <= 8
trigger7 = StateNo = 200
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 3, <= 7
trigger8 = StateNo = 218
trigger8 = AnimElem = 6, >= 0
trigger8 = AnimElem = 6, <= 12

;---------------------------------------------------------------------
; ‚R{ƒLƒbƒN
[State -1]
type = ChangeState
value = 630
triggerall = P2StateType != L
triggerall = Command = "downfwd_z"
triggerall = StateType != A
triggerall = Ctrl = 1
trigger1 = StateType = S
trigger2 = StateType = C

;-----------------------------˜AŽEŽaÝ’è
[State -1]
type = ChangeState
value = 630
triggerall = Command = "downfwd_z"
triggerall = movecontact
trigger1 = StateNo = 310
trigger1 = AnimElem = 5, >= 0
trigger1 = AnimElem = 6, <= 12
trigger2 = StateNo = 215
trigger2 = AnimElem = 6, >= 0
trigger2 = AnimElem = 6, <= 12
trigger3 = StateNo = 600
trigger3 = AnimElem = 3, >= 0
trigger3 = AnimElem = 3, <= 7
trigger4 = StateNo = 205
trigger4 = AnimElem = 3, >= 0
trigger4 = AnimElem = 3, <= 7
trigger5 = StateNo = 700
trigger5 = AnimElem = 5, >= 0
trigger5 = AnimElem = 7, <= 2
trigger6 = StateNo = 305
trigger6 = AnimElem = 3, >= 0
trigger6 = AnimElem = 3, <= 10
trigger7 = StateNo = 750
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 6, <= 8
trigger8 = StateNo = 200
trigger8 = AnimElem = 3, >= 0
trigger8 = AnimElem = 3, <= 7
trigger9 = StateNo = 218
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 6, <= 12

;---------------------------------------------------------------------
; ‚R{ƒLƒbƒNiƒ_ƒEƒ“UŒ‚j
[State -1]
type = ChangeState
value = 635
triggerall = P2StateType = L
triggerall = Command = "downfwd_z"
triggerall = StateType != A
triggerall = Ctrl = 1
trigger1 = StateType = S
trigger2 = StateType = C

;---------------------------------------------------------------------
; ¨{ƒLƒbƒN
[State -1]
type = ChangeState
value = 640
triggerall = Command = "fwd_z"
triggerall = StateType != A
triggerall = Ctrl = 1
trigger1 = StateType = S
trigger2 = StateType = C

;-----------------------------˜AŽEŽaÝ’è
[State -1]
type = ChangeState
value = 640
triggerall = Command = "fwd_z"
triggerall = movecontact
trigger1 = StateNo = 310
trigger1 = AnimElem = 5, >= 0
trigger1 = AnimElem = 6, <= 12
trigger2 = StateNo = 215
trigger2 = AnimElem = 6, >= 0
trigger2 = AnimElem = 6, <= 12
trigger3 = StateNo = 600
trigger3 = AnimElem = 3, >= 0
trigger3 = AnimElem = 3, <= 7
trigger4 = StateNo = 205
trigger4 = AnimElem = 3, >= 0
trigger4 = AnimElem = 3, <= 7
trigger5 = StateNo = 700
trigger5 = AnimElem = 5, >= 0
trigger5 = AnimElem = 7, <= 2
trigger6 = StateNo = 305
trigger6 = AnimElem = 3, >= 0
trigger6 = AnimElem = 3, <= 10
trigger7 = StateNo = 750
trigger7 = AnimElem = 3, >= 0
trigger7 = AnimElem = 6, <= 8
trigger8 = StateNo = 200
trigger8 = AnimElem = 3, >= 0
trigger8 = AnimElem = 3, <= 7
trigger9 = StateNo = 218
trigger9 = AnimElem = 6, >= 0
trigger9 = AnimElem = 6, <= 12

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; ’§”­
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = StateType = S
trigger1 = ctrl = 1

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; —§‚¿ŽãŽa‚è
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = S

;-----------------------------˜AŽEŽaÝ’è
[State -1]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = StateNo = 600
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7

;---------------------------------------------------------------------
; —§‚¿ŽãŽa‚èi˜AŽEŽaê—pj
[State -1]
type = ChangeState
value = 700
triggerall = Command = "x"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = StateNo = 205
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7
trigger2 = StateNo = 200
trigger2 = AnimElem = 3, >= 0
trigger2 = AnimElem = 3, <= 7

;---------------------------------------------------------------------
; —§‚¿‹­Ža‚è
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = S

;-----------------------------˜AŽEŽaÝ’è‚P
[State -1]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = StateNo = 205
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7
trigger2 = StateNo = 305
trigger2 = AnimElem = 3, >= 0
trigger2 = AnimElem = 3, <= 10
trigger3 = StateNo = 700
trigger3 = AnimElem = 5, >= 0
trigger3 = AnimElem = 7, <= 2
trigger4 = StateNo = 750
trigger4 = AnimElem = 3, >= 0
trigger4 = AnimElem = 6, <= 8

;-----------------------------˜AŽEŽaÝ’è‚Q
[State -1]
type = ChangeState
value = 218
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = movecontact
trigger1 = StateNo = 200
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7

;---------------------------------------------------------------------
; ˜AŽEŽa“ÁŽêƒ‹[ƒg—pi‚w¨‚x¨‚yj
[State -1]
type = ChangeState
value = 770
triggerall = Command = "z"
triggerall = movecontact
trigger1 = StateNo = 218
trigger1 = AnimElem = 6, >= 0
trigger1 = AnimElem = 6, <= 12

;---------------------------------------------------------------------
; —§‚¿ƒLƒbƒN
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; ‚µ‚á‚ª‚ÝŽãŽa‚è
[State -1]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;-----------------------------˜AŽEŽaÝ’è
[State -1]
type = ChangeState
value = 305
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = movecontact
trigger1 = StateNo = 205
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 7
trigger2 = StateNo = 600
trigger2 = AnimElem = 3, >= 0
trigger2 = AnimElem = 3, <= 7
trigger3 = StateNo = 200
trigger3 = AnimElem = 3, >= 0
trigger3 = AnimElem = 3, <= 7

;---------------------------------------------------------------------
; ‚µ‚á‚ª‚Ý‹­Ža‚è
[State -1]
type = ChangeState
value = 310
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;-----------------------------˜AŽEŽaÝ’è
[State -1]
type = ChangeState
value = 310
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = movecontact
trigger1 = StateNo = 305
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 3, <= 10
trigger2 = StateNo = 700
trigger2 = AnimElem = 5, >= 0
trigger2 = AnimElem = 7, <= 2
trigger3 = StateNo = 750
trigger3 = AnimElem = 3, >= 0
trigger3 = AnimElem = 6, <= 8

;---------------------------------------------------------------------
; ‚µ‚á‚ª‚ÝƒLƒbƒN
[State -1]
type = ChangeState
value = 320
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------
; ƒWƒƒƒ“ƒvŽãŽa‚è
[State -1]
type = ChangeState
value = 500
triggerall = command = "x"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ƒWƒƒƒ“ƒv‹­Ža‚è
[State -1]
type = ChangeState
value = 510
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; ƒWƒƒƒ“ƒvƒLƒbƒN
[State -1]
type = ChangeState
value = 520
triggerall = command = "z"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105


