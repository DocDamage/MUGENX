;---------------------------------------------------------------------------
;-------------------------Psylocke.cmd by [Vanessa]-------------------------
;---------------------------------------------------------------------------

;-| Sixty-five commands |-

;-| Super Motions |--------------------------------------------------------
;-| Thirteen commands |-

[Command]
name = "PsiThrust"
command = D, DF, F, x+y
time = 15
[Command]
name = "PsiThrust"
command = D, DF, F, x+z
time = 15
[Command]
name = "PsiThrust"
command = D, DF, F, y+z
time = 15

[Command]
name = "PsiMaelstrom"
command = D, DF, F, a+b
time = 15
[Command]
name = "PsiMaelstrom"
command = D, DF, F, a+c
time = 15
[Command]
name = "PsiMaelstrom"
command = D, DF, F, b+c
time = 15

[Command]
name = "KochouGakure"
command = D, DB, B, a+b
time = 15
[Command]
name = "KochouGakure"
command = D, DB, B, a+c
time = 15
[Command]
name = "KochouGakure"
command = D, DB, B, b+c
time = 15

[Command]
name = "Spiral"
command = F, DF, D, DB, B, x+y
time = 20
[Command]
name = "Spiral"
command = F, DF, D, DB, B, x+z
time = 20
[Command]
name = "Spiral"
command = F, DF, D, DB, B, y+z
time = 20

[Command]
name = "GemActivate"
command = D, DF, F, s
time = 15

;-| Special Motions |------------------------------------------------------
;-| Eighteen commands |-

[Command]
name = "PsiBlastX"
command = D, DF, F, x
time = 15
[Command]
name = "PsiBlastY"
command = D, DF, F, y
time = 15
[Command]
name = "PsiBlastZ"
command = D, DF, F, z
time = 15

[Command]
name = "PsiBladeA"
command = D, DF, F, a
time = 30
[Command]
name = "PsiBladeB"
command = D, DF, F, b
time = 30
[Command]
name = "PsiBladeC"
command = D, DF, F, c
time = 30

[Command]
name = "TeleportX"
command = F, DF, D, DB, B, x
time = 20
[Command]
name = "TeleportY"
command = F, DF, D, DB, B, y
time = 20
[Command]
name = "TeleportZ"
command = F, DF, D, DB, B, z
time = 20
[Command]
name = "TeleportA"
command = F, DF, D, DB, B, a
time = 20
[Command]
name = "TeleportB"
command = F, DF, D, DB, B, b
time = 20
[Command]
name = "TeleportC"
command = F, DF, D, DB, B, c
time = 20

[Command]
name = "KnifeCircleX"
command = F, D, DF, x
time = 15
[Command]
name = "KnifeCircleY"
command = F, D, DF, y
time = 15
[Command]
name = "KnifeCircleZ"
command = F, D, DF, z
time = 15

[Command]
name = "KnifeSpread"
command = F, D, DF, a
time = 15
[Command]
name = "KnifeSpread"
command = F, D, DF, b
time = 15
[Command]
name = "KnifeSpread"
command = F, D, DF, c
time = 15

[Command]
name = "RecoveryRoll"
command = B, DB, D, DF, F, x
time = 20
[Command]
name = "RecoveryRoll"
command = B, DB, D, DF, F, y
time = 20
[Command]
name = "RecoveryRoll"
command = B, DB, D, DF, F, z
time = 20
[Command]
name = "RecoveryRoll"
command = B, DB, D, DF, F, a
time = 20
[Command]
name = "RecoveryRoll"
command = B, DB, D, DF, F, b
time = 20
[Command]
name = "RecoveryRoll"
command = B, DB, D, DF, F, c
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
;-| Sixty-four Commands |-

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
command = F, F, B, F
time = 1
[Command]
name = "cpu51"
command = B, F, F, F
time = 1
[Command]
name = "cpu52"
command = F, F, F, B
time = 1
[Command]
name = "cpu53"
command = F, B, B, F
time = 1
[Command]
name = "cpu54"
command = B, F, F, B
time = 1
[Command]
name = "cpu55"
command = F, B, F, B
time = 1
[Command]
name = "cpu56"
command = B, F, B, F
time = 1
[Command]
name = "cpu57"
command = D, F, D, F
time = 1
[Command]
name = "cpu58"
command = D, B, D, B
time = 1
[Command]
name = "cpu59"
command = D, B, D, F
time = 1
[Command]
name = "cpu60"
command = D, F, D, B
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
trigger33 = command = "cpu33"
trigger34 = command = "cpu34"
trigger35 = command = "cpu35"
trigger36 = command = "cpu36"
trigger37 = command = "cpu37"
trigger38 = command = "cpu38"
trigger39 = command = "cpu39"
trigger40 = command = "cpu40"
trigger41 = command = "cpu41"
trigger42 = command = "cpu42"
trigger43 = command = "cpu43"
trigger44 = command = "cpu44"
trigger45 = command = "cpu45"
trigger46 = command = "cpu46"
trigger47 = command = "cpu47"
trigger48 = command = "cpu48"
trigger49 = command = "cpu49"
trigger50 = command = "cpu50"
trigger51 = command = "cpu51"
trigger52 = command = "cpu52"
trigger53 = command = "cpu53"
trigger54 = command = "cpu54"
trigger55 = command = "cpu55"
trigger56 = command = "cpu56"
trigger57 = command = "cpu57"
trigger58 = command = "cpu58"
trigger59 = command = "cpu59"
trigger60 = command = "cpu60"

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
; Standing Rush Attack
[State -1]
type = ChangeState
value = 900
triggerall = StateType = S
triggerall = Power >= 1000
triggerall = !var(7)
triggerall = (command = "x" && command = "b") || (command = "x" && command = "c") || (command = "y" && command = "c")
triggerall = StateNo != [800,999]
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
trigger1 = StateNo = 154
trigger2 = var(9) > 0

