;==============================================================================================
;
; COMMANDS DEFINITION
;
;==============================================================================================

;-| Default Values |---------------------------------------------------------------------------
[Defaults]

command.time = 15
command.buffer.time = 1


;-| Single Button |----------------------------------------------------------------------------

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


;-| Hold Direction |---------------------------------------------------------------------------

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


;-| Direction |--------------------------------------------------------------------------------

[Command]
name = "F"
command = F
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
time = 1


;-| CPU |--------------------------------------------------------------------------------------

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "F2"
command = F
time = 1

[Command]
name = "B2"
command = B
time = 1

[Command]
name = "U2"
command = U
time = 1

[Command]
name = "D2"
command = D
time = 1

;-| Super Motions |----------------------------------------------------------------------------

[Command]
name 	= "irusuka_emushi_newa_shikite"
command = ~D, DB, B, a+b
time 	= 40

[Command]
name 	= "nubeki_kamui_shikite"
command = ~D, DF, F, a+b
time 	= 40

[Command]
name 	= "mu_no_kyouchi"
command = ~D, DB, B, a+b
time 	= 40

[Command]
name 	= "suicide"
command = ~B, F, D, s
time 	= 20



;-| Special Motions |--------------------------------------------------------------------------

[Command]
name 	= "dp_z"
command = ~F, D, DF, F, x+y
time 	= 20

[Command]
name 	= "dp_z"
command = ~F, D, DF, F, z
time 	= 20

[Command]
name 	= "dp_y"
command = ~F, D, DF, F, y
time 	= 20

[Command]
name 	= "dp_x"
command = ~F, D, DF, F, x
time 	= 20

[Command]
name 	= "qcf_z"
command = ~D, DF, F, x+y
time 	= 15

[Command]
name 	= "qcf_z"
command = ~D, DF, F, z
time 	= 15

[Command]
name 	= "qcf_y"
command = ~D, DF, F, y
time 	= 15

[Command]
name 	= "qcf_x"
command = ~D, DF, F, x
time 	= 15

[Command]
name 	= "rdp_z"
command = ~B, D, DB, B, x+y
time 	= 20

[Command]
name 	= "rdp_z"
command = ~B, D, DB, B, z
time 	= 20

[Command]
name 	= "rdp_y"
command = ~B, D, DB, B, y
time 	= 20

[Command]
name 	= "rdp_x"
command = ~B, D, DB, B, x
time 	= 20

[Command]
name 	= "qcb_a"
command = ~D, DB, B, a
time 	= 15

[Command]
name 	= "qcb_z"
command = ~D, DB, B, x+y
time 	= 15

[Command]
name 	= "qcb_z"
command = ~D, DB, B, z
time 	= 15

[Command]
name 	= "qcb_y"
command = ~D, DB, B, y
time 	= 15

[Command]
name 	= "qcb_x"
command = ~D, DB, B, x
time 	= 15

[Command]
name 	= "qcbf_a"
command = ~D, DB, B, F, a
time 	= 20


;-| Double Tap |-------------------------------------------------------------------------------

[Command]
name 	= "FF"     ; Required (do not remove)
command = F, F
time 	= 20

[Command]
name 	= "BB"     ; Required (do not remove)
command = B, B
time 	= 20


;-| 2/3 Button Combination |-------------------------------------------------------------------

[Command]
name 	= "recovery";Required (do not remove)
command = b
time 	= 1

[Command]
name 	= "z"
command = x+y
time 	= 1

[Command]
name 	= "c"
command = y+a
time 	= 1


;-| Hold Button |------------------------------------------------------------------------------

[Command]
name = "hold_b"
command = /b
time = 1



;==============================================================================================
;
; STATE ENTRY
;
;==============================================================================================

[StateDef -1]

;----------------------------------------------------------------------------------------------
; AI Mode
;----------------------------------------------------------------------------------------------

; AI Initialisation
;------------------

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742


; AI Recover
;-----------

[State -1, AI roll forward recover]
type = ChangeState
value = 72
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
trigger1 = (StateNo = 5110) && (time > 8) && (random = [0, 200))

[State -1, AI roll back recover]
type = ChangeState
value = 76
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
trigger1 = (StateNo = 5110) && (time > 8) && (random = [200, 400))


; AI Supers
;----------

[State -1, AI nubeki kamui shikite]
type = ChangeState
value = 3201 + 257*var(0)
triggerall = (var(59) = 1) && (var(20) = 1) && (RoundState = 2)
triggerall = helper(8000), ParentDist x = [-50, 50]
triggerall = (P2StateType != A) && (P2MoveType != A) && (P2BodyDist x >= 100)
trigger1 = (StateType = S) && (ctrl) && (random = [900, 1000))

