; 1. Command definition

;-| Super Motions |-----------------------------------------------------

; Hiougi Soten Muei Kyaku
[Command]
name = "HiougiSotenMueiKyaku"
command = ~D, DB, B, DB, F, y
time = 20

[Command]
name = "HiougiSotenMueiKyaku"
command = ~D, DB, B, F, y
time = 20

[Command]
name = "HiougiSotenMueiKyaku"
command = ~D, DB, B, B, DB, D, DF, F, y
time = 20

; Ougi Enryu Tenshin
[Command]
name = "OugiEnryuTenshin"
command = ~D, DB, B, DB, F, x+y
time = 20

[Command]
name = "OugiEnryuTenshin"
command = ~D, DB, B, F, x+y
time = 20

[Command]
name = "OugiEnryuTenshin"
command = ~D, DB, B, B, DB, D, DF, F, x+y
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "EnryuHaibi1"
command = ~F, DF, D, DB, B, x
time = 20

[Command]
name = "EnryuHaibi2"
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "EnryuHaibiSeq"
command = ~B, DB, D, DF, F, y
time = 20

; Ryu Tsuisen
[Command]
name = "RyuTsuisen"
command = ~D, DB, B, a

; Muei Kyaku
[Command]
name = "MueiKyaku"
command = ~D, DF, F, a

;-| Hold Button |--------------------------------------------------------------

[Command]
name = "Ensenshou"
command = ~$D, U, y

[Command]
name = "EnsenshouSequence"
command = D, y

[Command]
name = "SpecialAttack"
command = /y+a

[Command]
name = "Ibuki"
command = /s

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery";Required (do not remove)
command = b
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

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
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

;---------------------------------------------------------------------------
; 2. State entry

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Hiougi Soten Muei Kyaku]
type = ChangeState
value = 3200
triggerall = command = "HiougiSotenMueiKyaku"
triggerall = command != "holddown"
triggerall = Power = 3000 && Life < 201
trigger1 = ctrl && statetype = S
trigger2 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220 || stateno = 235 || stateno = 250 || stateno = 330 || stateno = 353
trigger2 = MoveContact && !ctrl
trigger3 = stateno = 235 || stateno = 435
trigger3 = MoveContact && !ctrl
trigger4 = stateno = 631 && Time > 10 && !ctrl

;---------------------------------------------------------------------------
[State -1, Ougi Enryu Tenshin]
type = ChangeState
value = 3000
triggerall = command = "OugiEnryuTenshin"
triggerall = command != "holddown"
triggerall = Power = 3000 || Life < 201
trigger1 = ctrl && statetype = S
trigger2 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220 || stateno = 235 || stateno = 250 || stateno = 330 || stateno = 353 || stateno = 420 || stateno = 1000 || stateno = 1100
trigger2 = MoveContact && !ctrl
trigger3 = stateno = 235 || stateno = 435
trigger3 = MoveContact && !ctrl
trigger4 = stateno = 631 && Time > 10 && !ctrl

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Enryu Haibi 1]
type = ChangeState
value = 1000
triggerall = command = "EnryuHaibi1"
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220 || stateno = 225 || stateno = 235 || stateno = 250 || stateno = 330 || stateno = 353 || stateno = 420
trigger2 = MoveContact && !ctrl
trigger3 = stateno = 210 && Time > 7 && !ctrl && !MoveContact
trigger4 = stateno = 235 || stateno = 435
trigger4 = MoveContact && !ctrl
trigger5 = stateno = 631 && Time > 10 && !ctrl

;---------------------------------------------------------------------------
[State -1, Enryu Haibi 2]
type = ChangeState
value = 1100
triggerall = command = "EnryuHaibi2"
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220 || stateno = 225 || stateno = 235 || stateno = 250 || stateno = 330 || stateno = 353 || stateno = 420
trigger2 = MoveContact && !ctrl
trigger3 = stateno = 210 && Time > 7 && !ctrl && !MoveContact
trigger4 = MoveContact && !ctrl
trigger4 = stateno = 235 || stateno = 435
trigger5 = stateno = 631 && Time > 10 && !ctrl

