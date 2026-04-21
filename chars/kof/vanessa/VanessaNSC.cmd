;---------------------------------------------------------------------------
;--------------------------Vanessa.cmd by [Vanessa]-------------------------
;---------------------------------------------------------------------------

;-| commands |-

;-| Super Motions |--------------------------------------------------------
;-| commands |-

[Command]
name = "ReversePuncherB"
command = D, B, DB, D, DF, F, a
time = 25
[Command]
name = "ReversePuncherD"
command = D, B, DB, D, DF, F, b
time = 25

[Command]
name = "ReversePuncher2B"
command = D, B, DB, D, DF, F, a
time = 25
[Command]
name = "ReversePuncher2D"
command = D, B, DB, D, DF, F, b
time = 25
[Command]
name = "ReversePuncher2C"
command = D, B, DB, D, DF, F, c
time = 25

[Command]
name = "CrazyPuncherA"
command = D, B, DB, D, DF, F, x
time = 25
[Command]
name = "CrazyPuncherC"
command = D, B, DB, D, DF, F, y
time = 25

[Command]
name = "CrazyPuncher2A"
command = D, B, DB, D, DF, F, x
time = 25
[Command]
name = "CrazyPuncher2C"
command = D, B, DB, D, DF, F, y
time = 25
[Command]
name = "CrazyPuncher2Z"
command = D, B, DB, D, DF, F, z
time = 25

[Command]
name = "ChampionPuncherA"
command = D, DF, F, D, DF, F, x
time = 25
[Command]
name = "ChampionPuncherC"
command = D, DF, F, D, DF, F, y
time = 25
[Command]
name = "ChampionPuncherZ"
command = D, DF, F, D, DF, F, z
time = 25

;-| Special Motions |------------------------------------------------------
;-| commands |-

[Command]
name = "PuncherVisionForwardB"
command = D, DF, F, a
[Command]
name = "PuncherVisionForwardD"
command = D, DF, F, b
[Command]
name = "PuncherVisionForward2"
command = D, DF, F, c

[Command]
name = "PuncherVisionBackwardB"
command = D, DB, B, a
[Command]
name = "PuncherVisionBackwardD"
command = D, DB, B, b
[Command]
name = "PuncherVisionBackward2"
command = D, DB, B, c

[Command]
name = "PuncherWeaving"
command = D, DB, B, x
[Command]
name = "PuncherWeaving"
command = D, DB, B, y
[Command]
name = "PuncherWeavingZ"
command = D, DB, B, z

[Command]
name = "MachineGunPuncher"
command = B, DB, D, DF, F, x
time = 20
[Command]
name = "MachineGunPuncher"
command = B, DB, D, DF, F, y
time = 20
[Command]
name = "MachineGunPuncher"
command = B, DB, D, DF, F, z
time = 20

[Command]
name = "ParryingPuncherA"
command = F, D, DF, x
time = 20
[Command]
name = "ParryingPuncherC"
command = F, D, DF, y
time = 20
[Command]
name = "ParryingPuncherZ"
command = F, D, DF, z
time = 20

[Command]
name = "DashPuncherA"
command = ~30$B, F, x
time = 5
[Command]
name = "DashPuncherC"
command = ~30$B, F, y
time = 5

[Command]
name = "DashPuncher2A"
command = F, D, DF, a
time = 20
[Command]
name = "DashPuncher2B"
command = F, D, DF, b
time = 20
[Command]
name = "DashPuncher2C"
command = F, D, DF, c
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
;-| Five commands |-

[Command]
name = "SecretOneA"
command = F, U, B, B, U
time = 45

[Command]
name = "SecretOneB"
command = B, U, F, F, U
time = 45

[Command]
name = "SecretTwoA"
command = U, F, F, U, F
time = 45

[Command]
name = "SecretTwoB"
command = U, B, B, U, B
time = 45

[Command]
name = "SecretThreeA"
command = D, B, U, B, D
time = 45

[Command]
name = "SecretThreeB"
command = D, F, U, F, D
time = 45

[Command]
name = "SecretFourA"
command = B, B, F, D, U
time = 45

[Command]
name = "SecretFourB"
command = F, F, B, D, U
time = 45

[Command]
name = "SecretFourA"
command = U, B, B, B, F, F, F, D
time = 45

[Command]
name = "SecretFourB"
command = U, F, F, F, B, B, B, D
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
;----------------------------System Techniques------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; s. Original Combo
[State -1]
type = ChangeState
value = 905
triggerall = var(7) = 0
triggerall = !var(15)
triggerall = var(59) = 2
triggerall = (command = "hold_z" && command = "hold_c")
triggerall = Power = 2000
triggerall = StateType = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. Original Combo
[State -1]
type = ChangeState
value = 906
triggerall = var(7) = 0
triggerall = !var(15)
triggerall = var(59) = 2
triggerall = (command = "hold_z" && command = "hold_c")
triggerall = Power = 2000
triggerall = StateType = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; POW MAX
[State -1]
type = ChangeState
value = 900
triggerall = var(7) = 0
triggerall = !var(11)
triggerall = !var(59)
triggerall = (command = "hold_a" || command = "hold_b" || command = "hold_x" || command = "hold_y") && (command = "hold_c" || command = "hold_z")
triggerall = Power >= 1000
triggerall = StateType = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Counter Mode
[State -1]
type = ChangeState
value = 901
triggerall = var(7) = 0
triggerall = !var(12)
triggerall = !var(13)
triggerall = var(59) = 1
triggerall = (command = "hold_a" || command = "hold_b" || command = "hold_x" || command = "hold_y") && command = "hold_z"
triggerall = Power = 3000
triggerall = StateType = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Armor Mode
[State -1]
type = ChangeState
value = 902
triggerall = var(7) = 0
triggerall = !var(12)
triggerall = !var(13)
triggerall = var(59) = 1
triggerall = (command = "hold_a" || command = "hold_b" || command = "hold_x" || command = "hold_y") && command = "hold_c"
triggerall = Power = 3000
triggerall = StateType = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Roll Backward
[State -1]
type = ChangeState
value = 111
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = (command = "holdback" && command = "x" && command = "a") || (command = "holdback" && command = "z")
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = Power >= 1000
trigger2 = StateNo = 150 || StateNo = 152

;---------------------------------------------------------------------------
; Roll Forward
[State -1]
type = ChangeState
value = 110
triggerall = var(7) = 0
triggerall = var(59) < 3
triggerall = (command = "x" && command = "a") || (var(59) < 2 && command = "z")
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = var(59) < 2
trigger2 = Power >= 1000
trigger2 = StateNo = 150 || StateNo = 152

;---------------------------------------------------------------------------
; s. CD
[State -1]
type = ChangeState
value = 115
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = (command = "y" && command = "b") || command = "c"
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = Power >= 1000
trigger2 = StateNo = 150 || StateNo = 152

;---------------------------------------------------------------------------
; j. CD
[State -1]
type = ChangeState
value = 116
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType = A
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = StateType = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Chouhatsu
[State -1]
type = ChangeState
value = 199
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = ctrl
trigger1 = (command = "y" && command = "a")
trigger1 = var(59) < 2
trigger2 = (command = "y" && command = "b")
trigger2 = var(59) >= 2

;---------------------------------------------------------------------------
;----------------------------Desperation Moves------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; SDM Champion Puncher
[State -1]
type = ChangeState
value = 3100
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = var(11) > 0
triggerall = !var(12)
triggerall = Power >= 1000
triggerall = ((command = "ChampionPuncherA") || (command = "ChampionPuncherC"))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

;---------------------------------------------------------------------------
; Champion Puncher A
[State -1]
type = ChangeState
value = 3000
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = var(59) < 2
triggerall = !var(13)
triggerall = Power >= 1000
triggerall = p2dist X = [-70,70]
triggerall = command = "ChampionPuncherA"
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact
trigger17 = var(12) && StateNo = [1000,1001]
trigger18 = var(12) && StateNo = [1100,1111]
trigger19 = var(12) && StateNo = [1200,1207]
trigger20 = var(12) && StateNo = [1300,1301]
trigger21 = var(12) && StateNo = [1400,1431]

;---------------------------------------------------------------------------
; Champion Puncher C
[State -1]
type = ChangeState
value = 3005
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = var(59) < 2
triggerall = !var(13)
triggerall = Power >= 1000
triggerall = p2dist X = [-70,70]
triggerall = command = "ChampionPuncherC"
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact
trigger17 = var(12) && StateNo = [1000,1001]
trigger18 = var(12) && StateNo = [1100,1111]
trigger19 = var(12) && StateNo = [1200,1207]
trigger20 = var(12) && StateNo = [1300,1301]
trigger21 = var(12) && StateNo = [1400,1431]

;---------------------------------------------------------------------------
; SDM Crazy Puncher
[State -1]
type = ChangeState
value = 3600
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = var(11) > 0
triggerall = Power >= 1000
triggerall = ((command = "CrazyPuncherA") || (command = "CrazyPuncherC"))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

;---------------------------------------------------------------------------
; SDM Crazy Puncher
[State -1]
type = ChangeState
value = 3600
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = !var(12)
triggerall = var(59) = 1
triggerall = Power >= 3000
triggerall = ((command = "CrazyPuncherA") && (command = "CrazyPuncherC"))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

;---------------------------------------------------------------------------
; Crazy Puncher A
[State -1]
type = ChangeState
value = 3500
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = var(59) < 2
triggerall = !var(13)
triggerall = Power >= 1000
triggerall = command = "CrazyPuncherA"
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact
trigger17 = var(12) && StateNo = [1000,1001]
trigger18 = var(12) && StateNo = [1100,1111]
trigger19 = var(12) && StateNo = [1200,1207]
trigger20 = var(12) && StateNo = [1300,1301]
trigger21 = var(12) && StateNo = [1400,1431]

