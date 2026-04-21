;---------------------------------------------------------------------------
;----------------------------Angel.cmd by [Ketra]---------------------------
;---------------------------------------------------------------------------

;-| commands |-

;-| Super Motions |--------------------------------------------------------
;-| commands |-

[Command]
name = "4623x"
command = B, F, D, DF, x
time = 30
[Command]
name = "4623y"
command = B, F, D, DF, y
time = 30
[Command]
name = "4623z"
command = B, F, D, DF, z
time = 30

[Command]
name = "4623a"
command = B, F, D, DF, a
time = 30
[Command]
name = "4623b"
command = B, F, D, DF, b
time = 30
[Command]
name = "4623c"
command = B, F, D, DF, c
time = 30

[Command]
name = "214632x"
command = ~D, DB, B, F, DF, D, x
time = 30
[Command]
name = "214632y"
command = ~D, DB, B, F, DF, D, y
time = 30
[Command]
name = "214632z"
command = ~D, DB, B, F, DF, D, z
time = 30

;-| Special Motions |------------------------------------------------------
;-| commands |-

[Command]
name = "236x"
command = ~D, DF, F, x
[Command]
name = "236y"
command = ~D, DF, F, y
[Command]
name = "236z"
command = ~D, DF, F, z

[Command]
name = "236a"
command = ~D, DF, F, a
[Command]
name = "236b"
command = ~D, DF, F, b
[Command]
name = "236c"
command = ~D, DF, F, c

[Command]
name = "214x"
command = ~D, DB, B, x
[Command]
name = "214y"
command = ~D, DB, B, y
[Command]
name = "214z"
command = ~D, DB, B, z

[Command]
name = "421a"
command = ~B, D, DB, a
[Command]
name = "421b"
command = ~B, D, DB, b
[Command]
name = "421c"
command = ~B, D, DB, c

[Command]
name = "41236a"
command = ~DB, D, F, a
[Command]
name = "41236b"
command = ~DB, D, F, b
[Command]
name = "41236c"
command = ~DB, D, F, c

[Command]
name = "63214a"
command = ~DF, D, B, a
[Command]
name = "63214b"
command = ~DF, D, B, b
[Command]
name = "63214c"
command = ~DF, D, B, c

[Command]
name = "66x"
command = F, F, x
time = 20
[Command]
name = "66y"
command = F, F, y
time = 20
[Command]
name = "66z"
command = F, F, z
time = 20

[Command]
name = "66a"
command = F, F, a
time = 20
[Command]
name = "66b"
command = F, F, b
time = 20
[Command]
name = "66c"
command = F, F, c
time = 20

[Command]
name = "623x"
command = ~F, D, DF, x
[Command]
name = "623y"
command = ~F, D, DF, y
[Command]
name = "623z"
command = ~F, D, DF, z

[Command]
name = "623a"
command = ~F, D, DF, a
[Command]
name = "623b"
command = ~F, D, DF, b
[Command]
name = "623c"
command = ~F, D, DF, c

[Command]
name = "46a"
command = B, F, a
time = 20
[Command]
name = "46b"
command = B, F, b
time = 20
[Command]
name = "46c"
command = B, F, c
time = 20

;-| Double Tap |-----------------------------------------------------------
;-| Eight commands |-

[Command]
name = "FF"       ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"       ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DU"
command = D, U
time = 10

[Command]
name = "UF"
command = UF
time = 1

[Command]
name = "UB"
command = UB
time = 1

[Command]
name = "DUF"
command = D, UF
time = 10

[Command]
name = "DUB"
command = D, UB
time = 10

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

;-| 2/3 Button Combination |-----------------------------------------------
;-| Four commands |-

[Command]
name = "recovery" ;Required (do not remove)
command = a+b
time = 1

;-| Single Button |---------------------------------------------------------
;-| Fourteen commands |-

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
name = "s"
command = s
time = 1

[Command]
name = "hold_a"
command = /a
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
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
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
name = "fwd"
command = F
time = 1

[Command]
name = "RAGEBar"
command = D, D, s
time = 20

[Command]
name = "Start"
command = ~5s
time = 1

;-| Hold Dir |--------------------------------------------------------------
;-| Twelve commands |-

[Command]
name = "holdfwd"  ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"   ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownfwd"
command = /DF
time = 1

[Command]
name = "holddownback"
command = /DB
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
name = "holdfwd2"
command = /F
time = 1

[Command]
name = "holdback2"
command = /B
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "holdup2"
command = /U
time = 1

[Command]
name = "holddown2"
command = /D
time = 1

;-| Secret |-----------------------------------------------------------
;-| Eight commands |-

[Command]
name = "SecretOneA"
command = B, B, B, B
time = 45

[Command]
name = "SecretOneB"
command = F, F, F, F
time = 45

[Command]
name = "SecretTwoA"
command = F, F, F, F
time = 45

[Command]
name = "SecretTwoB"
command = B, B, B, B
time = 45

[Command]
name = "SecretThreeA"
command = D, D, D, D
time = 45

[Command]
name = "SecretThreeB"
command = D, D, D, D
time = 45

[Command]
name = "SecretFourA"
command = U, U, U, U
time = 45

[Command]
name = "SecretFourB"
command = U, U, U, U
time = 45

;-| CPU Commands |----------------------------------------------------------
;-| Commands |-

