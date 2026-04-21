;---------------------------------------------------------------------------
;----------------------------Storm.cmd by [Rugal]---------------------------
;---------------------------------------------------------------------------

;-| commands |-

;-| Super Motions |--------------------------------------------------------
;-| commands |-

[Command]
name = "LightningStorm"
command = D, DF, F, x+y
time = 15
[Command]
name = "LightningStorm"
command = D, DF, F, x+z
time = 15
[Command]
name = "LightningStorm"
command = D, DF, F, y+z
time = 15

[Command]
name = "IceStorm"
command = D, DB, B, x+y
time = 15
[Command]
name = "IceStorm"
command = D, DB, B, x+z
time = 15
[Command]
name = "IceStorm"
command = D, DB, B, y+z
time = 15

[Command]
name = "GaleStorm"
command = D, DF, F, a+b
time = 15
[Command]
name = "GaleStorm"
command = D, DF, F, a+c
time = 15
[Command]
name = "GaleStorm"
command = D, DF, F, b+c
time = 15

[Command]
name = "GemActivate"
command = D, DF, F, s
time = 15

;-| Special Motions |------------------------------------------------------
;-| commands |-

[Command]
name = "TyphoonX"
command = D, DF, F, x
time = 15
[Command]
name = "TyphoonY"
command = D, DF, F, y
time = 15
[Command]
name = "TyphoonZ"
command = D, DF, F, z
time = 15

[Command]
name = "DoubleTyphoon"
command = D, DF, F, a
time = 15
[Command]
name = "DoubleTyphoon"
command = D, DF, F, b
time = 15
[Command]
name = "DoubleTyphoon"
command = D, DF, F, c
time = 15

[Command]
name = "LightningAttack"
command = a+x
time = 1
[Command]
name = "LightningAttack"
command = b+y
time = 1
[Command]
name = "LightningAttack"
command = c+z
time = 1

[Command]
name = "Flying"
command = D, D, a+b
time = 20
[Command]
name = "Flying"
command = D, D, a+c
time = 20
[Command]
name = "Flying"
command = D, D, b+c
time = 20

[Command]
name = "RecoveryRoll"
command = B, DB, D, x
time = 20
[Command]
name = "RecoveryRoll"
command = B, DB, D, y
time = 20
[Command]
name = "RecoveryRoll"
command = B, DB, D, z
time = 20
[Command]
name = "RecoveryRoll"
command = B, DB, D, a
time = 20
[Command]
name = "RecoveryRoll"
command = B, DB, D, b
time = 20
[Command]
name = "RecoveryRoll"
command = B, DB, D, c
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

;-| 2/3 Button Combination |-----------------------------------------------
;-| Four commands |-

[Command]
name = "recovery" ;Required (do not remove)
command = a+b
time = 1

[Command]
name = "TwoPunch"
command = x+y
time = 1
[Command]
name = "TwoPunch"
command = x+z
time = 1
[Command]
name = "TwoPunch"
command = y+z
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
name = "fwd"
command = F
time = 1

[Command]
name = "GemCursor"
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
name = "holdup2"
command = /U
time = 1

