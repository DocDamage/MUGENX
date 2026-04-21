;==============================================================================================
;
; COMMANDS DEFINITION
;
;==============================================================================================

;-| AI Commands |------------------------------------------------------------------------------

[Command]
name = "AI01"
command = ~D, D, D, D, D, D, D
time = -1

[Command]
name = "AI02"
command = ~D, D, D, D, D, D, B
time = -1

[Command]
name = "AI03"
command = ~D, D, D, D, D, B, B
time = -1

[Command]
name = "AI04"
command = ~D, D, D, D, B, B, B
time = -1

[Command]
name = "AI05"
command = ~D, D, D, B, B, B, B
time = -1

[Command]
name = "AI06"
command = ~D, D, B, B, B, B, B
time = -1

[Command]
name = "AI07"
command = ~D, B, B, B, B, B, B
time = -1

[Command]
name = "AI08"
command = ~B, B, B, B, B, B, B
time = -1

[Command]
name = "AI09"
command = ~B, B, B, B, B, B, U
time = -1

[Command]
name = "AI10"
command = ~B, B, B, B, B, U, U
time = -1

[Command]
name = "AI11"
command = ~B, B, B, B, U, U, U
time = -1

[Command]
name = "AI12"
command = ~B, B, B, U, U, U, U
time = -1

[Command]
name = "AI13"
command = ~B, B, U, U, U, U, U
time = -1

[Command]
name = "AI14"
command = ~B, U, U, U, U, U, U
time = -1

[Command]
name = "AI15"
command = ~U, U, U, U, U, U, U
time = -1

[Command]
name = "AI16"
command = ~U, U, U, U, U, U, F
time = -1

[Command]
name = "AI17"
command = ~U, U, U, U, U, F, F
time = -1

[Command]
name = "AI18"
command = ~U, U, U, U, F, F, F
time = -1

[Command]
name = "AI19"
command = ~U, U, U, F, F, F, F
time = -1

[Command]
name = "AI20"
command = ~U, U, F, F, F, F, F
time = -1


;-| Super Motions |----------------------------------------------------------------------------

[Command]
name 	= "super_combo"
command = ~B, DB, D, DF, F, a+y
time 	= 40

[Command]
name 	= "tobi_ryu_a"
command = ~D, DB, B, DB, D, DF, F, a
time 	= 40

[Command]
name 	= "tobi_ryu_b"
command = ~D, DB, B, DB, D, DF, F, b
time 	= 40


;-| Special Motions |--------------------------------------------------------------------------

[Command]
name 	= "dp_x"
command = ~F, D, DF, F, x
time 	= 20

[Command]
name 	= "dp_y"
command = ~F, D, DF, F, y
time 	= 20

[Command]
name 	= "qcf_x"
command = ~D, DF, F, x
time 	= 15

[Command]
name 	= "qcf_y"
command = ~D, DF, F, y
time 	= 15

[Command]
name 	= "qcf_a"
command = ~D, DF, F, a
time 	= 15

[Command]
name 	= "qcf_b"
command = ~D, DF, F, b
time 	= 15

[Command]
name 	= "hcb_x"
command = ~F, DF, D, DB, B, x
time 	= 20

[Command]
name 	= "hcb_y"
command = ~F, DF, D, DB, B, y
time 	= 20

[Command]
name	= "du_a"
command = ~30$D, U, a
time = 20

[Command]
name	= "du_b"
command = ~30$D, U, b
time = 20


;-| Double Tap |-------------------------------------------------------------------------------

[Command]
name 	= "FF"     ; Required (do not remove)
command = F, F
time 	= 20

[Command]
name 	= "BB"     ; Required (do not remove)
command = B, B
time 	= 20

[Command]
name 	= "DU"
command = $D, $U
time 	= 5


;-| 2/3 Button Combination |-------------------------------------------------------------------

[Command]
name 	= "recovery";Required (do not remove)
command = x+a
time 	= 1

[Command]
name 	= "recovery";Required (do not remove)
command = z
time 	= 1

[Command]
name 	= "x+a"
command = x+a
time 	= 1

[Command]
name 	= "x+a"
command = z
time 	= 1

[Command]
name 	= "y+b"
command = y+b
time 	= 1

[Command]
name 	= "y+b"
command = c
time 	= 1

