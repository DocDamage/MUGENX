;---------------------------------------------------------------------------
;-------------------------Blackheart.cmd by [Vayne]-------------------------
;---------------------------------------------------------------------------

;-| Sixty-four commands |-

;-| Super Motions |--------------------------------------------------------
;-| Thirteen commands |-

[Command]
name = "Armageddon"
command = D, DF, F, x+y
time = 20
[Command]
name = "Armageddon"
command = D, DF, F, x+z
time = 20
[Command]
name = "Armageddon"
command = D, DF, F, y+z
time = 20

[Command]
name = "JudgmentDay"
command = D, DF, F, a+b
time = 20
[Command]
name = "JudgmentDay"
command = D, DF, F, a+c
time = 20
[Command]
name = "JudgmentDay"
command = D, DF, F, b+c
time = 20

[Command]
name = "HeartOfDarkness"
command = D, DB, B, x+y
time = 20
[Command]
name = "HeartOfDarkness"
command = D, DB, B, x+z
time = 20
[Command]
name = "HeartOfDarkness"
command = D, DB, B, y+z
time = 20

[Command]
name = "ShumaGorath"
command = D, DB, B, a+b
time = 20
[Command]
name = "ShumaGorath"
command = D, DB, B, a+c
time = 20
[Command]
name = "ShumaGorath"
command = D, DB, B, b+c
time = 20

[Command]
name = "GemActivate"
command = D, DF, F, s
time = 15

;-| Special Motions |------------------------------------------------------
;-| Twelve commands |-

[Command]
name = "DarkLightningX"
command = B, DB, D, DF, F, x
time = 20
[Command]
name = "DarkLightningY"
command = B, DB, D, DF, F, y
time = 20
[Command]
name = "DarkLightningZ"
command = B, DB, D, DF, F, z
time = 20

[Command]
name = "InfernoX"
command = F, DF, D, DB, B, x
time = 20
[Command]
name = "InfernoY"
command = F, DF, D, DB, B, y
time = 20
[Command]
name = "InfernoZ"
command = F, DF, D, DB, B, z
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
;-| Fifteen commands |-

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
;-| Sixty-one Commands |-

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
[Command]
name = "cpu33"
command = U, U, U, U
time = 1
[Command]
name = "cpu34"
command = U, U, U, D
time = 1
[Command]
name = "cpu35"
command = U, U, D, D
time = 1
[Command]
name = "cpu36"
command = U, D, D, D
time = 1
[Command]
name = "cpu37"
command = D, D, D, D
time = 1
[Command]
name = "cpu38"
command = D, D, D, U
time = 1
[Command]
name = "cpu39"
command = D, D, U, U
time = 1
[Command]
name = "cpu40"
command = D, U, U, U
time = 1
[Command]
name = "cpu41"
command = U, D, U, U
time = 1
[Command]
name = "cpu42"
command = U, U, D, U
time = 1
[Command]
name = "cpu43"
command = D, U, U, D
time = 1
[Command]
name = "cpu44"
command = U, D, D, U
time = 1
[Command]
name = "cpu45"
command = D, U, D, U
time = 1
[Command]
name = "cpu46"
command = U, D, U, D
time = 1
[Command]
name = "cpu47"
command = F, F, F, F
time = 1
[Command]
name = "cpu48"
command = B, B, B, B
time = 1
[Command]
name = "cpu49"
command = F, B, F, F
time = 1
[Command]
name = "cpu50"
command = D, U, U, U
time = 1
[Command]
name = "cpu51"
command = U, D, U, U
time = 1
[Command]
name = "cpu52"
command = U, U, D, U
time = 1
[Command]
name = "cpu53"
command = D, U, U, D
time = 1
[Command]
name = "cpu54"
command = U, D, D, U
time = 1
[Command]
name = "cpu55"
command = D, U, D, U
time = 1
[Command]
name = "cpu56"
command = U, D, U, D
time = 1
[Command]
name = "cpu57"
command = F, F, F, F
time = 1
[Command]
name = "cpu58"
command = B, B, B, B
time = 1
[Command]
name = "cpu59"
command = F, B, F, F
time = 1
[Command]
name = "cpu60"
command = D, U, U, U
time = 1
[Command]
name = "cpu61"
command = U, D, U, U
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
type = VarSet
v = 7
value = 1
triggerall = Alive = 1
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
trigger33 = command = "cpu33"
trigger34 = command = "cpu34"
trigger35 = command = "cpu35"
trigger36 = command = "cpu36"
trigger37 = command = "cpu37"
trigger38 = command = "cpu38"
trigger39 = command = "cpu39"
trigger30 = command = "cpu40"
trigger31 = command = "cpu41"
trigger32 = command = "cpu42"
trigger33 = command = "cpu43"
trigger34 = command = "cpu44"
trigger35 = command = "cpu45"
trigger36 = command = "cpu46"
trigger37 = command = "cpu47"
trigger38 = command = "cpu48"
trigger39 = command = "cpu49"
trigger30 = command = "cpu50"
trigger31 = command = "cpu51"
trigger32 = command = "cpu52"
trigger33 = command = "cpu53"
trigger34 = command = "cpu54"
trigger35 = command = "cpu55"
trigger36 = command = "cpu56"
trigger37 = command = "cpu57"
trigger38 = command = "cpu58"
trigger39 = command = "cpu59"
trigger30 = command = "cpu60"
trigger31 = command = "cpu61"

[State -1]
type = VarSet
v = 7
value = 0
trigger1 = Win = 1
trigger2 = Lose = 1

;---------------------------------------------------------------------------
;--------------------------------Rushes-------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Standing Rush Attack
[State -1]
type = ChangeState
value = 900
triggerall = StateType = S
triggerall = Power >= 1000
triggerall = !var(7)
triggerall = (command = "x" && command = "b") || (command = "x" && command = "c") || (command = "y" && command = "c")
triggerall = StateNo != [800,999]
triggerall = StateNo != [3600,3699]
triggerall = var(3) = 0
trigger1 = StateNo = 150
trigger2 = var(9) > 0