[Command]
name = "holddown2"
command = /D
time = 1

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
[Command]
name = "cpu11"
command = D, U, U, D
time = 1
[Command]
name = "cpu12"
command = U, D, D, U
time = 1
[Command]
name = "cpu13"
command = D, U, D, U
time = 1
[Command]
name = "cpu14"
command = U, D, U, D
time = 1
[Command]
name = "cpu15"
command = F, F, F, F
time = 1
[Command]
name = "cpu16"
command = B, B, B, B
time = 1
[Command]
name = "cpu17"
command = F, B, F, F
time = 1
[Command]
name = "cpu18"
command = F, F, B, F
time = 1
[Command]
name = "cpu19"
command = B, F, F, F
time = 1
[Command]
name = "cpu20"
command = F, F, F, B
time = 1
[Command]
name = "cpu21"
command = F, B, B, F
time = 1
[Command]
name = "cpu22"
command = B, F, F, B
time = 1
[Command]
name = "cpu23"
command = F, B, F, B
time = 1
[Command]
name = "cpu24"
command = B, F, B, F
time = 1
[Command]
name = "cpu25"
command = D, F, D, F
time = 1
[Command]
name = "cpu26"
command = D, B, D, B
time = 1
[Command]
name = "cpu27"
command = D, B, D, F
time = 1
[Command]
name = "cpu28"
command = D, F, D, B
time = 1
[Command]
name = "cpu29"
command = U, F, D, B
time = 1
[Command]
name = "cpu30"
command = U, B, D, F
time = 1
[Command]
name = "cpu31"
command = B, D, F, U
time = 1
[Command]
name = "cpu32"
command = F, D, B, U
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
type = Null ;VarSet
v = 7
value = 1
triggerall = RoundState != 3
triggerall = RoundState != 4
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
trigger31 = command = "cpu31"
trigger32 = command = "cpu32"

[State -1]
type = VarSet
v = 7
value = 0
trigger1 = RoundState = 3
trigger2 = RoundState = 4

;---------------------------------------------------------------------------
;--------------------------------Rushes-------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Standing Variant Strike
[State -1]
type = ChangeState
value = 900
triggerall = StateType = S
triggerall = Power >= 1000
triggerall = !var(7)
triggerall = !var(56)
triggerall = (command = "x" && command = "b") || (command = "x" && command = "c") || (command = "y" && command = "c")
triggerall = StateNo != [800,999]
triggerall = StateNo != [3600,3699]
triggerall = var(3) = 0
trigger1 = StateNo = 150
trigger2 = var(9) > 0

;---------------------------------------------------------------------------
; Crouching Variant Strike
[State -1]
type = ChangeState
value = 920
triggerall = StateType = C
triggerall = Power >= 1000
triggerall = !var(7)
triggerall = !var(56)
triggerall = (command = "x" && command = "b") || (command = "x" && command = "c") || (command = "y" && command = "c")
triggerall = StateNo != [800,999]
triggerall = StateNo != [3600,3699]
triggerall = var(3) = 0
trigger1 = StateNo = 152
trigger2 = var(9) > 0

;---------------------------------------------------------------------------
; Jumping Variant Strike
[State -1]
type = ChangeState
value = 940
triggerall = StateType = A
triggerall = Power >= 1000
triggerall = !var(7)
triggerall = !var(56)
triggerall = (command = "x" && command = "b") || (command = "x" && command = "c") || (command = "y" && command = "c")
triggerall = StateNo != [800,999]
triggerall = StateNo != [3600,3699]
triggerall = var(3) = 0
trigger1 = StateNo = 154
trigger2 = var(9) > 0

;---------------------------------------------------------------------------
;--------------------------------Hypers-------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Lightning Storm
[State -1]
type = ChangeState
value = 3000
triggerall = !var(7)
triggerall = command = "LightningStorm"
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = stateno = [200,299]
trigger3 = stateno = [400,499]
trigger4 = stateno = [600,699]
trigger5 = stateno = [1000,1002]
trigger6 = stateno = [1020,1022]
trigger7 = stateno = 1100
trigger8 = stateno = 1120
trigger9 = stateno = 1201
trigger10 = StateNo = 900 && PrevStateNo != [150,154]
trigger11 = StateNo = 920 && PrevStateNo != [150,154]
trigger12 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Ice Storm
[State -1]
type = ChangeState
value = 3100
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "IceStorm"
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = stateno = [200,299]
trigger3 = stateno = [400,499]
trigger4 = stateno = [1000,1002]
trigger5 = stateno = 1100
trigger6 = StateNo = 900 && PrevStateNo != [150,154]
trigger7 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Gale Storm
[State -1]
type = ChangeState
value = 3200
triggerall = 0
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "GaleStorm"
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = stateno = [200,299]
trigger3 = stateno = [400,499]
trigger4 = stateno = [1000,1002]
trigger5 = stateno = 1100
trigger6 = StateNo = 900 && PrevStateNo != [150,154]
trigger7 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Mind Gem
[State -1]
type = ChangeState
value = 8000
triggerall = !var(7)
triggerall = command = "GemActivate"
triggerall = var(30) = 1
triggerall = !var(37)
triggerall = !var(40)
triggerall = !var(41)
triggerall = !var(42)
triggerall = !var(43)
triggerall = !var(44)
triggerall = !var(45)
triggerall = StateType != A
trigger1 = ctrl
trigger2 = stateno = [200,299]
trigger3 = stateno = [400,499]
trigger4 = stateno = [1000,1002]
trigger5 = stateno = 1100