;---------------------------------------------------------------------------
[State -1, Enryu Haibi Sequence]
type = ChangeState
value = 1200
triggerall = command = "EnryuHaibiSeq"
triggerall = command != "holddown"
triggerall = stateno = 1100 && MoveContact
trigger1 = !ctrl && statetype = S

;---------------------------------------------------------------------------
[State -1, Ryu Tsuisen & Ryu Shousen]
type = ChangeState
value = IfElse((StateType = A), 1400, 1300)
triggerall = command = "RyuTsuisen"
triggerall = command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220 || stateno = 225 || stateno = 235 || stateno = 250 || stateno = 330 || stateno = 353 || stateno = 410 || stateno = 420 || stateno = 610 || stateno = 620
trigger2 = MoveContact && !ctrl
trigger3 = stateno = 210 && Time > 7 && !ctrl && !MoveContact
trigger4 = MoveContact && !ctrl
trigger4 = stateno = 235 || stateno = 435
trigger5 = stateno = 631 && Time > 10 && !ctrl

;---------------------------------------------------------------------------
[State -1, Muei Kyaku]
type = ChangeState
value = 1500
triggerall = command = "MueiKyaku"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 610 || stateno = 635
trigger2 = MoveContact && !ctrl

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Special Attack]
type = ChangeState
value = 300
triggerall = command = "y" && command = "a"
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = MoveContact && !ctrl
trigger2 = stateno = 235 || stateno = 435
trigger3 = stateno = 631 && Time > 10 && !ctrl

;---------------------------------------------------------------------------
[State -1, Kasumi]
type = ChangeState
value = 320
triggerall = command = "x" && command = "y"
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = MoveContact && !ctrl
trigger2 = stateno = 235 || stateno = 435
trigger3 = stateno = 631 && Time > 10 && !ctrl

;---------------------------------------------------------------------------
[State -1, Hokage]
type = ChangeState
value = 330
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = stateno = 325
trigger1 = statetype = S && !ctrl

;---------------------------------------------------------------------------
[State -1, Homura]
type = ChangeState
value = 340
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = stateno = 325
trigger1 = statetype = S && !ctrl

;---------------------------------------------------------------------------
[State -1, Senpuu]
type = ChangeState
value = 350
triggerall = command = "a"
triggerall = stateno = 325
trigger1 = statetype = S && !ctrl

;---------------------------------------------------------------------------
[State -1, Senpuu 2]
type = ChangeState
value = 352
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = stateno = 351
trigger1 = statetype = C && !ctrl

;---------------------------------------------------------------------------
[State -1, Senpuu 3]
type = ChangeState
value = 354
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = stateno = 353
trigger1 = statetype = C && !ctrl

;---------------------------------------------------------------------------
[State -1, Senpuu Overhead Kick]
type = ChangeState
value = 356
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = statetype = C
triggerall = !ctrl
trigger1 = stateno = 351
trigger2 = stateno = 353

;---------------------------------------------------------------------------
[State -1, Hakkei]
type = ChangeState
value = 360
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = stateno = 325
trigger1 = statetype = S && !ctrl

;---------------------------------------------------------------------------
[State -1, Ensenshou]
type = ChangeState
value = 370
trigger1 = command = "y"
trigger1 = prevstateno = 12
trigger1 = ctrl || stateno = 40
trigger2 = command = "Ensenshou"
trigger2 = stateno = 353 || stateno = 410 || stateno = 420
trigger2 = MoveContact && !ctrl
trigger3 = command = "Ensenshou"
trigger3 = stateno = 1551 && Time > 6 && !ctrl
trigger4 = command = "Ensenshou"
trigger4 = stateno = 631 && Time > 10 && !ctrl

;---------------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "a" && command = "b"
triggerall = command != "holddown"
trigger1 = p2movetype != H
trigger1 = statetype = S && ctrl
trigger2 = MoveContact && !ctrl
trigger2 = stateno = 235 || stateno = 435
trigger3 = stateno = 631 && Time > 10 && !ctrl

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype = S && ctrl

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Ender 2]
type = ChangeState
value = 260
triggerall = command = "holdup" && command = "a"
triggerall = !ctrl && statetype = S
trigger1 = stateno = 225 && Time > 25 && MoveContact