[Command]
name = "cpu1"
command = U, U, U, U
time = 1
[Command]
name = "cpu2"
command = U, U, U, D
time = 1
[Command]
name = "cpu3"
command = U, U, D, D
time = 1
[Command]
name = "cpu4"
command = U, D, D, D
time = 1
[Command]
name = "cpu5"
command = D, D, D, D
time = 1
[Command]
name = "cpu6"
command = D, D, D, U
time = 1
[Command]
name = "cpu7"
command = D, D, U, U
time = 1
[Command]
name = "cpu8"
command = D, U, U, U
time = 1
[Command]
name = "cpu9"
command = U, D, U, U
time = 1
[Command]
name = "cpu10"
command = U, U, D, U
time = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;-----------------------------Human Commands--------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[Statedef -1]

;-|AI Routine|----------------------------------------------------------------------------


;-|Signal AI Routines|--------------------------------------------------------------------
[State -1]
type = Null
v = 7
value = 1
triggerall = RoundState = 2
trigger1 = command = "cpu1" || command = "cpu2" || command = "cpu3" || command = "cpu4" || command = "cpu5"
trigger2 = command = "cpu6" || command = "cpu7" || command = "cpu8" || command = "cpu9" || command = "cpu10"

;---------------------------------------------------------------------------
;----------------------------System Techniques------------------------------
;---------------------------------------------------------------------------

[State -1]
type = VarSet
var(45) = 1
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = (StateNo = 200 && MoveContact)
trigger4 = (StateNo = 210 && AnimElemNo(0) < 9)
trigger5 = (StateNo = 230 && AnimElemNo(0) < 8)
trigger6 = (StateNo = 400 && MoveContact)
trigger7 = (StateNo = 410 && AnimElemNo(0) < 8)
trigger8 = (StateNo = 430 && AnimElemNo(0) = 7 && MoveContact)
trigger9 = (StateNo = 115 && AnimElemNo(0) = [6,8])
trigger10 = (StateNo = 300 && MoveContact && AnimElemNo(0) < 11 && PrevStateNo = [100,599])
trigger11 = MoveContact && StateNo = [10200,10299]
trigger12 = MoveContact && StateNo = [10400,10499]

[State -1]
type = VarSet
var(45) = 0
trigger1 = !ctrl
trigger1 = !(StateNo = 101)
trigger1 = !(StateNo = 200 && MoveContact)
trigger1 = !(StateNo = 210 && AnimElemNo(0) < 9)
trigger1 = !(StateNo = 230 && AnimElemNo(0) < 8)
trigger1 = !(StateNo = 400 && MoveContact)
trigger1 = !(StateNo = 410 && AnimElemNo(0) < 8)
trigger1 = !(StateNo = 430 && AnimElemNo(0) = 7 && MoveContact)
trigger1 = !(StateNo = 115 && AnimElemNo(0) = [6,8])
trigger1 = !(StateNo = 300 && MoveContact && AnimElemNo(0) < 11 && PrevStateNo = [100,599])
trigger1 = !(MoveContact && StateNo = [10200,10299])
trigger1 = !(MoveContact && StateNo = [10400,10499])

[State -1]
type = VarSet
var(47) = 1
trigger1 = StateNo = [10200,10250]
trigger2 = StateNo = 300
trigger3 = StateNo = [10400,10450]
trigger4 = StateNo = 1000 && AnimElem = 11, < 0
trigger5 = StateNo = 1001 && AnimElem = 13, < 0
trigger6 = StateNo = 1002 && AnimElem = 13, < 0
trigger7 = StateNo = 1102 && AnimElem = 6, > 0

[State -1]
type = VarSet
var(47) = 0
trigger1 = !(StateNo = [10200,10250])
trigger1 = !(StateNo = 300)
trigger1 = !(StateNo = [10400,10450])
trigger1 = !(StateNo = 1000 && AnimElem = 11, < 0)
trigger1 = !(StateNo = 1001 && AnimElem = 13, < 0)
trigger1 = !(StateNo = 1002 && AnimElem = 13, < 0)
trigger1 = !(StateNo = 1102 && AnimElem = 6, > 0)

[State -1]
type = VarSet
var(48) = 1
trigger1 = StateNo = 10200 && AnimElem = 4, > 0
trigger2 = StateNo = 10210 && AnimElem = 3, > 0 && AnimElem = 9, < 0
trigger3 = StateNo = 10220 && AnimElem = 3, > 0 && AnimElem = 11, < 0
trigger4 = StateNo = 10221 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger5 = StateNo = 10230 && AnimElem = 4, > 0
trigger6 = StateNo = 10240 && AnimElem = 4, > 0 && AnimElem = 10, < 0
trigger7 = StateNo = 10250 && AnimElem = 2, > 0 && AnimElem = 9, < 0
trigger8 = StateNo = 300 && AnimElem = 3, > 0 && AnimElem = 11, < 0
trigger9 = StateNo = 10400 && AnimElem = 5, > 0
trigger10 = StateNo = 10410 && AnimElem = 3, > 0 && AnimElem = 7, < 0
trigger11 = StateNo = 10420 && AnimElem = 3, > 0 && AnimElem = 9, < 0
trigger12 = StateNo = 10430 && AnimElem = 5, < 0
trigger13 = StateNo = 10440 && AnimElem = 2, > 0 && AnimElem = 5, < 0
trigger14 = StateNo = 10450 && AnimElem = 5, > 0 && AnimElem = 9, < 0
trigger15 = StateNo = 1102 && AnimElem = 6, > 0