;---------------------------------------------------------------------------
;--------------------------------Hypers-------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Spiral - Knife Dance
[State -1]
type = ChangeState
value = 1500
triggerall = StateType != A
triggerall = Power >= 1000
triggerall = !var(7)
triggerall = command = "Spiral"
triggerall = NumHelper(2201) = 0
triggerall = P2Name != "[Jedah]'s Spiral"
triggerall = P3Name != "[Jedah]'s Spiral"
triggerall = P4Name != "[Jedah]'s Spiral"
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
trigger15 = StateNo = 1001
trigger16 = StateNo = 1002
trigger17 = StateNo = 900 && PrevStateNo != [150,154]
trigger18 = StateNo = 920 && PrevStateNo != [150,154]
trigger19 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. PsiThrust
[State -1]
type = ChangeState
value = 3000
triggerall = !var(7)
triggerall = Power >= 1000
triggerall = command = "PsiThrust"
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
trigger15 = StateNo = 1001
trigger16 = StateNo = 1002
trigger17 = StateNo = 900 && PrevStateNo != [150,154]
trigger18 = StateNo = 920 && PrevStateNo != [150,154]
trigger19 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. PsiThrust
[State -1]
type = ChangeState
value = 3001
triggerall = !var(7)
triggerall = Power >= 1000
triggerall = command = "PsiThrust"
triggerall = StateType = A
trigger1 = ctrl = 1
trigger2 = StateNo = 600
trigger3 = StateNo = 610
trigger4 = StateNo = 620
trigger5 = StateNo = 630
trigger6 = StateNo = 640
trigger7 = StateNo = 650
trigger8 = StateNo = [651,655]
trigger9 = StateNo = 1010
trigger10 = StateNo = 1011
trigger11 = StateNo = 1012
trigger12 = StateNo = 1100
trigger13 = StateNo = 1101
trigger14 = StateNo = 1102
trigger15 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; PsiMaelstrom
[State -1]
type = ChangeState
value = 3400
triggerall = !var(7)
triggerall = Power >= 1000
triggerall = command = "PsiMaelstrom"
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
trigger15 = StateNo = 1001
trigger16 = StateNo = 1002
trigger17 = StateNo = 900 && PrevStateNo != [150,154]
trigger18 = StateNo = 920 && PrevStateNo != [150,154]
trigger19 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Kochou Gakure
[State -1]
type = ChangeState
value = 3500
triggerall = !var(7)
triggerall = Power >= 1000
triggerall = command = "KochouGakure"
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
trigger14 = StateNo = 600
trigger15 = StateNo = 610
trigger16 = StateNo = 620
trigger17 = StateNo = 630
trigger18 = StateNo = 640
trigger19 = StateNo = 650
trigger20 = StateNo = 1000
trigger21 = StateNo = 1001
trigger22 = StateNo = 1002
trigger23 = StateNo = 1010
trigger24 = StateNo = 1011
trigger25 = StateNo = 1012
trigger26 = StateNo = 1100
trigger27 = StateNo = 1101
trigger28 = StateNo = 1102
trigger29 = StateNo = 900 && PrevStateNo != [150,154]
trigger30 = StateNo = 920 && PrevStateNo != [150,154]
trigger31 = StateNo = 940 && PrevStateNo != [150,154]

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
trigger15 = StateNo = 1001
trigger16 = StateNo = 1002
trigger17 = StateNo = 900 && PrevStateNo != [150,154]
trigger18 = StateNo = 920 && PrevStateNo != [150,154]
trigger19 = StateNo = 940 && PrevStateNo != [150,154]

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
trigger15 = StateNo = 1001
trigger16 = StateNo = 1002
trigger17 = StateNo = 900 && PrevStateNo != [150,154]
trigger18 = StateNo = 920 && PrevStateNo != [150,154]
trigger19 = StateNo = 940 && PrevStateNo != [150,154]

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
trigger15 = StateNo = 1001
trigger16 = StateNo = 1002
trigger17 = StateNo = 900 && PrevStateNo != [150,154]
trigger18 = StateNo = 920 && PrevStateNo != [150,154]
trigger19 = StateNo = 940 && PrevStateNo != [150,154]

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
trigger15 = StateNo = 1001
trigger16 = StateNo = 1002
trigger17 = StateNo = 900 && PrevStateNo != [150,154]
trigger18 = StateNo = 920 && PrevStateNo != [150,154]
trigger19 = StateNo = 940 && PrevStateNo != [150,154]

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
trigger15 = StateNo = 1001
trigger16 = StateNo = 1002
trigger17 = StateNo = 900 && PrevStateNo != [150,154]
trigger18 = StateNo = 920 && PrevStateNo != [150,154]
trigger19 = StateNo = 940 && PrevStateNo != [150,154]

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
trigger15 = StateNo = 1001
trigger16 = StateNo = 1002
trigger17 = StateNo = 900 && PrevStateNo != [150,154]
trigger18 = StateNo = 920 && PrevStateNo != [150,154]
trigger19 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
;--------------------------------Dashes-------------------------------------
;---------------------------------------------------------------------------