;---------------------------------------------------------------------------
[State -1, Run Tacle]
type = ChangeState
value = 255
triggerall = command = "x" || command = "y" || command = "a"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = ctrl && statetype != A
trigger1 = Vel X > 2

;---------------------------------------------------------------------------
[State -1, Run Kick]
type = ChangeState
value = 250
triggerall = command = "x" || command = "y"
triggerall = stateno = 100
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
[State -1, Stand Light Punch Back]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = MoveContact && !ctrl
trigger2 = stateno = 235 || stateno = 435
trigger3 = stateno = 631 && Time > 10 && !ctrl

;---------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = MoveContact && !ctrl
trigger2 = stateno = 235 || stateno = 435
trigger3 = stateno = 631 && Time > 10 && !ctrl

;---------------------------------------------------------------------------
[State -1, Stand Double Kick]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = MoveContact && !ctrl
trigger2 = stateno = 235 || stateno = 435
trigger3 = stateno = 631 && Time > 10 && !ctrl

;---------------------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = MoveContact && !ctrl
trigger2 = stateno = 235 || stateno = 435
trigger3 = stateno = 631 && Time > 10 && !ctrl

;---------------------------------------------------------------------------
[State -1, Stand Strong Kick]
type = ChangeState
value = 225
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = MoveContact && !ctrl
trigger2 = stateno = 235 || stateno = 435
trigger3 = stateno = 631 && Time > 10 && !ctrl

;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = ctrl && statetype = S
trigger2 = MoveContact && !ctrl
trigger2 = stateno = 235 || stateno = 435
trigger3 = stateno = 631 && Time > 10 && !ctrl

;---------------------------------------------------------------------------
[State -1, Stand Repel Sequence]
type = ChangeState
value = 240
triggerall = P2StateType = S
triggerall = command = "b"
trigger1 = MoveContact && !ctrl
trigger1 = stateno = 235 || stateno = 435

;---------------------------------------------------------------------------
[State -1, Stand Repel]
type = ChangeState
value = 235
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = ctrl
trigger1 = P2MoveType = A
trigger1 = P2Dist X < 100
trigger1 = statetype = S

;---------------------------------------------------------------------------
[State -1, Stand Repel (try)]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = ctrl
trigger1 = P2MoveType != A
trigger1 = statetype = S
trigger2 = P2Dist X > 100
trigger2 = statetype = S

;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = MoveContact && !ctrl
trigger2 = stateno = 235 || stateno = 435
trigger3 = stateno = 631 && Time > 10 && !ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = MoveContact && !ctrl
trigger2 = stateno = 235 || stateno = 435
trigger3 = stateno = 631 && Time > 10 && !ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 425
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = MoveContact && !ctrl
trigger2 = stateno = 235 || stateno = 435
trigger3 = stateno = 631 && Time > 10 && !ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Light Kick]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = MoveContact && !ctrl
trigger2 = stateno = 235 || stateno = 435
trigger3 = stateno = 631 && Time > 10 && !ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Repel]
type = ChangeState
value = 435
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = C && ctrl
trigger1 = P2MoveType = A
trigger1 = P2Dist X < 100

;---------------------------------------------------------------------------
[State -1, Crouching Repel (try)]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = ctrl && statetype = C
trigger1 = P2MoveType != A
trigger2 = P2Dist X > 100

;---------------------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = MoveContact && !ctrl
trigger2 = stateno = 635

;---------------------------------------------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = MoveContact && !ctrl
trigger2 = stateno = 635

;---------------------------------------------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 620
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = MoveContact && !ctrl
trigger2 = stateno = 635

;---------------------------------------------------------------------------
[State -1, Jump Repel]
type = ChangeState
value = 635
triggerall = command = "b"
triggerall = statetype = A && ctrl
trigger1 = P2MoveType = A
trigger1 = P2Dist X < 100

;---------------------------------------------------------------------------
[State -1, Jump Repel (try)]
type = ChangeState
value = 630
triggerall = command = "b"
triggerall = statetype = A && ctrl
trigger1 = P2MoveType != A
trigger2 = P2Dist X > 100