[State -1]
type = VarSet
var(48) = 0
trigger1 = !(StateNo = 10200 && AnimElem = 4, > 0)
trigger1 = !(StateNo = 10210 && AnimElem = 3, > 0 && AnimElem = 9, < 0)
trigger1 = !(StateNo = 10220 && AnimElem = 3, > 0 && AnimElem = 11, < 0)
trigger1 = !(StateNo = 10221 && AnimElem = 4, > 0 && AnimElem = 9, < 0)
trigger1 = !(StateNo = 10230 && AnimElem = 4, > 0)
trigger1 = !(StateNo = 10240 && AnimElem = 4, > 0 && AnimElem = 10, < 0)
trigger1 = !(StateNo = 10250 && AnimElem = 2, > 0 && AnimElem = 9, < 0)
trigger1 = !(StateNo = 300 && AnimElem = 3, > 0 && AnimElem = 11, < 0)
trigger1 = !(StateNo = 10400 && AnimElem = 5, > 0)
trigger1 = !(StateNo = 10410 && AnimElem = 3, > 0 && AnimElem = 7, < 0)
trigger1 = !(StateNo = 10420 && AnimElem = 3, > 0 && AnimElem = 9, < 0)
trigger1 = !(StateNo = 10430 && AnimElem = 5, < 0)
trigger1 = !(StateNo = 10440 && AnimElem = 2, > 0 && AnimElem = 5, < 0)
trigger1 = !(StateNo = 10450 && AnimElem = 5, > 0 && AnimElem = 9, < 0)
trigger1 = !(StateNo = 1102 && AnimElem = 6, > 0)

;---------------------------------------------------------------------------
; s. Original Combo
[State -1]
type = ChangeState
value = 905
triggerall = !var(7) && !var(15) && var(59) = 2
triggerall = (command = "hold_z" && command = "hold_c")
trigger1 = Power = 2000 && StateType = S && ctrl

;---------------------------------------------------------------------------
; j. Original Combo
[State -1]
type = ChangeState
value = 906
triggerall = !var(7) && !var(15) && var(59) = 2
triggerall = (command = "hold_z" && command = "hold_c")
trigger1 = Power = 2000 && StateType = A && ctrl

;---------------------------------------------------------------------------
; POW MAX
[State -1]
type = ChangeState
value = 900
triggerall = !var(7) && !var(11) && !var(59)
triggerall = (command = "hold_a" || command = "hold_b" || command = "hold_x" || command = "hold_y") && (command = "hold_c" || command = "hold_z")
trigger1 = Power >= 1000 && StateType = S && ctrl

;---------------------------------------------------------------------------
; Roll Backward
[State -1]
type = ChangeState
value = 111
triggerall = !var(7) && var(59) < 2
triggerall = (command = "holdback" && command = "x" && command = "a") || (command = "holdback" && command = "z")
trigger1 = StateType = S && ctrl
trigger2 = (Power >= 1000 || var(11)) && (StateNo = 150 || StateNo = 152)

;---------------------------------------------------------------------------
; Roll Forward
[State -1]
type = ChangeState
value = 110
triggerall = !var(7) && var(59) < 3
triggerall = (command = "x" && command = "a") || (var(59) < 2 && command = "z")
trigger1 = StateType = S && ctrl
trigger2 = var(59) < 2 && (Power >= 1000 || var(11)) && (StateNo = 150 || StateNo = 152)

;---------------------------------------------------------------------------
; s. CD
[State -1]
type = ChangeState
value = 115
triggerall = !var(7) && var(59) < 2
triggerall = (command = "y" && command = "b") || command = "c"
trigger1 = StateType = S && ctrl
trigger2 = (Power >= 1000 || var(11)) && (StateNo = 150 || StateNo = 152)

;---------------------------------------------------------------------------
; j. CD
[State -1]
type = ChangeState
value = 116
triggerall = !var(7) && var(59) < 2
triggerall = (command = "y" && command = "b") || command = "c"
trigger1 = StateType = A && ctrl

;---------------------------------------------------------------------------
;Chouhatsu
[State -1]
type = ChangeState
value = 199
triggerall = !var(7) && StateType != A && StateNo != 199 && ctrl
trigger1 = var(59) < 2 && (command = "y" && command = "a")
trigger2 = var(59) >= 2 && (command = "y" && command = "b")


;---------------------------------------------------------------------------
;----------------------------Desperation Moves------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; DM 4623 A/C
[State -1]
type = ChangeState
value = 3000
triggerall = !var(7) && var(15)
triggerall = StateType != A
triggerall = (command = "4623x") || (command = "4623y") || (command = "4623z")
trigger1 = var(45) || StateNo = [10200,10599]

;---------------------------------------------------------------------------
; SDM 4623 B/D
[State -1]
type = ChangeState
value = 3600
triggerall = !var(7)
triggerall = StateType != A
triggerall = (var(11) && Power >= 1000) || var(2)
triggerall = ((command = "4623a") || (command = "4623b") || (var(59) = 3 && command = "4623c"))
trigger1 = var(45)

;---------------------------------------------------------------------------
; DM 4623 B/D
[State -1]
type = ChangeState
value = 3500
triggerall = !var(7)
triggerall = StateType != A
triggerall = var(59) < 3
triggerall = var(15) || (!var(15) && Power >= 1000)
triggerall = ((command = "4623a") || (command = "4623b") || (var(59) = 2 && command = "4623c"))
trigger1 = var(45)
trigger2 = var(15) && (((StateNo = [1400,1999]) && !Pos Y) || (StateNo = [10200,10599]))

;---------------------------------------------------------------------------
; SDM 214632 A/C
[State -1]
type = ChangeState
value = 3800
triggerall = !var(7)
triggerall = StateType != A
triggerall = (var(11) && Power >= 1000) || var(2)
triggerall = var(45)
trigger1 = (command = "214632x" || command = "214632y") && var(11)
trigger2 = (command = "214632x" && command = "214632y") && (var(59) = 1)
trigger3 = (command = "214632x" || command = "214632y" || command = "214632z") && var(2)

