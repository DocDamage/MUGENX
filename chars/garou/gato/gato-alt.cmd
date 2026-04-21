; Gato's Alternate CMD file (for you Capcommie types)
; Written by Deuce, copyright 2000 Deuce
; Not for copying or redistribution.  Do not modify.

;-| Super Motions |--------------------------------------------------------

[Command]
name = "ZeroKibaS"
command = ~D, F, D, F, x
time = 25

[Command]
name = "TatsuKibaS"
command = ~D, F, D, F, a
time = 25

[Command]
name = "ZeroKibaP"
command = ~D, F, D, F, y
time = 25

[Command]
name = "TatsuKibaP"
command = ~D, F, D, F, b
time = 25

[Command]
name = "TenRyuuRetsuKiba"
command = ~F, D, DF, a+x
time = 25

;-| Special Motions |------------------------------------------------------
[Command]
name = "ShingaA"
command = ~D, DF, F, x
time = 25

[Command]
name = "ShingaC"
command = ~D, DF, F, y
time = 25

[Command]
name = "TsuikaKougekiA"
command = ~F, F, x
time = 15

[Command]
name = "TsuikaKougekiC"
command = ~F, F, y
time = 15

[Command]
name = "Counter"
command = ~45$D, U, y
time = 10

;[Command]
;name = "Counter"
;command = ~B, D, F, y
;time = 20

[Command]
name = "FuugaB"
command = ~D, DB, B, a
time = 25

[Command]
name = "FuugaD"
command = ~D, DB, B, b
time = 25

[Command]
name = "RaigaB"
command = ~F, D, DF, a
time = 25

[Command]
name = "RaigaD"
command = ~F, D, DF, b
time = 25

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 15

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

[Command]
name = "ab"
command = x+a
time = 1

[Command]
name = "TOP"
command = y+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,x
time = 20

[Command]
name = "fwd_b"
command = /F,a
time = 1

[Command]
name = "fwd_x"
command = /F,y
time = 1

[Command]
name = "fwd_y"
command = /F,b
time = 1

[Command]
name = "fwd_s"
command = /F,s
time = 1

[Command]
name = "back_s"
command = /B,s
time = 1

[Command]
name = "back_a"
command = /B,x
time = 1

[Command]
name = "back_b"
command = /B,a
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_a"
command = /$D,x
time = 1

[Command]
name = "down_b"
command = /$D,a
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /F, x+a
time = 1

[Command]
name = "back_ab"
command = /B, x+a
time = 1

[Command]
name = "down_ab"
command = /D, x+a
time = 5

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = x
time = 1

[Command]
name = "b"
command = a
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = y
time = 1

[Command]
name = "y"
command = b
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_x"
command = /y
time = 1

[Command]
name = "hold_y"
command = /b
time = 1

[Command]
name = "hold_ab"
command = /x+a
time = 1

[Command]
name = "hold_a"
command = /x
time = 1

[Command]
name = "hold_b"
command = /a
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "upback"
command = UB
time = 1

[Command]
name = "downback"
command = DB
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

;---------------------------------------------------------------------------
[Statedef -1]

;---------------------------------------------------------------------------
;Taunt A
[State -1]
type = ChangeState
value = 801
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "fwd_s"

;Taunt A
[State -1]
type = ChangeState
value = 802
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "back_s"

;Roll Forward
[State -1]
type = ChangeState
value = 2000
triggerall = stateno = 5110
triggerall = time <= 3
trigger1 = command = "a"
trigger2 = command = "b"

;Roll Backward
[State -1]
type = ChangeState
value = 2100
triggerall = stateno = 5110
triggerall = time <= 3
trigger1 = command = "x"
trigger2 = command = "y"

;T.O.P. Attack
[State -1]
type = ChangeState
value = 1300
triggerall = statetype != A
triggerall = ctrl = 1
triggerall = Var(3) = [1,3]
trigger1 = command = "TOP"
trigger2 = command = "z"

;AB Break
[State -1]
type = ChangeState
triggerall = command = "ab"
triggerall = movehit
trigger1 = stateno = 1100
trigger2 = stateno = 1150
value = 1105

;Air Turnaround
[State -1]
type = ChangeState
value = 1400
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "TOP"
trigger2 = command = "z"

;---------------------------------------------------------------------------
;Tatsu Kiba (S.Power)
[State -1]
type = ChangeState
value = 3920
triggerall = command = "TenRyuuRetsuKiba"
trigger1 = stateno = 3910
trigger1 = movecontact

[State -1]
type = ChangeState
value = 3910
triggerall = command = "TenRyuuRetsuKiba"
trigger1 = stateno = 3901
trigger1 = movecontact

[State -1]
type = ChangeState
value = 3900
triggerall = command = "TenRyuuRetsuKiba"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger7 = time = [0,5]
trigger8 = stateno = 270
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 230
trigger12 = time = [0,6]
trigger13 = stateno = 220
trigger13 = time = [0,12]

;---------------------------------------------------------------------------
;Zero Kiba (S.Power)
[State -1]
type = ChangeState
value = 3000
triggerall = command = "ZeroKibaS"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger7 = time = [0,5]
trigger8 = stateno = 270
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 230
trigger12 = time = [0,6]
trigger13 = stateno = 220
trigger13 = time = [0,12]

;Zero Kiba (P.Power)
[State -1]
type = ChangeState
value = 3500
triggerall = command = "ZeroKibaP"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger7 = time = [0,5]
trigger8 = stateno = 270
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 230
trigger12 = time = [0,6]
trigger13 = stateno = 220
trigger13 = time = [0,12]