;---------------------------------------------------------------------------
; Power Gem
[State -1]
type = ChangeState
value = 8010
triggerall = !var(7)
triggerall = command = "GemActivate"
triggerall = var(31) = 1
triggerall = var(37) = 1
triggerall = !var(40)
triggerall = !var(41)
triggerall = !var(42)
triggerall = !var(43)
triggerall = !var(44)
triggerall = !var(45)
triggerall = StateType != A
trigger1 = ctrl
trigger2 = stateno = [200,299]
trigger3 = stateno = [400,499]
trigger4 = stateno = [1000,1002]
trigger5 = stateno = 1100

;---------------------------------------------------------------------------
; Reality Gem
[State -1]
type = ChangeState
value = 8020
triggerall = !var(7)
triggerall = command = "GemActivate"
triggerall = var(32) = 1
triggerall = var(37) = 2
triggerall = !var(40)
triggerall = !var(41)
triggerall = !var(42)
triggerall = !var(43)
triggerall = !var(44)
triggerall = !var(45)
triggerall = StateType != A
trigger1 = ctrl
trigger2 = stateno = [200,299]
trigger3 = stateno = [400,499]
trigger4 = stateno = [1000,1002]
trigger5 = stateno = 1100

;---------------------------------------------------------------------------
; Soul Gem
[State -1]
type = ChangeState
value = 8030
triggerall = !var(7)
triggerall = command = "GemActivate"
triggerall = var(33) = 1
triggerall = var(37) = 3
triggerall = !var(40)
triggerall = !var(41)
triggerall = !var(42)
triggerall = !var(43)
triggerall = !var(44)
triggerall = !var(45)
triggerall = StateType != A
trigger1 = ctrl
trigger2 = stateno = [200,299]
trigger3 = stateno = [400,499]
trigger4 = stateno = [1000,1002]
trigger5 = stateno = 1100

;---------------------------------------------------------------------------
; Space Gem
[State -1]
type = ChangeState
value = 8040
triggerall = !var(7)
triggerall = command = "GemActivate"
triggerall = var(34) = 1
triggerall = var(37) = 4
triggerall = !var(40)
triggerall = !var(41)
triggerall = !var(42)
triggerall = !var(43)
triggerall = !var(44)
triggerall = !var(45)
triggerall = StateType != A
trigger1 = ctrl
trigger2 = stateno = [200,299]
trigger3 = stateno = [400,499]
trigger4 = stateno = [1000,1002]
trigger5 = stateno = 1100

;---------------------------------------------------------------------------
; Time Gem
[State -1]
type = ChangeState
value = 8050
triggerall = !var(7)
triggerall = command = "GemActivate"
triggerall = var(35) = 1
triggerall = var(37) = 5
triggerall = !var(40)
triggerall = !var(41)
triggerall = !var(42)
triggerall = !var(43)
triggerall = !var(44)
triggerall = !var(45)
triggerall = StateType != A
trigger1 = ctrl
trigger2 = stateno = [200,299]
trigger3 = stateno = [400,499]
trigger4 = stateno = [1000,1002]
trigger5 = stateno = 1100

;---------------------------------------------------------------------------
; s. Flying Start
[State -1]
type = ChangeState
value = 1700
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "Flying"
triggerall = !var(49)
trigger1 = ctrl
trigger2 = StateNo = [200,499]