;---------------------------------------------------------------------------
; DM 214632 A/C
[State -1]
type = ChangeState
value = 3700
triggerall = !var(7)
triggerall = StateType != A
triggerall = var(59) < 3
triggerall = var(15) || (!var(15) && Power >= 1000)
triggerall = ((command = "214632x") || (command = "214632y") || (var(59) = 2 && command = "214632z"))
trigger1 = var(45)
trigger2 = var(15) && var(47)


;---------------------------------------------------------------------------
;-------------------------------Specials------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; 623 Jab
[State -1]
type = ChangeState
value = 1400
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command = "623x"
trigger1 = var(45)
trigger2 = var(15) && var(47)

;---------------------------------------------------------------------------
; 623 Strong
[State -1]
type = ChangeState
value = 1410
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command = "623y"
trigger1 = var(45)
trigger2 = var(15) && var(47)

;---------------------------------------------------------------------------
; 623 Fierce
[State -1]
type = ChangeState
value = 1420
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command = "623z"
trigger1 = var(45)
trigger2 = var(15) && var(47)

;---------------------------------------------------------------------------
; 623 Short
[State -1]
type = ChangeState
value = 1430
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command = "623a"
trigger1 = var(45)
trigger2 = var(15) && var(47)

;---------------------------------------------------------------------------
; 623 Forward
[State -1]
type = ChangeState
value = 1440
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command = "623b"
trigger1 = var(45)
trigger2 = var(15) && var(47)

;---------------------------------------------------------------------------
; 623 Roundhouse
[State -1]
type = ChangeState
value = 1450
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command = "623c"
trigger1 = var(45)
trigger2 = var(15) && var(47)

;---------------------------------------------------------------------------
; 214 A
[State -1]
type = ChangeState
value = 1000
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "214x"
trigger1 = var(45)
trigger2 = var(15) && var(47)

;---------------------------------------------------------------------------
; 214 C
[State -1]
type = ChangeState
value = 1001
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "214y"
trigger1 = var(45)
trigger2 = var(15) && var(47)

;---------------------------------------------------------------------------
; 214 Z
[State -1]
type = ChangeState
value = 1002
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command = "214z"
trigger1 = var(45)
trigger2 = var(15) && var(47)

;---------------------------------------------------------------------------
; 41236 B
[State -1]
type = ChangeState
value = 1100
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "41236a" || (var(59) > 1 && command = "41236b")
trigger1 = var(45)
trigger2 = var(15) && var(47)

;---------------------------------------------------------------------------
; 41236 D
[State -1]
type = ChangeState
value = 1110
triggerall = !var(7)
triggerall = StateType != A
triggerall = (var(59) < 2 && command = "41236b") || (var(59) > 1 && command = "41236c")
trigger1 = var(45)
trigger2 = var(15) && var(47)

;---------------------------------------------------------------------------
; 421 Kick
[State -1]
type = ChangeState
value = 1300
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "421a" || command = "421b" || (var(59) > 1 && command = "421c")
trigger1 = var(45)
trigger2 = var(15) && var(47)

;---------------------------------------------------------------------------
; 63214 Kick
[State -1]
type = ChangeState
value = 1200
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "63214a" || command = "63214b" || (var(59) > 1 && command = "63214c")
trigger1 = var(45)
trigger2 = var(15) && var(47)

;---------------------------------------------------------------------------
; 46 Kick
[State -1]
type = ChangeState
value = 350
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "46a" || command = "46b" || (var(59) > 1 && command = "46c")
trigger1 = var(45)
trigger2 = var(15) && var(47)


;---------------------------------------------------------------------------
;--------------------------------Basics-------------------------------------
;---------------------------------------------------------------------------

;--|[ Throws ]}--
;---------------------------------------------------------------------------
; s. C Throw
[State -1]
type = ChangeState
value = 800
triggerall = !var(7) && var(59) < 2
triggerall = StateType = S && (p2StateType = S || p2StateType = C) && p2MoveType != H
triggerall = (command = "holdfwd2" || command = "holdback2") && (command = "y")
triggerall = (p2bodydist X = [-1,10]) && (p2dist Y = (-50,50])
triggerall = StateNo != 101
trigger1 = ctrl

;---------------------------------------------------------------------------
; s. Fierce Throw Forward
[State -1]
type = ChangeState
value = 800
triggerall = !var(7) && var(59) > 1
triggerall = StateType = S && (p2StateType = S || p2StateType = C)
triggerall = (command = "holdfwd2" && command = "z")
triggerall = (p2bodydist X = [-1,10]) && (p2dist Y = (-50,50])
triggerall = StateNo != 101
trigger1 = ctrl

;---------------------------------------------------------------------------
; s. Fierce Throw Backward
[State -1]
type = ChangeState
value = 805
triggerall = !var(7) && var(59) > 1
triggerall = StateType = S && (p2StateType = S || p2StateType = C)
triggerall = command = "holdback2" && command = "z"
triggerall = (p2bodydist X = [-1,10]) && (p2dist Y = (-50,50])
triggerall = StateNo != 101
trigger1 = ctrl

;---------------------------------------------------------------------------
; s. D Throw
[State -1]
type = ChangeState
value = 810
triggerall = !var(7) && var(59) < 2
triggerall = StateType = S && (p2StateType = S || p2StateType = C) && p2MoveType != H
triggerall = (command = "holdfwd2" || command = "holdback2") && command = "b"
triggerall = (p2bodydist X = [-1,10]) && (p2dist Y = (-50,50])
triggerall = StateNo != 101
trigger1 = ctrl

;---------------------------------------------------------------------------
; s. Roundhouse Throw Forward
[State -1]
type = ChangeState
value = 810
triggerall = !var(7) && var(59) > 1
triggerall = StateType = S && (p2StateType = S || p2StateType = C)
triggerall = command = "holdfwd2" && command = "c"
triggerall = (p2bodydist X = [-1,10]) && (p2dist Y = (-50,50])
triggerall = StateNo != 101
trigger1 = ctrl