[State -1, AI rage explosion mode]
type = ChangeState
value = 3000
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (var(22) = 0) && (var(25) = 0)
triggerall = (StateType != A) && (ctrl)
trigger1 = (life <= 200) && (enemy, life >= 500) && (random = [0, 400))

[State -1, AI irusuka emushi newa shikite]
type = ChangeState
value = 3300
triggerall = (var(59) = 1) && (var(20) = 1) && (var(22) = 1)
triggerall = (RoundState = 2) && (P2life <= 200) && (P2BodyDist x <= 100)
triggerall = (P2StateType != A) && (P2MoveType != A)
trigger1 = (StateType != A) && (ctrl) && (random = [0, 500))

[State -1, AI mu no kyouchi]
type = ChangeState
value = 3500
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (var(22) = 0) && (var(25) = 0)
triggerall = (StateType != A) && (ctrl)
trigger1 = (life <= 200) && (enemy, life >= 500) && (random = [400, 800))

[State -1, AI super slash]
type = ChangeState
value = 3600
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (var(26) > 0) && (P2StateType != A) && (P2MoveType != A)
trigger1 = (StateType != A) && (ctrl) && (random = [900, 1000))


; AI Attacks with Shikuruu
;-------------------------

[State -1, AI imeru shikite]
type = ChangeState
value = 8320
triggerall = (var(59) = 1) && (var(0) = 20) && (RoundState = 2)
triggerall = (pos y <= -100) && (P2BodyDist x = [100, 200])
trigger1 = (StateType = A) && (ctrl) && (random = [0,400))

[State -1, AI kanto shikite]
type = ChangeState
value = 8310
triggerall = (var(59) = 1) && (var(0) = 20) && (RoundState = 2)
triggerall = (P2BodyDist x = [100, 200]) && (P2StateType = A) && (enemy, numproj = 0)
trigger1 = (StateType = S) && (ctrl) && (random = [0,400))

[State -1, AI myu shikite]
type = ChangeState
value = 8300
triggerall = (var(59) = 1) && (var(0) = 20) && (RoundState = 2)
triggerall = (P2BodyDist x = [100, 200]) && (P2StateType != A) && (enemy, numproj = 0)
trigger1 = (StateType = S) && (ctrl) && (random = [0,400))

[State -1, AI separate attack]
type = ChangeState
value = 8360 + (StateType = A)*5
ignorehitpause
triggerall = (var(59) = 1) && (var(0) = 20) && (RoundState = 2)
triggerall = (MoveHit) && (random = [0, 100))
trigger1 = stateno = [8300, 8304]				; Myu   Shikite
trigger2 = vel y <= 0 && stateno = [8310, 8314]			; Kanto Shikite
trigger3 = stateno = [8320, 8321]				; Imeru Shikite

[State -1, AI Shikuruu air horyzontal slash]
type = ChangeState
value = 8250
triggerall = (var(59) = 1) && (var(0) = 20) && (RoundState = 2)
triggerall = (P2bodydist x = [0,60]) && (P2bodydist y = [-105,-60])
triggerall = (P2StateType = A) && (P2MoveType != H)
trigger1 = (StateType = A) && (ctrl) && (random = [0, 350))

[State -1, AI Shikuruu air vertical slash]
type = ChangeState
value = 8260
triggerall = (var(59) = 1) && (var(0) = 20) && (RoundState = 2)
triggerall = (P2bodydist x = [0,65]) && (P2bodydist y = [-35,-25])
triggerall = (P2StateType = A) && (P2MoveType != H)
trigger1 = (StateType = A) && (ctrl) && (random = [350, 600))

[State -1, AI Shikuruu crouch horyzontal slash]
type = ChangeState
value = 8230
triggerall = (var(59) = 1) && (var(0) = 20) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = [0, 55])
trigger1 = (StateType = C) && (ctrl) && (random = [0,350))

[State -1, AI Shikuruu crouch vertical slash]
type = ChangeState
value = 8240
triggerall = (var(59) = 1) && (var(0) = 20) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = [0, 55])
trigger1 = (StateType = C) && (ctrl) && (random = [350,600))

[State -1, AI Shikuruu running slash]
type = ChangeState
value = 8220
triggerall = (var(59) = 1) && (var(0) = 20) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = (0, 70])
trigger1 = (StateNo = 100) && (random = [0,600))