;RunBack
[State -1]
type = ChangeState
value = 105
triggerall = (command = "holdback2" && command = "TwoPunch") || (StateType != A && command = "BB")
triggerall = StateType != A
trigger1 = StateNo != [100,109]
trigger1 = ctrl = 1
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = (command = "TwoPunch") || (StateType != A && command = "FF")
triggerall = StateType != A
trigger1 = StateNo != [100,109]
trigger1 = ctrl = 1
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
;-------------------------------Specials------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Knife Circle X
[State -1]
type = ChangeState
value = 2602 + ((StateType = A) * 10)
triggerall = !var(7)
triggerall = command = "KnifeCircleX"
triggerall = NumHelper(2206) = 1
triggerall = !IsHelper
trigger1 = ctrl = 1
trigger2 = StateNo = 200 && StateType != A
trigger3 = StateNo = 210 && StateType != A
trigger4 = StateNo = 220 && StateType != A
trigger5 = StateNo = 230 && StateType != A
trigger6 = StateNo = 240 && StateType != A
trigger7 = StateNo = 250 && StateType != A
trigger8 = StateNo = 400 && StateType != A
trigger9 = StateNo = 410 && StateType != A
trigger10 = StateNo = 420 && StateType != A
trigger11 = StateNo = 430 && StateType != A
trigger12 = StateNo = 440 && StateType != A
trigger13 = StateNo = 450 && StateType != A
trigger14 = StateNo = 600 && StateType = A
trigger15 = StateNo = 610 && StateType = A
trigger16 = StateNo = 620 && StateType = A
trigger17 = StateNo = 630 && StateType = A
trigger18 = StateNo = 640 && StateType = A
trigger19 = StateNo = 650 && StateType = A
trigger20 = (StateNo = 1000 || StateNo = 1001 || StateNo = 1002) && StateType != A
trigger21 = (StateNo = 1000 || StateNo = 1011 || StateNo = 1012) && StateType = A
trigger22 = (StateNo = 1100 || StateNo = 1001 || StateNo = 1102) && StateType = A
trigger23 = StateNo = 900 && PrevStateNo != [150,154]
trigger24 = StateNo = 920 && PrevStateNo != [150,154]
trigger25 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Knife Circle Y
[State -1]
type = ChangeState
value = 2600 + ((StateType = A) * 10)
triggerall = !var(7)
triggerall = command = "KnifeCircleY"
triggerall = NumHelper(2206) = 1
triggerall = !IsHelper
trigger1 = ctrl = 1
trigger2 = StateNo = 200 && StateType != A
trigger3 = StateNo = 210 && StateType != A
trigger4 = StateNo = 220 && StateType != A
trigger5 = StateNo = 230 && StateType != A
trigger6 = StateNo = 240 && StateType != A
trigger7 = StateNo = 250 && StateType != A
trigger8 = StateNo = 400 && StateType != A
trigger9 = StateNo = 410 && StateType != A
trigger10 = StateNo = 420 && StateType != A
trigger11 = StateNo = 430 && StateType != A
trigger12 = StateNo = 440 && StateType != A
trigger13 = StateNo = 450 && StateType != A
trigger14 = StateNo = 600 && StateType = A
trigger15 = StateNo = 610 && StateType = A
trigger16 = StateNo = 620 && StateType = A
trigger17 = StateNo = 630 && StateType = A
trigger18 = StateNo = 640 && StateType = A
trigger19 = StateNo = 650 && StateType = A
trigger20 = (StateNo = 1000 || StateNo = 1001 || StateNo = 1002) && StateType != A
trigger21 = (StateNo = 1000 || StateNo = 1011 || StateNo = 1012) && StateType = A
trigger22 = (StateNo = 1100 || StateNo = 1001 || StateNo = 1102) && StateType = A
trigger23 = StateNo = 900 && PrevStateNo != [150,154]
trigger24 = StateNo = 920 && PrevStateNo != [150,154]
trigger25 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Knife Circle Z
[State -1]
type = ChangeState
value = 2603 + ((StateType = A) * 10)
triggerall = !var(7)
triggerall = command = "KnifeCircleZ"
triggerall = NumHelper(2206) = 1
triggerall = !IsHelper
trigger1 = ctrl = 1
trigger2 = StateNo = 200 && StateType != A
trigger3 = StateNo = 210 && StateType != A
trigger4 = StateNo = 220 && StateType != A
trigger5 = StateNo = 230 && StateType != A
trigger6 = StateNo = 240 && StateType != A
trigger7 = StateNo = 250 && StateType != A
trigger8 = StateNo = 400 && StateType != A
trigger9 = StateNo = 410 && StateType != A
trigger10 = StateNo = 420 && StateType != A
trigger11 = StateNo = 430 && StateType != A
trigger12 = StateNo = 440 && StateType != A
trigger13 = StateNo = 450 && StateType != A
trigger14 = StateNo = 600 && StateType = A
trigger15 = StateNo = 610 && StateType = A
trigger16 = StateNo = 620 && StateType = A
trigger17 = StateNo = 630 && StateType = A
trigger18 = StateNo = 640 && StateType = A
trigger19 = StateNo = 650 && StateType = A
trigger20 = (StateNo = 1000 || StateNo = 1001 || StateNo = 1002) && StateType != A
trigger21 = (StateNo = 1000 || StateNo = 1011 || StateNo = 1012) && StateType = A
trigger22 = (StateNo = 1100 || StateNo = 1001 || StateNo = 1102) && StateType = A
trigger23 = StateNo = 900 && PrevStateNo != [150,154]
trigger24 = StateNo = 920 && PrevStateNo != [150,154]
trigger25 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Knife Spread
[State -1]
type = ChangeState
value = 2601 + ((StateType = A) * 10)
triggerall = !var(7)
triggerall = command = "KnifeSpread"
triggerall = NumHelper(2206) = 1
triggerall = !IsHelper
trigger1 = ctrl = 1
trigger2 = StateNo = 200 && StateType != A
trigger3 = StateNo = 210 && StateType != A
trigger4 = StateNo = 220 && StateType != A
trigger5 = StateNo = 230 && StateType != A
trigger6 = StateNo = 240 && StateType != A
trigger7 = StateNo = 250 && StateType != A
trigger8 = StateNo = 400 && StateType != A
trigger9 = StateNo = 410 && StateType != A
trigger10 = StateNo = 420 && StateType != A
trigger11 = StateNo = 430 && StateType != A
trigger12 = StateNo = 440 && StateType != A
trigger13 = StateNo = 450 && StateType != A
trigger14 = StateNo = 600 && StateType = A
trigger15 = StateNo = 610 && StateType = A
trigger16 = StateNo = 620 && StateType = A
trigger17 = StateNo = 630 && StateType = A
trigger18 = StateNo = 640 && StateType = A
trigger19 = StateNo = 650 && StateType = A
trigger20 = (StateNo = 1000 || StateNo = 1001 || StateNo = 1002) && StateType != A
trigger21 = (StateNo = 1000 || StateNo = 1011 || StateNo = 1012) && StateType = A
trigger22 = (StateNo = 1100 || StateNo = 1001 || StateNo = 1102) && StateType = A
trigger23 = StateNo = 900 && PrevStateNo != [150,154]
trigger24 = StateNo = 920 && PrevStateNo != [150,154]
trigger25 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; PsiBlast X
[State -1]
type = ChangeState
value = 1000
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "PsiBlastX"); || (var(1) = 18)
triggerall = NumHelper(11000) = 0
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
trigger14 = StateNo = 900 && PrevStateNo != [150,154]
trigger15 = StateNo = 920 && PrevStateNo != [150,154]
trigger16 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; PsiBlast Y
[State -1]
type = ChangeState
value = 1001
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "PsiBlastY"); || (var(1) = 19)
triggerall = NumHelper(11000) = 0
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
trigger14 = StateNo = 900 && PrevStateNo != [150,154]
trigger15 = StateNo = 920 && PrevStateNo != [150,154]
trigger16 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; PsiBlast Z
[State -1]
type = ChangeState
value = 1002
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "PsiBlastZ"); || (var(1) = 20)
triggerall = NumHelper(11000) = 0
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
trigger14 = StateNo = 900 && PrevStateNo != [150,154]
trigger15 = StateNo = 920 && PrevStateNo != [150,154]
trigger16 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Kuuchu PsiBlast X
[State -1]
type = ChangeState
value = 1010
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "PsiBlastX"
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
trigger7 = StateNo = 650
trigger7 = MoveContact
trigger8 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Kuuchu PsiBlast Y
[State -1]
type = ChangeState
value = 1011
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "PsiBlastY"
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
trigger7 = StateNo = 650
trigger7 = MoveContact
trigger8 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Kuuchu PsiBlast Z
[State -1]
type = ChangeState
value = 1012
triggerall = !var(7)
triggerall = StateType = A
triggerall = command = "PsiBlastZ"
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
trigger7 = StateNo = 650
trigger7 = MoveContact
trigger8 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; PsiBlade A
[State -1]
type = ChangeState
value = 1100
triggerall = !var(7)
triggerall = StateNo != 45
triggerall = command = "PsiBladeA"
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
trigger14 = StateNo = 600
trigger15 = StateNo = 610
trigger16 = StateNo = 620
trigger17 = StateNo = 630
trigger18 = StateNo = 640
trigger19 = StateNo = 650
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]
trigger22 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; PsiBlade B
[State -1]
type = ChangeState
value = 1101
triggerall = !var(7)
triggerall = StateNo != 45
triggerall = command = "PsiBladeB"
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
trigger14 = StateNo = 600
trigger15 = StateNo = 610
trigger16 = StateNo = 620
trigger17 = StateNo = 630
trigger18 = StateNo = 640
trigger19 = StateNo = 650
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]
trigger22 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; PsiBlade C
[State -1]
type = ChangeState
value = 1102
triggerall = !var(7)
triggerall = StateNo != 45
triggerall = command = "PsiBladeC"
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
trigger14 = StateNo = 600
trigger15 = StateNo = 610
trigger16 = StateNo = 620
trigger17 = StateNo = 630
trigger18 = StateNo = 640
trigger19 = StateNo = 650
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]
trigger22 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Ninjitsu Teleport X
[State -1]
type = ChangeState
value = 1200
triggerall = !var(7)
triggerall = command = "TeleportX"
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
trigger14 = StateNo = 600
trigger15 = StateNo = 610
trigger16 = StateNo = 620
trigger17 = StateNo = 630
trigger18 = StateNo = 640
trigger19 = StateNo = 650
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]
trigger22 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Ninjitsu Teleport Y
[State -1]
type = ChangeState
value = 1201
triggerall = !var(7)
triggerall = command = "TeleportY"
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
trigger14 = StateNo = 600
trigger15 = StateNo = 610
trigger16 = StateNo = 620
trigger17 = StateNo = 630
trigger18 = StateNo = 640
trigger19 = StateNo = 650
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]
trigger22 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Ninjitsu Teleport Z
[State -1]
type = ChangeState
value = 1202
triggerall = !var(7)
triggerall = command = "TeleportZ"
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
trigger14 = StateNo = 600
trigger15 = StateNo = 610
trigger16 = StateNo = 620
trigger17 = StateNo = 630
trigger18 = StateNo = 640
trigger19 = StateNo = 650
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]
trigger22 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Ninjitsu Teleport A
[State -1]
type = ChangeState
value = 1203
triggerall = !var(7)
triggerall = command = "TeleportA"
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
trigger14 = StateNo = 600
trigger15 = StateNo = 610
trigger16 = StateNo = 620
trigger17 = StateNo = 630
trigger18 = StateNo = 640
trigger19 = StateNo = 650
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]
trigger22 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Ninjitsu Teleport B
[State -1]
type = ChangeState
value = 1204
triggerall = !var(7)
triggerall = command = "TeleportB"
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
trigger14 = StateNo = 600
trigger15 = StateNo = 610
trigger16 = StateNo = 620
trigger17 = StateNo = 630
trigger18 = StateNo = 640
trigger19 = StateNo = 650
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]
trigger22 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; Ninjitsu Teleport C
[State -1]
type = ChangeState
value = 1205
triggerall = !var(7)
triggerall = command = "TeleportC"
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
trigger14 = StateNo = 600
trigger15 = StateNo = 610
trigger16 = StateNo = 620
trigger17 = StateNo = 630
trigger18 = StateNo = 640
trigger19 = StateNo = 650
trigger20 = StateNo = 900 && PrevStateNo != [150,154]
trigger21 = StateNo = 920 && PrevStateNo != [150,154]
trigger22 = StateNo = 940 && PrevStateNo != [150,154]

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
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Strong Throw Backward
[State -1]
type = ChangeState
value = 801
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
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Fierce Throw Forward
[State -1]
type = ChangeState
value = 850
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
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Fierce Throw Backward
[State -1]
type = ChangeState
value = 851
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
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Strong/Fierce Throw Forward
[State -1]
type = ChangeState
value = 860
triggerall = !var(7)
triggerall = StateType = A
triggerall = p2StateType = A
triggerall = command = "holdfwd2"
triggerall = command = "y" || command = "z"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
trigger1 = ctrl = 1
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. Strong/Fierce Throw Backward
[State -1]
type = ChangeState
value = 861
triggerall = !var(7)
triggerall = StateType = A
triggerall = p2StateType = A
triggerall = command = "holdback2"
triggerall = command = "y" || command = "z"
triggerall = p2dist X <= 65
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
trigger1 = ctrl = 1
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;--|[ Jumping EX ]|--
;---------------------------------------------------------------------------
; j. 8 Roundhouse
[State -1]
type = ChangeState
value = 655
triggerall = !var(7)
triggerall = var(11) < 3
triggerall = command = "holdup"
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
trigger7 = StateNo = 900 && PrevStateNo != [150,154]
trigger8 = StateNo = 920 && PrevStateNo != [150,154]
trigger9 = StateNo = 940 && PrevStateNo != [150,154]
trigger10 = StateNo = 200
trigger10 = MoveContact
trigger11 = StateNo = 210
trigger11 = MoveContact
trigger12 = StateNo = 220
trigger12 = MoveContact
trigger13 = StateNo = 230
trigger13 = MoveContact
trigger14 = StateNo = 240
trigger14 = MoveContact
trigger15 = StateNo = 400
trigger15 = MoveContact
trigger16 = StateNo = 410
trigger16 = MoveContact
trigger17 = StateNo = 420
trigger17 = MoveContact
trigger18 = StateNo = 430
trigger18 = MoveContact
trigger19 = StateNo = 440
trigger19 = MoveContact
trigger20 = StateNo = 40

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
trigger1 = ctrl = 1
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Strong
[State -1]
type = ChangeState
value = 210
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "y" && command != "holddown"); || (var(1) = 2)
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact
trigger6 = StateNo = 900 && PrevStateNo != [150,154]
trigger7 = StateNo = 920 && PrevStateNo != [150,154]
trigger8 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Fierce
[State -1]
type = ChangeState
value = 220
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "z" && command != "holddown"); || (var(1) = 3)
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger6 = StateNo = 400
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 430
trigger8 = MoveContact
trigger9 = StateNo = 440
trigger9 = MoveContact
trigger10 = StateNo = 900 && PrevStateNo != [150,154]
trigger11 = StateNo = 920 && PrevStateNo != [150,154]
trigger12 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Short
[State -1]
type = ChangeState
value = 230
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "a" && command != "holddown"); || (var(1) = 4)
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 400
trigger3 = MoveContact
trigger4 = StateNo = 900 && PrevStateNo != [150,154]
trigger5 = StateNo = 920 && PrevStateNo != [150,154]
trigger6 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. 6 Forward
[State -1]
type = ChangeState
value = 241
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "holdfwd" && command = "b" && command != "holddown"); || (var(1) = 7)
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 400
trigger5 = MoveContact
trigger6 = StateNo = 410
trigger6 = MoveContact
trigger7 = StateNo = 430
trigger7 = MoveContact
trigger8 = StateNo = 900 && PrevStateNo != [150,154]
trigger9 = StateNo = 920 && PrevStateNo != [150,154]
trigger10 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Forward
[State -1]
type = ChangeState
value = 240
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "b" && command != "holddown"); || (var(1) = 5)
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 400
trigger5 = MoveContact
trigger6 = StateNo = 410
trigger6 = MoveContact
trigger7 = StateNo = 430
trigger7 = MoveContact
trigger8 = StateNo = 900 && PrevStateNo != [150,154]
trigger9 = StateNo = 920 && PrevStateNo != [150,154]
trigger10 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. 4 Roundhouse
[State -1]
type = ChangeState
value = 251
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "holdback" && command = "c" && command != "holddown")
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 220
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 400
trigger7 = MoveContact
trigger8 = StateNo = 410
trigger8 = MoveContact
trigger9 = StateNo = 420
trigger9 = MoveContact
trigger10 = StateNo = 430
trigger10 = MoveContact
trigger11 = StateNo = 440
trigger11 = MoveContact
trigger12 = StateNo = 900 && PrevStateNo != [150,154]
trigger13 = StateNo = 920 && PrevStateNo != [150,154]
trigger14 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; s. Roundhouse
[State -1]
type = ChangeState
value = 250
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "c" && command != "holddown")
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 220
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 400
trigger7 = MoveContact
trigger8 = StateNo = 410
trigger8 = MoveContact
trigger9 = StateNo = 420
trigger9 = MoveContact
trigger10 = StateNo = 430
trigger10 = MoveContact
trigger11 = StateNo = 440
trigger11 = MoveContact
trigger12 = StateNo = 900 && PrevStateNo != [150,154]
trigger13 = StateNo = 920 && PrevStateNo != [150,154]
trigger14 = StateNo = 940 && PrevStateNo != [150,154]

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
trigger1 = ctrl = 1
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; c. Strong
[State -1]
type = ChangeState
value = 410
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "y" && command = "holddown"); || (var(1) = 10)
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact
trigger6 = StateNo = 900 && PrevStateNo != [150,154]
trigger7 = StateNo = 920 && PrevStateNo != [150,154]
trigger8 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; c. Fierce
[State -1]
type = ChangeState
value = 420
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "z" && command = "holddown"); || (var(1) = 11)
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger6 = StateNo = 400
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 430
trigger8 = MoveContact
trigger9 = StateNo = 440
trigger9 = MoveContact
trigger10 = StateNo = 900 && PrevStateNo != [150,154]
trigger11 = StateNo = 920 && PrevStateNo != [150,154]
trigger12 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; c. Short
[State -1]
type = ChangeState
value = 430
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "a" && command = "holddown"); || (var(1) = 12)
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 400
trigger3 = MoveContact
trigger4 = StateNo = 900 && PrevStateNo != [150,154]
trigger5 = StateNo = 920 && PrevStateNo != [150,154]
trigger6 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; c. Forward
[State -1]
type = ChangeState
value = 440
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "b" && command = "holddown"); || (var(1) = 13)
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 400
trigger5 = MoveContact
trigger6 = StateNo = 410
trigger6 = MoveContact
trigger7 = StateNo = 430
trigger7 = MoveContact
trigger8 = StateNo = 900 && PrevStateNo != [150,154]
trigger9 = StateNo = 920 && PrevStateNo != [150,154]
trigger10 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; c. Roundhouse
[State -1]
type = ChangeState
value = 450
triggerall = !var(7)
triggerall = StateType != A
triggerall = (command = "c" && command = "holddown"); || (var(1) = 14)
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 220
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 400
trigger7 = MoveContact
trigger8 = StateNo = 410
trigger8 = MoveContact
trigger9 = StateNo = 420
trigger9 = MoveContact
trigger10 = StateNo = 430
trigger10 = MoveContact
trigger11 = StateNo = 440
trigger11 = MoveContact
trigger12 = StateNo = 900 && PrevStateNo != [150,154]
trigger13 = StateNo = 920 && PrevStateNo != [150,154]
trigger14 = StateNo = 940 && PrevStateNo != [150,154]

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
trigger2 = StateNo = 900 && PrevStateNo != [150,154]
trigger3 = StateNo = 920 && PrevStateNo != [150,154]
trigger4 = StateNo = 940 && PrevStateNo != [150,154]

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
trigger4 = StateNo = 900 && PrevStateNo != [150,154]
trigger5 = StateNo = 920 && PrevStateNo != [150,154]
trigger6 = StateNo = 940 && PrevStateNo != [150,154]

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
trigger6 = StateNo = 900 && PrevStateNo != [150,154]
trigger7 = StateNo = 920 && PrevStateNo != [150,154]
trigger8 = StateNo = 940 && PrevStateNo != [150,154]

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
trigger3 = StateNo = 900 && PrevStateNo != [150,154]
trigger4 = StateNo = 920 && PrevStateNo != [150,154]
trigger5 = StateNo = 940 && PrevStateNo != [150,154]

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
trigger5 = StateNo = 900 && PrevStateNo != [150,154]
trigger6 = StateNo = 920 && PrevStateNo != [150,154]
trigger7 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. 9 Roundhouse
[State -1]
type = ChangeState
value = 652
triggerall = 0
triggerall = !var(7)
triggerall = StateType = A
triggerall = var(11) < 3
triggerall = command = "holdupfwd"
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
trigger7 = StateNo = 900 && PrevStateNo != [150,154]
trigger8 = StateNo = 920 && PrevStateNo != [150,154]
trigger9 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. 7 Roundhouse
[State -1]
type = ChangeState
value = 653
triggerall = 0
triggerall = !var(7)
triggerall = StateType = A
triggerall = var(11) < 3
triggerall = command = "holdupback"
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
trigger7 = StateNo = 900 && PrevStateNo != [150,154]
trigger8 = StateNo = 920 && PrevStateNo != [150,154]
trigger9 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. 8 Roundhouse
[State -1]
type = ChangeState
value = 654
triggerall = 0
triggerall = !var(7)
triggerall = StateType = A
triggerall = var(11) < 3
triggerall = command = "holdup"
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
trigger7 = StateNo = 900 && PrevStateNo != [150,154]
trigger8 = StateNo = 920 && PrevStateNo != [150,154]
trigger9 = StateNo = 940 && PrevStateNo != [150,154]