;---------------------------------------------------------------------------
; s. Roundhouse Throw Backward
[State -1]
type = ChangeState
value = 815
triggerall = !var(7) && var(59) > 1
triggerall = StateType = S && (p2StateType = S || p2StateType = C)
triggerall = command = "holdback2" && command = "c"
triggerall = (p2bodydist X = [-1,10]) && (p2dist Y = (-50,50])
triggerall = StateNo != 101
trigger1 = ctrl

;--|[ Standing ]|--

;---------------------------------------------------------------------------
; 3 B/D
[State -1]
type = ChangeState
value = 310
triggerall = !var(7)
triggerall = var(59) < 2
triggerall = StateType != A
triggerall = command = "holddown" && command = "holdfwd" && (command = "a" || command = "b")
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = ((StateNo = 200) && (MoveContact))
trigger4 = ((StateNo = 210) && (AnimElemNo(0) < 9))
trigger5 = ((StateNo = 230) && (AnimElemNo(0) < 8))
trigger6 = ((StateNo = 400) && (MoveContact))
trigger7 = ((StateNo = 410) && (AnimElemNo(0) < 8))
trigger8 = ((StateNo = 430) && ((AnimElemNo(0) = 7) && (MoveContact)))
trigger9 = ((StateNo = 115) && (AnimElemNo(0) = [6,8]))
trigger10 = ((StateNo = 300) && ((var(33) && AnimElemNo(0) = 7) || (AnimElemNo(0) = 9)))

;---------------------------------------------------------------------------
; 6 B
[State -1]
type = ChangeState
value = 300
triggerall = !var(7)
triggerall = StateType != A
triggerall = IfElse(var(59) < 2,(command = "holdfwd" && command = "a"),(command = "holdfwd" && command = "b"))
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = ((StateNo = 200) && (MoveContact))
trigger4 = ((StateNo = 210) && (AnimElemNo(0) < 9))
trigger5 = ((StateNo = 230) && (AnimElemNo(0) < 8))
trigger6 = ((StateNo = 400) && (MoveContact))
trigger7 = ((StateNo = 410) && (AnimElemNo(0) < 8))
trigger8 = ((StateNo = 430) && ((AnimElemNo(0) = 7) && (MoveContact)))

;--|[ Standing ]|--

;---------------------------------------------------------------------------
; s. A
[State -1]
type = ChangeState
value = 200
triggerall = !var(7) &&  var(59) < 2
triggerall = StateType != A
triggerall = command != "holddown" && command = "x"
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = StateNo = 200 && AnimElemNo(0) = 4
trigger4 = StateNo = 220 && ((!MoveContact && AnimElemNo(0) > 2) || (MoveContact && AnimElemNo(0) > 4))
trigger5 = StateNo = 400 && ((!MoveContact && AnimElemNo(0) > 3) || (MoveContact && AnimElemNo(0) = 6))
trigger6 = StateNo = 420 && ((!MoveContact && AnimElemNo(0) > 3) || (MoveContact && AnimElemNo(0) > 5))

;---------------------------------------------------------------------------
; s. B
[State -1]
type = ChangeState
value = 220
triggerall = !var(7) && var(59) < 2
triggerall = StateType != A
triggerall = command != "holddown" && command = "a"
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = StateNo = 200 && AnimElemNo(0) = 4
trigger4 = StateNo = 220 && ((!MoveContact && AnimElemNo(0) > 2) || (MoveContact && AnimElemNo(0) > 4))
trigger5 = StateNo = 400 && ((!MoveContact && AnimElemNo(0) > 3) || (MoveContact && AnimElemNo(0) = 6))
trigger6 = StateNo = 420 && ((!MoveContact && AnimElemNo(0) > 3) || (MoveContact && AnimElemNo(0) > 5))

;---------------------------------------------------------------------------
; sc. C
[State -1]
type = ChangeState
value = 210
triggerall = !var(7) && var(59) < 2
triggerall = StateType != A
triggerall = command != "holddown" && command = "y"
triggerall = p2bodydist X = [-20,20]
trigger1 = ctrl
trigger2 = StateNo = 101

;---------------------------------------------------------------------------
; s. C
[State -1]
type = ChangeState
value = 211
triggerall = !var(7) && var(59) < 2
triggerall = StateType != A
triggerall = command != "holddown" && command = "y"
triggerall = (p2bodydist X > 20) || (p2bodydist X < -20)
trigger1 = ctrl
trigger2 = StateNo = 101

;---------------------------------------------------------------------------
; sc. D
[State -1]
type = ChangeState
value = 230
triggerall = !var(7) && var(59) < 2
triggerall = StateType != A
triggerall = command != "holddown" && command = "b"
triggerall = p2bodydist X = [-20,20]
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = StateNo = 200 && AnimElem = 4, > 1

;---------------------------------------------------------------------------
; s. D
[State -1]
type = ChangeState
value = 231
triggerall = !var(7) && var(59) < 2
triggerall = StateType != A
triggerall = command != "holddown" && command = "b"
triggerall = (p2bodydist X > 20) || (p2bodydist X < -20)
trigger1 = ctrl
trigger2 = StateNo = 101

;---------------------------------------------------------------------------
; s. Jab
[State -1]
type = ChangeState
value = 10200
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command != "holddown" && command = "x"
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = StateNo = 10200
trigger3 = AnimElem = 4, >= 0
trigger4 = StateNo = 10230
trigger4 = AnimElem = 5, >= 0
trigger5 = StateNo = 10400
trigger5 = AnimElem = 5, >= 0
trigger6 = StateNo = 10430
trigger6 = AnimElem = 5, >= 0