;---------------------------------------------------------------------------
; Crazy Puncher C
[State -1]
type = ChangeState
value = 3501
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = var(59) < 2
triggerall = !var(13)
triggerall = Power >= 1000
triggerall = command = "CrazyPuncherC"
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact
trigger17 = var(12) && StateNo = [1000,1001]
trigger18 = var(12) && StateNo = [1100,1111]
trigger19 = var(12) && StateNo = [1200,1207]
trigger20 = var(12) && StateNo = [1300,1301]
trigger21 = var(12) && StateNo = [1400,1431]

;---------------------------------------------------------------------------
; SDM Reverse Puncher
[State -1]
type = ChangeState
value = 3800
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = var(11) > 0
triggerall = Power >= 1000
triggerall = ((command = "ReversePuncherB") || (command = "ReversePuncherD"))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

;---------------------------------------------------------------------------
; SDM Reverse Puncher
[State -1]
type = ChangeState
value = 3800
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = !var(12)
triggerall = var(59) = 1
triggerall = Power >= 3000
triggerall = ((command = "ReversePuncherB") && (command = "ReversePuncherD"))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

;---------------------------------------------------------------------------
; Reverse Puncher
[State -1]
type = ChangeState
value = 3700
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = !var(59)
triggerall = !var(13)
triggerall = Power >= 1000
triggerall = ((command = "ReversePuncherB") || (command = "ReversePuncherD"))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

;---------------------------------------------------------------------------
; Champion Puncher
[State -1]
type = ChangeState
value = 3000
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = var(59) = 2
triggerall = Power >= 1000
triggerall = p2dist X = [-70,70]
triggerall = ((command = "ChampionPuncherA") || (command = "ChampionPuncherC") || (command = "ChampionPuncherZ"))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

[State -1]
type = ChangeState
value = 3000
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = p2dist X = [-70,70]
triggerall = ((command = "ChampionPuncherA") || (command = "ChampionPuncherC") || (command = "ChampionPuncherZ"))
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210 && AnimElem = 7, < 0
trigger3 = StateNo = 10211 && AnimElem = 9, < 0
trigger4 = StateNo = 10220 && AnimElem = 6, < 0
trigger5 = StateNo = 10221 && AnimElem = 14, < 0
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240 && AnimElem = 6, < 0
trigger8 = StateNo = 10250 && AnimElem = 8, < 0
trigger9 = StateNo = 300 && AnimElem = 13, < 0
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410 && AnimElem = 10, < 0
trigger12 = StateNo = 10420 && AnimElem = 9, < 0
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440 && AnimElem = 9, < 0
trigger15 = StateNo = 10450 && AnimElem = 11, < 0
trigger16 = StateNo = 1000
trigger17 = StateNo = 1001
trigger18 = StateNo = 1002
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202
trigger23 = StateNo = 1400 && AnimElem = 7, < 0
trigger24 = StateNo = 1405 && AnimElem = 7, < 0
trigger25 = StateNo = 1407 && AnimElem = 7, < 0
trigger26 = StateNo = 1401 && AnimElem = 6, < 0
trigger27 = StateNo = 1406 && AnimElem = 6, < 0
trigger28 = StateNo = 1408 && AnimElem = 6, < 0
trigger29 = StateNo = 1410
trigger30 = StateNo = 1420
trigger31 = StateNo = 1430
trigger32 = StateNo = 1200
trigger33 = StateNo = 1201
trigger34 = StateNo = 1203
trigger35 = StateNo = 1206
trigger36 = StateNo = 1207
trigger37 = StateNo = 1300
trigger38 = StateNo = 1301
trigger39 = StateNo = 1410
trigger40 = StateNo = 1411
trigger41 = StateNo = 1420
trigger42 = StateNo = 1421
trigger43 = StateNo = 1430
trigger44 = StateNo = 1431
trigger45 = StateNo = 103

;---------------------------------------------------------------------------
; Crazy Puncher
[State -1]
type = ChangeState
value = 3500
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = var(59) = 2
triggerall = Power >= 1000
triggerall = ((command = "CrazyPuncher2A") || (command = "CrazyPuncher2C") || (command = "CrazyPuncher2Z"))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

[State -1]
type = ChangeState
value = 3500
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = ((command = "CrazyPuncher2A") || (command = "CrazyPuncher2C") || (command = "CrazyPuncher2Z"))
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210 && AnimElem = 7, < 0
trigger3 = StateNo = 10211 && AnimElem = 9, < 0
trigger4 = StateNo = 10220 && AnimElem = 6, < 0
trigger5 = StateNo = 10221 && AnimElem = 14, < 0
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240 && AnimElem = 6, < 0
trigger8 = StateNo = 10250 && AnimElem = 8, < 0
trigger9 = StateNo = 300 && AnimElem = 13, < 0
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410 && AnimElem = 10, < 0
trigger12 = StateNo = 10420 && AnimElem = 9, < 0
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440 && AnimElem = 9, < 0
trigger15 = StateNo = 10450 && AnimElem = 11, < 0
trigger16 = StateNo = 1000
trigger17 = StateNo = 1001
trigger18 = StateNo = 1002
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202
trigger23 = StateNo = 1400 && AnimElem = 7, < 0
trigger24 = StateNo = 1405 && AnimElem = 7, < 0
trigger25 = StateNo = 1407 && AnimElem = 7, < 0
trigger26 = StateNo = 1401 && AnimElem = 6, < 0
trigger27 = StateNo = 1406 && AnimElem = 6, < 0
trigger28 = StateNo = 1408 && AnimElem = 6, < 0
trigger29 = StateNo = 1410
trigger30 = StateNo = 1420
trigger31 = StateNo = 1430
trigger32 = StateNo = 1200
trigger33 = StateNo = 1201
trigger34 = StateNo = 1203
trigger35 = StateNo = 1206
trigger36 = StateNo = 1207
trigger37 = StateNo = 1300
trigger38 = StateNo = 1301
trigger39 = StateNo = 1410
trigger40 = StateNo = 1411
trigger41 = StateNo = 1420
trigger42 = StateNo = 1421
trigger43 = StateNo = 1430
trigger44 = StateNo = 1431
trigger45 = StateNo = 103

;---------------------------------------------------------------------------
; Reverse Puncher
[State -1]
type = ChangeState
value = 3700
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = var(59) = 2
triggerall = Power >= 1000
triggerall = ((command = "ReversePuncher2B") || (command = "ReversePuncher2D") || (command = "ReversePuncher2C"))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

[State -1]
type = ChangeState
value = 3700
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = ((command = "ReversePuncher2B") || (command = "ReversePuncher2D") || (command = "ReversePuncher2C"))
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210 && AnimElem = 7, < 0
trigger3 = StateNo = 10211 && AnimElem = 9, < 0
trigger4 = StateNo = 10220 && AnimElem = 6, < 0
trigger5 = StateNo = 10221 && AnimElem = 14, < 0
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240 && AnimElem = 6, < 0
trigger8 = StateNo = 10250 && AnimElem = 8, < 0
trigger9 = StateNo = 300 && AnimElem = 13, < 0
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410 && AnimElem = 10, < 0
trigger12 = StateNo = 10420 && AnimElem = 9, < 0
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440 && AnimElem = 9, < 0
trigger15 = StateNo = 10450 && AnimElem = 11, < 0
trigger16 = StateNo = 1000
trigger17 = StateNo = 1001
trigger18 = StateNo = 1002
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202
trigger23 = StateNo = 1400 && AnimElem = 7, < 0
trigger24 = StateNo = 1405 && AnimElem = 7, < 0
trigger25 = StateNo = 1407 && AnimElem = 7, < 0
trigger26 = StateNo = 1401 && AnimElem = 6, < 0
trigger27 = StateNo = 1406 && AnimElem = 6, < 0
trigger28 = StateNo = 1408 && AnimElem = 6, < 0
trigger29 = StateNo = 1410
trigger30 = StateNo = 1420
trigger31 = StateNo = 1430
trigger32 = StateNo = 1200
trigger33 = StateNo = 1201
trigger34 = StateNo = 1203
trigger35 = StateNo = 1206
trigger36 = StateNo = 1207
trigger37 = StateNo = 1300
trigger38 = StateNo = 1301
trigger39 = StateNo = 1410
trigger40 = StateNo = 1411
trigger41 = StateNo = 1420
trigger42 = StateNo = 1421
trigger43 = StateNo = 1430
trigger44 = StateNo = 1431
trigger45 = StateNo = 103

;---------------------------------------------------------------------------
; SDM Champion Puncher
[State -1]
type = ChangeState
value = 3100
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = var(2) > 0
triggerall = ((command = "ChampionPuncherA") || (command = "ChampionPuncherC") || (command = "ChampionPuncherZ"))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

;---------------------------------------------------------------------------
; SDM Crazy Puncher
[State -1]
type = ChangeState
value = 3600
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = var(2) > 0
triggerall = ((command = "CrazyPuncher2A") || (command = "CrazyPuncher2C") || (command = "CrazyPuncher2Z"))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

;---------------------------------------------------------------------------
; SDM Reverse Puncher
[State -1]
type = ChangeState
value = 3800
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = var(2) > 0
triggerall = ((command = "ReversePuncher2B") || (command = "ReversePuncher2D") || (command = "ReversePuncher2C"))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

;---------------------------------------------------------------------------
;-------------------------------Specials------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Parrying Puncher A
[State -1]
type = ChangeState
value = 1100
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = command = "ParryingPuncherA"
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

[State -1]
type = ChangeState
value = 1100
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "ParryingPuncherA"
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210
trigger3 = StateNo = 10211
trigger4 = StateNo = 10220
trigger5 = StateNo = 10221
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240
trigger8 = StateNo = 10250
trigger9 = StateNo = 300
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410
trigger12 = StateNo = 10420
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440
trigger15 = StateNo = 10450
trigger16 = StateNo = 1000
trigger17 = StateNo = 1001
trigger18 = StateNo = 1002
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202
trigger23 = StateNo = 1301 && AnimElem = 1, > 0
trigger24 = StateNo = 1400 && AnimElem = 7, < 0
trigger25 = StateNo = 1405 && AnimElem = 7, < 0
trigger26 = StateNo = 1407 && AnimElem = 7, < 0
trigger27 = StateNo = 1401 && AnimElem = 6, < 0
trigger28 = StateNo = 1406 && AnimElem = 6, < 0
trigger29 = StateNo = 1408 && AnimElem = 6, < 0
trigger30 = StateNo = 1410 && AnimElem = 1, > 0
trigger31 = StateNo = 1420 && AnimElem = 1, > 0
trigger32 = StateNo = 1430 && AnimElem = 1, > 0
trigger33 = StateNo = 103