[State -1, AI Shikuruu stand horyzontal slash]
type = ChangeState
value = 8200
triggerall = (var(59) = 1) && (var(0) = 20) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = [0, 70])
trigger1 = (StateType = S) && (ctrl) && (random = [0, 350))

[State -1, AI Shikuruu stand vertical slash]
type = ChangeState
value = 8210
triggerall = (var(59) = 1) && (var(0) = 20) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = [0, 70])
trigger1 = (StateType = S) && (ctrl) && (random = [350, 600))

[State -1, AI off Shikuruu]
type = ChangeState
value = 95
triggerall = (var(59) = 1) && (var(0) = 20)
triggerall = StateNo != 95
trigger1 = roundstate != 2 && ctrl


; AI Throws
;----------

[State -1, AI pushing guard crush]
type = ChangeState
value = 800
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2BodyDist x = [0,25]) && (P2StateType != A) && (P2MoveType != H)
trigger1 = (StateType = S) && (ctrl) && (random = [0, 200))

[State -1, AI guard crush forward attack]
type = ChangeState
value = 820
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
trigger1 = (StateNo = 801) && (time > 25) && (random = [0, 600))

[State -1, AI pulling guard crush]
type = ChangeState
value = 810
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2BodyDist x = [0,25]) && (P2StateType != A) && (P2MoveType != H)
trigger1 = (StateType = S) && (ctrl) && (random = [200, 400))

[State -1, AI guard crush back attack]
type = ChangeState
value = 830
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
trigger1 = (StateNo = 811) && (time > 44) && (random = [0, 600))

[State -1, AI air throw]
type = ChangeState
value = 840
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2bodydist x = [0,10]) && (P2StateType = A) && (P2MoveType != H)
trigger1 = (StateType = A) && (ctrl) && (random = [0, 400))


; AI Special Attacks
;-------------------

[State -1, AI reflect]
type = null;ChangeState
value = 1200
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2BodyDist x = [0,60]) && (P2MoveType = A)
trigger1 = (StateType != A) && (ctrl) && (random = [0, 200))

[State -1, AI one cape twirl]
type = null;ChangeState
value = 1000
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (StateType != A) && (ctrl)
trigger1 = (P2BodyDist x = [0, 60]) && (random = [200, 300))
trigger2 = (P2BodyDist x > 100) && (enemy, numproj > 0) && (random = [0, 100))

[State -1, AI two cape twirls]
type = null;ChangeState
value = 1010
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (StateType != A) && (ctrl)
trigger1 = (P2BodyDist x = [0, 60]) && (random = [300, 350))
trigger2 = (P2BodyDist x > 100) && (enemy, numproj > 0) && (random = [100, 200))

[State -1, AI three cape twirls]
type = null;ChangeState
value = 1020
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (StateType != A) && (ctrl)
trigger1 = (P2BodyDist x = [0, 60]) && (random = [350, 400))
trigger2 = (P2BodyDist x > 100) && (enemy, numproj > 0) && (random = [200, 300))

[State -1, AI additional cape twirl]
type = null;ChangeState
value = 1050
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
trigger1 = (StateNo = 1000) && (animelem = 8,  > 0) && (animelem = 12, < 0) && (random = [0, 600))
trigger2 = (StateNo = 1011) && (animelem = 20, > 0) && (animelem = 24, < 0) && (random = [0, 600))
trigger3 = (StateNo = 1022) && (animelem = 32, > 0) && (animelem = 36, < 0) && (random = [0, 600))

[State -1, AI wolf pounce]
type = ChangeState
value = 90
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = helper(8000), ParentDist x = [-100, 100]	; Nako & Shikuruu are close
triggerall = helper(8000), BackEdgeBodyDist >= -20	; Shikuruu is inside the screen
triggerall = helper(8000), FrontEdgeBodyDist >= 0	; Shikuruu is inside the screen
triggerall = (P2BodyDist x >= 150) && (P2StateType != A) && (enemy, numproj = 0)
trigger1 = (StateType = S) && (ctrl) && (random = [0,800))

[State -1, AI epunkine shikite]
type = ChangeState
value = 1100
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (helper(8000), ParentDist x = [-50, 50])
triggerall = (facing = helper(8000), facing)
triggerall = (P2BodyDist x >= 150)
trigger1 = (StateType != A) && (ctrl) && (random = [0,200))


; AI Air Attacks
;---------------

[State -1, AI air light slash]
type = ChangeState
value = 600
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2bodydist x = [0,60]) && (P2bodydist y = [-70,-30])
trigger1 = (StateType = A) && (ctrl) && (random = [0, 150))