[State -1]
type = ChangeState
value = 10200
triggerall = !var(7) && var(15)
triggerall = StateType != A
triggerall = command != "holddown" && command = "x"
triggerall = AnimElem = 2, > 0
trigger1 = var(48)

;---------------------------------------------------------------------------
; s. Strong
[State -1]
type = ChangeState
value = 10210
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command != "holddown" && command = "y"
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10210
triggerall = !var(7) && var(15)
triggerall = StateType != A
triggerall = command != "holddown" && command = "y"
triggerall = (p2bodydist X > 20) || (p2bodydist X < -20)
triggerall = AnimElem = 2, > 0
trigger1 = var(48)

;---------------------------------------------------------------------------
; sc. Fierce
[State -1]
type = ChangeState
value = 10220
triggerall = !var(7)
triggerall = var(59) >= 2
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "z"
triggerall = p2bodydist X = [-20,20]
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10220
triggerall = !var(7)
triggerall = var(15)
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "z"
triggerall = p2bodydist X = [-20,20]
triggerall = AnimElem = 2, > 0
trigger1 = var(48)

;---------------------------------------------------------------------------
; s. Fierce
[State -1]
type = ChangeState
value = 10221
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command != "holddown" && command = "z"
triggerall = (p2bodydist X > 20) || (p2bodydist X < -20)
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10221
triggerall = !var(7) && var(15)
triggerall = StateType != A
triggerall = command != "holddown" && command = "z"
triggerall = (p2bodydist X > 20) || (p2bodydist X < -20)
triggerall = AnimElem = 2, > 0
trigger1 = var(48)

;---------------------------------------------------------------------------
; s. Short
[State -1]
type = ChangeState
value = 10230
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command != "holddown" && command = "a"
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = StateNo = 10200
trigger3 = AnimElem = 4, >= 0
trigger4 = StateNo = 10230
trigger4 = AnimElem = 5, >= 0
trigger5 = StateNo = 10400
trigger5 = AnimElem = 5, >= 0
trigger6 = StateNo = 10430
trigger6 = AnimElem = 5, >= 0

[State -1]
type = ChangeState
value = 10230
triggerall = !var(7) && var(15)
triggerall = StateType != A
triggerall = command != "holddown" && command = "a"
triggerall = AnimElem = 2, > 0
trigger1 = var(48)

;---------------------------------------------------------------------------
; s. Forward
[State -1]
type = ChangeState
value = 10240
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command != "holddown" && command = "b"
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10240
triggerall = !var(7) && var(15)
triggerall = StateType != A
triggerall = command != "holddown" && command = "b"
triggerall = AnimElem = 2, > 0
trigger1 = var(48)

;---------------------------------------------------------------------------
; s. Roundhouse
[State -1]
type = ChangeState
value = 10250
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command != "holddown" && command = "c"
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10250
triggerall = !var(7) && var(15)
triggerall = StateType != A
triggerall = command != "holddown" && command = "c"
triggerall = AnimElem = 2, > 0
trigger1 = var(48)

;--|[ Crouching ]|--

;---------------------------------------------------------------------------
; c. A
[State -1]
type = ChangeState
value = 400
triggerall = !var(7) && var(59) < 2
triggerall = StateType != A
triggerall = command = "holddown" && command = "x"
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = StateNo = 200 && AnimElemNo(0) = 4
trigger4 = StateNo = 220 && ((!MoveContact && AnimElemNo(0) > 2) || (MoveContact && AnimElemNo(0) > 4))
trigger5 = StateNo = 400 && ((!MoveContact && AnimElemNo(0) > 3) || (MoveContact && AnimElemNo(0) = 6))
trigger6 = StateNo = 420 && ((!MoveContact && AnimElemNo(0) > 3) || (MoveContact && AnimElemNo(0) > 5))

;---------------------------------------------------------------------------
; c. B
[State -1]
type = ChangeState
value = 420
triggerall = !var(7) && var(59) < 2
triggerall = StateType != A
triggerall = command = "holddown" && command = "a"
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = StateNo = 200 && AnimElemNo(0) = 4
trigger4 = StateNo = 220 && ((!MoveContact && AnimElemNo(0) > 2) || (MoveContact && AnimElemNo(0) > 4))
trigger5 = StateNo = 400 && ((!MoveContact && AnimElemNo(0) > 3) || (MoveContact && AnimElemNo(0) = 6))
trigger6 = StateNo = 420 && ((!MoveContact && AnimElemNo(0) > 3) || (MoveContact && AnimElemNo(0) > 5))

;---------------------------------------------------------------------------
; c. C
[State -1]
type = ChangeState
value = 410
triggerall = !var(7) && var(59) < 2
triggerall = StateType != A
triggerall = command = "holddown" && command = "y"
trigger1 = ctrl
trigger2 = StateNo = 101

;---------------------------------------------------------------------------
; c. D
[State -1]
type = ChangeState
value = 430
triggerall = !var(7) && var(59) < 2
triggerall = StateType != A
triggerall = command = "holddown" && command = "b"
trigger1 = ctrl
trigger2 = StateNo = 101

;---------------------------------------------------------------------------
; c. Jab
[State -1]
type = ChangeState
value = 10400
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command = "holddown" && command = "x"
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = StateNo = 10200
trigger3 = AnimElem = 4, >= 0
trigger4 = StateNo = 10230
trigger4 = AnimElem = 5, >= 0
trigger5 = StateNo = 10400
trigger5 = AnimElem = 5, >= 0
trigger6 = StateNo = 10430
trigger6 = AnimElem = 5, >= 0