;---------------------------------------------------------------------------
; j. 8 Roundhouse
[State -1]
type = ChangeState
value = 651
triggerall = 0
triggerall = !var(7)
triggerall = StateType = A
triggerall = StateNo != 45
triggerall = var(2) = 1
triggerall = var(11) < 3
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
trigger7 = StateNo = 900 && PrevStateNo != [150,154]
trigger8 = StateNo = 920 && PrevStateNo != [150,154]
trigger9 = StateNo = 940 && PrevStateNo != [150,154]

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
trigger2 = command != "holdup" && command != "holdupfwd" && command != "holdupback"
trigger2 = MoveContact
trigger3 = StateNo = 610
trigger3 = command != "holdup" && command != "holdupfwd" && command != "holdupback"
trigger3 = MoveContact
trigger4 = StateNo = 620
trigger4 = command != "holdup" && command != "holdupfwd" && command != "holdupback"
trigger4 = MoveContact
trigger5 = StateNo = 630
trigger5 = command != "holdup" && command != "holdupfwd" && command != "holdupback"
trigger5 = MoveContact
trigger6 = StateNo = 640
trigger6 = command != "holdup" && command != "holdupfwd" && command != "holdupback"
trigger6 = MoveContact
trigger7 = StateNo = 900 && PrevStateNo != [150,154]
trigger8 = StateNo = 920 && PrevStateNo != [150,154]
trigger9 = StateNo = 940 && PrevStateNo != [150,154]

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
trigger3 = StateNo = 420
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
trigger8 = StateNo = 420
trigger8 = movehit
trigger9 = command = "UB"
trigger9 = StateNo = 420
trigger9 = movehit
trigger10 = command = "up"
trigger10 = StateNo = 920 && PrevStateNo != [150,154]
trigger10 = movehit
trigger11 = command = "UF"
trigger11 = StateNo = 920 && PrevStateNo != [150,154]
trigger11 = movehit
trigger12 = command = "UB"
trigger12 = StateNo = 920 && PrevStateNo != [150,154]
trigger12 = movehit

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