[State -1, AI air medium slash]
type = ChangeState
value = 610
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2bodydist x = [0,70]) && (P2bodydist y = [-90,-50])
trigger1 = (StateType = A) && (ctrl) && (random = [150, 300))

[State -1, AI air fierce slash]
type = ChangeState
value = 620
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2bodydist x = [0,45]) && (P2bodydist y = [-135,-25])
trigger1 = (StateType = A) && (ctrl) && (random = [300, 500))

[State -1, AI air kick]
type = ChangeState
value = 700
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2bodydist x = [0,45]) && (P2bodydist y = [-50,0])
trigger1 = (StateType = A) && (ctrl) && (random = [500, 700))

[State -1, AI air knock down kick]
type = ChangeState
value = 720
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
trigger1 = (StateType = A) && (ctrl) && (random = [700, 800))


; AI Crouching Attacks
;---------------------

[State -1, AI crouch light slash]
type = ChangeState
value = 400
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = [0, 30])
trigger1 = (StateType = C) && (ctrl) && (random = [0,150))

[State -1, AI crouch medium slash]
type = ChangeState
value = 410
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = [0, 50])
trigger1 = (StateType = C) && (ctrl) && (random = [150,300))

[State -1, crouch fierce slash]
type = ChangeState
value = 420
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = [0, 70])
trigger1 = (StateType = C) && (ctrl) && (random = [300,450))

[State -1, AI crouch kick]
type = ChangeState
value = 500
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = [0, 40])
trigger1 = (StateType = C) && (ctrl) && (random = [450,650))

[State -1, AI crouch knock down kick]
type = ChangeState
value = 520
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = [0, 70])
trigger1 = (StateType = C) && (ctrl) && (random = [650,850))


; AI Standing Attacks
;--------------------

[State -1, AI short light slash]
type = ChangeState
value = 205
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = [0, 30])
trigger1 = (StateType = S) && (ctrl) && (random = [300, 500))

[State -1, AI short medium slash]
type = ChangeState
value = 215
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = [0, 30])
trigger1 = (StateType = S) && (ctrl) && (random = [500, 600))

[State -1, AI short fierce slash]
type = ChangeState
value = 225
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = [0, 30])
trigger1 = (StateType = S) && (ctrl) && (random = [600, 750))

[State -1, AI knock down kick]
type = ChangeState
value = 310
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = [0, 30])
trigger1 = (StateType = S) && (ctrl) && (random = [750, 850))

[State -1, AI overhead slash]
type = ChangeState
value = 230
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2StateType = C) && (P2MoveType != A) && (P2BodyDist x = [0, 45])
trigger1 = (StateType = A) && (ctrl) && (random = [0, 250))

[State -1, AI stand light slash]
type = ChangeState
value = 200
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = (30, 70])
trigger1 = (StateType = S) && (ctrl) && (random = [0, 200))

[State -1, AI stand medium slash]
type = ChangeState
value = 210
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = (30, 48])
trigger1 = (StateType = S) && (ctrl) && (random = [200, 300))

[State -1, AI stand fierce slash]
type = ChangeState
value = 220
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = (30, 70])
trigger1 = (StateType = S) && (ctrl) && (random = [300, 450))

[State -1, AI stand kick]
type = ChangeState
value = 300
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = [0, 50])
trigger1 = (StateType = S) && (ctrl) && (random = [450, 600))


; AI running attacks
;-------------------

[State -1, AI running light slash]
type = ChangeState
value = 250
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = (0, 70])
trigger1 = (StateNo = 100) && (random = [0,200))

[State -1, AI running medium slash]
type = ChangeState
value = 260
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = (0, 70])
trigger1 = (StateNo = 100) && (random = [200,500))

[State -1, AI running fierce slash]
type = ChangeState
value = 270
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = (0, 70])
trigger1 = (StateNo = 100) && (random = [500,700))

[State -1, AI running kick]
type = ChangeState
value = 350
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2MoveType != A) && (P2BodyDist x = (0, 70])
trigger1 = (StateNo = 100) && (random = [700,800))


; AI Taunt
;---------

[State -1, AI taunt]
type = ChangeState
value = 195
triggerall = (var(59) = 1) && (var(0) = 0) && (RoundState = 2)
triggerall = (P2StateNo = 195) && (P2BodyDist x >= 200)
trigger1 = (StateType = S) && (ctrl) && (random = [0, 250))