;---------------------------------------------------------------------------
; Crouching Rush Attack
[State -1]
type = ChangeState
value = 920
triggerall = StateType = C
triggerall = Power >= 1000
triggerall = !var(7)
triggerall = (command = "x" && command = "b") || (command = "x" && command = "c") || (command = "y" && command = "c")
triggerall = StateNo != [800,999]
triggerall = StateNo != [3600,3699]
triggerall = var(3) = 0
trigger1 = StateNo = 152
trigger2 = var(9) > 0

;---------------------------------------------------------------------------
; Jumping Rush Attack
[State -1]
type = ChangeState
value = 940
triggerall = StateType = A
triggerall = (MoveType != H && StateNo != [120,159])
triggerall = Power >= 1000
triggerall = !var(7)
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
; Shuma Gorath - Mystic Stare Type II
[State -1]
type = ChangeState
value = 1999
triggerall = StateType != A
triggerall = Power >= 1000
triggerall = !var(7)
triggerall = command = "ShumaGorath"
triggerall = NumHelper(2000) = 0
triggerall = P2Name != "[Hayte]'s Shuma Gorath"
triggerall = P3Name != "[Hayte]'s Shuma Gorath"
triggerall = P4Name != "[Hayte]'s Shuma Gorath"
triggerall = NumHelper(2011) + NumHelper(2012) + NumHelper(2013) + NumHelper(2014) + NumHelper(2015) + NumHelper(2016) = 0
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger3 = StateNo = 240
trigger4 = StateNo = 250
trigger5 = StateNo = 200
trigger6 = StateNo = 210
trigger7 = StateNo = 220
trigger8 = StateNo = 430
trigger9 = StateNo = 440
trigger10 = StateNo = 450
trigger11 = StateNo = 400
trigger12 = StateNo = 410
trigger13 = StateNo = 420
trigger14 = StateNo = 1000
trigger14 = AnimElem = 10, < 0 ;AnimElem = 6, < 5
trigger15 = StateNo = 1001
trigger15 = AnimElem = 10, < 0 ;AnimElem = 6, < 5
trigger16 = StateNo = 1002
trigger16 = AnimElem = 10, < 0 ;AnimElem = 6, < 5
trigger17 = StateNo = 1500
trigger18 = StateNo = 1501
trigger19 = StateNo = 1502
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Armageddon
[State -1]
type = ChangeState
value = 3000
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "Armageddon"
triggerall = Power >= 1000
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger3 = StateNo = 240
trigger4 = StateNo = 250
trigger5 = StateNo = 200
trigger6 = StateNo = 210
trigger7 = StateNo = 220
trigger8 = StateNo = 430
trigger9 = StateNo = 440
trigger10 = StateNo = 450
trigger11 = StateNo = 400
trigger12 = StateNo = 410
trigger13 = StateNo = 420
trigger14 = StateNo = 1000
trigger14 = AnimElem = 10, < 0 ;AnimElem = 6, < 5
trigger15 = StateNo = 1001
trigger15 = AnimElem = 10, < 0 ;AnimElem = 6, < 5
trigger16 = StateNo = 1002
trigger16 = AnimElem = 10, < 0 ;AnimElem = 6, < 5
trigger17 = StateNo = 1500
trigger18 = StateNo = 1501
trigger19 = StateNo = 1502
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Judgment Day
[State -1]
type = ChangeState
value = 3600
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "JudgmentDay"
triggerall = Power >= 1000
triggerall = NumHelper(3602) = 0
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger3 = StateNo = 240
trigger4 = StateNo = 250
trigger5 = StateNo = 200
trigger6 = StateNo = 210
trigger7 = StateNo = 220
trigger8 = StateNo = 430
trigger9 = StateNo = 440
trigger10 = StateNo = 450
trigger11 = StateNo = 400
trigger12 = StateNo = 410
trigger13 = StateNo = 420
trigger14 = StateNo = 1000
trigger14 = AnimElem = 10, < 0 ;AnimElem = 6, < 5
trigger15 = StateNo = 1001
trigger15 = AnimElem = 10, < 0 ;AnimElem = 6, < 5
trigger16 = StateNo = 1002
trigger16 = AnimElem = 10, < 0 ;AnimElem = 6, < 5
trigger17 = StateNo = 1500
trigger18 = StateNo = 1501
trigger19 = StateNo = 1502
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Heart of Darkness
[State -1]
type = ChangeState
value = 3700
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "HeartOfDarkness"
triggerall = Power >= 1000
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger3 = StateNo = 240
trigger4 = StateNo = 250
trigger5 = StateNo = 200
trigger6 = StateNo = 210
trigger7 = StateNo = 220
trigger8 = StateNo = 430
trigger9 = StateNo = 440
trigger10 = StateNo = 450
trigger11 = StateNo = 400
trigger12 = StateNo = 410
trigger13 = StateNo = 420
trigger14 = StateNo = 1000
trigger14 = AnimElem = 10, < 0 ;AnimElem = 6, < 5
trigger15 = StateNo = 1001
trigger15 = AnimElem = 10, < 0 ;AnimElem = 6, < 5
trigger16 = StateNo = 1002
trigger16 = AnimElem = 10, < 0 ;AnimElem = 6, < 5
trigger17 = StateNo = 1500
trigger18 = StateNo = 1501
trigger19 = StateNo = 1502
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Kuuchu Heart of Darkness
[State -1]
type = ChangeState
value = 3750
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "HeartOfDarkness"
triggerall = Power >= 1000
trigger1 = ctrl = 1
trigger2 = StateNo = 630
trigger3 = StateNo = 640
trigger4 = StateNo = 650
trigger5 = StateNo = 600
trigger6 = StateNo = 610
trigger7 = StateNo = 620
trigger8 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Mind Gem
[State -1]
type = ChangeState
value = 8000
triggerall = !var(7)
triggerall = command = "GemActivate"
triggerall = var(30) = 1
triggerall = var(37) = 0
triggerall = var(40) = 0
triggerall = var(41) = 0
triggerall = var(42) = 0
triggerall = var(43) = 0
triggerall = var(44) = 0
triggerall = var(45) = 0
triggerall = StateType != A
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger3 = StateNo = 210
trigger4 = StateNo = 220
trigger5 = StateNo = 230
trigger6 = StateNo = 240
trigger7 = StateNo = 250
trigger8 = StateNo = 400
trigger9 = StateNo = 410
trigger10 = StateNo = 420
trigger11 = StateNo = 430
trigger12 = StateNo = 440
trigger13 = StateNo = 450
trigger14 = StateNo = 1000
trigger14 = AnimElem = 8, < 0
trigger15 = StateNo = 1001
trigger15 = AnimElem = 8, < 0
trigger16 = StateNo = 1002
trigger16 = AnimElem = 8, < 0
trigger17 = StateNo = 1500
trigger18 = StateNo = 1501
trigger19 = StateNo = 1502
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Power Gem
[State -1]
type = ChangeState
value = 8010
triggerall = !var(7)
triggerall = command = "GemActivate"
triggerall = var(31) = 1
triggerall = var(37) = 1
triggerall = var(40) = 0
triggerall = var(41) = 0
triggerall = var(42) = 0
triggerall = var(43) = 0
triggerall = var(44) = 0
triggerall = var(45) = 0
triggerall = StateType != A
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger3 = StateNo = 210
trigger4 = StateNo = 220
trigger5 = StateNo = 230
trigger6 = StateNo = 240
trigger7 = StateNo = 250
trigger8 = StateNo = 400
trigger9 = StateNo = 410
trigger10 = StateNo = 420
trigger11 = StateNo = 430
trigger12 = StateNo = 440
trigger13 = StateNo = 450
trigger14 = StateNo = 1000
trigger14 = AnimElem = 8, < 0
trigger15 = StateNo = 1001
trigger15 = AnimElem = 8, < 0
trigger16 = StateNo = 1002
trigger16 = AnimElem = 8, < 0
trigger17 = StateNo = 1500
trigger18 = StateNo = 1501
trigger19 = StateNo = 1502
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Reality Gem
[State -1]
type = ChangeState
value = 8020
triggerall = !var(7)
triggerall = command = "GemActivate"
triggerall = var(32) = 1
triggerall = var(37) = 2
triggerall = var(40) = 0
triggerall = var(41) = 0
triggerall = var(42) = 0
triggerall = var(43) = 0
triggerall = var(44) = 0
triggerall = var(45) = 0
triggerall = StateType != A
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger3 = StateNo = 210
trigger4 = StateNo = 220
trigger5 = StateNo = 230
trigger6 = StateNo = 240
trigger7 = StateNo = 250
trigger8 = StateNo = 400
trigger9 = StateNo = 410
trigger10 = StateNo = 420
trigger11 = StateNo = 430
trigger12 = StateNo = 440
trigger13 = StateNo = 450
trigger14 = StateNo = 1000
trigger14 = AnimElem = 8, < 0
trigger15 = StateNo = 1001
trigger15 = AnimElem = 8, < 0
trigger16 = StateNo = 1002
trigger16 = AnimElem = 8, < 0
trigger17 = StateNo = 1500
trigger18 = StateNo = 1501
trigger19 = StateNo = 1502
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Soul Gem
[State -1]
type = ChangeState
value = 8030
triggerall = !var(7)
triggerall = command = "GemActivate"
triggerall = var(33) = 1
triggerall = var(37) = 3
triggerall = var(40) = 0
triggerall = var(41) = 0
triggerall = var(42) = 0
triggerall = var(43) = 0
triggerall = var(44) = 0
triggerall = var(45) = 0
triggerall = StateType != A
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger3 = StateNo = 210
trigger4 = StateNo = 220
trigger5 = StateNo = 230
trigger6 = StateNo = 240
trigger7 = StateNo = 250
trigger8 = StateNo = 400
trigger9 = StateNo = 410
trigger10 = StateNo = 420
trigger11 = StateNo = 430
trigger12 = StateNo = 440
trigger13 = StateNo = 450
trigger14 = StateNo = 1000
trigger14 = AnimElem = 8, < 0
trigger15 = StateNo = 1001
trigger15 = AnimElem = 8, < 0
trigger16 = StateNo = 1002
trigger16 = AnimElem = 8, < 0
trigger17 = StateNo = 1500
trigger18 = StateNo = 1501
trigger19 = StateNo = 1502
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Space Gem
[State -1]
type = ChangeState
value = 8040
triggerall = !var(7)
triggerall = command = "GemActivate"
triggerall = var(34) = 1
triggerall = var(37) = 4
triggerall = var(40) = 0
triggerall = var(41) = 0
triggerall = var(42) = 0
triggerall = var(43) = 0
triggerall = var(44) = 0
triggerall = var(45) = 0
triggerall = StateType != A
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger3 = StateNo = 210
trigger4 = StateNo = 220
trigger5 = StateNo = 230
trigger6 = StateNo = 240
trigger7 = StateNo = 250
trigger8 = StateNo = 400
trigger9 = StateNo = 410
trigger10 = StateNo = 420
trigger11 = StateNo = 430
trigger12 = StateNo = 440
trigger13 = StateNo = 450
trigger14 = StateNo = 1000
trigger14 = AnimElem = 8, < 0
trigger15 = StateNo = 1001
trigger15 = AnimElem = 8, < 0
trigger16 = StateNo = 1002
trigger16 = AnimElem = 8, < 0
trigger17 = StateNo = 1500
trigger18 = StateNo = 1501
trigger19 = StateNo = 1502
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Time Gem
[State -1]
type = ChangeState
value = 8050
triggerall = !var(7)
triggerall = command = "GemActivate"
triggerall = var(35) = 1
triggerall = var(37) = 5
triggerall = var(40) = 0
triggerall = var(41) = 0
triggerall = var(42) = 0
triggerall = var(43) = 0
triggerall = var(44) = 0
triggerall = var(45) = 0
triggerall = StateType != A
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger3 = StateNo = 210
trigger4 = StateNo = 220
trigger5 = StateNo = 230
trigger6 = StateNo = 240
trigger7 = StateNo = 250
trigger8 = StateNo = 400
trigger9 = StateNo = 410
trigger10 = StateNo = 420
trigger11 = StateNo = 430
trigger12 = StateNo = 440
trigger13 = StateNo = 450
trigger14 = StateNo = 1000
trigger14 = AnimElem = 8, < 0
trigger15 = StateNo = 1001
trigger15 = AnimElem = 8, < 0
trigger16 = StateNo = 1002
trigger16 = AnimElem = 8, < 0
trigger17 = StateNo = 1500
trigger18 = StateNo = 1501
trigger19 = StateNo = 1502
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
;--------------------------------Dashes-------------------------------------
;---------------------------------------------------------------------------

