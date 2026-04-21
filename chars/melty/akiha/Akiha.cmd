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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
[Command]
name = "41236_z"
command = ~B, DB, D, DF, F, z
time = 18

;-| Special Motions |------------------------------------------------------
[Command]
name = "236_x"
command = ~D, DF, F, x
time = 20

[Command]
name = "236_y"
command = ~D, DF, F, y
time = 20

[Command]
name = "236_z"
command = ~D, DF, F, z
time = 20

[Command]
name = "214_x"
command = ~D, DB, B, x
time = 16

[Command]
name = "214_y"
command = ~D, DB, B, y
time = 16

[Command]
name = "214_z"
command = ~D, DB, B, z
time = 16

[Command]
name = "623_x"
command = ~F, D, DF, x
time = 16

[Command]
name = "623_y"
command = ~F, D, DF, y
time = 16

[Command]
name = "623_z"
command = ~F, D, DF, z
time = 16

[Command]
name = "22_x"
command = ~D, D, x
time = 10

[Command]
name = "22_y"
command = ~D, D, y
time = 10

[Command]
name = "22_z"
command = ~D, D, z
time = 10

[Command]
name = "236_a"
command = ~D, DF, F, a
time = 16

[Command]
name = "214_a"
command = ~D, DB, B, a
time = 16

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 15

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 15

[Command]
name = "UU"
command = U, U
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "x+a"
command = x+a
time = 1

[Command]
name = "x+y+z"
command = x+y+z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

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
name = "/y"
command = /y
time = 1

[Command]
name = "/a"
command = /a
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

[Command]
name = "4"
command = /B
time = 1

[Command]
name = "6"
command = /F
time = 1

[Command]
name = "1"
command = /DB
time = 1

[Command]
name = "2"
command = /D
time = 1

[Command]
name = "3"
command = /DF
time = 1

[Command]
name = "7"
command = /UB
time = 1

[Command]
name = "8"
command = /U
time = 1

[Command]
name = "9"
command = /UF
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------

[Statedef -1]
;---------------------------------------------------------------------------
; äJï˙
[State -1]
type = ChangeState
triggerall = Var(40) <= 1
triggerall = Power >= 1000
triggerall = command = "x+y+z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = 100 && Time >= 2) || (Var(23) = 1 && StateNo = 7610 && Time >= 50)
trigger3 = StateNo = 7501 || StateNo = 7502
trigger4 = Var(34) = 1
trigger4 = StateNo = 150 || StateNo = 152
value = 7800