;----------------------------------------------------------------------------------------------
; Attacking with Shikuruu
;----------------------------------------------------------------------------------------------

;=================
; Supers / Hypers
;=================

; Irusuka Emushi Newa Shikite
;----------------------------
[State -1, irusuka emushi newa shikite]
type = ChangeState
value = 3300
triggerall = command = "irusuka_emushi_newa_shikite"
triggerall = var(59) <= 0 && var(20) = 1 && var(22) = 1
triggerall = RoundState = 2 && P2life <= 200
trigger1 = StateType = S && ctrl

; Nubeki Kamui Shikite
;---------------------
[State -1, nubeki kamui shikite]
type = ChangeState
value = 3201 + 257*var(0)
triggerall = command = "nubeki_kamui_shikite"
triggerall = helper(8000), ParentDist x = [-50, 50]	; Nako & Shikuruu are close
triggerall = RoundState = 2 && var(59) <= 0 && var(20) = 1
trigger1 = StateType = S && ctrl


;=================
; Special Attacks
;=================

; Separate Attack
;----------------
[State -1, separate attack]
type = ChangeState
value = 8360 + (StateType = A)*5
ignorehitpause
triggerall = var(59) <= 0 && var(0) = 20
triggerall = command = "holdfwd"  || command = "holdback"
triggerall = command = "a"
trigger1 = stateno = [8300, 8304]				; Myu   Shikite
trigger2 = vel y <= 0 && stateno = [8310, 8314]		; Kanto Shikite
trigger3 = stateno = [8320, 8321]				; Imeru Shikite

; Imeru Shikite
;--------------
[State -1, imeru shikite]
type = ChangeState
value = 8320
triggerall = var(59) <= 0 && var(0) = 20
triggerall = command = "qcf_z"  || command = "qcf_y" || command = "qcf_x"
triggerall = RoundState = 2
trigger1 = StateType = A && ctrl

; Kanto Shikite
;--------------
[State -1, kanto shikite]
type = ChangeState
value = 8310
triggerall = var(59) <= 0 && var(0) = 20
triggerall = command = "dp_z"  || command = "dp_y" || command = "dp_x"
triggerall = RoundState = 2
trigger1 = StateType = S && ctrl

; Myu Shikite
;------------
[State -1, myu shikite]
type = ChangeState
value = 8300
triggerall = var(59) <= 0 && var(0) = 20
triggerall = command = "qcf_z"  || command = "qcf_y" || command = "qcf_x"
triggerall = RoundState = 2
trigger1 = StateType = S && ctrl


;===============
; Martial Moves
;===============

; Crouch Vertical Slash
;----------------------
[State -1, Shikuruu crouch vertical slash]
type = ChangeState
value = 8240
triggerall = var(59) <= 0 && var(0) = 20
triggerall = command = "holddown"
triggerall = command = "z"
trigger1 = StateType = C && ctrl

; Crouch Horyzontal Slash
;------------------------
[State -1, Shikuruu crouch horyzontal slash]
type = ChangeState
value = 8230
triggerall = var(59) <= 0 && var(0) = 20
triggerall = command = "holddown"
triggerall = (command = "x" || command = "y")
trigger1 = StateType = C && ctrl

; Overhead Slash
;----------------
[State -1, Shikuruu overhead slash]
type = ChangeState
value = 8215
triggerall = var(59) <= 0 && var(0) = 20
triggerall = command = "y" && command = "a"
trigger1 = StateType = S && ctrl

; Running Slash
;--------------
[State -1, Shikuruu running slash]
type = ChangeState
value = 8220
triggerall = var(59) <= 0 && var(0) = 20
triggerall = stateno = 100			; Running
trigger1 = command = "z"  || command = "y" || command = "x"

; Stand Vertical Slash
;---------------------
[State -1, Shikuruu stand vertical slash]
type = ChangeState
value = 8210
triggerall = var(59) <= 0 && var(0) = 20
trigger1 = command = "z"
trigger1 = StateType = S && ctrl

; Stand Horyzontal Slash
;-----------------------
[State -1, Shikuruu stand horyzontal slash]
type = ChangeState
value = 8200
triggerall = var(59) <= 0 && var(0) = 20
triggerall = command = "x" || command = "y"
trigger1 = StateType = S && ctrl

; Air Vertical Slash
;-------------------
[State -1, Shikuruu air vertical slash]
type = ChangeState
value = 8260
triggerall = var(59) <= 0 && var(0) = 20
trigger1 = command = "z"
trigger1 = StateType = A && ctrl