;---------------------------------------------------------------------------
; Parrying Puncher C
[State -1]
type = ChangeState
value = 1110
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = command = "ParryingPuncherC"
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

[State -1]
type = ChangeState
value = 1110
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "ParryingPuncherC"
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210
trigger3 = StateNo = 10211
trigger4 = StateNo = 10220
trigger5 = StateNo = 10221
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240
trigger8 = StateNo = 10250
trigger9 = StateNo = 300
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410
trigger12 = StateNo = 10420
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440
trigger15 = StateNo = 10450
trigger16 = StateNo = 1000
trigger17 = StateNo = 1001
trigger18 = StateNo = 1002
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202
trigger23 = StateNo = 1301 && AnimElem = 1, > 0
trigger24 = StateNo = 1400 && AnimElem = 7, < 0
trigger25 = StateNo = 1405 && AnimElem = 7, < 0
trigger26 = StateNo = 1407 && AnimElem = 7, < 0
trigger27 = StateNo = 1401 && AnimElem = 6, < 0
trigger28 = StateNo = 1406 && AnimElem = 6, < 0
trigger29 = StateNo = 1408 && AnimElem = 6, < 0
trigger30 = StateNo = 1410 && AnimElem = 1, > 0
trigger31 = StateNo = 1420 && AnimElem = 1, > 0
trigger32 = StateNo = 1430 && AnimElem = 1, > 0
trigger33 = StateNo = 103

;---------------------------------------------------------------------------
; Parrying Puncher Z
[State -1]
type = ChangeState
value = 1120
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = ((var(59) > 1) && command = "ParryingPuncherZ")
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

[State -1]
type = ChangeState
value = 1120
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "ParryingPuncherZ"
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210
trigger3 = StateNo = 10211
trigger4 = StateNo = 10220
trigger5 = StateNo = 10221
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240
trigger8 = StateNo = 10250
trigger9 = StateNo = 300
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410
trigger12 = StateNo = 10420
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440
trigger15 = StateNo = 10450
trigger16 = StateNo = 1000
trigger17 = StateNo = 1001
trigger18 = StateNo = 1002
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202
trigger23 = StateNo = 1301 && AnimElem = 1, > 0
trigger24 = StateNo = 1400 && AnimElem = 7, < 0
trigger25 = StateNo = 1405 && AnimElem = 7, < 0
trigger26 = StateNo = 1407 && AnimElem = 7, < 0
trigger27 = StateNo = 1401 && AnimElem = 6, < 0
trigger28 = StateNo = 1406 && AnimElem = 6, < 0
trigger29 = StateNo = 1408 && AnimElem = 6, < 0
trigger30 = StateNo = 1410 && AnimElem = 1, > 0
trigger31 = StateNo = 1420 && AnimElem = 1, > 0
trigger32 = StateNo = 1430 && AnimElem = 1, > 0
trigger33 = StateNo = 103

;---------------------------------------------------------------------------
; Dash Puncher X
[State -1]
type = ChangeState
value = 1002
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = ((var(59) > 1) && command = "DashPuncher2A")
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

[State -1]
type = ChangeState
value = 1002
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "DashPuncher2A"
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210
trigger3 = StateNo = 10211
trigger4 = StateNo = 10220
trigger5 = StateNo = 10221
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240
trigger8 = StateNo = 10250
trigger9 = StateNo = 300
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410
trigger12 = StateNo = 10420
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440
trigger15 = StateNo = 10450
trigger16 = StateNo = 1000
trigger17 = StateNo = 1001
trigger18 = StateNo = 1002
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202
trigger23 = StateNo = 1301 && AnimElem = 1, > 0
trigger24 = StateNo = 1400 && AnimElem = 7, < 0
trigger25 = StateNo = 1405 && AnimElem = 7, < 0
trigger26 = StateNo = 1407 && AnimElem = 7, < 0
trigger27 = StateNo = 1401 && AnimElem = 6, < 0
trigger28 = StateNo = 1406 && AnimElem = 6, < 0
trigger29 = StateNo = 1408 && AnimElem = 6, < 0
trigger30 = StateNo = 1410 && AnimElem = 1, > 0
trigger31 = StateNo = 1420 && AnimElem = 1, > 0
trigger32 = StateNo = 1430 && AnimElem = 1, > 0
trigger33 = StateNo = 103

;---------------------------------------------------------------------------
; Dash Puncher A
[State -1]
type = ChangeState
value = 1000
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = (((var(59) < 2) && command = "DashPuncherA") || ((var(59) > 1) && command = "DashPuncher2B"))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

[State -1]
type = ChangeState
value = 1000
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "DashPuncher2B"
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210
trigger3 = StateNo = 10211
trigger4 = StateNo = 10220
trigger5 = StateNo = 10221
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240
trigger8 = StateNo = 10250
trigger9 = StateNo = 300
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410
trigger12 = StateNo = 10420
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440
trigger15 = StateNo = 10450
trigger16 = StateNo = 1000
trigger17 = StateNo = 1001
trigger18 = StateNo = 1002
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202
trigger23 = StateNo = 1301 && AnimElem = 1, > 0
trigger24 = StateNo = 1400 && AnimElem = 7, < 0
trigger25 = StateNo = 1405 && AnimElem = 7, < 0
trigger26 = StateNo = 1407 && AnimElem = 7, < 0
trigger27 = StateNo = 1401 && AnimElem = 6, < 0
trigger28 = StateNo = 1406 && AnimElem = 6, < 0
trigger29 = StateNo = 1408 && AnimElem = 6, < 0
trigger30 = StateNo = 1410 && AnimElem = 1, > 0
trigger31 = StateNo = 1420 && AnimElem = 1, > 0
trigger32 = StateNo = 1430 && AnimElem = 1, > 0
trigger33 = StateNo = 103

;---------------------------------------------------------------------------
; Dash Puncher C
[State -1]
type = ChangeState
value = 1001
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = (((var(59) < 2) && command = "DashPuncherC") || ((var(59) > 1) && command = "DashPuncher2C"))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

[State -1]
type = ChangeState
value = 1001
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "DashPuncher2C"
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210
trigger3 = StateNo = 10211
trigger4 = StateNo = 10220
trigger5 = StateNo = 10221
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240
trigger8 = StateNo = 10250
trigger9 = StateNo = 300
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410
trigger12 = StateNo = 10420
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440
trigger15 = StateNo = 10450
trigger16 = StateNo = 1000
trigger17 = StateNo = 1001
trigger18 = StateNo = 1002
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202
trigger23 = StateNo = 1301 && AnimElem = 1, > 0
trigger24 = StateNo = 1400 && AnimElem = 7, < 0
trigger25 = StateNo = 1405 && AnimElem = 7, < 0
trigger26 = StateNo = 1407 && AnimElem = 7, < 0
trigger27 = StateNo = 1401 && AnimElem = 6, < 0
trigger28 = StateNo = 1406 && AnimElem = 6, < 0
trigger29 = StateNo = 1408 && AnimElem = 6, < 0
trigger30 = StateNo = 1410 && AnimElem = 1, > 0
trigger31 = StateNo = 1420 && AnimElem = 1, > 0
trigger32 = StateNo = 1430 && AnimElem = 1, > 0
trigger33 = StateNo = 103

;---------------------------------------------------------------------------
; Puncher Vision Forward B
[State -1]
type = ChangeState
value = 1400
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = command = "PuncherVisionForwardB"
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

[State -1]
type = ChangeState
value = 1400
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "PuncherVisionForwardB"
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210
trigger3 = StateNo = 10211
trigger4 = StateNo = 10220
trigger5 = StateNo = 10221
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240
trigger8 = StateNo = 10250
trigger9 = StateNo = 300
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410
trigger12 = StateNo = 10420
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440
trigger15 = StateNo = 10450
trigger16 = StateNo = 1000
trigger17 = StateNo = 1001
trigger18 = StateNo = 1002
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202
trigger23 = StateNo = 1301 && AnimElem = 1, > 0
trigger24 = StateNo = 1400 && AnimElem = 7, < 0
trigger25 = StateNo = 1405 && AnimElem = 7, < 0
trigger26 = StateNo = 1407 && AnimElem = 7, < 0
trigger27 = StateNo = 1401 && AnimElem = 6, < 0
trigger28 = StateNo = 1406 && AnimElem = 6, < 0
trigger29 = StateNo = 1408 && AnimElem = 6, < 0
trigger30 = StateNo = 1410 && AnimElem = 1, > 0
trigger31 = StateNo = 1420 && AnimElem = 1, > 0
trigger32 = StateNo = 1430 && AnimElem = 1, > 0
trigger33 = StateNo = 103

;---------------------------------------------------------------------------
; Puncher Vision Forward D
[State -1]
type = ChangeState
value = 1405
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = (((var(59) < 2) && (command = "PuncherVisionForwardD")) || ((var(59) > 1) && (command = "PuncherVisionForward2")))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