;--------------------------------------------------------------------------
; ÉTÅ[ÉLÉbÉgÉXÉpÅ[ÉN
[State -1]
type = ChangeState
triggerall = Var(40) = 1
triggerall = command = "x+y+z"
triggerall = statetype != A
trigger1 = StateNo = [5000, 5100)
trigger2 = StateNo = [150, 153]
value = 8100

;---------------------------------------------------------------------------
;ãÛíÜìäÇ∞
[State -1]
type = ChangeState
triggerall = Var(28) < 3
triggerall = Command = "x+a"
triggerall = StateType = A
triggerall = Command = "holdfwd" || Command = "holdback"
triggerall = Command != "holddown"
triggerall = Command != "holdup"
triggerall = enemynear, StateType = A
triggerall = P2BodyDist X = [-5, 15]
triggerall = P2BodyDist Y = [-50, 30]
trigger1 = Ctrl
trigger2 = StateNo = [600, 699]
trigger2 = MoveHit = [1, 4]
trigger3 = StateNo = 600
trigger3 = AnimElemTime(4) >= 1
trigger4 = StateNo = 1221
trigger4 = MoveHit
trigger5 = StateNo = 7501
value = 810

;---------------------------------------------------------------------------
;ìäÇ∞
[State -1]
type = ChangeState
triggerall = Command = "x+a"
triggerall = StateType != A
triggerall = Command != "holddown"
triggerall = Command != "holdup"
triggerall = Command = "holdfwd" || Command = "holdback"
trigger1 = Ctrl
trigger2 = ((StateNo = [100, 101]) && Time >= 2) || StateNo = 7501
trigger3 = Var(34) = 1
trigger3 = StateNo = 150 || StateNo = 152
value = 800

;---------------------------------------------------------------------------
;ãÛíÜÉ_ÉbÉVÉÖ(ëO)
[State -1, Run Fwd]
type = ChangeState
value = 7100
triggerall = Var(15) = 0
triggerall = statetype = A
triggerall = Pos Y <= -33
trigger1 = command = "FF" || (Command = "6" && Command = "recovery")
trigger1 = ctrl
trigger2 = command = "FF" || (Command = "6" && Command = "recovery")
trigger2 = StateNo = [600, 699]
trigger2 = MoveContact = [1, 4]
trigger3 = Ctrl
trigger3 = Var(31) = 1
trigger4 = command = "FF" || (Command = "6" && Command = "recovery")
trigger4 = StateNo = 600
trigger4 = AnimElemTime(4) >= 1
trigger5 = command = "FF" || (Command = "6" && Command = "recovery")
trigger5 = StateNo = 1220
trigger5 = AnimElemTime(19) >= 1
trigger5 = MoveHit
trigger6 = command = "FF" || (Command = "6" && Command = "recovery")
trigger6 = StateNo = 1221
trigger6 = MoveHit
ignorehitpause = 1

;ãÛíÜÉ_ÉbÉVÉÖ(å„ÇÎ)
[State -1, Run Fwd]
type = ChangeState
value = 7110
triggerall = Var(15) = 0
triggerall = statetype = A
triggerall = Pos Y <= -33
trigger1 = command = "BB" || (Command = "4" && Command = "recovery")
trigger1 = ctrl
trigger2 = Ctrl
trigger2 = Var(31) = -1
trigger3 = command = "BB" || (Command = "4" && Command = "recovery")
trigger3 = StateNo = 1220
trigger3 = AnimElemTime(19) >= 1
trigger3 = MoveHit
trigger4 = command = "BB" || (Command = "4" && Command = "recovery")
trigger4 = StateNo = 1221
trigger4 = MoveHit
ignorehitpause = 1

;---------------------------------------------------------------------------
;É_ÉbÉVÉÖ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF" || (Command = "6" && Command = "recovery")
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(34) = 1
trigger2 = StateNo = 150 || StateNo = 152

;ÉoÉbÉNÉXÉeÉbÉv
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB" || (Command = "4" && Command = "recovery")
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = 100 && Time >= 2)
trigger3 = Var(34) = 1
trigger3 = StateNo = 150 || StateNo = 152

;---------------------------------------------------------------------------
;îÇØ
[State -1]
type = ChangeState
triggerall = Command = "recovery"
triggerall = Command = "holddown"
triggerall = Command != "holdfwd"
triggerall = Command != "holdback"
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 100
trigger3 = Var(34) = 1
trigger3 = StateNo = 150 || StateNo = 152
value = 8000

;---------------------------------------------------------------------------
;ê‘éÂÅEüBîØ
[State -1]
type = ChangeState
triggerall = Var(40) > 0
triggerall = command = "41236_z"
triggerall = NumHelper(2015) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = StateNo = 1000
trigger6 = AnimElemTime(8) > 0 && AnimElemTime(11) < 0
trigger7 = StateNo = 1010
trigger7 = AnimElemTime(7) > 0 && AnimElemTime(12) < 0
trigger8 = StateNo = 1210
trigger8 = AnimElemTime(6) > 0 && AnimElemTime(10) < 0
trigger9 = Var(34) = 1
trigger9 = StateNo = 150 || StateNo = 152
value = 2000

;---------------------------------------------------------------------------
;äqñÛÅEçgót(è¨)
[State -1]
type = ChangeState
triggerall = command = "623_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = Var(34) = 1
trigger6 = StateNo = 150 || StateNo = 152
value = 1200

;---------------------------------------------------------------------------
;äqñÛÅEçgót(íÜ)
[State -1]
type = ChangeState
triggerall = command = "623_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = Var(34) = 1
trigger6 = StateNo = 150 || StateNo = 152
value = 1210

;---------------------------------------------------------------------------
;äqñÛÅEçgót(EX)
[State -1]
type = ChangeState
triggerall = command = "623_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = StateNo = 1000
trigger6 = AnimElemTime(8) > 0 && AnimElemTime(11) < 0
trigger7 = StateNo = 1010
trigger7 = AnimElemTime(7) > 0 && AnimElemTime(12) < 0
trigger8 = StateNo = 1210
trigger8 = AnimElemTime(6) > 0 && AnimElemTime(10) < 0
trigger9 = Var(34) = 1
trigger9 = StateNo = 150 || StateNo = 152
value = ifelse(((Var(40) = 0 && Power >= 1000) || Var(40) > 0), 1220, 1210)

;---------------------------------------------------------------------------
;ãÛíÜÅ|íπÇóéÇ∆Ç∑(è¨)
[State -1]
type = ChangeState
triggerall = NumExplod(1030) = 0
triggerall = NumExplod(1040) = 0
triggerall = NumExplod(1050) = 0
triggerall = command = "236_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 699]
trigger2 = MoveContact = [1, 4]
trigger3 = StateNo = 600
trigger3 = AnimElemTime(4) >= 1
trigger4 = StateNo = 7501 || StateNo = 7502
value = 1030

;---------------------------------------------------------------------------
;ãÛíÜÅ|íπÇóéÇ∆Ç∑(íÜ)
[State -1]
type = ChangeState
triggerall = NumExplod(1030) = 0
triggerall = NumExplod(1040) = 0
triggerall = NumExplod(1050) = 0
triggerall = command = "236_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 699]
trigger2 = MoveContact = [1, 4]
trigger3 = StateNo = 600
trigger3 = AnimElemTime(4) >= 1
trigger4 = StateNo = 7501 || StateNo = 7502
value = 1040

;---------------------------------------------------------------------------
;ãÛíÜÅ|íπÇóéÇ∆Ç∑(EX)
[State -1]
type = ChangeState
triggerall = NumExplod(1030) = 0
triggerall = NumExplod(1040) = 0
triggerall = NumExplod(1050) = 0
triggerall = command = "236_z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 699]
trigger2 = MoveContact = [1, 4]
trigger3 = StateNo = 600
trigger3 = AnimElemTime(4) >= 1
trigger4 = StateNo = 7501 || StateNo = 7502
value = ifelse(((Var(40) = 0 && Power >= 1000) || Var(40) > 0), 1050, 1040)

;---------------------------------------------------------------------------
;íπÇóéÇ∆Ç∑(è¨)
[State -1]
type = ChangeState
triggerall = command = "236_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = Var(34) = 1
trigger6 = StateNo = 150 || StateNo = 152
value = 1000

;---------------------------------------------------------------------------
;íπÇóéÇ∆Ç∑(íÜ)
[State -1]
type = ChangeState
triggerall = command = "236_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = Var(34) = 1
trigger6 = StateNo = 150 || StateNo = 152
value = 1010

;---------------------------------------------------------------------------
;íπÇóéÇ∆Ç∑(EX)
[State -1]
type = ChangeState
triggerall = command = "236_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = StateNo = 1000
trigger6 = AnimElemTime(8) > 0 && AnimElemTime(11) < 0
trigger7 = StateNo = 1010
trigger7 = AnimElemTime(7) > 0 && AnimElemTime(12) < 0
trigger8 = StateNo = 1210
trigger8 = AnimElemTime(6) > 0 && AnimElemTime(10) < 0
trigger9 = Var(34) = 1
trigger9 = StateNo = 150 || StateNo = 152
value = ifelse(((Var(40) = 0 && Power >= 1000) || Var(40) > 0), 1020, 1010)

;---------------------------------------------------------------------------
;åéÇê˙Ç¬(è¨)
[State -1]
type = ChangeState
triggerall = command = "214_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = Var(34) = 1
trigger6 = StateNo = 150 || StateNo = 152
value = 1100

;---------------------------------------------------------------------------
;åéÇê˙Ç¬(íÜ)
[State -1]
type = ChangeState
triggerall = command = "214_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = Var(34) = 1
trigger6 = StateNo = 150 || StateNo = 152
value = 1110

;---------------------------------------------------------------------------
;åéÇê˙Ç¬(EX)
[State -1]
type = ChangeState
triggerall = command = "214_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = StateNo = 1000
trigger6 = AnimElemTime(8) > 0 && AnimElemTime(11) < 0
trigger7 = StateNo = 1010
trigger7 = AnimElemTime(7) > 0 && AnimElemTime(12) < 0
trigger8 = StateNo = 1210
trigger8 = AnimElemTime(6) > 0 && AnimElemTime(10) < 0
trigger9 = Var(34) = 1
trigger9 = StateNo = 150 || StateNo = 152
value = ifelse(((Var(40) = 0 && Power >= 1000) || Var(40) > 0), 1120, 1110)

;---------------------------------------------------------------------------
;èbÇè≈Ç™Ç∑(è¨)âäÇ»Çµ
[State -1]
type = ChangeState
triggerall = NumHelper(1300) = 0 && NumHelper(1301) = 0
triggerall = Command = "22_x"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = Var(34) = 1
trigger6 = StateNo = 150 || StateNo = 152
value = 1300

;èbÇè≈Ç™Ç∑(è¨)âäÇ†ÇË
[State -1]
type = ChangeState
triggerall = NumHelper(1300) = 1
triggerall = helper(1300), StateNo = 1099
triggerall = Command = "22_x"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = Var(34) = 1
trigger6 = StateNo = 150 || StateNo = 152
value = 1300

;èbÇè≈Ç™Ç∑(è¨)âäÇ†ÇË
[State -1]
type = ChangeState
triggerall = NumHelper(1301) = 1
triggerall = helper(1301), StateNo = 1099
triggerall = Command = "22_x"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = Var(34) = 1
trigger6 = StateNo = 150 || StateNo = 152
value = 1300

;---------------------------------------------------------------------------
;èbÇè≈Ç™Ç∑(íÜ)âäÇ»Çµ
[State -1]
type = ChangeState
triggerall = NumHelper(1300) = 0 && NumHelper(1301) = 0
triggerall = Command = "22_y"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = Var(34) = 1
trigger6 = StateNo = 150 || StateNo = 152
value = 1310

;èbÇè≈Ç™Ç∑(íÜ)âäÇ†ÇË
[State -1]
type = ChangeState
triggerall = NumHelper(1300) = 1
triggerall = helper(1300), StateNo = 1099
triggerall = Command = "22_y"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = Var(34) = 1
trigger6 = StateNo = 150 || StateNo = 152
value = 1310

;èbÇè≈Ç™Ç∑(íÜ)âäÇ†ÇË
[State -1]
type = ChangeState
triggerall = NumHelper(1301) = 1
triggerall = helper(1301), StateNo = 1099
triggerall = Command = "22_y"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = Var(34) = 1
trigger6 = StateNo = 150 || StateNo = 152
value = 1310

;---------------------------------------------------------------------------
;èbÇè≈Ç™Ç∑(EX)âäÇ»Çµ
[State -1]
type = ChangeState
triggerall = NumHelper(1300) = 0 && NumHelper(1301) = 0
triggerall = Command = "22_z"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = StateNo = 1000
trigger6 = AnimElemTime(8) > 0 && AnimElemTime(11) < 0
trigger7 = StateNo = 1010
trigger7 = AnimElemTime(7) > 0 && AnimElemTime(12) < 0
trigger8 = StateNo = 1210
trigger8 = AnimElemTime(6) > 0 && AnimElemTime(10) < 0
trigger9 = Var(34) = 1
trigger9 = StateNo = 150 || StateNo = 152
value = ifelse(((Var(40) = 0 && Power >= 1000) || Var(40) > 0), 1320, 1310)

;èbÇè≈Ç™Ç∑(EX)âäÇ†ÇË
[State -1]
type = ChangeState
triggerall = NumHelper(1300) = 1
triggerall = helper(1300), StateNo = 1099
triggerall = Command = "22_z"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = StateNo = 1000
trigger6 = AnimElemTime(8) > 0 && AnimElemTime(11) < 0
trigger7 = StateNo = 1010
trigger7 = AnimElemTime(7) > 0 && AnimElemTime(12) < 0
trigger8 = StateNo = 1210
trigger8 = AnimElemTime(6) > 0 && AnimElemTime(10) < 0
trigger9 = Var(34) = 1
trigger9 = StateNo = 150 || StateNo = 152
value = ifelse(((Var(40) = 0 && Power >= 1000) || Var(40) > 0), 1320, 1310)

;èbÇè≈Ç™Ç∑(EX)âäÇ†ÇË
[State -1]
type = ChangeState
triggerall = NumHelper(1301) = 1
triggerall = helper(1301), StateNo = 1099
triggerall = Command = "22_z"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = StateNo = 1000
trigger6 = AnimElemTime(8) > 0 && AnimElemTime(11) < 0
trigger7 = StateNo = 1010
trigger7 = AnimElemTime(7) > 0 && AnimElemTime(12) < 0
trigger8 = StateNo = 1210
trigger8 = AnimElemTime(6) > 0 && AnimElemTime(10) < 0
trigger9 = Var(34) = 1
trigger9 = StateNo = 150 || StateNo = 152
value = ifelse(((Var(40) = 0 && Power >= 1000) || Var(40) > 0), 1320, 1310)

;---------------------------------------------------------------------------
;ãÛíÜÅ|èbÇè≈Ç™Ç∑(è¨)âäÇ»Çµ
[State -1]
type = ChangeState
triggerall = NumHelper(1300) = 0 && NumHelper(1301) = 0
triggerall = Command = "22_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 699]
trigger2 = MoveContact = [1, 4]
trigger3 = StateNo = 600
trigger3 = AnimElemTime(4) >= 1
trigger4 = StateNo = 7501 || StateNo = 7502
value = 1330

;ãÛíÜÅ|èbÇè≈Ç™Ç∑(è¨)âäÇ†ÇË
[State -1]
type = ChangeState
triggerall = NumHelper(1300) = 1
triggerall = helper(1300), StateNo = 1099
triggerall = Command = "22_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 699]
trigger2 = MoveContact = [1, 4]
trigger3 = StateNo = 600
trigger3 = AnimElemTime(4) >= 1
trigger4 = StateNo = 7501 || StateNo = 7502
value = 1330

;ãÛíÜÅ|èbÇè≈Ç™Ç∑(è¨)âäÇ†ÇË
[State -1]
type = ChangeState
triggerall = NumHelper(1301) = 1
triggerall = helper(1301), StateNo = 1099
triggerall = Command = "22_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 699]
trigger2 = MoveContact = [1, 4]
trigger3 = StateNo = 600
trigger3 = AnimElemTime(4) >= 1
trigger4 = StateNo = 7501 || StateNo = 7502
value = 1330

;---------------------------------------------------------------------------
;ãÛíÜÅ|èbÇè≈Ç™Ç∑(íÜ)âäÇ»Çµ
[State -1]
type = ChangeState
triggerall = NumHelper(1300) = 0 && NumHelper(1301) = 0
triggerall = Command = "22_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 699]
trigger2 = MoveContact = [1, 4]
trigger3 = StateNo = 600
trigger3 = AnimElemTime(4) >= 1
trigger4 = StateNo = 7501 || StateNo = 7502
value = 1340

;ãÛíÜÅ|èbÇè≈Ç™Ç∑(íÜ)âäÇ†ÇË
[State -1]
type = ChangeState
triggerall = NumHelper(1300) = 1
triggerall = helper(1300), StateNo = 1099
triggerall = Command = "22_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 699]
trigger2 = MoveContact = [1, 4]
trigger3 = StateNo = 600
trigger3 = AnimElemTime(4) >= 1
trigger4 = StateNo = 7501 || StateNo = 7502
value = 1340

;ãÛíÜÅ|èbÇè≈Ç™Ç∑(íÜ)âäÇ†ÇË
[State -1]
type = ChangeState
triggerall = NumHelper(1301) = 1
triggerall = helper(1301), StateNo = 1099
triggerall = Command = "22_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 699]
trigger2 = MoveContact = [1, 4]
trigger3 = StateNo = 600
trigger3 = AnimElemTime(4) >= 1
trigger4 = StateNo = 7501 || StateNo = 7502
value = 1340

;---------------------------------------------------------------------------
;ãÛíÜÅ|èbÇè≈Ç™Ç∑(EX)âäÇ»Çµ
[State -1]
type = ChangeState
triggerall = NumHelper(1300) = 0 && NumHelper(1301) = 0
triggerall = Command = "22_z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 699]
trigger2 = MoveContact = [1, 4]
trigger3 = StateNo = 600
trigger3 = AnimElemTime(4) >= 1
trigger4 = StateNo = 7501 || StateNo = 7502
value = ifelse(((Var(40) = 0 && Power >= 1000) || Var(40) > 0), 1350, 1340)

;ãÛíÜÅ|èbÇè≈Ç™Ç∑(EX)âäÇ†ÇË
[State -1]
type = ChangeState
triggerall = NumHelper(1300) = 1
triggerall = helper(1300), StateNo = 1099
triggerall = Command = "22_z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 699]
trigger2 = MoveContact = [1, 4]
trigger3 = StateNo = 600
trigger3 = AnimElemTime(4) >= 1
trigger4 = StateNo = 7501 || StateNo = 7502
value = ifelse(((Var(40) = 0 && Power >= 1000) || Var(40) > 0), 1350, 1340)

;ãÛíÜÅ|èbÇè≈Ç™Ç∑(EX)âäÇ†ÇË
[State -1]
type = ChangeState
triggerall = NumHelper(1301) = 1
triggerall = helper(1301), StateNo = 1099
triggerall = Command = "22_z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [600, 699]
trigger2 = MoveContact = [1, 4]
trigger3 = StateNo = 600
trigger3 = AnimElemTime(4) >= 1
trigger4 = StateNo = 7501 || StateNo = 7502
value = ifelse(((Var(40) = 0 && Power >= 1000) || Var(40) > 0), 1350, 1340)

;---------------------------------------------------------------------------
;èbÇè≈Ç™Ç∑(îRÇ‚Ç∑)
[State -1]
type = ChangeState
triggerall = NumHelper(1300) = 1
triggerall = (helper(1300), StateNo = [1390, 1391])
triggerall = Command = "22_x" || Command = "22_y" || Command = "22_z"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = Var(34) = 1
trigger6 = StateNo = 150 || StateNo = 152
value = 1360

;èbÇè≈Ç™Ç∑(îRÇ‚Ç∑)
[State -1]
type = ChangeState
triggerall = NumHelper(1301) = 1
triggerall = helper(1301), StateNo = [1390, 1391]
triggerall = Command = "22_x" || Command = "22_y" || Command = "22_z"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
trigger6 = Var(34) = 1
trigger6 = StateNo = 150 || StateNo = 152
value = 1360

;===========================================================================

;---------------------------------------------------------------------------
; ÉVÅ[ÉãÉhÉoÉìÉJÅ[
[State -1]
type = ChangeState
triggerall = command = "214_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501 || StateNo = 7502
;trigger6 = StateNo = 150 || StateNo = 152
;trigger6 = Power >= 500 || Var(40) > 0
value = 7630

;---------------------------------------------------------------------------
; ÉVÅ[ÉãÉhÉJÉEÉìÉ^Å[(óß)
[State -1]
type = null;ChangeState
triggerall = command = "236_a"
triggerall = statetype = S
trigger1 = StateNo = 7501 || StateNo = 7502
value = 7600

; ÉVÅ[ÉãÉhÉJÉEÉìÉ^Å[(ã¸)
[State -1]
type = null;ChangeState
triggerall = command = "236_a"
triggerall = statetype = C
trigger1 = StateNo = 7501 || StateNo = 7502
value = 7610

; ÉVÅ[ÉãÉhÉJÉEÉìÉ^Å[(ãÛíÜ)
[State -1]
type = null;ChangeState
triggerall = command = "236_a"
triggerall = statetype = A
trigger1 = StateNo = 7501 || StateNo = 7502
value = 7620

;---------------------------------------------------------------------------
; ÉVÅ[ÉãÉhÅ|óß
[State -1]
type = ChangeState
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdup"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = 100 && Time >= 2) || (Var(23) = 1 && StateNo = 7610 && Time >= 50)
trigger3 = StateNo = 7501 || StateNo = 7502
trigger4 = StateNo = 5120
trigger4 = Time = 27
value = 7500

; ÉVÅ[ÉãÉhÅ|ã¸
[State -1]
type = ChangeState
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command != "holdup"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (StateNo = 100 && Time >= 2) || (Var(23) = 1 && StateNo = 7610 && Time >= 50)
trigger3 = StateNo = 7501 || StateNo = 7502
trigger4 = StateNo = 5120
trigger4 = Time = 27
value = 7510

; ÉVÅ[ÉãÉhÅ|ãÛíÜ
[State -1]
type = ChangeState
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 7501 || StateNo = 7502
trigger3 = StateNo = 1220
trigger3 = AnimElemTime(19) >= 1
trigger3 = MoveHit
trigger4 = StateNo = 1221
trigger4 = MoveHit
value = 7520

;---------------------------------------------------------------------------
; óßÅ|Å®ëÂ
[State -1]
type = ChangeState
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdup"
triggerall = statetype != A
triggerall = Var(5) = 0
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501
value = ifelse(P2Dist X >= 0, 300, 310)

; óßÅ|Å©ëÂ
[State -1]
type = ChangeState
triggerall = command = "z"
triggerall = command = "holdback"
triggerall = command != "holddown"
triggerall = command != "holdup"
triggerall = statetype != A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501
value = ifelse(P2Dist X >= 0, 310, 300)

; óßÅ|ëÂ
[State -1]
type = ChangeState
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = Var(4) = 0
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501
value = 220

; óßÅ|íÜ
[State -1]
type = ChangeState
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = Var(3) = 0
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501
value = 210

; óßÅ|è¨
[State -1]
type = ChangeState
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = AnimElemTime(5) >= 1
trigger3 = Var(2) = 0
trigger3 = StateNo = [200, 599]
trigger3 = MoveContact = [1, 4]
trigger4 = Var(2) = 1
trigger4 = StateNo = 200
trigger4 = MoveContact = [1, 4]
trigger5 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger6 = Var(2) = 0
trigger6 = StateNo = 400
trigger6 = AnimElemTime(5) >= 1
trigger7 = StateNo = 7501
value = 200

;---------------------------------------------------------------------------
; ã¸Å|ëÂ
[State -1]
type = ChangeState
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = Var(9) = 0
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501
value = 420

; ã¸Å|íÜ
[State -1]
type = ChangeState
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
triggerall = Var(8) = 0
trigger1 = ctrl
trigger2 = StateNo = [200, 599]
trigger2 = MoveContact = [1, 4]
trigger3 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger4 = StateNo = 200 || StateNo = 400
trigger4 = AnimElemTime(5) >= 1
trigger5 = StateNo = 7501
value = 410

; ã¸Å|è¨
[State -1]
type = ChangeState
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = AnimElemTime(5) >= 1
trigger3 = Var(7) = 0
trigger3 = StateNo = [200, 599]
trigger3 = MoveContact = [1, 4]
trigger4 = Var(7) = 1
trigger4 = StateNo = 400
trigger4 = MoveContact = [1, 4]
trigger5 = (StateNo = 100 && Time >= 2) || (StateNo = 7610 && Time >= 50)
trigger6 = Var(7) = 0
trigger6 = StateNo = 200
trigger6 = AnimElemTime(5) >= 1
trigger7 = StateNo = 7501
value = 400

;---------------------------------------------------------------------------
;ÉWÉÉÉìÉvÅ|Å´ëÂ
[State -1]
type = ChangeState
triggerall = Command = "holddown"
triggerall = Command != "holdback"
triggerall = Command != "holdfwd"
triggerall = Command = "z"
triggerall = StateType = A
triggerall = Var(13) = 0
trigger1 = Ctrl
trigger2 = StateNo = [600, 699]
trigger2 = MoveContact = [1, 4]
trigger3 = StateNo = 600
trigger3 = AnimElemTime(4) >= 1
trigger4 = StateNo = 1220
trigger4 = AnimElemTime(19) >= 1
trigger4 = MoveHit
trigger5 = StateNo = 1221
trigger5 = MoveHit
trigger6 = StateNo = 7501
value = 700

;---------------------------------------------------------------------------
;ÉWÉÉÉìÉvÅ|ëÂ
[State -1]
type = ChangeState
triggerall = Command = "z"
triggerall = StateType = A
triggerall = Var(12) = 0
trigger1 = Ctrl
trigger2 = StateNo = [600, 699]
trigger2 = MoveContact = [1, 4]
trigger3 = StateNo = 600
trigger3 = AnimElemTime(4) >= 1
trigger4 = StateNo = 1220
trigger4 = AnimElemTime(19) >= 1
trigger4 = MoveHit
trigger5 = StateNo = 1221
trigger5 = MoveHit
trigger6 = StateNo = 7501
value = 620

;ÉWÉÉÉìÉvÅ|íÜ
[State -1]
type = ChangeState
triggerall = Command = "y"
triggerall = StateType = A
triggerall = Var(11) = 0
trigger1 = Ctrl
trigger2 = StateNo = [600, 699]
trigger2 = MoveContact = [1, 4]
trigger3 = StateNo = 600
trigger3 = AnimElemTime(4) >= 1
trigger4 = StateNo = 1220
trigger4 = AnimElemTime(19) >= 1
trigger4 = MoveHit
trigger5 = StateNo = 1221
trigger5 = MoveHit
trigger6 = StateNo = 7501
value = 610

;ÉWÉÉÉìÉvÅ|è¨
[State -1]
type = ChangeState
triggerall = Command = "x"
triggerall = StateType = A
trigger1 = Ctrl
trigger2 = stateno = 600
trigger2 = MoveContact
trigger3 = Var(10) = 0
trigger3 = StateNo = [600, 699]
trigger3 = MoveContact = [1, 4]
trigger4 = StateNo = 600
trigger4 = AnimElemTime(4) >= 1
trigger5 = StateNo = 1220
trigger5 = AnimElemTime(19) >= 1
trigger5 = MoveHit
trigger6 = StateNo = 1221
trigger6 = MoveHit
trigger7 = StateNo = 7501
value = 600