;RunBack
[State -1]
type = ChangeState
value = 105 + ((StateType = A) * 10)
triggerall = (command = "holdback2" && command = "TwoPunch") || (StateType != A && command = "BB")
triggerall = StateType = S || (StateType = A && !var(11))
triggerall = !var(7)
trigger1 = ctrl = 1
trigger2 = StateNo = [600,650]
trigger3 = StateNo = 900 && PrevStateNo != [150,154]
trigger4 = StateNo = 920 && PrevStateNo != [150,154]
trigger5 = StateNo = 940 && PrevStateNo != [150,154]

;RunFwd
[State -1]
type = ChangeState
value = 100 + ((StateType = A) * 10)
triggerall = (command = "TwoPunch") || (StateType != A && command = "FF")
triggerall = StateType = S || (StateType = A && !var(11))
triggerall = !var(7)
trigger1 = ctrl = 1
trigger2 = StateNo = [600,650]
trigger3 = StateNo = 900 && PrevStateNo != [150,154]
trigger4 = StateNo = 920 && PrevStateNo != [150,154]
trigger5 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
;-------------------------------Specials------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Inferno X
[State -1]
type = ChangeState
value = 1000
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "InfernoX"
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger3 = StateNo = 240
trigger4 = StateNo = 250
trigger5 = StateNo = 200
trigger6 = StateNo = 210
trigger7 = StateNo = 220
trigger8 = StateNo = 430
trigger9 = StateNo = 440
trigger10 = StateNo = 450
trigger11 = StateNo = 400
trigger12 = StateNo = 410
trigger13 = StateNo = 420
trigger14 = StateNo = 900 && PrevStateNo != [150,154]
trigger15 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Inferno Y
[State -1]
type = ChangeState
value = 1001
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "InfernoY"
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger3 = StateNo = 240
trigger4 = StateNo = 250
trigger5 = StateNo = 200
trigger6 = StateNo = 210
trigger7 = StateNo = 220
trigger8 = StateNo = 430
trigger9 = StateNo = 440
trigger10 = StateNo = 450
trigger11 = StateNo = 400
trigger12 = StateNo = 410
trigger13 = StateNo = 420
trigger14 = StateNo = 900 && PrevStateNo != [150,154]
trigger15 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Inferno Z
[State -1]
type = ChangeState
value = 1002
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "InfernoZ"
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger3 = StateNo = 240
trigger4 = StateNo = 250
trigger5 = StateNo = 200
trigger6 = StateNo = 210
trigger7 = StateNo = 220
trigger8 = StateNo = 430
trigger9 = StateNo = 440
trigger10 = StateNo = 450
trigger11 = StateNo = 400
trigger12 = StateNo = 410
trigger13 = StateNo = 420
trigger14 = StateNo = 900 && PrevStateNo != [150,154]
trigger15 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Dark Lightning X
[State -1]
type = ChangeState
value = 1500
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "DarkLightningX"
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger3 = StateNo = 240
trigger4 = StateNo = 250
trigger5 = StateNo = 200
trigger6 = StateNo = 210
trigger7 = StateNo = 220
trigger8 = StateNo = 430
trigger9 = StateNo = 440
trigger10 = StateNo = 450
trigger11 = StateNo = 400
trigger12 = StateNo = 410
trigger13 = StateNo = 420
trigger14 = StateNo = 900 && PrevStateNo != [150,154]
trigger15 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Dark Lightning Y
[State -1]
type = ChangeState
value = 1501
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "DarkLightningY"
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger3 = StateNo = 240
trigger4 = StateNo = 250
trigger5 = StateNo = 200
trigger6 = StateNo = 210
trigger7 = StateNo = 220
trigger8 = StateNo = 430
trigger9 = StateNo = 440
trigger10 = StateNo = 450
trigger11 = StateNo = 400
trigger12 = StateNo = 410
trigger13 = StateNo = 420
trigger14 = StateNo = 900 && PrevStateNo != [150,154]
trigger15 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Dark Lightning Z
[State -1]
type = ChangeState
value = 1502
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "DarkLightningZ"
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger3 = StateNo = 240
trigger4 = StateNo = 250
trigger5 = StateNo = 200
trigger6 = StateNo = 210
trigger7 = StateNo = 220
trigger8 = StateNo = 430
trigger9 = StateNo = 440
trigger10 = StateNo = 450
trigger11 = StateNo = 400
trigger12 = StateNo = 410
trigger13 = StateNo = 420
trigger14 = StateNo = 900 && PrevStateNo != [150,154]
trigger15 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Flying Start
[State -1]
type = ChangeState
value = 1700
triggerall = !var(7)
triggerall = StateType != A
triggerall = command = "Flying"
triggerall = !var(19)
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger3 = StateNo = 240
trigger4 = StateNo = 250
trigger5 = StateNo = 200
trigger6 = StateNo = 210
trigger7 = StateNo = 220
trigger8 = StateNo = 430
trigger9 = StateNo = 440
trigger10 = StateNo = 450
trigger11 = StateNo = 400
trigger12 = StateNo = 410
trigger13 = StateNo = 420
trigger14 = StateNo = 900 && PrevStateNo != [150,154]
trigger15 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Flying Start
[State -1]
type = ChangeState
value = 1703
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "Flying"
triggerall = !var(19)
trigger1 = ctrl = 1
trigger2 = StateNo = 600
trigger3 = StateNo = 610
trigger4 = StateNo = 620
trigger5 = StateNo = 630
trigger6 = StateNo = 640
trigger7 = StateNo = 650
trigger8 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Flying End
[State -1]
type = ChangeState
value = 1704
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "Flying"
triggerall = var(19) > 1
trigger1 = 1