;---------------------------------------------------------------------------
; j. Flying Start
[State -1]
type = ChangeState
value = 1701
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "Flying"
triggerall = Pos Y >= -270
triggerall = !var(49)
trigger1 = ctrl
trigger2 = StateNo = [600,699]

;---------------------------------------------------------------------------
; Flying End
[State -1]
type = ChangeState
value = 1704
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "Flying"
triggerall = var(49) > 1
trigger1 = StateNo = 1702

;---------------------------------------------------------------------------
;--------------------------------Dashes-------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Kuuchu Dash 7
[State -1]
type = ChangeState
value = 117
triggerall = command = "TwoPunch"
triggerall = command = "holdupback"
triggerall = StateType = A
triggerall = !var(28)
triggerall = Pos Y <= -15
trigger1 = ctrl
trigger2 = StateNo = [600,699]

;---------------------------------------------------------------------------
; Kuuchu Dash 9
[State -1]
type = ChangeState
value = 119
triggerall = command = "TwoPunch"
triggerall = command = "holdupfwd"
triggerall = StateType = A
triggerall = !var(28)
triggerall = Pos Y <= -15
trigger1 = ctrl
trigger2 = StateNo = [600,699]

;---------------------------------------------------------------------------
; Kuuchu Dash 8
[State -1]
type = ChangeState
value = 118
triggerall = command = "TwoPunch"
triggerall = command = "holdup"
triggerall = StateType = A
triggerall = !var(28)
triggerall = Pos Y <= -15
trigger1 = ctrl
trigger2 = StateNo = [600,699]

;---------------------------------------------------------------------------
; Kuuchu Dash 1
[State -1]
type = ChangeState
value = 111
triggerall = command = "TwoPunch"
triggerall = command = "holddownback"
triggerall = StateType = A
triggerall = !var(28)
triggerall = Pos Y <= -15
trigger1 = ctrl
trigger2 = StateNo = [600,699]

;---------------------------------------------------------------------------
; Kuuchu Dash 3
[State -1]
type = ChangeState
value = 113
triggerall = command = "TwoPunch"
triggerall = command = "holddownfwd"
triggerall = StateType = A
triggerall = !var(28)
triggerall = Pos Y <= -15
trigger1 = ctrl
trigger2 = StateNo = [600,699]

;---------------------------------------------------------------------------
; Kuuchu Dash 2
[State -1]
type = ChangeState
value = 112
triggerall = command = "TwoPunch"
triggerall = command = "holddown"
triggerall = StateType = A
triggerall = !var(28)
triggerall = Pos Y <= -15
trigger1 = ctrl
trigger2 = StateNo = [600,699]

;---------------------------------------------------------------------------
; Kuuchu Dash 4
[State -1]
type = ChangeState
value = 114
triggerall = command = "TwoPunch"
triggerall = command = "holdback"
triggerall = StateType = A
triggerall = !var(28)
triggerall = Pos Y <= -15
trigger1 = ctrl
trigger2 = StateNo = [600,699]

;---------------------------------------------------------------------------
; Kuuchu Dash 6
[State -1]
type = ChangeState
value = 116
triggerall = command = "TwoPunch"
triggerall = StateType = A
triggerall = !var(28)
triggerall = Pos Y <= -15
trigger1 = ctrl
trigger2 = StateNo = [600,699]

;RunBack
[State -1]
type = ChangeState
value = 105
triggerall = (command = "holdback2" && command = "TwoPunch") || (StateType != A && command = "BB")
triggerall = StateType != A
trigger1 = StateNo != [100,109]
trigger1 = ctrl

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = (command = "TwoPunch") || (StateType != A && command = "FF")
triggerall = StateType != A
trigger1 = StateNo != [100,109]
trigger1 = ctrl