; Air Horyzontal Slash
;---------------------
[State -1, Shikuruu air horyzontal slash]
type = ChangeState
value = 8250
triggerall = var(59) <= 0 && var(0) = 20
triggerall = command = "x" || command = "y"
trigger1 = StateType = A && ctrl

; Leave Shikuruu
;---------------
[State -1, off Shikuruu]
type = ChangeState
value = 95
triggerall = var(59) <= 0 && var(0) = 20
triggerall = StateNo != 95 && ctrl
trigger1 = command = "a"
trigger2 = roundstate != 2



;----------------------------------------------------------------------------------------------
; Attacking alone
;----------------------------------------------------------------------------------------------

;=================
; Supers / Hypers
;=================

; Mu no Kyouchi
;--------------
[State -1, mu no kyouchi]
type = ChangeState
value = 3500
triggerall = var(59) <= 0 && var(0) = 0
triggerall = var(22) = 0 && var(25) = 0; && life <= 150
triggerall = command = "mu_no_kyouchi"
trigger1 = StateType = S && ctrl

; Rage Explosion Mode
;--------------------
[State -1, rage explosion mode]
type = ChangeState
value = 3000
triggerall = var(59) <= 0 && var(0) = 0
triggerall = var(22) = 0 && var(25) = 0
triggerall = command = "a" && command = "b"
trigger1 = StateType = S && ctrl

; Super Slash
;------------
[State -1, super slash]
type = ChangeState
value = 3600
triggerall = var(59) <= 0 && var(0) = 0
triggerall = var(26) > 0
triggerall = command = "a" && command = "b"
trigger1 = StateType = S && ctrl


;==========
; Specials
;==========

; Kamui Risse x3
;---------------
[State -1, three cape twirls]
type = ChangeState
value = 1020
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "rdp_z"
trigger1 = StateType != A && ctrl

; Kamui Risse x2
;---------------
[State -1, two cape twirls]
type = ChangeState
value = 1010
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "rdp_y"
trigger1 = StateType != A && ctrl

; Kamui Risse x1
;---------------
[State -1, one cape twirl]
type = ChangeState
value = 1000
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "rdp_x"
trigger1 = StateType != A && ctrl

; Additional Cape Twirl
;----------------------
[State -1, additional cape twirl]
type = ChangeState
value = 1050
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "z" || command = "y" || command = "x"
trigger1 = StateNo = 1000
trigger1 = animelem = 8, >0 && animelem = 12, <0
trigger2 = StateNo = 1011
trigger2 = animelem = 20, >0 && animelem = 24, <0
trigger3 = StateNo = 1022
trigger3 = animelem = 32, >0 && animelem = 36, <0

; Reflect
;--------
[State -1, reflect]
type = ChangeState
value = 1200
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "qcbf_a"
trigger1 = StateType != A && ctrl

; Epunkine Shikite
;-----------------
[State -1, epunkine shikite]
type = ChangeState
value = 1100
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "qcb_z" || command = "qcb_y" || command = "qcb_x"
triggerall = helper(8000), ParentDist x = [-50, 50]	; Nako & Shikuruu are close
triggerall = facing = helper(8000), facing		; Nako & Shikuruu face the same direction
triggerall = RoundState = 2
trigger1 = StateType != A && ctrl

; Wolf Pounce
;------------
[State -1, Shikuruu]
type = ChangeState
value = 90
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "qcb_a"
triggerall = helper(8000), ParentDist x = [-100, 100]	; Nako & Shikuruu are close
triggerall = RoundState = 2
;triggerall = helper(8000), BackEdgeBodyDist >= -20	; Shikuruu is inside the screen
;triggerall = helper(8000), FrontEdgeBodyDist >= 0	; Shikuruu is inside the screen
trigger1 = StateType != A && ctrl



;================
; Standard Moves
;================

; Running Jump
;-------------
[State -1, running jump]
type = ChangeState
value = 40
triggerall = command = "holdup"
trigger1 = stateno = 100

; Triangle Jump
;--------------
[State -1, triangle jump]
type = ChangeState
value = 45
triggerall = var(0) = 0 && pos y < 0
trigger1 = BackEdgeBodyDist = 0 && ctrl			; if the edge of the screen is behind the player
trigger1 = command = "holdup" && command = "holdfwd"
trigger2 = FrontEdgeBodyDist = 0 && ctrl		; if the edge of the creen is in front of the player
trigger2 = command = "holdup" && command = "holdback"