;---------------------------------------------------------------------------
;--------------------------------Basics-------------------------------------
;---------------------------------------------------------------------------

;--|[ Throws ]}--
;---------------------------------------------------------------------------
; s. Strong Throw Forward
[State -1]
type = ChangeState
value = 800
triggerall = !var(7)
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdfwd2"
triggerall = command = "y"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
trigger1 = ctrl = 1
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Strong Throw Backward
[State -1]
type = ChangeState
value = 810
triggerall = !var(7)
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdback2"
triggerall = command = "y"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
trigger1 = ctrl = 1
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Fierce Throw Forward
[State -1]
type = ChangeState
value = 820
triggerall = !var(7)
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdfwd2"
triggerall = command = "z"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
trigger1 = ctrl = 1
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Fierce Throw Backward
[State -1]
type = ChangeState
value = 830
triggerall = !var(7)
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdback2"
triggerall = command = "z"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
trigger1 = ctrl = 1
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]

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
triggerall = StateNo != 110
trigger1 = ctrl = 1
trigger2 = StateNo = 940 && PrevStateNo != [150,154]

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
triggerall = StateNo != 115
trigger1 = ctrl = 1
trigger2 = StateNo = 940 && PrevStateNo != [150,154]

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
triggerall = ((ctrl = 1) || ((ctrl = 0) && (PrevStateNo != [200,250]) && (PrevStateNo != [400,450]))) || ((ctrl = 0) && StateNo = [900,940])
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger2 = MoveContact
trigger3 = StateNo = 430
trigger3 = MoveContact
trigger4 = StateNo = 900 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Strong
[State -1]
type = ChangeState
value = 210
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "y" && command != "holddown")
triggerall = ((ctrl = 1) || ((ctrl = 0) && (PrevStateNo != [200,250]) && (PrevStateNo != [400,450]))) || ((ctrl = 0) && StateNo = [900,940])
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger2 = MoveContact
trigger3 = StateNo = 240
trigger3 = MoveContact
trigger4 = StateNo = 200
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact
trigger6 = StateNo = 440
trigger6 = MoveContact
trigger7 = StateNo = 400
trigger7 = MoveContact
trigger8 = StateNo = 450
trigger8 = MoveContact
trigger9 = StateNo = 900 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Fierce
[State -1]
type = ChangeState
value = 220
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "z" && command != "holddown")
triggerall = ((ctrl = 1) || ((ctrl = 0) && (PrevStateNo != [200,250]) && (PrevStateNo != [400,450]))) || ((ctrl = 0) && StateNo = [900,940])
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger2 = MoveContact
trigger3 = StateNo = 240
trigger3 = MoveContact
trigger4 = StateNo = 250
trigger4 = MoveContact
trigger5 = StateNo = 200
trigger5 = MoveContact
trigger6 = StateNo = 210
trigger6 = MoveContact
trigger7 = StateNo = 430
trigger7 = MoveContact
trigger8 = StateNo = 440
trigger8 = MoveContact
trigger9 = StateNo = 450
trigger9 = MoveContact
trigger10 = StateNo = 400
trigger10 = MoveContact
trigger11 = StateNo = 410
trigger11 = MoveContact
trigger12 = StateNo = 900 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Short
[State -1]
type = ChangeState
value = 230
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "a" && command != "holddown")
triggerall = ((ctrl = 1) || ((ctrl = 0) && (PrevStateNo != [200,250]) && (PrevStateNo != [400,450]))) || ((ctrl = 0) && StateNo = [900,940])
trigger1 = ctrl = 1
trigger2 = StateNo = 900 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Forward
[State -1]
type = ChangeState
value = 240
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "b" && command != "holddown")
triggerall = ((ctrl = 1) || ((ctrl = 0) && (PrevStateNo != [200,250]) && (PrevStateNo != [400,450]))) || ((ctrl = 0) && StateNo = [900,940])
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger2 = MoveContact
trigger3 = StateNo = 200
trigger3 = MoveContact
trigger4 = StateNo = 430
trigger4 = MoveContact
trigger5 = StateNo = 400
trigger5 = MoveContact
trigger6 = StateNo = 900 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Roundhouse
[State -1]
type = ChangeState
value = 250
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "c" && command != "holddown")
triggerall = ((ctrl = 1) || ((ctrl = 0) && (PrevStateNo != [200,250]) && (PrevStateNo != [400,450]))) || ((ctrl = 0) && StateNo = [900,940])
trigger1 = ctrl = 1
trigger2 = StateNo = 900 && PrevStateNo != [150,154]

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
triggerall = ((ctrl = 1) || ((ctrl = 0) && (PrevStateNo != [200,250]) && (PrevStateNo != [400,450]))) || ((ctrl = 0) && StateNo = [900,940])
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger2 = MoveContact
trigger3 = StateNo = 430
trigger3 = MoveContact
trigger4 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; c. Strong
[State -1]
type = ChangeState
value = 410
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "y" && command = "holddown")
triggerall = ((ctrl = 1) || ((ctrl = 0) && (PrevStateNo != [200,250]) && (PrevStateNo != [400,450]))) || ((ctrl = 0) && StateNo = [900,940])
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger2 = MoveContact
trigger3 = StateNo = 240
trigger3 = MoveContact
trigger4 = StateNo = 200
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact
trigger6 = StateNo = 440
trigger6 = MoveContact
trigger7 = StateNo = 400
trigger7 = MoveContact
trigger8 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; c. Fierce
[State -1]
type = ChangeState
value = 420
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "z" && command = "holddown")
triggerall = ((ctrl = 1) || ((ctrl = 0) && (PrevStateNo != [200,250]) && (PrevStateNo != [400,450]))) || ((ctrl = 0) && StateNo = [900,940])
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger2 = MoveContact
trigger3 = StateNo = 240
trigger3 = MoveContact
trigger4 = StateNo = 250
trigger4 = MoveContact
trigger5 = StateNo = 200
trigger5 = MoveContact
trigger6 = StateNo = 210
trigger6 = MoveContact
trigger7 = StateNo = 430
trigger7 = MoveContact
trigger8 = StateNo = 440
trigger8 = MoveContact
trigger9 = StateNo = 450
trigger9 = MoveContact
trigger10 = StateNo = 400
trigger10 = MoveContact
trigger11 = StateNo = 410
trigger11 = MoveContact
trigger12 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; c. Short
[State -1]
type = ChangeState
value = 430
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "a" && command = "holddown")
triggerall = ((ctrl = 1) || ((ctrl = 0) && (PrevStateNo != [200,250]) && (PrevStateNo != [400,450]))) || ((ctrl = 0) && StateNo = [900,940])
trigger1 = ctrl = 1
trigger2 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; c. Forward
[State -1]
type = ChangeState
value = 440
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "b" && command = "holddown")
triggerall = ((ctrl = 1) || ((ctrl = 0) && (PrevStateNo != [200,250]) && (PrevStateNo != [400,450]))) || ((ctrl = 0) && StateNo = [900,940])
trigger1 = ctrl = 1
trigger2 = StateNo = 230
trigger2 = MoveContact
trigger3 = StateNo = 200
trigger3 = MoveContact
trigger4 = StateNo = 430
trigger4 = MoveContact
trigger5 = StateNo = 400
trigger5 = MoveContact
trigger6 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; c. Roundhouse
[State -1]
type = ChangeState
value = 450
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "c" && command = "holddown")
triggerall = ((ctrl = 1) || ((ctrl = 0) && (PrevStateNo != [200,250]) && (PrevStateNo != [400,450]))) || ((ctrl = 0) && StateNo = [900,940])
trigger1 = ctrl = 1
trigger2 = StateNo = 920 && PrevStateNo != [150,154]