;-|Power Gem Clones|-------------------------------------------------------------------
;Position of One
[State -1]
type = PosSet
trigger1 = IsHelper(8010)
x = (parent, Pos X) - 80
y = (parent, Pos Y)
ignorehitpause = 1

;Position of Two
[State -1]
type = PosSet
trigger1 = IsHelper(8011)
x = (parent, Pos X) + 80
y = (parent, Pos Y)
ignorehitpause = 1

;State Control
[State -1]
type = ChangeState
trigger1 = IsHelper(8010) || IsHelper(8011)
trigger1 = StateNo != parent, StateNo
trigger1 = StateNo != 8011 && StateNo != 8012
value = parent, StateNo + ((parent, StateNo = [120,122]) * 10)
ignorehitpause = 1

[State -1]
type = ChangeState
trigger1 = IsHelper(8010) || IsHelper(8011)
trigger1 = StateNo != 8012
trigger1 = parent, var(41) = 0
value = 8012
ignorehitpause = 1

;Control Set
[State -1]
type = CtrlSet
trigger1 = IsHelper(8010) || IsHelper(8011)
value = 0
ignorehitpause = 1

;Life Management
[State -1]
type = NotHitBy
trigger1 = IsHelper(8010) || IsHelper(8011)
time = 1
value = SCA, AA, AT, AP
ignorehitpause = 1