[Command]
name 	= "tag"
command = a+y
time 	= 1



;-| Single Button |----------------------------------------------------------------------------

[Command]
name 	= "x"
command = x
time 	= 1

[Command]
name 	= "y"
command = y
time 	= 1

[Command]
name 	= "z"
command = z
time 	= 1

[Command]
name 	= "a"
command = a
time 	= 1

[Command]
name 	= "b"
command = b
time 	= 1

[Command]
name 	= "c"
command = c
time 	= 1

[Command]
name 	= "s"
command = s
time 	= 1


;-| Hold Button |------------------------------------------------------------------------------

[Command]
name 	= "holdfwd";Required (do not remove)
command = /$F
time 	= 1

[Command]
name 	= "holdback";Required (do not remove)
command = /$B
time 	= 1

[Command]
name 	= "holdup" ;Required (do not remove)
command = /$U
time 	= 1

[Command]
name 	= "holddown";Required (do not remove)
command = /$D
time 	= 1



;==============================================================================================
;
; STATE ENTRY
;
;==============================================================================================

;=========
; AI Mode
;=========

; AI detect
;----------

[Statedef -1]
[state -1, AI set]
type	= VarSet
trigger1 = command = "AI01"
trigger2 = command = "AI02"
trigger3 = command = "AI03"
trigger4 = command = "AI04"
trigger5 = command = "AI05"
trigger6 = command = "AI06"
trigger7 = command = "AI07"
trigger8 = command = "AI08"
trigger9 = command = "AI09"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
v = 20
value = 1


; AI Standard Moves
;------------------

[State -1, AI walk]
type = ChangeState
value = 20
triggerall = var(20) = 1
triggerall = (P2MoveType != A) && (enemy, numproj = 0) && (P2BodyDist x > 70)
triggerall = (life > 400) && (StateNo != 20)
trigger1 = (StateType = S) && (ctrl) && (random = [0, 400))

[State -1, AI run fwd]
type = ChangeState
value = 100
triggerall = var(20) = 1
triggerall = (P2MoveType != A) && (enemy, numproj = 0) && (P2BodyDist x > 100)
triggerall = (life > 400) && (StateNo != 100)
trigger1 = (StateType = S) && (ctrl) && (random = [400, 600))

[State -1, AI hop back]
type = ChangeState
value = 105
triggerall = var(20) = 1
triggerall = (P2MoveType != A) && (enemy, numproj = 0) && (P2BodyDist x <= 70)
triggerall = (life <= 400) && (backedgebodydist > 100)
trigger1 = (StateType = S) && (ctrl) && (random = [0, 400))


; AI Defensive Moves
;-------------------

[State -1, AI dodge neutral]
type = ChangeState
value = 900
triggerall = var(20) = 1
triggerall = (P2BodyDist x = [0, 50]) && (P2MoveType = A) && (facing != enemy, facing)
trigger1 = (StateType = S) && (ctrl) && (random = [0, 50))

[State -1, AI dodge fwd]
type = ChangeState
value = 950
triggerall = var(20) = 1
triggerall = (P2BodyDist x = [0, 50]) && (P2MoveType = A) && (facing != enemy, facing)
trigger1 = (StateType = S) && (frontedgedist >= 100) && (ctrl) && (random = [50, 150))

[State -1, AI dodge back]
type = ChangeState
value = 960
triggerall = var(20) = 1
triggerall = (P2BodyDist x = [0, 50]) && (P2MoveType = A) && (facing != enemy, facing)
trigger1 = (StateType = S) && (backedgedist >= 100) && (ctrl) && (random = [150, 250))

[State -1, blocking1]
type = ChangeState
triggerall = var(20) = 1 && (P2Life > 0)
triggerall = (StateType != A) && (P2statetype != C)
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = ctrl
value = 130

[State -1, blocking2]
type = ChangeState
triggerall = var(20) = 1 && (P2Life > 0)
triggerall = (StateType != A) && (P2statetype = C)
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = ctrl
value = 131

[State -1, blocking3]
type = ChangeState
triggerall = var(20) = 1 && (P2Life > 0)
triggerall = (StateType != A) && (P2statetype != C)
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = stateno = 152
value = 150

[State -1, blocking4]
type = ChangeState
triggerall = var(20)= 1 && (P2Life > 0)
triggerall = (StateType != A) && (P2statetype = C)
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = stateno = 150
value = 152