;--|[ Jumping ]|--
;---------------------------------------------------------------------------
; j. Jab
[State -1]
type = ChangeState
value = 600
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "x"
trigger1 = ctrl = 1
trigger2 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Strong
[State -1]
type = ChangeState
value = 610
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "y"
trigger1 = ctrl = 1
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 630
trigger3 = MoveContact
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Fierce
[State -1]
type = ChangeState
value = 620
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "z"
trigger1 = ctrl = 1
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 610
trigger3 = MoveContact
trigger4 = StateNo = 630
trigger4 = MoveContact
trigger5 = StateNo = 640
trigger5 = MoveContact
trigger6 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Short
[State -1]
type = ChangeState
value = 630
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "a"
trigger1 = ctrl = 1
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Forward
[State -1]
type = ChangeState
value = 640
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "b"
trigger1 = ctrl = 1
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 610
trigger3 = MoveContact
trigger4 = StateNo = 630
trigger4 = MoveContact
trigger5 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Roundhouse
[State -1]
type = ChangeState
value = 650
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "c"
trigger1 = ctrl = 1
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 610
trigger3 = MoveContact
trigger4 = StateNo = 620
trigger4 = MoveContact
trigger5 = StateNo = 630
trigger5 = MoveContact
trigger6 = StateNo = 640
trigger6 = MoveContact
trigger7 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
;Super Jump
[State -1]
type = ChangeState
value = 41
triggerall = !var(7)
trigger1 = command = "DU"
trigger1 = StateType = S
trigger1 = ctrl = 1
trigger2 = command = "DU"
trigger2 = StateType = C
trigger2 = ctrl = 1
trigger3 = command = "up"
trigger3 = StateNo = 210
trigger3 = movehit
trigger4 = command = "DUF"
trigger4 = StateType = S
trigger4 = ctrl = 1
trigger5 = command = "DUF"
trigger5 = StateType = C
trigger5 = ctrl = 1
trigger6 = command = "DUB"
trigger6 = StateType = S
trigger6 = ctrl = 1
trigger7 = command = "DUB"
trigger7 = StateType = C
trigger7 = ctrl = 1
trigger8 = command = "UF"
trigger8 = StateNo = 210
trigger8 = movehit
trigger9 = command = "UB"
trigger9 = StateNo = 210
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
trigger1 = ctrl = 1