[State -1]
type = ChangeState
value = 1405
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "PuncherVisionForward2"
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210
trigger3 = StateNo = 10211
trigger4 = StateNo = 10220
trigger5 = StateNo = 10221
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240
trigger8 = StateNo = 10250
trigger9 = StateNo = 300
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410
trigger12 = StateNo = 10420
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440
trigger15 = StateNo = 10450
trigger16 = StateNo = 1000
trigger17 = StateNo = 1001
trigger18 = StateNo = 1002
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202
trigger23 = StateNo = 1301 && AnimElem = 1, > 0
trigger24 = StateNo = 1400 && AnimElem = 7, < 0
trigger25 = StateNo = 1405 && AnimElem = 7, < 0
trigger26 = StateNo = 1407 && AnimElem = 7, < 0
trigger27 = StateNo = 1401 && AnimElem = 6, < 0
trigger28 = StateNo = 1406 && AnimElem = 6, < 0
trigger29 = StateNo = 1408 && AnimElem = 6, < 0
trigger30 = StateNo = 1410 && AnimElem = 1, > 0
trigger31 = StateNo = 1420 && AnimElem = 1, > 0
trigger32 = StateNo = 1430 && AnimElem = 1, > 0
trigger33 = StateNo = 103

;---------------------------------------------------------------------------
; Puncher Vision Forward 2
[State -1]
type = ChangeState
value = 1407
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = ((var(59) > 1) &&(command = "PuncherVisionForwardD"))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

[State -1]
type = ChangeState
value = 1407
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "PuncherVisionForwardD"
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210
trigger3 = StateNo = 10211
trigger4 = StateNo = 10220
trigger5 = StateNo = 10221
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240
trigger8 = StateNo = 10250
trigger9 = StateNo = 300
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410
trigger12 = StateNo = 10420
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440
trigger15 = StateNo = 10450
trigger16 = StateNo = 1000
trigger17 = StateNo = 1001
trigger18 = StateNo = 1002
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202
trigger23 = StateNo = 1301 && AnimElem = 1, > 0
trigger24 = StateNo = 1400 && AnimElem = 7, < 0
trigger25 = StateNo = 1405 && AnimElem = 7, < 0
trigger26 = StateNo = 1407 && AnimElem = 7, < 0
trigger27 = StateNo = 1401 && AnimElem = 6, < 0
trigger28 = StateNo = 1406 && AnimElem = 6, < 0
trigger29 = StateNo = 1408 && AnimElem = 6, < 0
trigger30 = StateNo = 1410 && AnimElem = 1, > 0
trigger31 = StateNo = 1420 && AnimElem = 1, > 0
trigger32 = StateNo = 1430 && AnimElem = 1, > 0
trigger33 = StateNo = 103

;---------------------------------------------------------------------------
; Puncher Vision Backward B
[State -1]
type = ChangeState
value = 1401
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = command = "PuncherVisionBackwardB"
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

[State -1]
type = ChangeState
value = 1401
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "PuncherVisionBackwardB"
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210
trigger3 = StateNo = 10211
trigger4 = StateNo = 10220
trigger5 = StateNo = 10221
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240
trigger8 = StateNo = 10250
trigger9 = StateNo = 300
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410
trigger12 = StateNo = 10420
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440
trigger15 = StateNo = 10450
trigger16 = StateNo = 1000
trigger17 = StateNo = 1001
trigger18 = StateNo = 1002
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202
trigger23 = StateNo = 1301 && AnimElem = 1, > 0
trigger24 = StateNo = 1400 && AnimElem = 7, < 0
trigger25 = StateNo = 1405 && AnimElem = 7, < 0
trigger26 = StateNo = 1407 && AnimElem = 7, < 0
trigger27 = StateNo = 1401 && AnimElem = 6, < 0
trigger28 = StateNo = 1406 && AnimElem = 6, < 0
trigger29 = StateNo = 1408 && AnimElem = 6, < 0
trigger30 = StateNo = 1410 && AnimElem = 1, > 0
trigger31 = StateNo = 1420 && AnimElem = 1, > 0
trigger32 = StateNo = 1430 && AnimElem = 1, > 0
trigger33 = StateNo = 103

;---------------------------------------------------------------------------
; Puncher Vision Backward D
[State -1]
type = ChangeState
value = 1406
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = (((var(59) < 2) && (command = "PuncherVisionBackwardD")) || ((var(59) > 1) && (command = "PuncherVisionBackward2")))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

[State -1]
type = ChangeState
value = 1406
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "PuncherVisionBackward2"
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210
trigger3 = StateNo = 10211
trigger4 = StateNo = 10220
trigger5 = StateNo = 10221
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240
trigger8 = StateNo = 10250
trigger9 = StateNo = 300
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410
trigger12 = StateNo = 10420
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440
trigger15 = StateNo = 10450
trigger16 = StateNo = 1000
trigger17 = StateNo = 1001
trigger18 = StateNo = 1002
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202
trigger23 = StateNo = 1301 && AnimElem = 1, > 0
trigger24 = StateNo = 1400 && AnimElem = 7, < 0
trigger25 = StateNo = 1405 && AnimElem = 7, < 0
trigger26 = StateNo = 1407 && AnimElem = 7, < 0
trigger27 = StateNo = 1401 && AnimElem = 6, < 0
trigger28 = StateNo = 1406 && AnimElem = 6, < 0
trigger29 = StateNo = 1408 && AnimElem = 6, < 0
trigger30 = StateNo = 1410 && AnimElem = 1, > 0
trigger31 = StateNo = 1420 && AnimElem = 1, > 0
trigger32 = StateNo = 1430 && AnimElem = 1, > 0
trigger33 = StateNo = 103

;---------------------------------------------------------------------------
; Puncher Vision Backward 2
[State -1]
type = ChangeState
value = 1408
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = ((var(59) > 1) &&(command = "PuncherVisionBackwardD"))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

[State -1]
type = ChangeState
value = 1408
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "PuncherVisionBackwardD"
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210
trigger3 = StateNo = 10211
trigger4 = StateNo = 10220
trigger5 = StateNo = 10221
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240
trigger8 = StateNo = 10250
trigger9 = StateNo = 300
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410
trigger12 = StateNo = 10420
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440
trigger15 = StateNo = 10450
trigger16 = StateNo = 1000
trigger17 = StateNo = 1001
trigger18 = StateNo = 1002
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202
trigger23 = StateNo = 1301 && AnimElem = 1, > 0
trigger24 = StateNo = 1400 && AnimElem = 7, < 0
trigger25 = StateNo = 1405 && AnimElem = 7, < 0
trigger26 = StateNo = 1407 && AnimElem = 7, < 0
trigger27 = StateNo = 1401 && AnimElem = 6, < 0
trigger28 = StateNo = 1406 && AnimElem = 6, < 0
trigger29 = StateNo = 1408 && AnimElem = 6, < 0
trigger30 = StateNo = 1410 && AnimElem = 1, > 0
trigger31 = StateNo = 1420 && AnimElem = 1, > 0
trigger32 = StateNo = 1430 && AnimElem = 1, > 0
trigger33 = StateNo = 103

;---------------------------------------------------------------------------
; Puncher Weaving
[State -1]
type = ChangeState
value = 1300
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = ((command = "PuncherWeaving") || ((var(59) > 1) && (command = "PuncherWeavingZ")))
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

[State -1]
type = ChangeState
value = 1300
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = ((command = "PuncherWeaving") || (command = "PuncherWeavingZ"))
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210
trigger3 = StateNo = 10211
trigger4 = StateNo = 10220
trigger5 = StateNo = 10221
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240
trigger8 = StateNo = 10250
trigger9 = StateNo = 300
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410
trigger12 = StateNo = 10420
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440
trigger15 = StateNo = 10450
trigger16 = StateNo = 1000
trigger17 = StateNo = 1001
trigger18 = StateNo = 1002
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202
trigger23 = StateNo = 1301 && AnimElem = 1, > 0
trigger24 = StateNo = 1400 && AnimElem = 7, < 0
trigger25 = StateNo = 1405 && AnimElem = 7, < 0
trigger26 = StateNo = 1407 && AnimElem = 7, < 0
trigger27 = StateNo = 1401 && AnimElem = 6, < 0
trigger28 = StateNo = 1406 && AnimElem = 6, < 0
trigger29 = StateNo = 1408 && AnimElem = 6, < 0
trigger30 = StateNo = 1410 && AnimElem = 1, > 0
trigger31 = StateNo = 1420 && AnimElem = 1, > 0
trigger32 = StateNo = 1430 && AnimElem = 1, > 0
trigger33 = StateNo = 103

;---------------------------------------------------------------------------
; Machine Gun Puncher
[State -1]
type = ChangeState
value = 1200
triggerall = var(7) = 0
triggerall = StateType != A
triggerall = command = "MachineGunPuncher"
trigger1 = ctrl
trigger2 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger3 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger4 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger5 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger6 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger7 = ((StateNo = 211) && (AnimElem = 6, < 0))
trigger8 = ((StateNo = 230) && (AnimElem = 5, < 0))
trigger9 = (((Anim = 300) && (AnimElem = 5, > 0) && MoveContact) || ((Anim = 10300) && (AnimElem = 5, > 0))) && (var(59) < 2)
trigger10 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger12 = ((StateNo = 410) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger13 = ((StateNo = 430) && ((AnimElem = 6, < 0) || (MoveContact)))
trigger14 = ((StateNo = 300) && (AnimElem = 9, > 0))
trigger15 = StateNo = [10200,10299]
trigger15 = MoveContact
trigger16 = StateNo = [10400,10499]
trigger16 = MoveContact

[State -1]
type = ChangeState
value = 1200
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "MachineGunPuncher"
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210
trigger3 = StateNo = 10211
trigger4 = StateNo = 10220
trigger5 = StateNo = 10221
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240
trigger8 = StateNo = 10250
trigger9 = StateNo = 300
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410
trigger12 = StateNo = 10420
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440
trigger15 = StateNo = 10450
trigger16 = StateNo = 1000
trigger17 = StateNo = 1001
trigger18 = StateNo = 1002
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202
trigger23 = StateNo = 1301 && AnimElem = 1, > 0
trigger24 = StateNo = 1400 && AnimElem = 7, < 0
trigger25 = StateNo = 1405 && AnimElem = 7, < 0
trigger26 = StateNo = 1407 && AnimElem = 7, < 0
trigger27 = StateNo = 1401 && AnimElem = 6, < 0
trigger28 = StateNo = 1406 && AnimElem = 6, < 0
trigger29 = StateNo = 1408 && AnimElem = 6, < 0
trigger30 = StateNo = 1410 && AnimElem = 1, > 0
trigger31 = StateNo = 1420 && AnimElem = 1, > 0
trigger32 = StateNo = 1430 && AnimElem = 1, > 0
trigger33 = StateNo = 103


;---------------------------------------------------------------------------
;--------------------------------Basics-------------------------------------
;---------------------------------------------------------------------------

;--|[ Throws ]}--
;---------------------------------------------------------------------------
; s. C Throw
[State -1]
type = ChangeState
value = 800
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = p2MoveType != H
triggerall = command = "holdfwd2" || command = "holdback2"
triggerall = command = "y"
triggerall = p2dist X <= 50
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
trigger1 = ctrl