[State -1]
type = LifeSet
trigger1 = IsHelper(8010) || IsHelper(8011)
value = 1000
ignorehitpause = 1

;Facing
[State -1]
type = Turn
trigger1 = IsHelper(8010) || IsHelper(8011)
trigger1 = Facing != parent, Facing

[State -1]
type = VarSet
trigger1 = IsHelper(8010) || IsHelper(8011)
trigger1 = P2MoveType != H
trigger1 = P2StateNo != 10250
trigger1 = !(P2StateNo = 9004 && P2StateType = S && P2MoveType = I)
var(9) = 0
ignorehitpause = 1

[State -1]
type = AttackMulSet
trigger1 = IsHelper(8010) || IsHelper(8011)
trigger1 = 1
value = fvar(0)

[State -1]
type = VarSet
trigger1 = IsHelper(8010) || IsHelper(8011)
trigger1 = var(9) = 0
fvar(0) = .50
ignorehitpause = 1

[State -1]
type = VarSet
trigger1 = IsHelper(8010) || IsHelper(8011)
trigger1 = var(9) > 0
trigger1 = var(9) <= 4
fvar(0) = .27
ignorehitpause = 1
[State -1]
type = VarSet
trigger1 = IsHelper(8010) || IsHelper(8011)
trigger1 = var(9) > 4
trigger1 = var(9) <= 8
fvar(0) = .17
ignorehitpause = 1
[State -1]
type = VarSet
trigger1 = IsHelper(8010) || IsHelper(8011)
trigger1 = var(9) > 8
trigger1 = var(9) <= 12
fvar(0) = .10
ignorehitpause = 1
[State -1]
type = VarSet
trigger1 = IsHelper(8010) || IsHelper(8011)
trigger1 = var(9) > 12
trigger1 = var(9) <= 16
fvar(0) = .05
ignorehitpause = 1
[State -1]
type = VarSet
trigger1 = IsHelper(8010) || IsHelper(8011)
trigger1 = var(9) > 16
trigger1 = var(9) <= 20
fvar(0) = .025
ignorehitpause = 1


;-|AI|-------------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Forward Dash
[State -1]
type = ChangeState
value = 100
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateType != A
trigger1 = p2bodydist X > 80
trigger1 = p2bodydist X < 270
trigger1 = p2statetype != A
trigger1 = p2movetype != A
trigger1 = Random < 34
trigger1 = StateNo != [100,109]
trigger1 = ctrl = 1
trigger2 = p2StateNo = 5110
trigger2 = p2bodydist X > 100
trigger2 = random < 500
trigger2 = ctrl = 1
trigger3 = NumHelper(8000) = 1
trigger3 = helper(8000), RootDist X > 0
trigger3 = random < 250
trigger3 = ctrl = 1
trigger4 = NumHelper(8010) = 1
trigger4 = helper(8010), RootDist X > 0
trigger4 = random < 250
trigger4 = ctrl = 1
trigger5 = NumHelper(8020) = 1
trigger5 = helper(8020), RootDist X > 0
trigger5 = random < 250
trigger5 = ctrl = 1
trigger6 = NumHelper(8030) = 1
trigger6 = helper(8030), RootDist X > 0
trigger6 = random < 250
trigger6 = ctrl = 1
trigger7 = NumHelper(8040) = 1
trigger7 = helper(8040), RootDist X > 0
trigger7 = random < 250
trigger7 = ctrl = 1
trigger8 = NumHelper(8050) = 1
trigger8 = helper(8050), RootDist X > 0
trigger8 = random < 250
trigger8 = ctrl = 1

;---------------------------------------------------------------------------
; Back Dash
[State -1]
type = ChangeState
value = 105
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateType != A
trigger1 = StateNo = 200 || StateNo = 400
trigger1 = moveguarded
trigger1 = Random < 500
trigger1 = AnimTime = 0
trigger2 = p2bodydist X >= 50
trigger2 = Random < 17
trigger2 = StateNo != [100,109]
trigger2 = ctrl = 1
trigger3 = NumHelper(8000) = 1
trigger3 = helper(8000), RootDist X < 0
trigger3 = random < 250
trigger3 = ctrl = 1
trigger4 = NumHelper(8010) = 1
trigger4 = helper(8010), RootDist X < 0
trigger4 = random < 250
trigger4 = ctrl = 1
trigger5 = NumHelper(8020) = 1
trigger5 = helper(8020), RootDist X < 0
trigger5 = random < 250
trigger5 = ctrl = 1
trigger6 = NumHelper(8030) = 1
trigger6 = helper(8030), RootDist X < 0
trigger6 = random < 250
trigger6 = ctrl = 1
trigger7 = NumHelper(8040) = 1
trigger7 = helper(8040), RootDist X < 0
trigger7 = random < 250
trigger7 = ctrl = 1
trigger8 = NumHelper(8050) = 1
trigger8 = helper(8050), RootDist X < 0
trigger8 = random < 250
trigger8 = ctrl = 1