;-|AI|-------------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Armageddon
[State -1]
type = ChangeState
value = 3000
triggerall = var(7) = 1
triggerall = StateType != A
triggerall = Power >= 1000
triggerall = FrontEdgeBodyDist < 160
;trigger1 = ((NumHelper(13000) + NumHelper(12000) + NumHelper(11000) > 0) && (Helper(13000), movehit || Helper(12000), movehit || Helper(11000), movehit))
trigger1 = StateNo = [1000,1002]
trigger1 = AnimElem = 6, > 5
trigger1 = enemyNear, StateNo = [5000,5999]
trigger1 = Random < 250

;---------------------------------------------------------------------------
; Judgment Day
[State -1]
type = ChangeState
value = 3600
triggerall = var(7) = 1
triggerall = StateType != A
triggerall = Power >= 1000
triggerall = NumHelper(3602) = 0
;trigger1 = ((NumHelper(13000) + NumHelper(12000) + NumHelper(11000) > 0) && (Helper(13000), movehit || Helper(12000), movehit || Helper(11000), movehit))
trigger1 = StateNo = [1000,1002]
trigger1 = AnimElem = 6, > 5
trigger1 = enemyNear, StateNo = [5000,5999]
trigger1 = Random < 750
trigger2 = enemyNear, MoveType != A
trigger2 = enemyNear, Vel X < 3
trigger2 = enemyNear, Vel X > -3
trigger2 = enemyNear, life < 80

;---------------------------------------------------------------------------
; Inferno X
[State -1]
type = ChangeState
value = 1000
triggerall = var(7) = 1
triggerall = StateType != A
triggerall = ctrl = 1
trigger1 = enemyNear, Vel X >= 7.5
trigger1 = p2bodydist X > 0
trigger1 = p2bodydist Y < 100
trigger1 = Random < 100