[State -1, blocking5]
type = ChangeState
triggerall = var(20) = 1 && (P2Life > 0)
triggerall = (StateType = A) && (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = ctrl
value = 132

[State -1, AI counter]
type = ChangeState
value = 510
triggerall = var(20) = 1
triggerall = (RoundState = 2) && (P2BodyDist x = [0, 50]) && (P2BodyDist y = [0, 70])
triggerall = (power >= 1000) && (StateNo = 150 || StateNo = 152) && (backedgebodydist <= 20)
trigger1 = (life >= 400) && (random = [0,50))
trigger2 = (life < 400) && (random = [0,150))
ignorehitpause = 1


; AI Combo Starter
;-----------------

[State -1, AI combo starter]
type = ChangeState
value = 530
triggerall = var(20) = 1
triggerall = (P2BodyDist x = [0, 80]) && (P2BodyDist y = [0, 70]) && (P2Life > 0)
trigger1 = (StateType != A) && (ctrl) && (random = [400, 600])

[State -1, AI combo attacks]
type = ChangeState
value = 545
triggerall = (var(20) = 1)
triggerall = (time >= 16) && (random <= 900)
trigger1 = (StateNo = 540)

[State -1, AI combo attacks]
type = ChangeState
value = StateNo + 1
triggerall = (var(20) = 1) && (random <= 900)
trigger1 = (StateNo = [545,548]) && (MoveHit)

[State -1, AI combo attacks]
type = ChangeState
value = 555
triggerall = (var(20) = 1)
triggerall = (time >= 16) && (random <= 900)
trigger1 = (StateNo = 550)

[State -1, AI combo attacks]
type = ChangeState
value = StateNo + 1
triggerall = (var(20) = 1) && (random <= 900)
trigger1 = (StateNo = [555,558]) && (MoveHit) && (anim != 41)


; AI Supers
;----------

[State -1, AI tobi ryu 2]
type = ChangeState
value = 3002
triggerall = var(20) = 1 && power >= 2000
triggerall = (P2MoveType = H) && (P2StateType != L) && (P2BodyDist x = [30, 75]) && (P2Life > 0)
trigger1 = (StateType != A) && (ctrl) && (random = [0, 200])
trigger2 = (StateNo = 549) && (MoveContact) && (random = [0, 300])
trigger3 = (StateNo = 52) && (PrevStateNo = 559) && (random = [0, 300])

[State -1, AI tobi ryu 1]
type = ChangeState
value = 3001
triggerall = var(20) = 1 && power >= 1000
triggerall = (P2MoveType = H) && (P2StateType != L) && (P2BodyDist x = [30, 75]) && (P2Life > 0)
trigger1 = (StateType != A) && (ctrl) && (random = [0, 100])
trigger2 = (StateNo = 549) && (MoveContact) && (random = [0, 150])
trigger3 = (StateNo = 52) && (PrevStateNo = 559) && (random = [0, 150])

[State -1, AI super combo]
type = ChangeState
value = 3100
triggerall = var(20) = 1 && power >= 1000
triggerall = (P2BodyDist x > 100) && (enemy, numproj = 0) && (P2Life > 0) && (P2statetype != A) && (P2StateType != L)
trigger1 = (StateType != A) && (ctrl) && (random = [0, 50])


; AI Specials
;------------

[State -1, AI enretsu ken x1]
type = ChangeState
value = 1000
triggerall = var(20) = 1
triggerall = (P2BodyDist x = [0, 70]) && (P2Life > 0)
trigger1 = (StateType != A) && (ctrl) && (random = [0, 100])

[State -1, AI enretsu ken x2]
type = ChangeState
value = 1000
triggerall = var(20) = 1
triggerall = (P2BodyDist x = [0, 70]) && (P2Life > 0)
trigger1 = (StateType != A) && (ctrl) && (random = [0, 100])

[State -1, AI ryu en hou launcher]
type = ChangeState
value = 1200
triggerall = var(20) = 1
triggerall = (P2BodyDist x = [0, 70]) && (P2Life > 0)
trigger1 = (StateType != A) && (ctrl) && (random = [200, 300])

[State -1, AI ryu en hou kick 1]
type = ChangeState
value = 1210
triggerall = var(20) = 1
triggerall = (P2BodyDist x = [30, 75]) && (P2Life > 0)
trigger1 = (StateNo = 1200) && (time = [20,25]) && (random <= 900)

[State -1, AI ryu en hou kick 2]
type = ChangeState
value = 1220
triggerall = var(20) = 1
triggerall = (P2BodyDist x = [0, 50]) && (P2BodyDist y = [-60,-35]) && (P2Life > 0)
trigger1 = (StateNo = 1210) && (time > 16) && (random <= 900)

[State -1, AI ko ryu sho zan]
type = ChangeState
value = 1100
triggerall = var(20) = 1
triggerall = (P2Dist x >= 200) && (P2Life > 0)
triggerall = (StateType != A) && (ctrl)
trigger1 = ifelse(life > 400, (random = [0, 20]), (random = [0, 100]))
trigger2 = (enemy, numproj > 0) && (random = [0, 50))


; AI Throws
;----------

[State -1, AI ground throw]
type = ChangeState
value = 700
triggerall = var(20) = 1
triggerall = (P2bodydist x = [0, 20]) && (P2StateType != A) && (P2MoveType != H)
trigger1 = (StateType != A) && (ctrl) && (random = [0, 200])

[State -1, AI air throw]
type = ChangeState
value = 800
triggerall = var(20) = 1
triggerall = (P2bodydist x = [0, 20]) && (P2StateType = A) && (P2MoveType != H)
trigger1 = (StateType = A) && (ctrl) && (random = [0, 200])


; AI Standing Attacks
;--------------------

[State -1, AI overhead punch]
type = ChangeState
value = 500
triggerall = var(20) = 1
triggerall = (P2bodydist x = [0, 75]) && (P2StateType = C) && (P2Life > 0)
trigger1 = (StateType = S) && (ctrl) && (random = [0, 300])

[State -1, AI stand light punch]
type = ChangeState
value = 200
triggerall = var(20) = 1
triggerall = (P2bodydist x = [0, 65]) && (P2BodyDist y = [-70,0]) && (P2Life > 0)
trigger1 = (StateType = S) && (ctrl) && (random = [0, 200))

[State -1, AI stand fierce punch]
type = ChangeState
value = 220
triggerall = var(20) = 1
triggerall = (P2bodydist x = [0, 65]) && (P2BodyDist y = [-70,0]) && (P2Life > 0)
trigger1 = (StateType = S) && (ctrl) && (random = [200, 400))

[State -1, AI stand light kick]
type = ChangeState
value = 210
triggerall = var(20) = 1
triggerall = (P2bodydist x = [0, 65]) && (P2BodyDist y = [-60,0]) && (P2Life > 0)
trigger1 = (StateType = S) && (ctrl) && (random = [400, 600))

[State -1, AI stand fierce kick]
type = ChangeState
value = 230
triggerall = var(20) = 1
triggerall = (P2bodydist x = [0, 80]) && (P2BodyDist y = [-85,0]) && (P2Life > 0)
trigger1 = (StateType = S) && (ctrl) && (random = [600, 800])


; AI Crouching Attacks
;---------------------

[State -1, AI crouch light punch]
type = ChangeState
value = 300
triggerall = var(20) = 1
triggerall = (P2bodydist x = [0, 55]) && (P2BodyDist y = [-50,0]) && (P2Life > 0)
trigger1 = (StateType = C) && (ctrl) && (random = [0, 200))

[State -1, AI crouch fierce punch]
type = ChangeState
value = 320
triggerall = var(20) = 1
triggerall = (P2bodydist x = [0, 45]) && (P2BodyDist y = [-70,0]) && (P2Life > 0)
trigger1 = (StateType = C) && (ctrl) && (random = [200, 400))

[State -1, AI crouch light kick]
type = ChangeState
value = 310
triggerall = var(20) = 1
triggerall = (P2bodydist x = [0, 50]) && (P2BodyDist y = [-20,0]) && (P2Life > 0)
trigger1 = (StateType = C) && (ctrl) && (random = [400, 600))

[State -1, AI crouch fierce kick]
type = ChangeState
value = 330
triggerall = var(20) = 1
triggerall = (P2bodydist x = [0, 85]) && (P2BodyDist y = [-25,0]) && (P2Life > 0)
trigger1 = (StateType = C) && (ctrl) && (random = [600, 800))


; AI Aerial Attacks
;------------------

[State -1, AI air back kick]
type = ChangeState
value = 600
triggerall = var(20) = 1
triggerall = (P2bodydist x = [-65, 0]) && (P2Life > 0)
trigger1 = (StateType = A) && (ctrl) && (random = [0, 600))

[State -1, AI air light punch]
type = ChangeState
value = 400
triggerall = var(20) = 1
triggerall = (P2bodydist x = [0, 35]) && (P2BodyDist y = [-90,-50]) && (P2Life > 0)
trigger1 = (StateType = A) && (ctrl) && (random = [0, 200))

[State -1, AI air neutral fierce punch]
type = ChangeState
value = 420
triggerall = var(20) = 1
triggerall = (P2bodydist x = [0, 50]) && (P2BodyDist y = [-105,-65]) && (P2Life > 0)
trigger1 = (vel x = 0) && (StateType = A) && (ctrl) && (random = [200, 400))

[State -1, AI air diagonal fierce punch]
type = ChangeState
value = 420
triggerall = var(20) = 1
triggerall = (P2bodydist x = [0, 35]) && (P2BodyDist y = [-100,-55]) && (P2Life > 0)
trigger1 = (vel x != 0) && (StateType = A) && (ctrl) && (random = [200, 400))

[State -1, AI air light kick]
type = ChangeState
value = 410
triggerall = var(20) = 1
triggerall = (P2bodydist x = [0, 50]) && (P2BodyDist y = [-80,-20]) && (P2Life > 0)
trigger1 = (StateType = A) && (ctrl) && (random = [400, 600))

[State -1, AI air neutral fierce kick]
type = ChangeState
value = 430
triggerall = var(20) = 1
triggerall = (P2bodydist x = [0, 45]) && (P2BodyDist y = [-85,-15]) && (P2Life > 0)
trigger1 = (vel x = 0) && (StateType = A) && (ctrl) && (random = [600, 800))

[State -1, AI air neutral fierce kick]
type = ChangeState
value = 430
triggerall = var(20) = 1
triggerall = (P2bodydist x = [0, 70]) && (P2BodyDist y = [-90,-50]) && (P2Life > 0)
trigger1 = (vel x != 0) && (StateType = A) && (ctrl) && (random = [600, 800))


; AI Taunt
;---------

[State -1, AI taunt]
type = ChangeState
value = 195
triggerall = var(20) = 1
triggerall = (P2StateNo = [195,199])
trigger1 = (StateType != A) && (ctrl) && (random <= 300)


;=================
; Supers / Hypers
;=================

; Tobi Ryu - Level 2
;-------------------
[State -1, tobi ryu]
type = ChangeState
value = 3002
triggerall = var(20) = 0
triggerall = command = "tobi_ryu_b" && power >= 2000
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 549 && MoveContact
trigger3 = StateNo = 52 && PrevStateNo = 559

; Tobi Ryu - Level 1
;-------------------
[State -1, tobi ryu]
type = ChangeState
value = 3001
triggerall = var(20) = 0
triggerall = command = "tobi_ryu_a" && power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 549 && MoveContact
trigger3 = StateNo = 52 && PrevStateNo = 559

; Super Combo
;------------
[State -1, super combo]
type = ChangeState
value = 3100
triggerall = var(20) = 0
triggerall = command = "super_combo" && power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 549 && MoveContact
trigger3 = StateNo = 52 && PrevStateNo = 559


;==========
; Specials
;==========

; Ko Ryu Kyaku A
;---------------
[State -1, ko ryu kyaku]
type = ChangeState
value = 1300
triggerall = var(20) = 0
triggerall = command = "du_a"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 40
trigger3 = StateNo = 549 && MoveContact
trigger4 = StateNo = 52 && PrevStateNo = 559

; Ko Ryu Kyaku B
;---------------
[State -1, high ko ryu kyaku]
type = ChangeState
value = 1350
triggerall = var(20) = 0
triggerall = command = "du_b"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 40
trigger3 = StateNo = 549 && MoveContact
trigger4 = StateNo = 52 && PrevStateNo = 559

; Ryu En Hou (launcher)
;----------------------
[State -1, ryu en hou]
type = ChangeState
value = 1200
triggerall = var(20) = 0
triggerall = command = "dp_x" || command = "dp_y"
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 549 && MoveContact
trigger3 = StateNo = 52 && PrevStateNo = 559

; Ryu En Hou (1st kick)
;----------------------
[State -1, ryu en hou 1st kick]
type = ChangeState
value = 1210
triggerall = var(20) = 0
triggerall = command = "qcf_a" || command = "qcf_b"
trigger1 = stateno = 1200 && time > 12

; Ryu En Hou (2nd kick)
;----------------------
[State -1, ryu en hou 2nd kick]
type = ChangeState
value = 1220
triggerall = var(20) = 0
triggerall = command = "a" || command = "b"
trigger1 = stateno = 1210 && time > 16

; Ko Ryu Sho Zan
;---------------
[State -1, ko ryu sho zan]
type = ChangeState
value = 1100
triggerall = var(20) = 0
triggerall = command = "qcf_x" || command = "qcf_y"
triggerall = numproj = 0
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 549 && MoveContact
trigger3 = StateNo = 52 && PrevStateNo = 559

; Enretsu Ken
;------------
[State -1, enretsu ken]
type = ChangeState
value = 1000
triggerall = var(20) = 0
triggerall = command = "hcb_x"
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 549 && MoveContact
trigger3 = StateNo = 52 && PrevStateNo = 559

; Double Enretsu Ken
;-------------------
[State -1, double enretsu ken]
type = ChangeState
value = 1050
triggerall = var(20) = 0
triggerall = command = "hcb_y"
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 549 && MoveContact
trigger3 = StateNo = 52 && PrevStateNo = 559


;================
; Standard Moves
;================

; Run
;----
[State -1, run]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype != A && ctrl

; Hop Back
;---------
[State -1, hop back]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype != A && ctrl

; Roll Forward
;-------------
[State -1, roll fwd]
type = ChangeState
value = 950
triggerall = var(20) = 0
triggerall = command = "x+a" && command ="holdfwd"
trigger1 = statetype != A && ctrl

; Roll Back
;----------
[State -1, roll back]
type = ChangeState
value = 960
triggerall = var(20) = 0
triggerall = command = "x+a" && command ="holdback"
trigger1 = statetype != A && ctrl

; Dodge
;------
[State -1, dodge]
type = ChangeState
value = 900
triggerall = var(20) = 0
triggerall = command = "x+a"
trigger1 = statetype != A && ctrl

; Taunt
;------
[State -1]
type = ChangeState
value = 195
triggerall = var(20) = 0
trigger1 = command = "s"
trigger1 = StateType != A
trigger1 = ctrl



;========
; Throws
;========

; Ground Throw
;-------------
[State -1]
type = ChangeState
value = 700
triggerall = var(20) = 0
triggerall = command = "y" && (command ="holdfwd" || command ="holdback")
trigger1 = StateType = S && ctrl
trigger1 = P2bodydist x <= 20 && P2StateType != A && P2MoveType != H

; Air Throw
;----------
[State -1]
type = ChangeState
value = 800
triggerall = var(20) = 0
triggerall = command = "y" && (command ="holdfwd" || command ="holdback")
trigger1 = StateType = A && ctrl
trigger1 = P2bodydist x <= 20 && P2StateType = A && P2MoveType != H



;========
; Combos
;========

; Starter
;--------
[State -1, combo starter]
type = ChangeState
value = 530
triggerall = var(20) = 0
triggerall = command = "y+b"
trigger1 = StateType != A && ctrl

; 1st Hit
;--------
[State -1, 1st hit]
type = ChangeState
value = 545 + 10*(StateType = A)
triggerall = var(20) = 0
triggerall = command = "x"
trigger1 = StateNo = 540 && time >= 16
trigger2 = StateNo = 550 && time >= 16 && anim != 41

; 2nd Hit
;--------
[State -1, 2nd hit]
type = ChangeState
value = 546 + 10*(StateType = A)
triggerall = var(20) = 0
triggerall = command = "x"
trigger1 = StateNo = 545 && MoveContact
trigger2 = StateNo = 555  && anim != 41 && MoveContact

; 3rd Hit
;--------
[State -1, 3rd hit]
type = ChangeState
value = 547 + 10*(StateType = A)
triggerall = var(20) = 0
triggerall = command = "x"
trigger1 = StateNo = 546 && MoveContact
trigger2 = StateNo = 556  && anim != 41 && MoveContact

; 4th Hit
;--------
[State -1, 4th hit]
type = ChangeState
value = 548 + 10*(StateType = A)
triggerall = var(20) = 0
triggerall = command = "y"
trigger1 = StateNo = 547 && MoveContact
trigger2 = StateNo = 557  && anim != 41 && MoveContact

; 5th Hit
;--------
[State -1, 5th hit]
type = ChangeState
value = 549 + 10*(StateType = A)
triggerall = var(20) = 0
triggerall = command = "y"
trigger1 = StateNo = 548 && MoveContact
trigger2 = StateNo = 558  && anim != 41 && MoveContact



;===================
; Crouching Attacks
;===================

; Crouch Light Punch
;-------------------
[State -1, stand light punch]
type = ChangeState
value = 300
triggerall = var(20) = 0
triggerall = command = "x" && command = "holddown"
trigger1 = StateType != A && ctrl
trigger2 = StateNo = 300 && MoveContact

; Crouch Light Kick
;------------------
[State -1, stand light kick]
type = ChangeState
value = 310
triggerall = var(20) = 0
triggerall = command = "a" && command = "holddown"
trigger1 = StateType != A && ctrl

; Crouch Fierce Punch
;--------------------
[State -1, stand fierce punch]
type = ChangeState
value = 320
triggerall = var(20) = 0
triggerall = command = "y" && command = "holddown"
trigger1 = StateType != A && ctrl

; Crouch Fierce Kick
;-------------------
[State -1, stand fierce kick]
type = ChangeState
value = 330
triggerall = var(20) = 0
triggerall = command = "b" && command = "holddown"
trigger1 = StateType != A && ctrl



;==================
; Standing Attacks
;==================

; Counter Attack
;---------------
[State -1, counter]
type = ChangeState
value = 510
triggerall = var(20) = 0
triggerall = command = "y+b"
trigger1 = (power >= 1000) && (StateNo = 150 || StateNo = 152)
ignorehitpause = 1

; Overhead Punch
;---------------
[State -1, overhead punch]
type = ChangeState
value = 500
triggerall = var(20) = 0
triggerall = command = "x" && command = "holdfwd"
trigger1 = StateType != A && ctrl

; Stand Light Punch
;------------------
[State -1, stand light punch]
type = ChangeState
value = 200
triggerall = var(20) = 0
triggerall = command = "x"
trigger1 = StateType != A && ctrl
trigger2 = StateNo = 200 && MoveContact

; Stand Light Kick
;-----------------
[State -1, stand light kick]
type = ChangeState
value = 210
triggerall = var(20) = 0
triggerall = command = "a"
trigger1 = StateType != A && ctrl

; Stand Fierce Punch
;-------------------
[State -1, stand fierce punch]
type = ChangeState
value = 220
triggerall = var(20) = 0
triggerall = command = "y"
trigger1 = StateType != A && ctrl

; Stand Fierce Kick
;------------------
[State -1, stand fierce kick]
type = ChangeState
value = 230
triggerall = var(20) = 0
triggerall = command = "b"
trigger1 = StateType != A && ctrl



;================
; Aerial Attacks
;================

; Air Back Kick
;--------------
[State -1, air back kick]
type = ChangeState
value = 600
triggerall = var(20) = 0
triggerall = command = "a" && command = "holdback"
triggerall = command != "holdup" && command != "holddown"
trigger1 = StateType = A && ctrl

; Air Light Punch
;----------------
[State -1, air light punch]
type = ChangeState
value = 400
triggerall = var(20) = 0
triggerall = command = "x"
trigger1 = StateType = A && ctrl

; Air Light Kick
;---------------
[State -1, air light kick]
type = ChangeState
value = 410
triggerall = var(20) = 0
triggerall = command = "a"
trigger1 = StateType = A && ctrl

; Air Fierce Punch
;-----------------
[State -1, air fierce punch]
type = ChangeState
value = 420
triggerall = var(20) = 0
triggerall = command = "y"
trigger1 = StateType = A && ctrl

; Air Fierce Kick
;----------------
[State -1, air fierce kick]
type = ChangeState
value = 430
triggerall = var(20) = 0
triggerall = command = "b"
trigger1 = StateType = A && ctrl