;---------------------------------------------------------------------------
;Tatsu Kiba (S.Power)
[State -1]
type = ChangeState
value = 3100
triggerall = command = "TatsuKibaS"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger7 = time = [0,5]
trigger8 = stateno = 270
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 230
trigger12 = time = [0,6]
trigger13 = stateno = 220
trigger13 = time = [0,12]

;Tatsu Kiba (P.Power)
[State -1]
type = ChangeState
value = 3600
triggerall = command = "TatsuKibaP"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger7 = time = [0,5]
trigger8 = stateno = 270
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 230
trigger12 = time = [0,6]
trigger13 = stateno = 220
trigger13 = time = [0,12]

;---------------------------------------------------------------------------
;Hou-zan Sai Heki-Ga (counter)
[State -1]
type = ChangeState
value = 1500
triggerall = command = "Counter"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger7 = time = [0,5]
trigger8 = stateno = 270
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 230
trigger12 = time = [0,6]
trigger13 = stateno = 220
trigger13 = time = [0,12]

;---------------------------------------------------------------------------
;ShinGa (A version)
[State -1]
type = ChangeState
value = 1200
triggerall = command = "ShingaA"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger7 = time = [0,5]
trigger8 = stateno = 270
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 230
trigger12 = time = [0,6]
trigger13 = stateno = 220
trigger13 = time = [0,12]

;ShinGa Tsuika Kougeki (A version)
[State -1]
type = ChangeState
value = 1203
triggerall = command = "TsuikaKougekiA"
trigger1 = stateno = 1202
trigger1 = time >= 3

;ShinGa (C version)
[State -1]
type = ChangeState
value = 1250
triggerall = command = "ShingaC"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger7 = time = [0,5]
trigger8 = stateno = 270
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 230
trigger12 = time = [0,6]
trigger13 = stateno = 220
trigger13 = time = [0,12]

;ShinGa Tsuika Kougeki (C version)
[State -1]
type = ChangeState
value = 1253
triggerall = command = "TsuikaKougekiC"
trigger1 = stateno = 1252
trigger1 = time >= 3

;---------------------------------------------------------------------------
;B RaiGa (uppercut kick)
[State -1]
type = ChangeState
value = 1100
triggerall = command = "RaigaB"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger7 = time = [0,5]
trigger8 = stateno = 270
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 230
trigger12 = time = [0,6]
trigger13 = stateno = 220
trigger13 = time = [0,12]

;D RaiGa (uppercut kick)
[State -1]
type = ChangeState
value = 1150
triggerall = command = "RaigaD"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger7 = time = [0,5]
trigger8 = stateno = 270
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 230
trigger12 = time = [0,6]
trigger13 = stateno = 220
trigger13 = time = [0,12]

;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 800
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;FUUGA (B version)
[State -1]
type = ChangeState
value = 1000
triggerall = command = "FuugaB"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger7 = time = [0,5]
trigger8 = stateno = 270
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 230
trigger12 = time = [0,6]
trigger13 = stateno = 220
trigger13 = time = [0,12]

;FUUGA (D version)
[State -1]
type = ChangeState
value = 1050
triggerall = command = "FuugaD"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger7 = time = [0,5]
trigger8 = stateno = 270
trigger8 = movecontact
trigger9 = stateno = 400
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 230
trigger12 = time = [0,6]
trigger13 = stateno = 220
trigger13 = time = [0,12]

[State -1]
type = ChangeState
triggerall = command = "a"
triggerall = Var(9) = 0
trigger1 = stateno = 1001
trigger2 = stateno = 1051
value = 1010

[State -1]
type = ChangeState
triggerall = command = "b"
triggerall = Var(9) = 0
trigger1 = stateno = 1001
trigger2 = stateno = 1051
value = 1020

[State -1]
type = ChangeState
triggerall = command = "x"
triggerall = Var(9) = 0
trigger1 = stateno = 1001
trigger2 = stateno = 1051
value = 1030

[State -1]
type = VarSet
triggerall = command = "y"
triggerall = Var(9) = 0
trigger1 = stateno = 1001
trigger2 = stateno = 1051
v = 9
value = 1

;---------------------------------------------------------------------------
;FORWARD + A
[State -1]
type = ChangeState
value = 240
triggerall = command = "fwd_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;FORWARD + B
[State -1]
type = ChangeState
value = 250
triggerall = command = "fwd_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; DOWN + AB
[State -1]
type = ChangeState
value = 270
triggerall = command = "ab"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;A + B
[State -1]
type = ChangeState
value = 260
triggerall = command = "ab"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Dai Enshin (Punch Throw)
[State -1]
type = ChangeState
value = 1600
triggerall = command = "fwd_x"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = p2bodydist X < 20
trigger1 = stateno != 100
trigger1 = P2movetype != H

;---------------------------------------------------------------------------
;Danzetsu Tai (Kick Throw)
[State -1]
type = ChangeState
value = 1650
triggerall = command = "fwd_y"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = p2bodydist X < 20
trigger1 = stateno != 100
trigger1 = P2movetype != H

;---------------------------------------------------------------------------
;STANDING CLOSE A
[State -1]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 9
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;STANDING FAR A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;STANDING CLOSE B
[State -1]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 9
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;STANDING FAR B
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;STANDING CLOSE C
[State -1]
type = ChangeState
value = 225
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 18
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;STANDING FAR C
[State -1]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;STANDING CLOSE D
[State -1]
type = ChangeState
value = 235
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 9
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;STANDING FAR D
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;CROUCHING A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;CROUCHING B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;CROUCHING C
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;CROUCHING D
[State -1]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;JUMPING A
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;JUMPING B
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;JUMPING C
[State -1]
type = ChangeState
value = 620
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;JUMPING D
[State -1]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