;---------------------------------------------------------------------------
; Inferno Y
[State -1]
type = ChangeState
value = 1001
triggerall = var(7) = 1
triggerall = StateType != A
triggerall = ctrl = 1
trigger1 = enemyNear, Vel X >= 7.5
trigger1 = p2bodydist X > 100
trigger1 = p2bodydist Y < 200
trigger1 = Random < 100
trigger2 = enemyNear, Vel X <= -7.5
trigger2 = p2bodydist X > 0
trigger2 = p2bodydist Y < 100
trigger2 = Random < 100

;---------------------------------------------------------------------------
; Inferno Z
[State -1]
type = ChangeState
value = 1002
triggerall = var(7) = 1
triggerall = StateType != A
triggerall = enemyNear, Vel X > -7.5
triggerall = enemyNear, Vel X < 7.5
triggerall = ctrl = 1
trigger1 = StateNo = 210
trigger1 = movehit
trigger1 = Random < 33
trigger2 = enemyNear, MoveType != A
trigger2 = enemyNear, Pos Y < -300
trigger2 = enemyNear, Vel Y < -2
trigger2 = Random < 50
trigger3 = enemyNear, Pos Y < -800
trigger3 = enemyNear, MoveType != A
trigger4 = enemyNear, Anim = 5300
trigger5 = enemyNear, StateNo = 252
trigger5 = enemyNear, MoveType = I

;---------------------------------------------------------------------------
; s. Jab
[State -1]
type = ChangeState
value = 200
triggerall = var(7) = 1
triggerall = MoveType = I
triggerall = StateType != A
triggerall = enemyNear, StateType != A
triggerall = ctrl = 1
trigger1 = p2bodydist X < 160
trigger1 = Random < 33
trigger2 = p2bodydist X < 160
trigger2 = enemyNear, MoveType = A
trigger2 = enemyNear, Time < 5
trigger2 = Random < 50

;---------------------------------------------------------------------------
; s. Strong
[State -1]
type = ChangeState
value = 210
triggerall = var(7) = 1
triggerall = MoveType != H
triggerall = StateType != A
triggerall = enemyNear, Pos Y > -30
trigger1 = ((StateNo = 200 || StateNo = 230 || StateNo = 240 || StateNo = 400 || StateNo = 430 || StateNo = 440) && (movehit))
trigger1 = p2bodydist X < 120

;---------------------------------------------------------------------------
; s. Short
[State -1]
type = ChangeState
value = 210
triggerall = var(7) = 1
triggerall = MoveType = I
triggerall = StateType != A
triggerall = enemyNear, Pos Y > -30
triggerall = ctrl = 1
trigger1 = p2bodydist X < 180
trigger1 = Random < 33

;---------------------------------------------------------------------------
; s. Forward
[State -1]
type = ChangeState
value = 240
triggerall = var(7) = 1
triggerall = MoveType = I
triggerall = StateType != A
triggerall = (enemyNear, Pos Y > -150 && enemyNear, Vel Y > -8)
triggerall = ctrl = 1
trigger1 = p2bodydist X < 150
trigger1 = Random < 20

;---------------------------------------------------------------------------
; s. Roundhouse
[State -1]
type = ChangeState
value = 250
triggerall = var(7) = 1
triggerall = MoveType = I
triggerall = StateType != A
triggerall = ctrl = 1
trigger1 = p2bodydist X < 200
trigger1 = enemyNear, Pos Y > -60
trigger1 = enemyNear, Vel Y > -3
trigger1 = Random < 100

;---------------------------------------------------------------------------
; c. Jab
[State -1]
type = ChangeState
value = 400
triggerall = var(7) = 1
triggerall = MoveType = I
triggerall = StateType != A
triggerall = enemyNear, StateType != A
triggerall = ((ctrl = 1) || ((ctrl = 0) && (PrevStateNo != [200,250]) && (PrevStateNo != [400,450]))) || ((ctrl = 0) && StateNo = [900,940])
trigger1 = p2bodydist X < 120
trigger1 = Random < 33

;---------------------------------------------------------------------------
; c. Short
[State -1]
type = ChangeState
value = 430
triggerall = var(7) = 1
triggerall = MoveType = I
triggerall = StateType != A
triggerall = enemyNear, StateType != A
triggerall = ((ctrl = 1) || ((ctrl = 0) && (PrevStateNo != [200,250]) && (PrevStateNo != [400,450]))) || ((ctrl = 0) && StateNo = [900,940])
trigger1 = enemyNear, StateNo = 120 || enemyNear, StateNo = 130 || enemyNear, StateNo = 140 || enemyNear, StateNo = 150
trigger1 = p2bodydist X < 160
trigger1 = Random < 250
trigger2 = enemyNear, MoveType = I
trigger2 = p2bodydist X < 160
trigger2 = Random < 25
trigger3 = PrevStateNo = 430
trigger3 = moveguarded
trigger3 = p2bodydist X < 160
trigger3 = Random < 50

;---------------------------------------------------------------------------
; c. Strong
[State -1]
type = ChangeState
value = 410
triggerall = var(7) = 1
triggerall = MoveType != H
triggerall = StateType != A
triggerall = enemyNear, Pos Y > -30
triggerall = ((ctrl = 1) || ((ctrl = 0) && (PrevStateNo != [200,250]) && (PrevStateNo != [400,450]))) || ((ctrl = 0) && StateNo = [900,940])
trigger1 = enemyNear, MoveType = I
trigger1 = p2bodydist X < 130
trigger1 = Random < 10

;---------------------------------------------------------------------------
; j. Jab
[State -1]
type = ChangeState
value = 600
triggerall = var(7) = 1
triggerall = MoveType != H
triggerall = StateType = A
triggerall = ctrl = 1
trigger1 = p2bodydist X < 140
trigger1 = p2bodydist Y < -85
trigger1 = p2bodydist Y > -130
trigger1 = PrevStateNo = 210