;---------------------------------------------------------------------------
;Super Jump
[State -1]
type = ChangeState
value = 41
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateType != A
trigger1 = Random < 300
trigger1 = p2movetype = A
trigger1 = p2bodydist X >= 160
trigger1 = p2bodydist Y < 100
trigger1 = ctrl = 1
trigger2 = Random < 500
trigger2 = p2bodydist X > 30
trigger2 = p2bodydist Y >= 100
trigger2 = ctrl = 1
trigger3 = animelemtime(4) > 1
trigger3 = StateNo = 420
trigger3 = movehit

;---------------------------------------------------------------------------
; c. Short
[State -1]
type = ChangeState
value = 430
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateType != A
trigger1 = p2statetype = S
trigger1 = p2bodydist X < 40
trigger1 = ctrl = 1
trigger2 = Random < 500
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = Random < 500
trigger3 = StateNo = 400
trigger3 = MoveContact
trigger4 = StateNo = 100
trigger4 = p2StateNo = 5110
trigger4 = p2bodydist X < 50

; c. Forward
[State -1]
type = ChangeState
value = 440
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateType != A
trigger1 = p2statetype = S
trigger1 = p2bodydist X < 20
trigger1 = Random < 500
trigger1 = StateNo = 430
trigger1 = MoveContact

;---------------------------------------------------------------------------
; c. Fierce
[State -1]
type = ChangeState
value = 420
triggerall = var(7) = 1
triggerall = !IsHelper
triggreall = StateType != A
trigger1 = Random < 750
trigger1 = StateNo = 200 || StateNo = 210 || StateNo = 230 || StateNo = 240 || StateNo = 400 || StateNo = 410 || StateNo = 430 || Stateno = 440
trigger1 = movehit
trigger1 = p2bodydist X = [20,60]
trigger1 = p2bodydist Y < 50
trigger1 = p2StateNo != [5080,5081]

;---------------------------------------------------------------------------
; c. Roundhouse
[State -1]
type = ChangeState
value = 450
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateType != A
trigger1 = Power < 1000
trigger1 = StateNo = 430
trigger1 = movehit

;---------------------------------------------------------------------------
; j. Jab
[State -1]
type = ChangeState
value = 600
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateType = A
trigger1 = p2bodydist X < 75
trigger1 = p2bodydist Y < 50
trigger1 = p2bodydist Y > -40
trigger1 = (p2movetype = H) || ((p2movetype != H) && (Random < 250))
trigger1 = ctrl = 1
trigger2 = Pos Y > -70
trigger2 = p2statetype = C
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
; j. Short
[State -1]
type = ChangeState
value = 630
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateType = A
trigger1 = StateNo = 600
trigger1 = ((p2statetype = A) && (p2bodydist Y  < 85)) || ((p2statetype != A) && (p2bodydist Y > -100))
trigger1 = movehit

;---------------------------------------------------------------------------
; j. Strong
[State -1]
type = ChangeState
value = 610
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateType = A
trigger1 = StateNo = 630
trigger1 = ((p2statetype = A) && (p2bodydist Y > -25 && p2bodydist Y < 45)) || ((p2statetype != A) && (p2bodydist Y > -100))
trigger1 = movehit

;---------------------------------------------------------------------------
; j. Forward
[State -1]
type = ChangeState
value = 640
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateType = A
trigger1 = StateNo = 610
trigger1 = ((p2statetype = A) && (p2bodydist Y > 0 && p2bodydist Y < 90)) || ((p2statetype != A) && (p2bodydist Y > -100))
trigger1 = movehit

;---------------------------------------------------------------------------
; j. Fierce
[State -1]
type = ChangeState
value = 620
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateType = A
trigger1 = StateNo = 600
trigger1 = movehit
trigger1 = p2statetype = C

;---------------------------------------------------------------------------
; j. Fierce/Roundhouse
[State -1]
type = ChangeState
value = IfElse((Random < 500),620,650)
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateType = A
trigger1 = Power < 1000
trigger1 = StateNo = 600 || StateNo = 610 || StateNo = 620 || StateNo = 630
trigger1 = p2bodydist Y < -15
trigger1 = p2bodydist Y > -100
trigger1 = movehit

;---------------------------------------------------------------------------
; j. 9 Roundhouse
[State -1]
type = ChangeState
value = 655
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateType = A
triggerall = var(11) < 3
trigger1 = StateNo = 640
trigger1 = p2statetype = A
trigger1 = movehit

;---------------------------------------------------------------------------
; AirJump
[State -1]
type = ChangeState
value = 45
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateType = A
triggerall = var(11) < 3
triggerall = StateNo != 45
trigger1 = PrevStateNo = 652
trigger1 = p2movetype = H
trigger1 = p2bodydist X < 150
trigger1 = p2bodydist Y < 0
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; PsiBlast X
[State -1]
type = ChangeState
value = 1000
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateType != A
triggerall = NumHelper(11000) = 0
trigger1 = StateNo = 450
trigger1 = movehit
trigger2 = StateNo = 241
trigger2 = movecontact
trigger2 = Random < 400

;---------------------------------------------------------------------------
; PsiBlast Y
[State -1]
type = ChangeState
value = 1001
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateType != A
triggerall = NumHelper(11001) = 0
trigger1 = p2statetype != A
trigger1 = p2bodydist X >= 120
trigger1 = Random < 80
trigger1 = ctrl = 1
trigger2 = StateNo = 241
trigger2 = movehit
trigger2 = Random < 400

;---------------------------------------------------------------------------
; PsiBlade A
[State -1]
type = ChangeState
value = 1100
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateNo != 45
trigger1 = p2movetype = A
trigger1 = p2bodydist Y < 25
trigger1 = p2bodydist X < 50
trigger1 = Random < 700
trigger1 = ctrl = 1
trigger2 = Power >= 1000
trigger2 = StateNo = 240
trigger2 = movehit
trigger3 = StateNo = 1001 || StateNo = 1002
trigger3 = movehit
trigger3 = AnimElem = 8, >= 1
trigger3 = p2bodydist X > 30
trigger3 = var(18) < 3
trigger4 = Random < 800
trigger4 = StateNo = 241
trigger4 = movehit

;---------------------------------------------------------------------------
; PsiBlade B
[State -1]
type = ChangeState
value = 1101
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateNo != 45
trigger1 = p2movetype = A
trigger1 = p2bodydist Y < 25
trigger1 = p2bodydist X < 30
trigger1 = Random < 900
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; PsiBlade C
[State -1]
type = ChangeState
value = 1102
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = StateNo != 45
trigger1 = p2movetype = A
trigger1 = p2bodydist Y < 25
trigger1 = p2bodydist X < 30
trigger1 = Random < 700
trigger1 = ctrl = 1
trigger2 = StateNo = 652
trigger2 = p2statetype = A
trigger2 = movehit

;---------------------------------------------------------------------------
; j. PsiThrust
[State -1]
type = ChangeState
value = 3001
triggerall = var(7) = 1
triggerall = Power >= 1000
triggerall = StateType = A
trigger1 = StateNo = 1102
trigger1 = movehit
trigger1 = Random < 100