;---------------------------------------------------------------------------
;-------------------------------Specials------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Typhoon X
[State -1]
type = ChangeState
value = 1000
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "TyphoonX"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = StateNo = 900 && PrevStateNo != [150,154]
trigger15 = StateNo = 920 && PrevStateNo != [150,154]
trigger16 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Typhoon Y
[State -1]
type = ChangeState
value = 1001
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "TyphoonY"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = StateNo = 900 && PrevStateNo != [150,154]
trigger15 = StateNo = 920 && PrevStateNo != [150,154]
trigger16 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Typhoon Z
[State -1]
type = ChangeState
value = 1002
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "TyphoonZ"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = StateNo = 900 && PrevStateNo != [150,154]
trigger15 = StateNo = 920 && PrevStateNo != [150,154]
trigger16 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Double Typhoon
[State -1]
type = ChangeState
value = 1100
triggerall = !var(7)
triggerall = statetype != A
triggerall = command = "DoubleTyphoon"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = StateNo = 900 && PrevStateNo != [150,154]
trigger15 = StateNo = 920 && PrevStateNo != [150,154]
trigger16 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Typhoon X
[State -1]
type = ChangeState
value = 1020
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "TyphoonX"
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 620
trigger5 = stateno = 630
trigger6 = stateno = 640
trigger7 = stateno = 650
trigger8 = StateNo = 900 && PrevStateNo != [150,154]
trigger9 = StateNo = 920 && PrevStateNo != [150,154]
trigger10 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Typhoon Y
[State -1]
type = ChangeState
value = 1021
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "TyphoonY"
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 620
trigger5 = stateno = 630
trigger6 = stateno = 640
trigger7 = stateno = 650
trigger8 = StateNo = 900 && PrevStateNo != [150,154]
trigger9 = StateNo = 920 && PrevStateNo != [150,154]
trigger10 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Typhoon Z
[State -1]
type = ChangeState
value = 1022
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "TyphoonZ"
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 620
trigger5 = stateno = 630
trigger6 = stateno = 640
trigger7 = stateno = 650
trigger8 = StateNo = 900 && PrevStateNo != [150,154]
trigger9 = StateNo = 920 && PrevStateNo != [150,154]
trigger10 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Double Typhoon
[State -1]
type = ChangeState
value = 1120
triggerall = !var(7)
triggerall = statetype = A
triggerall = command = "DoubleTyphoon"
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 620
trigger5 = stateno = 630
trigger6 = stateno = 640
trigger7 = stateno = 650
trigger8 = StateNo = 900 && PrevStateNo != [150,154]
trigger9 = StateNo = 920 && PrevStateNo != [150,154]
trigger10 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Lightning Attack
[State -1]
type = ChangeState
value = 1200
triggerall = !var(7)
triggerall = !var(3)
triggerall = command = "LightningAttack"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger4 = stateno = 220
trigger5 = stateno = 230
trigger6 = stateno = 240
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno = 420
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno = 450
trigger14 = stateno = 600
trigger15 = stateno = 610
trigger16 = stateno = 620
trigger17 = stateno = 630
trigger18 = stateno = 640
trigger19 = stateno = 650
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]
trigger22 = StateNo = 940 && PrevStateNo != [150,154]
trigger23 = StateNo = 50

;---------------------------------------------------------------------------
;--------------------------------Basics-------------------------------------
;---------------------------------------------------------------------------

;--|[ Throws ]}--
;---------------------------------------------------------------------------
; s. Strong/Fierce Throw Forward
[State -1]
type = ChangeState
value = 800
triggerall = !var(7)
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdfwd2"
triggerall = command = "y" || command = "z"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl

;---------------------------------------------------------------------------
; s. Strong/Fierce Throw Backward
[State -1]
type = ChangeState
value = 810
triggerall = !var(7)
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdback2"
triggerall = command = "y" || command = "z"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl

;---------------------------------------------------------------------------
; s. Forward/Roundhouse Throw Forward
[State -1]
type = ChangeState
value = 820
triggerall = !var(7)
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdfwd2"
triggerall = command = "b" || command = "c"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl

;---------------------------------------------------------------------------
; s. Forward/Roundhouse Throw Backward
[State -1]
type = ChangeState
value = 830
triggerall = !var(7)
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdback2"
triggerall = command = "b" || command = "c"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. Strong/Fierce Throw Forward
[State -1]
type = ChangeState
value = 850
triggerall = !var(7)
triggerall = StateType = A
triggerall = p2StateType = A
triggerall = command = "holdfwd2"
triggerall = command = "y" || command = "z"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = var(27) < 2
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. Strong/Fierce Throw Backward
[State -1]
type = ChangeState
value = 860
triggerall = !var(7)
triggerall = StateType = A
triggerall = p2StateType = A
triggerall = command = "holdback2"
triggerall = command = "y" || command = "z"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = var(27) < 2
triggerall = enemyNear, StateNo != [120,159]
trigger1 = ctrl

;--|[ Standing ]|--
;---------------------------------------------------------------------------
; s. Jab
[State -1]
type = ChangeState
value = 200
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = ctrl

;---------------------------------------------------------------------------
; s. Strong
[State -1]
type = ChangeState
value = 210
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "y" && command != "holddown")
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact

;---------------------------------------------------------------------------
; s. Fierce
[State -1]
type = ChangeState
value = 220
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "z" && command != "holddown")
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 240
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact

;---------------------------------------------------------------------------
; s. Short
[State -1]
type = ChangeState
value = 230
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "a" && command != "holddown")
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 400
trigger3 = MoveContact

;---------------------------------------------------------------------------
; s. Forward
[State -1]
type = ChangeState
value = 240
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "b" && command != "holddown")
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 400
trigger5 = MoveContact
trigger6 = stateno = 410
trigger6 = MoveContact
trigger7 = stateno = 430
trigger7 = MoveContact

;---------------------------------------------------------------------------
; s. Roundhouse
[State -1]
type = ChangeState
value = 250
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "c" && command != "holddown")
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 400
trigger7 = MoveContact
trigger8 = stateno = 410
trigger8 = MoveContact
trigger9 = stateno = 420
trigger9 = MoveGuarded
trigger10 = stateno = 430
trigger10 = MoveContact
trigger11 = stateno = 440
trigger11 = MoveContact

;--|[ Crouching ]|--
;---------------------------------------------------------------------------
; c. Jab
[State -1]
type = ChangeState
value = 400
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = ctrl

;---------------------------------------------------------------------------
; c. Strong
[State -1]
type = ChangeState
value = 410
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "y" && command = "holddown")
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 230
trigger3 = MoveContact
trigger4 = stateno = 400
trigger4 = MoveContact
trigger5 = stateno = 430
trigger5 = MoveContact

;---------------------------------------------------------------------------
; c. Fierce
[State -1]
type = ChangeState
value = 420
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "z" && command = "holddown")
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 240
trigger5 = MoveContact
trigger6 = stateno = 400
trigger6 = MoveContact
trigger7 = stateno = 410
trigger7 = MoveContact
trigger8 = stateno = 430
trigger8 = MoveContact
trigger9 = stateno = 440
trigger9 = MoveContact

;---------------------------------------------------------------------------
; c. Short
[State -1]
type = ChangeState
value = 430
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "a" && command = "holddown")
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 400
trigger3 = MoveContact

;---------------------------------------------------------------------------
; c. Forward
[State -1]
type = ChangeState
value = 440
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "b" && command = "holddown")
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 230
trigger4 = MoveContact
trigger5 = stateno = 400
trigger5 = MoveContact
trigger6 = stateno = 410
trigger6 = MoveContact
trigger7 = stateno = 430
trigger7 = MoveContact

;---------------------------------------------------------------------------
; c. Roundhouse
[State -1]
type = ChangeState
value = 450
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "c" && command = "holddown")
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = stateno = 210
trigger3 = MoveContact
trigger4 = stateno = 220
trigger4 = MoveContact
trigger5 = stateno = 230
trigger5 = MoveContact
trigger6 = stateno = 240
trigger6 = MoveContact
trigger7 = stateno = 400
trigger7 = MoveContact
trigger8 = stateno = 410
trigger8 = MoveContact
trigger9 = stateno = 420
trigger9 = MoveGuarded
trigger10 = stateno = 430
trigger10 = MoveContact
trigger11 = stateno = 440
trigger11 = MoveContact