[State -1]
type = ChangeState
value = 10400
triggerall = !var(7) && var(15)
triggerall = StateType != A
triggerall = command = "holddown" && command = "x"
triggerall = AnimElem = 2, > 0
trigger1 = var(48)

;---------------------------------------------------------------------------
; c. Strong
[State -1]
type = ChangeState
value = 10410
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command = "holddown" && command = "y"
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10410
triggerall = !var(7) && var(15)
triggerall = StateType != A
triggerall = command = "holddown" && command = "y"
triggerall = AnimElem = 2, > 0
trigger1 = var(48)

;---------------------------------------------------------------------------
; c. Fierce
[State -1]
type = ChangeState
value = 10420
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command = "holddown" && command = "z"
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10420
triggerall = !var(7) && var(15)
triggerall = StateType != A
triggerall = command = "holddown" && command = "z"
triggerall = AnimElem = 2, > 0
trigger1 = var(48)

;---------------------------------------------------------------------------
; c. Short
[State -1]
type = ChangeState
value = 10430
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command = "holddown" && command = "a"
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = StateNo = 10200
trigger3 = AnimElem = 4, >= 0
trigger4 = StateNo = 10230
trigger4 = AnimElem = 5, >= 0
trigger5 = StateNo = 10400
trigger5 = AnimElem = 5, >= 0
trigger6 = StateNo = 10430
trigger6 = AnimElem = 5, >= 0

[State -1]
type = ChangeState
value = 10430
triggerall = !var(7) && var(15)
triggerall = StateType != A
triggerall = command = "holddown" && command = "a"
triggerall = AnimElem = 2, > 0
trigger1 = var(48)

;---------------------------------------------------------------------------
; c. Forward
[State -1]
type = ChangeState
value = 10440
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command = "holddown" && command = "b"
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10440
triggerall = !var(7) && var(15)
triggerall = StateType != A
triggerall = command = "holddown" && command = "b"
triggerall = AnimElem = 2, > 0
trigger1 = var(48)

;---------------------------------------------------------------------------
; c. Roundhouse
[State -1]
type = ChangeState
value = 10450
triggerall = !var(7) && var(59) > 1
triggerall = StateType != A
triggerall = command = "holddown" && command = "c"
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10450
triggerall = !var(7) && var(15)
triggerall = StateType != A
triggerall = command = "holddown" && command = "c"
triggerall = AnimElem = 2, > 0
trigger1 = var(48)

;--|[ Jumping ]|--

;---------------------------------------------------------------------------
; j. A
[State -1]
type = ChangeState
value = 600
triggerall = !var(7) && var(59) < 2
triggerall = StateType = A
triggerall = command = "x"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. B
[State -1]
type = ChangeState
value = 620
triggerall = !var(7) && var(59) < 2
triggerall = StateType = A
triggerall = command = "a"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. C
[State -1]
type = ChangeState
value = 610
triggerall = !var(7) && var(59) < 2
triggerall = StateType = A
triggerall = command = "y"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. 2 D
[State -1]
type = ChangeState
value = 340
triggerall = !var(7) && var(59) < 2
triggerall = StateType = A
triggerall = command = "holddown" && command = "b"
trigger1 = ctrl
trigger2 = StateNo = 610 && MoveContact && PrevStateNo = 50
trigger3 = StateNo = 630 && MoveContact && PrevStateNo = 50

;---------------------------------------------------------------------------
; j. D
[State -1]
type = ChangeState
value = 630
triggerall = !var(7) && var(59) < 2
triggerall = StateType = A
triggerall = command = "b"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. Jab
[State -1]
type = ChangeState
value = 10600
triggerall = !var(7) && var(59) > 1
triggerall = StateType = A
triggerall = command = "x"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. Strong
[State -1]
type = ChangeState
value = 10610
triggerall = !var(7) && var(59) > 1
triggerall = StateType = A
triggerall = command = "y"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. Fierce
[State -1]
type = ChangeState
value = 10620
triggerall = !var(7) && var(59) > 1
triggerall = StateType = A
triggerall = command = "z"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. Short
[State -1]
type = ChangeState
value = 10630
triggerall = !var(7) && var(59) > 1
triggerall = StateType = A
triggerall = command = "a"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. Forward
[State -1]
type = ChangeState
value = 10640
triggerall = !var(7) && var(59) > 1
triggerall = StateType = A
triggerall = command = "b"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. Roundhouse
[State -1]
type = ChangeState
value = 10650
triggerall = !var(7) && var(59) > 1
triggerall = StateType = A
triggerall = command = "c"
trigger1 = ctrl

;Call Striker
[State -1]
type = ChangeState
value = 920
triggerall = !NumHelper(6000)
triggerall = var(56) > 0 && var(51) >= 60
triggerall = command = "s"
triggerall = (RoundState = 2) || (RoundState = 3)
trigger1 = StateType != A && ctrl

;---------------------------------------------------------------------------
;--------------------------------Dashes-------------------------------------
;---------------------------------------------------------------------------

;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = ((command = "FF") && (command != "holddown"))
trigger1 = StateType = S && ctrl

;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = ((command = "BB") && (command != "holddown"))
trigger1 = StateType = S && ctrl

;-|AI|-------------------------------------------------------------------------------

;---------------------------------------------------------------------------
; s. A
[State -1]
type = ChangeState
value = 200
triggerall = var(7) &&  var(59) < 2 && StateType != A && p2bodydist X = [0,31]
trigger1 = ctrl && Random < 30 && command = "x"
trigger2 = StateNo = 200 && AnimElemNo(0) = 4 && Random < 50
trigger3 = StateNo = 220 && (MoveContact && AnimElemNo(0) > 4) && Random < 50
trigger4 = StateNo = 400 && (MoveContact && AnimElemNo(0) = 6) && Random < 30
trigger5 = StateNo = 420 && (MoveContact && AnimElemNo(0) > 5) && Random < 30