;---------------------------------------------------------------------------
; s. Fierce Throw Forward
[State -1]
type = ChangeState
value = 800
triggerall = var(7) = 0
triggerall = var(59) > 1
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdfwd2"
triggerall = command = "z"
triggerall = p2dist X <= 50
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
trigger1 = ctrl

;---------------------------------------------------------------------------
; s. Fierce Throw Backward
[State -1]
type = ChangeState
value = 805
triggerall = var(7) = 0
triggerall = var(59) > 1
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdback2"
triggerall = command = "z"
triggerall = p2dist X <= 50
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
trigger1 = ctrl

;---------------------------------------------------------------------------
; s. D Throw
[State -1]
type = ChangeState
value = 810
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = p2MoveType != H
triggerall = command = "holdfwd2" || command = "holdback2"
triggerall = command = "b"
triggerall = p2dist X <= 50
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
trigger1 = ctrl

;---------------------------------------------------------------------------
; s. Roundhouse Throw Forward
[State -1]
type = ChangeState
value = 815
triggerall = var(7) = 0
triggerall = var(59) > 1
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdfwd2"
triggerall = command = "c"
triggerall = p2dist X <= 50
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
trigger1 = ctrl

;---------------------------------------------------------------------------
; s. Roundhouse Throw Backward
[State -1]
type = ChangeState
value = 810
triggerall = var(7) = 0
triggerall = var(59) > 1
triggerall = StateType = S
triggerall = p2StateType = S || p2StateType = C
triggerall = command = "holdback2"
triggerall = command = "c"
triggerall = p2dist X <= 50
triggerall = p2dist X > 0
triggerall = p2dist Y <= 50
triggerall = p2dist Y > -50
triggerall = StateNo != 100
trigger1 = ctrl

;--|[ Standing ]|--