;---------------------------------------------------------------------------
; j. Strong
[State -1]
type = ChangeState
value = 610
triggerall = var(7) = 1
triggerall = MoveType != H
triggerall = StateType = A
trigger1 = StateNo = 630
trigger1 = movehit
trigger2 = ctrl = 1
trigger2 = p2bodydist X < 250
trigger2 = p2bodydist Y < -5
trigger2 = p2bodydist Y > 30
trigger2 = Random < 33

;---------------------------------------------------------------------------
; j. Short
[State -1]
type = ChangeState
value = 630
triggerall = var(7) = 1
triggerall = MoveType != H
triggerall = StateType = A
trigger1 = StateNo = 600
trigger1 = movehit

;---------------------------------------------------------------------------
; j. Forward
[State -1]
type = ChangeState
value = 640
triggerall = var(7) = 1
triggerall = MoveType != H
triggerall = StateType = A
triggerall = p2bodydist X < 140
triggerall = p2bodydist Y < 0
triggerall = p2bodydist Y > -110
trigger1 = ctrl = 1
trigger1 = Random < 20
trigger2 = StateNo = 610
trigger2 = movehit

;---------------------------------------------------------------------------
; j. Roundhouse
[State -1]
type = ChangeState
value = 650
triggerall = var(7) = 1
triggerall = MoveType != H
triggerall = StateType = A
triggerall = ctrl = 1
trigger1 = Pos Y < -100
trigger1 = p2bodydist X < 150
trigger1 = p2bodydist Y > -25
trigger2 = PrevStateNo = 650
trigger2 = (StateNo = 110 || StateNo = 115)
trigger2 = Random < 250

;-|Mobility|-------------------------------------------------------------------------------

;Super Jump
[State -1]
type = ChangeState
value = 41
triggerall = StateType != A
triggerall = MoveType != H
triggerall = var(7) = 1
triggerall = ctrl = 1
trigger1 = p2bodydist X > 80
trigger1 = enemyNear, MoveType != H
trigger1 = Random < 10

;RunFwd
[State -1]
type = ChangeState
value = 110
triggerall = StateType = A
triggerall = MoveType != H
triggerall = var(7) = 1
triggerall = !var(11)
trigger1 = enemyNear, MoveType = A
trigger1 = enemyNear, Vel X < 0
trigger1 = enemyNear, Vel Y < -10
trigger1 = Pos Y < -100
trigger1 = FrontEdgeBodyDist > 100
trigger1 = (ctrl = 1 || StateNo = [600,650])

;RunBack
[State -1]
type = ChangeState
value = 115
triggerall = StateType = A
triggerall = MoveType != H
triggerall = var(7) = 1
triggerall = !var(11)
trigger1 = enemyNear, MoveType = A
trigger1 = enemyNear, Vel X >= 0
trigger1 = enemyNear, Vel Y < -10
trigger1 = Pos Y < -100
trigger1 = FrontEdgeBodyDist < -100
trigger1 = (ctrl = 1 || StateNo = [600,650])
trigger2 = StateNo = 650
trigger2 = AnimElem = 4, > 1
trigger2 = Random < 50

;-|Defense|-------------------------------------------------------------------------------

; Standing Rush Attack
[State -1]
type = ChangeState
value = 900
triggerall = StateType = S
triggerall = Power >= 1500
triggerall = var(7) = 1
triggerall = var(3) = 0
trigger1 = GetHitVar(damage) > 0
trigger1 = Life < 10
trigger1 = p2statetype != A
trigger1 = StateNo = 150
trigger1 = Random < 250

; Crouching Rush Attack
[State -1]
type = ChangeState
value = 920
triggerall = StateType = C
triggerall = Power >= 1500
triggerall = var(7) = 1
triggerall = var(3) = 0
trigger1 = p2bodydist X < 100
trigger1 = GetHitVar(damage) > 0
trigger1 = Life < 10
trigger1 = StateNo = 152
trigger1 = Random < 250

; Jumping Rush Attack
[State -1]
type = ChangeState
value = 940
triggerall = StateType = A
triggerall = (MoveType != H && StateNo != [120,159])
triggerall = Power >= 1500
triggerall = var(7) = 1
triggerall = var(3) = 0
trigger1 = p2bodydist X < 200
trigger1 = GetHitVar(damage) > 0
trigger1 = Life < 10
trigger1 = StateNo = 154
trigger1 = Random < 250

;-|Stand Guard|-
[State -1]
type = ChangeState
value = 130
triggerall = var(7) = 1
trigger1 = ctrl = 1
trigger1 = var(44) = 0
trigger1 = statetype != A
trigger1 = p2statetype != C
trigger1 = p2movetype = A
trigger2 = ctrl = 1
trigger2 = var(44) > 0
trigger2 = Random < 750
trigger2 = statetype != A
trigger2 = p2statetype != C
trigger2 = p2movetype = A
trigger3 = statetype != A
trigger3 = StateNo = 131 || StateNo = 141 || StateNo = 152 || StateNo = 153
trigger3 = p2statetype = A
trigger3 = p2movetype = A

;-|Crouch Guard|-
[State -1]
type = ChangeState
value = 131
triggerall = var(7) = 1
triggerall = ctrl = 1
trigger1 = ctrl = 1
trigger1 = var(44) = 0
trigger1 = statetype != A
trigger1 = p2statetype = C
trigger1 = p2movetype = A
trigger2 = ctrl = 1
trigger2 = var(44) > 0
trigger2 = Random < 750
trigger2 = statetype != A
trigger2 = p2statetype = C
trigger2 = p2movetype = A
trigger3 = statetype != A
trigger3 = StateNo = 130 || StateNo = 140 || StateNo = 150 || StateNo = 151
trigger3 = p2statetype = C
trigger3 = p2movetype = A

;-|Air Guard|-
[State -1]
type = ChangeState
value = 132
triggerall = var(7) = 1
triggerall = p2bodydist Y < 60
triggerall = p2bodydist Y > -60
triggerall = ctrl = 1
trigger1 = var(44) = 0
trigger1 = statetype = A
trigger1 = p2movetype = A
trigger1 = Random < 500
trigger2 = var(44) > 0
trigger2 = Random < 250
trigger2 = statetype = A
trigger2 = p2movetype = A