; Run
;----
[State -1, run]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype = S &&  ctrl
trigger2 = var(0) = 20 && stateno = 8200 && Movecontact
trigger3 = var(0) = 20 && stateno = 8210 && Movecontact
trigger4 = var(0) = 20 && stateno = 8220 && Movecontact
trigger5 = var(0) = 20 && stateno = 8230 && Movecontact
trigger6 = var(0) = 20 && stateno = 8240 && Movecontact

; Hop Back
;---------
[State -1, hop back]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S && ctrl
trigger2 = var(0) = 20 && stateno = 8200 && Movecontact
trigger3 = var(0) = 20 && stateno = 8210 && Movecontact
trigger4 = var(0) = 20 && stateno = 8220 && Movecontact
trigger5 = var(0) = 20 && stateno = 8230 && Movecontact
trigger6 = var(0) = 20 && stateno = 8240 && Movecontact

; Hop Forward
;------------
[State -1, hop forward]
type = ChangeState
value = 62
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "b" && command = "holdfwd"
trigger1 = StateType = S && ctrl

; Lower Evade
;------------
[State -1, lower evade]
type = ChangeState
value = 64
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "b" && command = "holdback"
trigger1 = StateType = S && ctrl

; Roll Forward
;-------------
[State -1, roll forward]
type = ChangeState
value = 66
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "b" && command = "holdfwd"
trigger1 = StateType = C && ctrl

; Roll Back
;----------
[State -1, roll back]
type = ChangeState
value = 68
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "b" && command = "holdback"
trigger1 = StateType = C && ctrl

; Lay Down
;---------
[State -1, lay down]
type = ChangeState
value = 60
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "b"
trigger1 = StateType = C && ctrl

; Meditate
;---------
[State -1, meditate]
type = ChangeState
value = 70
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "b"
trigger1 = StateType = S && ctrl
trigger1 = var(20) = 0  && var(22) = 0  && var(25) = 0

; Suicide
;--------
[State -1, suicide]
type = ChangeState
value = 110
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "suicide"
trigger1 = StateType != A && ctrl

; Taunt
;------
[State -1, taunt]
type = ChangeState
value = 195
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "start"
trigger1 = StateType = S && ctrl


;==================
; Lying Down Moves
;==================

; Roll Forward Recovery
;----------------------
[State -1, roll forward recovery]
type = ChangeState
value = 72
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "holdfwd"
trigger1 = Life > 0 && StateNo = 5110 && time > 8

; Roll Back Recovery
;-------------------
[State -1, roll back recovery]
type = ChangeState
value = 76
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "holdback"
trigger1 = Life > 0 && StateNo = 5110 && time > 8

; Quick Stand up
;---------------
[State -1, quick stand up]
type = ChangeState
value = 5120
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "holdup"
trigger1 = Life > 0 && StateNo = 5110 && time > 10



;========
; Throws
;========

; Guard Crush Forward
;--------------------
[State -1, guard crush forward]
type = ChangeState
value = 800
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "c" && command ="holdfwd"
triggerall = P2bodydist x <= 25 && P2StateType != A && P2MoveType != H
trigger1 = StateType = S && ctrl
trigger2 = StateNo = 100

; Guard Crush Forward Attack
;---------------------------
[State -1, guard crush forward attack]
type = ChangeState
value = 820
triggerall = var(0) = 0
triggerall = (command = "x") || (command = "y") || (command = "z")
trigger1 = StateNo = 801 && time > 25

; Guard Crush Back
;-----------------
[State -1, guard crush back]
type = ChangeState
value = 810
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "c" && command ="holdback"
triggerall = P2bodydist x <= 25 && P2StateType != A && P2MoveType != H
trigger1 = StateType = S && ctrl
trigger2 = StateNo = 100

; Guard Crush Back Attack
;------------------------
[State -1, guard crush back attack]
type = ChangeState
value = 830
triggerall = var(0) = 0
triggerall = (command = "x") || (command = "y") || (command = "z")
trigger1 = StateNo = 811 && time > 44

; Air Throw
;----------
[State -1, air throw]
type = ChangeState
value = 840
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "a" && command ="holdfwd"
trigger1 = StateType = A && ctrl
trigger1 = P2bodydist x <= 10 && P2StateType = A && P2MoveType != H	; ennemy must be close and in the air



;=================
; Running Attacks
;=================

; Running Kick
;-------------
[State -1, running kick]
type = ChangeState
value = 350
triggerall = var(59) <= 0 && var(0) = 0
triggerall = (command = "a")
trigger1 = StateNo = 100