;---------------------------------------------------------------------------
; PsiMaelstrom
[State -1]
type = ChangeState
value = 3400
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = Power >= 1000
triggerall = StateType != A
trigger1 = StateNo = 420
trigger1 = Random < 400
trigger1 = movehit
trigger2 = p2bodydist X < 40
trigger2 = p2bodydist Y < 30
trigger2 = p2movetype = A
trigger2 = (ctrl = 1) || (StateNo = 1000 || StateNo = 1001 || StateNo = 1002)

;---------------------------------------------------------------------------
; Kochou Gakure
[State -1]
type = ChangeState
value = 3500
triggerall = var(7) = 1
triggerall = !IsHelper
triggerall = Power >= 1000
trigger1 = StateNo = 1100 || StateNo = 1101 || StateNo = 1102
trigger1 = p2bodydist X < 80
trigger1 = var(8) > 1
trigger1 = movehit
trigger2 = StateNo = 450
trigger2 = movehit
trigger2 = Random < 50
trigger3 = StateNo = 1000
trigger3 = p2StateNo = 5110

;---------------------------------------------------------------------------
; Mind Gem
[State -1]
type = ChangeState
value = 8000
triggerall = var(7) = 1
triggerall = power < 3000
triggerall = random < 500
triggerall = var(30) = 1
;triggerall = var(37) = 0
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
trigger15 = StateNo = 1001
trigger16 = StateNo = 1002

;---------------------------------------------------------------------------
; Power Gem
[State -1]
type = ChangeState
value = 8010
triggerall = var(7) = 1
triggerall = random < 10
triggerall = var(31) = 1
;triggerall = var(37) = 1
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
trigger15 = StateNo = 1001
trigger16 = StateNo = 1002

;---------------------------------------------------------------------------
; Reality Gem
[State -1]
type = ChangeState
value = 8020
triggerall = var(7) = 1
triggerall = random < 500
triggerall = var(32) = 1
;triggerall = var(37) = 2
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
trigger15 = StateNo = 1001
trigger16 = StateNo = 1002

;---------------------------------------------------------------------------
; Soul Gem
[State -1]
type = ChangeState
value = 8030
triggerall = var(7) = 1
triggerall = life < 350
triggerall = var(33) = 1
;triggerall = var(37) = 3
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
trigger15 = StateNo = 1001
trigger16 = StateNo = 1002

;---------------------------------------------------------------------------
; Space Gem
[State -1]
type = ChangeState
value = 8040
triggerall = var(7) = 1
triggerall = Life > 200
triggerall = Random < 5
triggerall = var(34) = 1
;triggerall = var(37) = 4
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
trigger15 = StateNo = 1001
trigger16 = StateNo = 1002

;---------------------------------------------------------------------------
; Time Gem
[State -1]
type = ChangeState
value = 8050
triggerall = var(7) = 1
triggerall = Random < 2
triggerall = var(35) = 1
;triggerall = var(37) = 5
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
trigger15 = StateNo = 1001
trigger16 = StateNo = 1002

;-|Defense|-------------------------------------------------------------------------------

;-|Stand Guard|-
[State -1]
type = ChangeState
value = 130
triggerall = var(7) = 1
triggerall = ctrl = 1
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
triggerall = ctrl = 1
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
triggerall = ctrl = 1
trigger1 = var(44) = 0
trigger1 = statetype = A
trigger1 = p2movetype = A
trigger2 = var(44) > 0
trigger2 = Random < 750
trigger2 = statetype = A
trigger2 = p2movetype = A

;-|ADDED STUFF|-------------------------------------------------------------------------------

; Kuuchu PsiBlast X
[State -1]
type = ChangeState
value = 1010
triggerall = var(7) = 1
triggerall = StateType = A
trigger1 = random < 100
trigger1 = P2bodydist X >= 120
trigegr1 = p2stateno != [150,152]
trigger1 = pos y <= -70
trigger1 = ctrl = 1
trigger2 = StateNo = 650
trigger2 = MoveContact
trigger3 = random < 600
trigger3 = StateNo = 241
trigger3 = movehit

; Teleport x
[State -1]
type = ChangeState
value = 1200
triggerall = var(7) = 1
triggerall = facing = -1
triggerall = statetype = S
triggerall = p2statetype = L
trigger1 = random >= 10
trigger1 = P2bodydist X >= 120
trigger1 = ctrl = 1

; Teleport a
[State -1]
type = ChangeState
value = 1203
triggerall = var(7) = 1
triggerall = facing = -1
triggerall = StateType = A
triggerall = p2statetype = L
trigger1 = random >= 10
trigger1 = P2bodydist X >= 120
trigger1 = ctrl = 1

; Teleport z
[State -1]
type = ChangeState
value = 1202
triggerall = var(7) = 1
triggerall = facing = 1
triggerall = statetype = S
triggerall = p2statetype = L
trigger1 = random >= 10
trigger1 = P2bodydist X >= 120
trigger1 = ctrl = 1

; Teleport C
[State -1]
type = ChangeState
value = 1205
triggerall = var(7) = 1
triggerall = facing = 1
triggerall = StateType = A
triggerall = p2statetype = L
trigger1 = random >= 10
trigger1 = P2bodydist X >= 120
trigger1 = ctrl = 1

; Sword
[State -1]
type = ChangeState
value = 2602
triggerall = var(7) = 1
triggerall = power >= 2000
triggerall = StateType != A
trigger1 = random >= 800
trigger1 = P2bodydist X >= 120
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; s. 6 Forward
[State -1]
type = ChangeState
value = 241
triggerall = var(7) = 1
triggerall = StateType != A
trigegrall = p2movetype != A
triggerall = p2statetype = C
triggerall = random <= 800
triggerall = p2bodydist X = [10,70]
trigger1 = ctrl = 1
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 400
trigger5 = MoveContact
trigger6 = StateNo = 410
trigger6 = MoveContact
trigger7 = StateNo = 430
trigger7 = MoveContact
trigger8 = StateNo = 900 && PrevStateNo != [150,154]
trigger9 = StateNo = 920 && PrevStateNo != [150,154]
trigger10 = StateNo = 940 && PrevStateNo != [150,154]

;AIR THROW
[State -1, AIR GRAB]
type = ChangeState
value = 861
triggerall = var(7) = 1
triggerall = statetype = A
triggerall = ctrl
triggerall = p2bodydist X < 10
triggerall = p2bodydist Y > -25
triggerall = p2bodydist Y < 25
triggerall = p2statetype = A
triggerall = pos Y < -25
triggerall = p2movetype != H
trigger1 = random <=1000

[State -1, Stand Throw]
type = ChangeState
value = 851
triggerall = var(7) = 1
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2stateno != 5120
triggerall = random < 1000
triggerall = P2bodydist X <= 20
trigger1 = p2movetype != H 
trigger1 = ctrl