;--|[ Jumping ]|--
;---------------------------------------------------------------------------
; j. Jab
[State -1]
type = ChangeState
value = 600
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "x"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. Strong
[State -1]
type = ChangeState
value = 610
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "y"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 630
trigger3 = MoveContact

;---------------------------------------------------------------------------
; j. Fierce
[State -1]
type = ChangeState
value = 620
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "z"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610
trigger3 = AnimElem = 5, > 0
trigger4 = stateno = 630
trigger4 = MoveContact
trigger5 = stateno = 640
trigger5 = MoveContact

;---------------------------------------------------------------------------
; j. Short
[State -1]
type = ChangeState
value = 630
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "a"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact

;---------------------------------------------------------------------------
; j. Forward
[State -1]
type = ChangeState
value = 640
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "b"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610
trigger3 = AnimElem = 5, > 0
trigger4 = stateno = 630
trigger4 = MoveContact

;---------------------------------------------------------------------------
; j. Roundhouse
[State -1]
type = ChangeState
value = 650
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "c"
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = stateno = 610
trigger3 = AnimElem = 5, > 0
trigger4 = stateno = 620
trigger4 = MoveContact
trigger5 = stateno = 630
trigger5 = MoveContact
trigger6 = stateno = 640
trigger6 = MoveContact

;---------------------------------------------------------------------------
;Super Jump
[State -1]
type = ChangeState
value = 41
triggerall = !var(7)
trigger1 = command = "DU"
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = command = "DU"
trigger2 = StateType = C
trigger2 = ctrl
trigger3 = command = "up"
trigger3 = stateno = 250 || stateno = 420 || stateno = 450
trigger3 = movehit
trigger4 = command = "DUF"
trigger4 = StateType = S
trigger4 = ctrl
trigger5 = command = "DUF"
trigger5 = StateType = C
trigger5 = ctrl
trigger6 = command = "DUB"
trigger6 = StateType = S
trigger6 = ctrl
trigger7 = command = "DUB"
trigger7 = StateType = C
trigger7 = ctrl
trigger8 = command = "UF"
trigger8 = stateno = 250 || stateno = 420 || stateno = 450
trigger8 = movehit
trigger9 = command = "UB"
trigger9 = stateno = 250 || stateno = 420 || stateno = 450
trigger9 = movehit

;---------------------------------------------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = !var(7)
triggerall = command = "holddown2"
triggerall = command = "s"
triggerall = StateType != A
trigger1 = ctrl


;-|AI|-------------------------------------------------------------------------------

;-|Defense|-------------------------------------------------------------------------------

;-|Stand Guard|-
[State -1]
type = ChangeState
value = 130
triggerall = var(7) = 1
triggerall = ctrl
trigger1 = var(44) = 0
trigger1 = statetype != A
trigger1 = p2statetype != C
trigger1 = p2movetype = A
trigger2 = var(44) > 0
trigger2 = Random < 750
trigger2 = statetype != A
trigger2 = p2statetype != C
trigger2 = p2movetype = A

;-|Crouch Guard|-
[State -1]
type = ChangeState
value = 131
triggerall = var(7) = 1
triggerall = ctrl
trigger1 = var(44) = 0
trigger1 = statetype != A
trigger1 = p2statetype = C
trigger1 = p2movetype = A
trigger2 = var(44) > 0
trigger2 = Random < 750
trigger1 = statetype != A
trigger1 = p2statetype = C
trigger1 = p2movetype = A

;-|Air Guard|-
[State -1]
type = ChangeState
value = 132
triggerall = var(7) = 1
triggerall = ctrl
trigger1 = var(44) = 0
trigger1 = statetype = A
trigger1 = p2movetype = A
trigger2 = var(44) > 0
trigger2 = Random < 750
trigger2 = statetype = A
trigger2 = p2movetype = A