; Running Fierce Slash
;---------------------
[State -1, running fierce slash]
type = ChangeState
value = 270
triggerall = var(59) <= 0 && var(0) = 0
trigger1 = command = "z"
trigger1 = StateNo = 100

; Running Light Slash
;--------------------
[State -1, running light slash]
type = ChangeState
value = 250
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "x"
trigger1 = StateNo = 100

; Running Medium Slash
;---------------------
[State -1, running medium slash]
type = ChangeState
value = 260
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "y"
trigger1 = StateNo = 100



;=================
; Pursuit Attacks
;=================

; Pursuit Slash
;--------------
[State -1, pursuit slash]
type = ChangeState
value = 240
triggerall = var(59) <= 0 && var(0) = 0
triggerall = P2StateType = L && (P2BodyDist x = [0, 20])
triggerall = command = "holdfwd" && command = "holddown"
triggerall = command = "x" && command = "a"
trigger1 = StateType != A && ctrl

; Pursuit Kick
;-------------
[State -1, pursuit kick]
type = ChangeState
value = 340
triggerall = var(59) <= 0 && var(0) = 0
triggerall = P2StateType = L
triggerall = command = "holdfwd" && command = "holddown"
triggerall = command = "c"
trigger1 = StateType != A && ctrl



;===================
; Crouching Attacks
;===================

; Crouch Fierce Slash
;--------------------
[State -1]
type = ChangeState
value = 420
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "z" && command = "holddown"
trigger1 = StateType = C && ctrl

; Crouch Medium Slash
;--------------------
[State -1]
type = ChangeState
value = 410
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "y" && command = "holddown"
trigger1 = StateType = C && ctrl

; Crouch Light Slash
;-------------------
[State -1]
type = ChangeState
value = 400
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "x" && command = "holddown"
trigger1 = StateType = C && ctrl

; Crouch Knock Down Kick
;-----------------------
[State -1]
type = ChangeState
value = 520
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "a" && command = "holddown" && command = "holdfwd"
trigger1 = StateType = C && ctrl

; Crouch Kick
;------------
[State -1]
type = ChangeState
value = 500
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "a" && command = "holddown"
trigger1 = StateType = C && ctrl



;==================
; Standing Attacks 
;==================

; Overhead Slash
;---------------
[State -1]
type = ChangeState
value = 230
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "x" && command = "a"
trigger1 = StateType = S && ctrl

; Overhead Kick
;--------------
[State -1]
type = ChangeState
value = 320
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "c"
trigger1 = StateType = S && ctrl

; Short Fierce Slash
;-------------------
[State -1]
type = ChangeState
value = 225
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "z"
triggerall = P2BodyDist x <= 30
trigger1 = StateType = S && ctrl

; Short Medium Slash
;-------------------
[State -1]
type = ChangeState
value = 215
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "y"
triggerall = P2BodyDist x <= 30
trigger1 = StateType = S && ctrl

; Short Light Slash
;------------------
[State -1]
type = ChangeState
value = 205
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "x"
triggerall = P2BodyDist x <= 30
trigger1 = StateType = S && ctrl

; Stand Fierce Slash
;-------------------
[State -1]
type = ChangeState
value = 220
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "z"
trigger1 = StateType = S && ctrl

; Stand Medium Slash
;-------------------
[State -1]
type = ChangeState
value = 210
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "y"
trigger1 = StateType = S && ctrl

; Stand Light Slash
;------------------
[State -1]
type = ChangeState
value = 200
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "x"
trigger1 = StateType = S && ctrl

; Stand Knock Down Kick
;----------------------
[State -1]
type = ChangeState
value = 310
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "a" && command = "holdfwd"
trigger1 = StateType = S && ctrl

; Stand Kick
;-----------
[State -1]
type = ChangeState
value = 300
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "a"
trigger1 = StateType = S && ctrl



;=============
; Air Attacks
;=============

; Air Fierce Slash
;-----------------
[State -1]
type = ChangeState
value = 620
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "z"
trigger1 = StateType = A && ctrl

; Air Medium Slash
;-----------------
[State -1]
type = ChangeState
value = 610
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "y"
trigger1 = StateType = A && ctrl

; Air Light Slash
;----------------
[State -1]
type = ChangeState
value = 600
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "x"
trigger1 = StateType = A && ctrl

; Air Knock Down Kick
;--------------------
[State -1]
type = ChangeState
value = 720
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "a" && command = "holddown"
trigger1 = StateType = A && ctrl

; Air Kick
;---------
[State -1]
type = ChangeState
value = 700
triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "a"
trigger1 = StateType = A && ctrl