;---------------------------------------------------------------------------
; 6 A
[State -1]
type = ChangeState
value = 300
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType != A
triggerall = command = "holdfwd"
triggerall = command = "x"
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger4 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger5 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger6 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger7 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger8 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger9 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger10 = ((StateNo = 410) && ((AnimElem = 5, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 430) && ((AnimElem = 5, > 0) || (MoveContact)))

;---------------------------------------------------------------------------
; 6 Strong
[State -1]
type = ChangeState
value = 300
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType != A
triggerall = command = "holdfwd"
triggerall = command = "y"
trigger1 = ctrl

;---------------------------------------------------------------------------
; 3 B
[State -1]
type = ChangeState
value = 500
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType != A
triggerall = command = "holddownfwd"
triggerall = command = "a"
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = ((StateNo = 200) && ((AnimElem = 4, > 3) || (MoveContact)))
trigger4 = ((StateNo = 201) && ((AnimElem = 5, > 0) || (MoveContact)))
trigger5 = ((StateNo = 220) && ((AnimElem = 3, > 2) || (MoveContact)))
trigger6 = ((StateNo = 221) && ((AnimElem = 3, > 0) || (MoveContact)))
trigger7 = ((StateNo = 210) && (AnimElem = 8, > 0))
trigger8 = ((StateNo = 400) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger9 = ((StateNo = 420) && ((AnimElem = 3, >= 3) || (MoveContact)))
trigger10 = ((StateNo = 410) && ((AnimElem = 5, >= 3) || (MoveContact)))
trigger11 = ((StateNo = 430) && ((AnimElem = 5, > 0) || (MoveContact)))

;---------------------------------------------------------------------------
; s. Jab
[State -1]
type = ChangeState
value = 10200
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "x"
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = StateNo = 10230
trigger3 = AnimElem = 5, >= 0
trigger4 = StateNo = 10400
trigger4 = AnimElem = 4, >= 0
trigger5 = StateNo = 10430
trigger5 = AnimElem = 4, >= 0

[State -1]
type = ChangeState
value = 10200
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "x"
triggerall = AnimElem = 2, > 0
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210 && AnimElem = 3, > 0 && AnimElem = 7, < 0
trigger3 = StateNo = 10211 && AnimElem = 3, > 0 && AnimElem = 9, < 0
trigger4 = StateNo = 10220 && AnimElem = 4, > 0 && AnimElem = 6, < 0
trigger5 = StateNo = 10221 && AnimElem = 3, > 0 && AnimElem = 14, < 0
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240 && AnimElem = 6, < 0
trigger8 = StateNo = 10250 && AnimElem = 3, > 0 && AnimElem = 8, < 0
trigger9 = StateNo = 300 && AnimElem = 4, > 0 && AnimElem = 13, < 0
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410 && AnimElem = 3, > 0 && AnimElem = 10, < 0
trigger12 = StateNo = 10420 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger15 = StateNo = 10450 && AnimElem = 3, > 0 && AnimElem = 11, < 0
trigger16 = StateNo = 1000 && AnimElem = 5, > 0
trigger17 = StateNo = 1001 && AnimElem = 5, > 0
trigger18 = StateNo = 1002 && AnimElem = 4, > 0
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202 && AnimElem = 3, > 0
trigger23 = StateNo = 1400 && AnimElem = 7, < 0
trigger24 = StateNo = 1405 && AnimElem = 7, < 0
trigger25 = StateNo = 1407 && AnimElem = 7, < 0
trigger26 = StateNo = 1401 && AnimElem = 6, < 0
trigger27 = StateNo = 1406 && AnimElem = 6, < 0
trigger28 = StateNo = 1408 && AnimElem = 6, < 0
trigger29 = StateNo = 1410 && AnimElem = 3, > 0
trigger30 = StateNo = 1420 && AnimElem = 3, > 0
trigger31 = StateNo = 1430 && AnimElem = 3, > 0
trigger32 = StateNo = 103

;---------------------------------------------------------------------------
; sc. Strong
[State -1]
type = ChangeState
value = 10210
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "y"
triggerall = p2dist X = [-50,50]
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10210
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "y"
triggerall = p2dist X = [-50,50]
triggerall = AnimElem = 2, > 0
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210 && AnimElem = 3, > 0 && AnimElem = 7, < 0
trigger3 = StateNo = 10211 && AnimElem = 3, > 0 && AnimElem = 9, < 0
trigger4 = StateNo = 10220 && AnimElem = 4, > 0 && AnimElem = 6, < 0
trigger5 = StateNo = 10221 && AnimElem = 3, > 0 && AnimElem = 14, < 0
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240 && AnimElem = 6, < 0
trigger8 = StateNo = 10250 && AnimElem = 3, > 0 && AnimElem = 8, < 0
trigger9 = StateNo = 300 && AnimElem = 4, > 0 && AnimElem = 13, < 0
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410 && AnimElem = 3, > 0 && AnimElem = 10, < 0
trigger12 = StateNo = 10420 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger15 = StateNo = 10450 && AnimElem = 3, > 0 && AnimElem = 11, < 0
trigger16 = StateNo = 1000 && AnimElem = 5, > 0
trigger17 = StateNo = 1001 && AnimElem = 5, > 0
trigger18 = StateNo = 1002 && AnimElem = 4, > 0
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202 && AnimElem = 3, > 0
trigger23 = StateNo = 1400 && AnimElem = 7, < 0
trigger24 = StateNo = 1405 && AnimElem = 7, < 0
trigger25 = StateNo = 1407 && AnimElem = 7, < 0
trigger26 = StateNo = 1401 && AnimElem = 6, < 0
trigger27 = StateNo = 1406 && AnimElem = 6, < 0
trigger28 = StateNo = 1408 && AnimElem = 6, < 0
trigger29 = StateNo = 1410 && AnimElem = 3, > 0
trigger30 = StateNo = 1420 && AnimElem = 3, > 0
trigger31 = StateNo = 1430 && AnimElem = 3, > 0
trigger32 = StateNo = 103

;---------------------------------------------------------------------------
; s. Strong
[State -1]
type = ChangeState
value = 10211
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "y"
triggerall = (p2dist X > 50) || (p2dist X < -50)
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10211
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "y"
triggerall = (p2dist X > 50) || (p2dist X < -50)
triggerall = AnimElem = 2, > 0
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210 && AnimElem = 3, > 0 && AnimElem = 7, < 0
trigger3 = StateNo = 10211 && AnimElem = 3, > 0 && AnimElem = 9, < 0
trigger4 = StateNo = 10220 && AnimElem = 4, > 0 && AnimElem = 6, < 0
trigger5 = StateNo = 10221 && AnimElem = 3, > 0 && AnimElem = 14, < 0
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240 && AnimElem = 6, < 0
trigger8 = StateNo = 10250 && AnimElem = 3, > 0 && AnimElem = 8, < 0
trigger9 = StateNo = 300 && AnimElem = 4, > 0 && AnimElem = 13, < 0
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410 && AnimElem = 3, > 0 && AnimElem = 10, < 0
trigger12 = StateNo = 10420 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger15 = StateNo = 10450 && AnimElem = 3, > 0 && AnimElem = 11, < 0
trigger16 = StateNo = 1000 && AnimElem = 5, > 0
trigger17 = StateNo = 1001 && AnimElem = 5, > 0
trigger18 = StateNo = 1002 && AnimElem = 4, > 0
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202 && AnimElem = 3, > 0
trigger23 = StateNo = 1400 && AnimElem = 7, < 0
trigger24 = StateNo = 1405 && AnimElem = 7, < 0
trigger25 = StateNo = 1407 && AnimElem = 7, < 0
trigger26 = StateNo = 1401 && AnimElem = 6, < 0
trigger27 = StateNo = 1406 && AnimElem = 6, < 0
trigger28 = StateNo = 1408 && AnimElem = 6, < 0
trigger29 = StateNo = 1410 && AnimElem = 3, > 0
trigger30 = StateNo = 1420 && AnimElem = 3, > 0
trigger31 = StateNo = 1430 && AnimElem = 3, > 0
trigger32 = StateNo = 103

;---------------------------------------------------------------------------
; sc. Fierce
[State -1]
type = ChangeState
value = 10220
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "z"
triggerall = p2dist X = [-50,50]
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10220
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "z"
triggerall = p2dist X = [-50,50]
triggerall = AnimElem = 2, > 0
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210 && AnimElem = 3, > 0 && AnimElem = 7, < 0
trigger3 = StateNo = 10211 && AnimElem = 3, > 0 && AnimElem = 9, < 0
trigger4 = StateNo = 10220 && AnimElem = 4, > 0 && AnimElem = 6, < 0
trigger5 = StateNo = 10221 && AnimElem = 3, > 0 && AnimElem = 14, < 0
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240 && AnimElem = 6, < 0
trigger8 = StateNo = 10250 && AnimElem = 3, > 0 && AnimElem = 8, < 0
trigger9 = StateNo = 300 && AnimElem = 4, > 0 && AnimElem = 13, < 0
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410 && AnimElem = 3, > 0 && AnimElem = 10, < 0
trigger12 = StateNo = 10420 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger15 = StateNo = 10450 && AnimElem = 3, > 0 && AnimElem = 11, < 0
trigger16 = StateNo = 1000 && AnimElem = 5, > 0
trigger17 = StateNo = 1001 && AnimElem = 5, > 0
trigger18 = StateNo = 1002 && AnimElem = 4, > 0
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202 && AnimElem = 3, > 0
trigger23 = StateNo = 1400 && AnimElem = 7, < 0
trigger24 = StateNo = 1405 && AnimElem = 7, < 0
trigger25 = StateNo = 1407 && AnimElem = 7, < 0
trigger26 = StateNo = 1401 && AnimElem = 6, < 0
trigger27 = StateNo = 1406 && AnimElem = 6, < 0
trigger28 = StateNo = 1408 && AnimElem = 6, < 0
trigger29 = StateNo = 1410 && AnimElem = 3, > 0
trigger30 = StateNo = 1420 && AnimElem = 3, > 0
trigger31 = StateNo = 1430 && AnimElem = 3, > 0
trigger32 = StateNo = 103

;---------------------------------------------------------------------------
; s. Fierce
[State -1]
type = ChangeState
value = 10221
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "z"
triggerall = (p2dist X > 50) || (p2dist X < -50)
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10221
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "z"
triggerall = (p2dist X > 50) || (p2dist X < -50)
triggerall = AnimElem = 2, > 0
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210 && AnimElem = 3, > 0 && AnimElem = 7, < 0
trigger3 = StateNo = 10211 && AnimElem = 3, > 0 && AnimElem = 9, < 0
trigger4 = StateNo = 10220 && AnimElem = 4, > 0 && AnimElem = 6, < 0
trigger5 = StateNo = 10221 && AnimElem = 3, > 0 && AnimElem = 14, < 0
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240 && AnimElem = 6, < 0
trigger8 = StateNo = 10250 && AnimElem = 3, > 0 && AnimElem = 8, < 0
trigger9 = StateNo = 300 && AnimElem = 4, > 0 && AnimElem = 13, < 0
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410 && AnimElem = 3, > 0 && AnimElem = 10, < 0
trigger12 = StateNo = 10420 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger15 = StateNo = 10450 && AnimElem = 3, > 0 && AnimElem = 11, < 0
trigger16 = StateNo = 1000 && AnimElem = 5, > 0
trigger17 = StateNo = 1001 && AnimElem = 5, > 0
trigger18 = StateNo = 1002 && AnimElem = 4, > 0
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202 && AnimElem = 3, > 0
trigger23 = StateNo = 1400 && AnimElem = 7, < 0
trigger24 = StateNo = 1405 && AnimElem = 7, < 0
trigger25 = StateNo = 1407 && AnimElem = 7, < 0
trigger26 = StateNo = 1401 && AnimElem = 6, < 0
trigger27 = StateNo = 1406 && AnimElem = 6, < 0
trigger28 = StateNo = 1408 && AnimElem = 6, < 0
trigger29 = StateNo = 1410 && AnimElem = 3, > 0
trigger30 = StateNo = 1420 && AnimElem = 3, > 0
trigger31 = StateNo = 1430 && AnimElem = 3, > 0
trigger32 = StateNo = 103

;---------------------------------------------------------------------------
; s. Short
[State -1]
type = ChangeState
value = 10230
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "a"
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = StateNo = 10200
trigger3 = AnimElem = 5, >= 0
trigger4 = StateNo = 10400
trigger4 = AnimElem = 4, >= 0
trigger5 = StateNo = 10430
trigger5 = AnimElem = 4, >= 0

[State -1]
type = ChangeState
value = 10230
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "a"
triggerall = AnimElem = 2, > 0
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210 && AnimElem = 3, > 0 && AnimElem = 7, < 0
trigger3 = StateNo = 10211 && AnimElem = 3, > 0 && AnimElem = 9, < 0
trigger4 = StateNo = 10220 && AnimElem = 4, > 0 && AnimElem = 6, < 0
trigger5 = StateNo = 10221 && AnimElem = 3, > 0 && AnimElem = 14, < 0
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240 && AnimElem = 6, < 0
trigger8 = StateNo = 10250 && AnimElem = 3, > 0 && AnimElem = 8, < 0
trigger9 = StateNo = 300 && AnimElem = 4, > 0 && AnimElem = 13, < 0
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410 && AnimElem = 3, > 0 && AnimElem = 10, < 0
trigger12 = StateNo = 10420 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger15 = StateNo = 10450 && AnimElem = 3, > 0 && AnimElem = 11, < 0
trigger16 = StateNo = 1000 && AnimElem = 5, > 0
trigger17 = StateNo = 1001 && AnimElem = 5, > 0
trigger18 = StateNo = 1002 && AnimElem = 4, > 0
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202 && AnimElem = 3, > 0
trigger23 = StateNo = 1400 && AnimElem = 7, < 0
trigger24 = StateNo = 1405 && AnimElem = 7, < 0
trigger25 = StateNo = 1407 && AnimElem = 7, < 0
trigger26 = StateNo = 1401 && AnimElem = 6, < 0
trigger27 = StateNo = 1406 && AnimElem = 6, < 0
trigger28 = StateNo = 1408 && AnimElem = 6, < 0
trigger29 = StateNo = 1410 && AnimElem = 3, > 0
trigger30 = StateNo = 1420 && AnimElem = 3, > 0
trigger31 = StateNo = 1430 && AnimElem = 3, > 0
trigger32 = StateNo = 103

;---------------------------------------------------------------------------
; s. Forward
[State -1]
type = ChangeState
value = 10240
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "b"
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10240
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "b"
triggerall = AnimElem = 2, > 0
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210 && AnimElem = 3, > 0 && AnimElem = 7, < 0
trigger3 = StateNo = 10211 && AnimElem = 3, > 0 && AnimElem = 9, < 0
trigger4 = StateNo = 10220 && AnimElem = 4, > 0 && AnimElem = 6, < 0
trigger5 = StateNo = 10221 && AnimElem = 3, > 0 && AnimElem = 14, < 0
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240 && AnimElem = 6, < 0
trigger8 = StateNo = 10250 && AnimElem = 3, > 0 && AnimElem = 8, < 0
trigger9 = StateNo = 300 && AnimElem = 4, > 0 && AnimElem = 13, < 0
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410 && AnimElem = 3, > 0 && AnimElem = 10, < 0
trigger12 = StateNo = 10420 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger15 = StateNo = 10450 && AnimElem = 3, > 0 && AnimElem = 11, < 0
trigger16 = StateNo = 1000 && AnimElem = 5, > 0
trigger17 = StateNo = 1001 && AnimElem = 5, > 0
trigger18 = StateNo = 1002 && AnimElem = 4, > 0
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202 && AnimElem = 3, > 0
trigger23 = StateNo = 1400 && AnimElem = 7, < 0
trigger24 = StateNo = 1405 && AnimElem = 7, < 0
trigger25 = StateNo = 1407 && AnimElem = 7, < 0
trigger26 = StateNo = 1401 && AnimElem = 6, < 0
trigger27 = StateNo = 1406 && AnimElem = 6, < 0
trigger28 = StateNo = 1408 && AnimElem = 6, < 0
trigger29 = StateNo = 1410 && AnimElem = 3, > 0
trigger30 = StateNo = 1420 && AnimElem = 3, > 0
trigger31 = StateNo = 1430 && AnimElem = 3, > 0
trigger32 = StateNo = 103

;---------------------------------------------------------------------------
; s. Roundhouse
[State -1]
type = ChangeState
value = 10250
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "c"
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10250
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "c"
triggerall = AnimElem = 2, > 0
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210 && AnimElem = 3, > 0 && AnimElem = 7, < 0
trigger3 = StateNo = 10211 && AnimElem = 3, > 0 && AnimElem = 9, < 0
trigger4 = StateNo = 10220 && AnimElem = 4, > 0 && AnimElem = 6, < 0
trigger5 = StateNo = 10221 && AnimElem = 3, > 0 && AnimElem = 14, < 0
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240 && AnimElem = 6, < 0
trigger8 = StateNo = 10250 && AnimElem = 3, > 0 && AnimElem = 8, < 0
trigger9 = StateNo = 300 && AnimElem = 4, > 0 && AnimElem = 13, < 0
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410 && AnimElem = 3, > 0 && AnimElem = 10, < 0
trigger12 = StateNo = 10420 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger15 = StateNo = 10450 && AnimElem = 3, > 0 && AnimElem = 11, < 0
trigger16 = StateNo = 1000 && AnimElem = 5, > 0
trigger17 = StateNo = 1001 && AnimElem = 5, > 0
trigger18 = StateNo = 1002 && AnimElem = 4, > 0
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202 && AnimElem = 3, > 0
trigger23 = StateNo = 1400 && AnimElem = 7, < 0
trigger24 = StateNo = 1405 && AnimElem = 7, < 0
trigger25 = StateNo = 1407 && AnimElem = 7, < 0
trigger26 = StateNo = 1401 && AnimElem = 6, < 0
trigger27 = StateNo = 1406 && AnimElem = 6, < 0
trigger28 = StateNo = 1408 && AnimElem = 6, < 0
trigger29 = StateNo = 1410 && AnimElem = 3, > 0
trigger30 = StateNo = 1420 && AnimElem = 3, > 0
trigger31 = StateNo = 1430 && AnimElem = 3, > 0
trigger32 = StateNo = 103

;--|[ Standing ]|--

;---------------------------------------------------------------------------
; sc. A
[State -1]
type = ChangeState
value = 200
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "x"
triggerall = p2dist X = [-50,50]
trigger1 = ctrl
trigger2 = StateNo = 101

;---------------------------------------------------------------------------
; s. A
[State -1]
type = ChangeState
value = 201
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "x"
triggerall = (p2dist X > 50) || (p2dist X < -50)
trigger1 = ctrl
trigger2 = StateNo = 101

;---------------------------------------------------------------------------
; sc. B
[State -1]
type = ChangeState
value = 220
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "a"
triggerall = p2dist X = [-50,50]
trigger1 = ctrl
trigger2 = StateNo = 101

;---------------------------------------------------------------------------
; s. B
[State -1]
type = ChangeState
value = 221
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "a"
triggerall = (p2dist X > 50) || (p2dist X < -50)
trigger1 = ctrl
trigger2 = StateNo = 101

;---------------------------------------------------------------------------
; sc. C
[State -1]
type = ChangeState
value = 210
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "y"
triggerall = p2dist X = [-50,50]
trigger1 = ctrl
trigger2 = StateNo = 101

;---------------------------------------------------------------------------
; s. C
[State -1]
type = ChangeState
value = 211
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "y"
triggerall = (p2dist X > 50) || (p2dist X < -50)
trigger1 = ctrl
trigger2 = StateNo = 101

;---------------------------------------------------------------------------
; s. D
[State -1]
type = ChangeState
value = 230
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType != A
triggerall = command != "holddown"
triggerall = command = "b"
trigger1 = ctrl
trigger2 = StateNo = 101

;--|[ Crouching ]|--

;---------------------------------------------------------------------------
; c. A
[State -1]
type = ChangeState
value = 400
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType != A
triggerall = command = "holddown"
triggerall = command = "x"
trigger1 = ctrl
trigger2 = StateNo = 101

;---------------------------------------------------------------------------
; c. B
[State -1]
type = ChangeState
value = 420
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType != A
triggerall = command = "holddown"
triggerall = command = "a"
trigger1 = ctrl
trigger2 = StateNo = 101

;---------------------------------------------------------------------------
; c. C
[State -1]
type = ChangeState
value = 410
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType != A
triggerall = command = "holddown"
triggerall = command = "y"
trigger1 = ctrl
trigger2 = StateNo = 101

;---------------------------------------------------------------------------
; c. D
[State -1]
type = ChangeState
value = 430
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType != A
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = ctrl
trigger2 = StateNo = 101

;---------------------------------------------------------------------------
; c. Jab
[State -1]
type = ChangeState
value = 10400
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType != A
triggerall = command = "holddown"
triggerall = command = "x"
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = StateNo = 10200
trigger3 = AnimElem = 5, >= 0
trigger4 = StateNo = 10230
trigger4 = AnimElem = 5, >= 0
trigger5 = StateNo = 10430
trigger5 = AnimElem = 4, >= 0

[State -1]
type = ChangeState
value = 10400
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "holddown"
triggerall = command = "x"
triggerall = AnimElem = 2, > 0
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210 && AnimElem = 3, > 0 && AnimElem = 7, < 0
trigger3 = StateNo = 10211 && AnimElem = 3, > 0 && AnimElem = 9, < 0
trigger4 = StateNo = 10220 && AnimElem = 4, > 0 && AnimElem = 6, < 0
trigger5 = StateNo = 10221 && AnimElem = 3, > 0 && AnimElem = 14, < 0
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240 && AnimElem = 6, < 0
trigger8 = StateNo = 10250 && AnimElem = 3, > 0 && AnimElem = 8, < 0
trigger9 = StateNo = 300 && AnimElem = 4, > 0 && AnimElem = 13, < 0
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410 && AnimElem = 3, > 0 && AnimElem = 10, < 0
trigger12 = StateNo = 10420 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger15 = StateNo = 10450 && AnimElem = 3, > 0 && AnimElem = 11, < 0
trigger16 = StateNo = 1000 && AnimElem = 5, > 0
trigger17 = StateNo = 1001 && AnimElem = 5, > 0
trigger18 = StateNo = 1002 && AnimElem = 4, > 0
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202 && AnimElem = 3, > 0
trigger23 = StateNo = 1400 && AnimElem = 7, < 0
trigger24 = StateNo = 1405 && AnimElem = 7, < 0
trigger25 = StateNo = 1407 && AnimElem = 7, < 0
trigger26 = StateNo = 1401 && AnimElem = 6, < 0
trigger27 = StateNo = 1406 && AnimElem = 6, < 0
trigger28 = StateNo = 1408 && AnimElem = 6, < 0
trigger29 = StateNo = 1410 && AnimElem = 3, > 0
trigger30 = StateNo = 1420 && AnimElem = 3, > 0
trigger31 = StateNo = 1430 && AnimElem = 3, > 0
trigger32 = StateNo = 103

;---------------------------------------------------------------------------
; c. Strong
[State -1]
type = ChangeState
value = 10410
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType != A
triggerall = command = "holddown"
triggerall = command = "y"
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10410
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "holddown"
triggerall = command = "y"
triggerall = AnimElem = 2, > 0
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210 && AnimElem = 3, > 0 && AnimElem = 7, < 0
trigger3 = StateNo = 10211 && AnimElem = 3, > 0 && AnimElem = 9, < 0
trigger4 = StateNo = 10220 && AnimElem = 4, > 0 && AnimElem = 6, < 0
trigger5 = StateNo = 10221 && AnimElem = 3, > 0 && AnimElem = 14, < 0
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240 && AnimElem = 6, < 0
trigger8 = StateNo = 10250 && AnimElem = 3, > 0 && AnimElem = 8, < 0
trigger9 = StateNo = 300 && AnimElem = 4, > 0 && AnimElem = 13, < 0
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410 && AnimElem = 3, > 0 && AnimElem = 10, < 0
trigger12 = StateNo = 10420 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger15 = StateNo = 10450 && AnimElem = 3, > 0 && AnimElem = 11, < 0
trigger16 = StateNo = 1000 && AnimElem = 5, > 0
trigger17 = StateNo = 1001 && AnimElem = 5, > 0
trigger18 = StateNo = 1002 && AnimElem = 4, > 0
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202 && AnimElem = 3, > 0
trigger23 = StateNo = 1400 && AnimElem = 7, < 0
trigger24 = StateNo = 1405 && AnimElem = 7, < 0
trigger25 = StateNo = 1407 && AnimElem = 7, < 0
trigger26 = StateNo = 1401 && AnimElem = 6, < 0
trigger27 = StateNo = 1406 && AnimElem = 6, < 0
trigger28 = StateNo = 1408 && AnimElem = 6, < 0
trigger29 = StateNo = 1410 && AnimElem = 3, > 0
trigger30 = StateNo = 1420 && AnimElem = 3, > 0
trigger31 = StateNo = 1430 && AnimElem = 3, > 0
trigger32 = StateNo = 103

;---------------------------------------------------------------------------
; c. Fierce
[State -1]
type = ChangeState
value = 10420
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType != A
triggerall = command = "holddown"
triggerall = command = "z"
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10420
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "holddown"
triggerall = command = "z"
triggerall = AnimElem = 2, > 0
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210 && AnimElem = 3, > 0 && AnimElem = 7, < 0
trigger3 = StateNo = 10211 && AnimElem = 3, > 0 && AnimElem = 9, < 0
trigger4 = StateNo = 10220 && AnimElem = 4, > 0 && AnimElem = 6, < 0
trigger5 = StateNo = 10221 && AnimElem = 3, > 0 && AnimElem = 14, < 0
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240 && AnimElem = 6, < 0
trigger8 = StateNo = 10250 && AnimElem = 3, > 0 && AnimElem = 8, < 0
trigger9 = StateNo = 300 && AnimElem = 4, > 0 && AnimElem = 13, < 0
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410 && AnimElem = 3, > 0 && AnimElem = 10, < 0
trigger12 = StateNo = 10420 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger15 = StateNo = 10450 && AnimElem = 3, > 0 && AnimElem = 11, < 0
trigger16 = StateNo = 1000 && AnimElem = 5, > 0
trigger17 = StateNo = 1001 && AnimElem = 5, > 0
trigger18 = StateNo = 1002 && AnimElem = 4, > 0
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202 && AnimElem = 3, > 0
trigger23 = StateNo = 1400 && AnimElem = 7, < 0
trigger24 = StateNo = 1405 && AnimElem = 7, < 0
trigger25 = StateNo = 1407 && AnimElem = 7, < 0
trigger26 = StateNo = 1401 && AnimElem = 6, < 0
trigger27 = StateNo = 1406 && AnimElem = 6, < 0
trigger28 = StateNo = 1408 && AnimElem = 6, < 0
trigger29 = StateNo = 1410 && AnimElem = 3, > 0
trigger30 = StateNo = 1420 && AnimElem = 3, > 0
trigger31 = StateNo = 1430 && AnimElem = 3, > 0
trigger32 = StateNo = 103

;---------------------------------------------------------------------------
; c. Short
[State -1]
type = ChangeState
value = 10430
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType != A
triggerall = command = "holddown"
triggerall = command = "a"
trigger1 = ctrl
trigger2 = StateNo = 101
trigger3 = StateNo = 10200
trigger3 = AnimElem = 5, >= 0
trigger4 = StateNo = 10230
trigger4 = AnimElem = 5, >= 0
trigger5 = StateNo = 10400
trigger5 = AnimElem = 4, >= 0

[State -1]
type = ChangeState
value = 10430
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "holddown"
triggerall = command = "a"
triggerall = AnimElem = 2, > 0
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210 && AnimElem = 3, > 0 && AnimElem = 7, < 0
trigger3 = StateNo = 10211 && AnimElem = 3, > 0 && AnimElem = 9, < 0
trigger4 = StateNo = 10220 && AnimElem = 4, > 0 && AnimElem = 6, < 0
trigger5 = StateNo = 10221 && AnimElem = 3, > 0 && AnimElem = 14, < 0
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240 && AnimElem = 6, < 0
trigger8 = StateNo = 10250 && AnimElem = 3, > 0 && AnimElem = 8, < 0
trigger9 = StateNo = 300 && AnimElem = 4, > 0 && AnimElem = 13, < 0
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410 && AnimElem = 3, > 0 && AnimElem = 10, < 0
trigger12 = StateNo = 10420 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger15 = StateNo = 10450 && AnimElem = 3, > 0 && AnimElem = 11, < 0
trigger16 = StateNo = 1000 && AnimElem = 5, > 0
trigger17 = StateNo = 1001 && AnimElem = 5, > 0
trigger18 = StateNo = 1002 && AnimElem = 4, > 0
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202 && AnimElem = 3, > 0
trigger23 = StateNo = 1400 && AnimElem = 7, < 0
trigger24 = StateNo = 1405 && AnimElem = 7, < 0
trigger25 = StateNo = 1407 && AnimElem = 7, < 0
trigger26 = StateNo = 1401 && AnimElem = 6, < 0
trigger27 = StateNo = 1406 && AnimElem = 6, < 0
trigger28 = StateNo = 1408 && AnimElem = 6, < 0
trigger29 = StateNo = 1410 && AnimElem = 3, > 0
trigger30 = StateNo = 1420 && AnimElem = 3, > 0
trigger31 = StateNo = 1430 && AnimElem = 3, > 0
trigger32 = StateNo = 103

;---------------------------------------------------------------------------
; c. Forward
[State -1]
type = ChangeState
value = 10440
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType != A
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10440
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "holddown"
triggerall = command = "b"
triggerall = AnimElem = 2, > 0
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210 && AnimElem = 3, > 0 && AnimElem = 7, < 0
trigger3 = StateNo = 10211 && AnimElem = 3, > 0 && AnimElem = 9, < 0
trigger4 = StateNo = 10220 && AnimElem = 4, > 0 && AnimElem = 6, < 0
trigger5 = StateNo = 10221 && AnimElem = 3, > 0 && AnimElem = 14, < 0
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240 && AnimElem = 6, < 0
trigger8 = StateNo = 10250 && AnimElem = 3, > 0 && AnimElem = 8, < 0
trigger9 = StateNo = 300 && AnimElem = 4, > 0 && AnimElem = 13, < 0
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410 && AnimElem = 3, > 0 && AnimElem = 10, < 0
trigger12 = StateNo = 10420 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger15 = StateNo = 10450 && AnimElem = 3, > 0 && AnimElem = 11, < 0
trigger16 = StateNo = 1000 && AnimElem = 5, > 0
trigger17 = StateNo = 1001 && AnimElem = 5, > 0
trigger18 = StateNo = 1002 && AnimElem = 4, > 0
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202 && AnimElem = 3, > 0
trigger23 = StateNo = 1400 && AnimElem = 7, < 0
trigger24 = StateNo = 1405 && AnimElem = 7, < 0
trigger25 = StateNo = 1407 && AnimElem = 7, < 0
trigger26 = StateNo = 1401 && AnimElem = 6, < 0
trigger27 = StateNo = 1406 && AnimElem = 6, < 0
trigger28 = StateNo = 1408 && AnimElem = 6, < 0
trigger29 = StateNo = 1410 && AnimElem = 3, > 0
trigger30 = StateNo = 1420 && AnimElem = 3, > 0
trigger31 = StateNo = 1430 && AnimElem = 3, > 0
trigger32 = StateNo = 103

;---------------------------------------------------------------------------
; c. Roundhouse
[State -1]
type = ChangeState
value = 10450
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType != A
triggerall = command = "holddown"
triggerall = command = "c"
trigger1 = ctrl
trigger2 = StateNo = 101

[State -1]
type = ChangeState
value = 10450
triggerall = var(7) = 0
triggerall = var(15) > 0
triggerall = StateType != A
triggerall = command = "holddown"
triggerall = command = "c"
triggerall = AnimElem = 2, > 0
trigger1 = StateNo = 10200
trigger2 = StateNo = 10210 && AnimElem = 3, > 0 && AnimElem = 7, < 0
trigger3 = StateNo = 10211 && AnimElem = 3, > 0 && AnimElem = 9, < 0
trigger4 = StateNo = 10220 && AnimElem = 4, > 0 && AnimElem = 6, < 0
trigger5 = StateNo = 10221 && AnimElem = 3, > 0 && AnimElem = 14, < 0
trigger6 = StateNo = 10230
trigger7 = StateNo = 10240 && AnimElem = 6, < 0
trigger8 = StateNo = 10250 && AnimElem = 3, > 0 && AnimElem = 8, < 0
trigger9 = StateNo = 300 && AnimElem = 4, > 0 && AnimElem = 13, < 0
trigger10 = StateNo = 10400
trigger11 = StateNo = 10410 && AnimElem = 3, > 0 && AnimElem = 10, < 0
trigger12 = StateNo = 10420 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger13 = StateNo = 10430
trigger14 = StateNo = 10440 && AnimElem = 4, > 0 && AnimElem = 9, < 0
trigger15 = StateNo = 10450 && AnimElem = 3, > 0 && AnimElem = 11, < 0
trigger16 = StateNo = 1000 && AnimElem = 5, > 0
trigger17 = StateNo = 1001 && AnimElem = 5, > 0
trigger18 = StateNo = 1002 && AnimElem = 4, > 0
trigger19 = StateNo = 1101
trigger20 = StateNo = 1111
trigger21 = StateNo = 1121
trigger22 = StateNo = 1202 && AnimElem = 3, > 0
trigger23 = StateNo = 1400 && AnimElem = 7, < 0
trigger24 = StateNo = 1405 && AnimElem = 7, < 0
trigger25 = StateNo = 1407 && AnimElem = 7, < 0
trigger26 = StateNo = 1401 && AnimElem = 6, < 0
trigger27 = StateNo = 1406 && AnimElem = 6, < 0
trigger28 = StateNo = 1408 && AnimElem = 6, < 0
trigger29 = StateNo = 1410 && AnimElem = 3, > 0
trigger30 = StateNo = 1420 && AnimElem = 3, > 0
trigger31 = StateNo = 1430 && AnimElem = 3, > 0
trigger32 = StateNo = 103

;--|[ Jumping ]|--

;---------------------------------------------------------------------------
; j. A
[State -1]
type = ChangeState
value = 600
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType = A
triggerall = command = "x"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. B
[State -1]
type = ChangeState
value = 620
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType = A
triggerall = command = "a"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. C
[State -1]
type = ChangeState
value = 610
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType = A
triggerall = command = "y"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. D
[State -1]
type = ChangeState
value = 630
triggerall = var(7) = 0
triggerall = var(59) < 2
triggerall = StateType = A
triggerall = command = "b"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. Jab
[State -1]
type = ChangeState
value = 10600
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType = A
triggerall = command = "x"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. Strong
[State -1]
type = ChangeState
value = 10610
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType = A
triggerall = command = "y"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. Fierce
[State -1]
type = ChangeState
value = 10620
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType = A
triggerall = command = "z"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. Short
[State -1]
type = ChangeState
value = 10630
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType = A
triggerall = command = "a"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. Forward
[State -1]
type = ChangeState
value = 10640
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType = A
triggerall = command = "b"
trigger1 = ctrl

;---------------------------------------------------------------------------
; j. Roundhouse
[State -1]
type = ChangeState
value = 10650
triggerall = var(7) = 0
triggerall = var(59) >= 2
triggerall = StateType = A
triggerall = command = "c"
trigger1 = ctrl

;Call Striker
[State -1]
type = ChangeState
value = 920
triggerall = !NumHelper(6000)
triggerall = var(56) > 0
triggerall = var(51) >= 60
triggerall = command = "s"
triggerall = RoundState = 2 || RoundState = 3
trigger1 = StateType != A
trigger1 = ctrl

;P. Jump
[State -1]
type = ChangeState
value = 41
triggerall = StateType != A
trigger1 = command = "DUF" || command = "DUB"
trigger1 = ctrl
trigger2 = command = "up" || command = "UB" || command = "UF"
trigger2 = StateNo = 101

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

;-|Defense|-------------------------------------------------------------------------------

;-|Stand Guard|-
[State -1]
type = ChangeState
value = 130
triggerall = var(7)
triggerall = ctrl
trigger1 = statetype != A
trigger1 = p2statetype != C
trigger1 = p2movetype = A

;-|Crouch Guard|-
[State -1]
type = ChangeState
value = 131
triggerall = var(7)
triggerall = ctrl
trigger1 = statetype != A
trigger1 = p2statetype = C
trigger1 = p2movetype = A

;-|Air Guard|-
[State -1]
type = ChangeState
value = 132
triggerall = var(7)
triggerall = ctrl
trigger1 = statetype = A
trigger1 = p2movetype = A