;---------------------------------------------------------------------------
; s. B
[State -1]
type = ChangeState
value = 220
triggerall = var(7) &&  var(59) < 2 && StateType != A && p2StateType != A && p2bodydist X = [0,52]
trigger1 = ctrl && Random < 50 && command = "a"
trigger2 = StateNo = 200 && AnimElemNo(0) = 4 && Random < 250
trigger3 = StateNo = 220 && (MoveContact && AnimElemNo(0) > 4) && Random < 250
trigger4 = StateNo = 400 && (MoveContact && AnimElemNo(0) = 6) && Random < 150
trigger5 = StateNo = 420 && (MoveContact && AnimElemNo(0) > 5) && Random < 150

;---------------------------------------------------------------------------
; sc. C
[State -1]
type = ChangeState
value = 210
triggerall = var(7) && var(59) < 2 && StateType != A && p2StateType != A
triggerall = (p2bodydist X = [-20,20]) && (p2bodydist X = [0,54])
trigger1 = ctrl && Random < 65 && command = "y"
trigger2 = ctrl && p2MoveType = A && Random < 150

;---------------------------------------------------------------------------
; s. C
[State -1]
type = ChangeState
value = 211
triggerall = var(7) && var(59) < 2 && StateType != A
triggerall = ((p2bodydist X > 20) || (p2bodydist X < -20)) && (p2bodydist X = [16,76])
trigger1 = ctrl && Random < 80 && command = "y"
trigger2 = ctrl && p2StateType = A && Random < 70 && p2dist Y = [-30,-100]

;---------------------------------------------------------------------------
; sc. D
[State -1]
type = ChangeState
value = 230
triggerall = var(7) && var(59) < 2 && StateType != A && p2StateType != A
triggerall = (p2bodydist X = [-20,20]) && (p2bodydist X = [0,40])
trigger1 = ctrl && Random < 60 && command = "b"
trigger2 = ctrl && p2MoveType = A && (enemyNear, StateNo != [3000,3999]) && Random < 100
trigger3 = StateNo = 200 && AnimElem = 4, = 3 && MoveContact

;---------------------------------------------------------------------------
; s. D
[State -1]
type = ChangeState
value = 231
triggerall = var(7) && var(59) < 2 && StateType != A
triggerall = ((p2bodydist X > 20) || (p2bodydist X < -20)) && (p2bodydist X = [0,46])
trigger1 = ctrl && command = "b" && p2StateType = A && Random < 70 && p2dist Y = [-40,-120]

;---------------------------------------------------------------------------
; c. A
[State -1]
type = ChangeState
value = 400
triggerall = var(7) &&  var(59) < 2 && StateType != A && p2StateType != A && p2bodydist X = [0,47]
trigger1 = ctrl && Random < 50 && command = "x"
trigger2 = StateNo = 200 && AnimElemNo(0) = 4 && Random < 200
trigger3 = StateNo = 220 && (MoveContact && AnimElemNo(0) > 4) && Random < 200
trigger4 = StateNo = 400 && (MoveContact && AnimElemNo(0) = 6) && Random < 200
trigger5 = StateNo = 420 && (MoveContact && AnimElemNo(0) > 5) && Random < 200

;---------------------------------------------------------------------------
; c. B
[State -1]
type = ChangeState
value = 420
triggerall = var(7) &&  var(59) < 2 && StateType != A && p2StateType != A && p2bodydist X = [0,51]
trigger1 = ctrl && Random < 75 && command = "a"
trigger2 = ctrl && Random < 120 && p2StateType = S && command = "a"
trigger3 = StateNo = 200 && AnimElemNo(0) = 4 && Random < 400
trigger4 = StateNo = 220 && (MoveContact && AnimElemNo(0) > 4) && Random < 400
trigger5 = StateNo = 400 && (MoveContact && AnimElemNo(0) = 6) && Random < 400
trigger6 = StateNo = 420 && (MoveContact && AnimElemNo(0) > 5) && Random < 400

;---------------------------------------------------------------------------
; c. C
[State -1]
type = ChangeState
value = 410
triggerall = var(7) && var(59) < 2 && StateType != A
triggerall = p2bodydist X = [0,54]
trigger1 = ctrl && Random < 100 && command = "y" && p2StateType != A && FrontEdgeDist = [0,70]

;---------------------------------------------------------------------------
; c. D
[State -1]
type = ChangeState
value = 430
triggerall = var(7) && var(59) < 2 && StateType != A
triggerall = p2bodydist X = [0,75]
trigger1 = ctrl && Random < 160 && command = "b" && p2StateType = S && p2MoveType != A

;-|Defense|-------------------------------------------------------------------------------

;-|Stand Guard|-
[State -1]
type = ChangeState
value = 130
triggerall = var(7) && ctrl && (enemyNear, NumProj || p2dist X = [0,160]) && Random < 750
trigger1 = statetype != A
trigger1 = p2statetype != C
trigger1 = p2movetype = A

;-|Crouch Guard|-
[State -1]
type = ChangeState
value = 131
triggerall = var(7) && ctrl && (enemyNear, NumProj || p2dist X = [0,160]) && Random < 750
trigger1 = statetype != A
trigger1 = p2statetype = C
trigger1 = p2movetype = A

;-|Air Guard|-
[State -1]
type = ChangeState
value = 132
triggerall = var(7) && ctrl && (enemyNear, NumProj || p2dist X = [0,160]) && Random < 750
trigger1 = statetype = A
trigger1 = p2movetype = A
