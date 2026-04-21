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


;-| Hold Button |------------------------------------------------------------------------------

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
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
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+a
time = 1


;-| Supers |-----------------------------------------------------------------------------------

[Command]
name = "d_d_x"
command = ~D, D, x
time = 20

[Command]
name = "d_d_y"
command = ~D, D, y
time = 20


;-| Special Motions |--------------------------------------------------------------------------

[Command]
name = "qcf_x"
command = ~D, DF, F, x
time = 15

[Command]
name = "qcf_y"
command = ~D, DF, F, y
time = 15

[Command]
name = "qcf_z"
command = ~D, DF, F, z
time = 15

[Command]
name = "qcf_c"
command = ~D, DF, F, c
time = 15

[Command]
name = "qcb_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "qcb_y"
command = ~D, DB, B, y
time = 15

[Command]
name = "qcb_z"
command = ~D, DB, B, z
time = 15

[Command]
name = "qcb_c"
command = ~D, DB, B, c
time = 15


;-| Double Tap |-------------------------------------------------------------------------------

[Command]
name 	= "FF"     ; Required (do not remove)
command = F, F

[Command]
name 	= "BB"     ; Required (do not remove)
command = B, B


;-| 2/3 Button Combination |-------------------------------------------------------------------

[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1



;----------------------------------------------------------------------------------------------
;
; STATE ENTRY
;
;----------------------------------------------------------------------------------------------

[Statedef -1]

;====
; AI
;====

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


; AI Magic Moves
;---------------

[State -1, AI RikiOh]
type = ChangeState
triggerall = var(59) = 1 && var(6)=1
triggerall = (P2bodydist x > 150) && (Life - P2Life > -200)
trigger1 = (StateType = S) && (ctrl) && (random = [0, 100))
value = 2100

[State -1, AI KinGoh]
type = ChangeState
triggerall = var(59) = 1 && var(6)=1
triggerall = (P2bodydist x > 150) && (Life - P2Life < -200)
trigger1 = (StateType = S) && (ctrl) && (random = [0, 100))
value = 2200


; AI Standing Attacks
;--------------------

[State -1, AI super strike]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [0,70)) && (Enemy, Anim = 5300) && (P2Life > 0)
trigger1 = (StateType != A) && (ctrl) && (random = [440, 460))
value = 900

[State -1, get back kunai]
type = ChangeState
triggerall = var(59) = 1 && NumHelper(1310) = 1
triggerall = (helper(1310), ParentDist x = [-20, 20])
triggerall = (P2bodydist x > 100) && (P2Life > 0)
trigger1 = (StateType != A) && (ctrl) && (random = [0, 400))
value = 922

[State -1, AI throw]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x <= 20) && (P2StateType != A) && (P2MoveType != H)
trigger1 = (StateType = S) && (ctrl) && (random = [0, 200))
value = 800

[State -1, AI short kaiten koma]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [-55, 85]) && (P2StateType != A) && (P2Life > 0)
trigger1 = (StateType != A) && (ctrl) && (random = [0, 200))
value = 1000

[State -1, AI long kaiten koma]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [-55, 85]) && (P2StateType = A) && (P2Life > 0)
trigger1 = (StateType != A) && (ctrl) && (random = [0, 200))
value = 1020

[State -1, AI bakujin namekuji keri]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x >= 85) && (P2Life > 0)
trigger1 = (StateType != A) && (ctrl) && (random = [0, 50))
value = 1100

[State -1, AI kaiten keri]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [0, 60)) && (P2StateType != A) && (P2StateType != L) && (P2Life > 0)
trigger1 = (StateType != A) && (ctrl) && (random = [200, 400))
value = 1400

[State -1, AI keriage]
type = ChangeState
triggerall = var(59) = 1
triggerall = (random = [0,800)) && (P2Life > 0)
trigger1 = (stateno = 1400) && (MoveHit) && (HitPauseTime != 0)
value = 1450
ignorehitpause = 1

[State -1, AI namekuji kamikakushi back]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x > 50) && (P2Life > 0)
trigger1 = (StateType != A) && (ctrl) && (random = [400, 420))
value = 1200

[State -1, AI namekuji kamikakushi middle]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x > 50) && (P2Life > 0)
trigger1 = (StateType != A) && (ctrl) && (random = [420, 440))
value = 1210

[State -1, AI namekuji kamikakushi front]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x > 50) && (P2Life > 0)
trigger1 = (StateType != A) && (ctrl) && (random = [440, 460))
value = 1220

[State -1, AI running jumping attack]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [0, 60]) && (P2BodyDist y = [-80,0]) && (P2Life > 0)
trigger1 = (stateno = 100) && (random = [0, 400))
value = 240

[State -1, AI running slash]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [0, 55]) && (P2BodyDist y = [-80,0]) && (P2Life > 0)
trigger1 = (stateno = 100) && (random = [400, 700))
value = 230

[State -1, AI running kick]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [0, 65]) && (P2BodyDist y = [-50,0]) && (P2Life > 0)
trigger1 = (stateno = 100) && (random = [700, 900))
value = 330

[State -1, AI stand light slash]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [30, 45]) && (P2BodyDist y = [-80,0]) && (P2Life > 0)
trigger1 = (StateType = S) && (ctrl) && (random = [500, 560))
value = 200

[State -1, AI short light slash]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [0, 30]) && (P2BodyDist y = [-80,0]) && (P2Life > 0)
trigger1 = (StateType = S) && (ctrl) && (random = [500, 530))
value = 205

[State -1, AI stand light kick]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [0, 30]) && (P2BodyDist y = [-80,0]) && (P2Life > 0)
trigger1 = (StateType = S) && (ctrl) && (random = [530, 560))
value = 300

[State -1, AI stand medium slash]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [30, 100]) && (P2BodyDist y = [-90,0]) && (P2Life > 0)
trigger1 = (StateType = S) && (ctrl) && (random = [560, 700))
value = 210

[State -1, AI short medium slash]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [0, 30]) && (P2BodyDist y = [-90,0]) && (P2Life > 0)
trigger1 = (StateType = S) && (ctrl) && (random = [560, 640))
value = 215

[State -1, AI stand medium kick]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [0, 50]) && (P2BodyDist y = [-50,0]) && (P2Life > 0)
trigger1 = (StateType = S) && (ctrl) && (random = [640, 700))
value = 310

[State -1, AI stand fierce slash]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [30, 70]) && (P2BodyDist y = [-100,20]) && (P2Life > 0)
trigger1 = (StateType = S) && (ctrl) && (random = [700, 750))
value = 220

[State -1, AI short fierce slash]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [0, 30]) && (P2BodyDist y = [-100,0]) && (P2Life > 0)
trigger1 = (StateType = S) && (ctrl) && (random = [700, 750))
value = 225

[State -1, AI stand fierce kick]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [30, 90]) && (P2BodyDist y = [-120,0]) && (P2Life > 0)
trigger1 = (StateType = S) && (ctrl) && (random = [750, 800))
value = 320

[State -1, AI short fierce kick]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [0, 30]) && (P2BodyDist y = [-120,0]) && (P2Life > 0)
trigger1 = (StateType = S) && (ctrl) && (random = [750, 800))
value = 325


; AI Crouching Attacks
;---------------------

[State -1, AI crouch light slash]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2BodyDist x = [0, 45]) && (P2BodyDist y = [-60,0]) && (P2Life > 0)
trigger1 = (StateType = C) && (ctrl) && (random = [500, 540))
value = 400

[State -1, AI crouch light kick]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2BodyDist x = [0, 35]) && (P2BodyDist y = [-35,0]) && (P2Life > 0)
trigger1 = (StateType = C) && (ctrl) && (random = [540, 600))
value = 500

[State -1, AI crouch medium slash]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2BodyDist x = [35, 105]) && (P2BodyDist y = [-70,0]) && (P2Life > 0)
trigger1 = (StateType = C) && (ctrl) && (random = [600, 700))
value = 410

[State -1, AI crouch medium kick]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [0, 35]) && (P2BodyDist y = [-70,0]) && (P2Life > 0)
trigger1 = (StateType = C) && (ctrl) && (random = [600, 650))
value = 510

[State -1, AI crouch fierce slash]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2BodyDist x = [0, 85]) && (P2BodyDist y = [-125,0]) && (P2Life > 0)
trigger1 = (StateType = C) && (ctrl) && (random = [700, 750))
value = 420

[State -1, AI crouch fierce kick]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2BodyDist x = [0, 90]) && (P2BodyDist y = [-55,0]) && (P2Life > 0)
trigger1 = (StateType = C) && (ctrl) && (random = [750, 800))
value = 520


; AI Aerial Attacks
;------------------

[State -1, AI throw kunai]
type = ChangeState
triggerall = var(59) = 1 && NumHelper(1310) = 0
triggerall = (Pos y <= -90) && (P2BodyDist x > 60) && (P2Life > 0)
trigger1 = (StateType = A) && (ctrl) && (Vel y <= 0) && (random = [0, 200))
value = 920

[State -1, air light slash]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2BodyDist x = [0, 60]) && (P2BodyDist y = [-40,60]) && (P2Life > 0)
trigger1 = (StateType = A) && (ctrl) && (random = [200, 300))
value = 600

[State -1, air light kick]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2BodyDist x = [0, 45]) && (P2BodyDist y = [-75,0]) && (P2Life > 0)
trigger1 = (StateType = A) && (ctrl) && (random = [300, 400))
value = 700

[State -1, air medium slash]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2BodyDist x = [0, 115]) && (P2BodyDist y = [-75,10]) && (P2Life > 0)
trigger1 = (StateType = A) && (ctrl) && (random = [400, 600))
value = 610

[State -1, air medium kick]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2BodyDist x = [0, 20]) && (P2BodyDist y = [-120,-40]) && (P2Life > 0)
trigger1 = (StateType = A) && (ctrl) && (random = [600, 700))
value = 710

[State -1, air fierce slash]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [0, 90]) && (P2BodyDist y = [-95,40]) && (P2Life > 0)
trigger1 = (StateType = A) && (ctrl) && (random = [700, 800))
value = 620

[State -1, air fierce kick]
type = ChangeState
triggerall = var(59) = 1
triggerall = (P2bodydist x = [0, 55]) && (P2BodyDist y = [-80,-15]) && (P2Life > 0)
trigger1 = (StateType = A) && (ctrl) && (random = [800, 850))
value = 720



;===============
; Super Attacks
;===============

[State -1, RikiOh]
type = ChangeState
value = 2100
triggerall = var(59) <= 0 && var(6)=1
triggerall = command = "d_d_x"
trigger1 = statetype != A && ctrl

[State -1, KinGoh]
type = ChangeState
value = 2200
triggerall = var(59) <= 0 && var(6)=1
triggerall = command = "d_d_y"
trigger1 = statetype != A && ctrl



;=================
; Special Attacks
;=================

[State -1, short kaiten koma]
type = ChangeState
value = 1000
triggerall = var(59) <= 0
triggerall = command = "qcf_x"
trigger1 = statetype != A && ctrl

[State -1, medium kaiten koma]
type = ChangeState
value = 1010
triggerall = var(59) <= 0
triggerall = command = "qcf_y"
trigger1 = statetype != A && ctrl

[State -1, long kaiten koma]
type = ChangeState
value = 1020
triggerall = var(59) <= 0
triggerall = command = "qcf_z"
trigger1 = statetype != A && ctrl

[State -1, bakujin namekuji keri]
type = ChangeState
value = 1100
triggerall = var(59) <= 0
triggerall = command = "qcb_c"
trigger1 = statetype != A && ctrl

[State -1, namekuji kamikakushi back]
type = ChangeState
value = 1200
triggerall = var(59) <= 0
triggerall = command = "qcb_x"
trigger1 = statetype != A && ctrl

[State -1, namekuji kamikakushi midle]
type = ChangeState
value = 1210
triggerall = var(59) <= 0
triggerall = command = "qcb_y"
trigger1 = statetype != A && ctrl

[State -1, namekuji kamikakushi front]
type = ChangeState
value = 1220
triggerall = var(59) <= 0
triggerall = command = "qcb_z"
trigger1 = statetype != A && ctrl

[State -1, kaiten keri]
type = ChangeState
value = 1400
triggerall = var(59) <= 0
triggerall = command = "holdfwd" && command = "c"
trigger1 = statetype != A && ctrl

[State -1, keriage]
type = ChangeState
value = 1450
triggerall = var(59) <= 0
triggerall = command = "qcf_c"
trigger1 = stateno = 1400 && MoveHit && HitPauseTime != 0
ignorehitpause = 1



;=================
; Powered Attacks
;=================

[State -1, super strike]
type = ChangeState
value = 900
triggerall = var(59) <= 0
triggerall = command = "y" && command = "a"
trigger1 = statetype = S && ctrl

[State -1, usonaki]
type = ChangeState
value = 910
triggerall = var(59) <= 0 && life > 160
triggerall = command = "y" && command = "a"
trigger1 = statetype = C && ctrl

[State -1, throw kunai]
type = ChangeState
value = 920
triggerall = var(59) <= 0 && NumHelper(1310) = 0
triggerall = command = "y" && command = "a"
trigger1 = statetype = A && ctrl && Vel y <= 0

[State -1, get back kunai]
type = ChangeState
value = 922
triggerall = var(59) <= 0 && NumHelper(1310) = 1
triggerall = command = "x"
triggerall = helper(1310), ParentDist x = [-20, 20]
trigger1 = statetype != A && ctrl



;================
; Standard Moves
;================

[State -1, run]
type = ChangeState
value = 100
triggerall = var(59) <= 0
triggerall = command = "FF"
trigger1 = statetype != A && ctrl

[State -1, hop back]
type = ChangeState
value = 105
triggerall = var(59) <= 0
triggerall = command = "BB"
trigger1 = statetype != A && ctrl



;========
; Throws
;========

[State -1, throw]
type = ChangeState
value = 800
triggerall = var(59) <= 0
triggerall = command ="z" && (command ="holdfwd" || command ="holdback")
trigger1 = StateType = S && ctrl
trigger1 = P2bodydist x <= 20 && P2StateType != A && P2MoveType != H



;==================
; Normal Attacks
;==================

[State -1, crouch fierce slash]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
value = 420

[State -1, crouch medium slash]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
value = 410

[State -1, crouch light slash]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
value = 400

[State -1, crouch fierce kick]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
value = 520

[State -1, crouch medium kick]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
value = 510

[State -1, crouch light kick]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
value = 500

[State -1, running jumping attack]
type = ChangeState
triggerall = var(59) <= 0
triggerall = stateno = 100
trigger1 = command = "y" && command = "a"
value = 240

[State -1, running slash]
type = ChangeState
triggerall = var(59)<=0
triggerall = stateno = 100
trigger1 = command = "x" || command = "y" || command = "z"
value = 230

[State -1, running kick]
type = ChangeState
triggerall = var(59)<=0
triggerall = stateno = 100
trigger1 = command = "a" || command = "b" || command = "c"
value = 330

[State -1, short fierce slash]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "z" && P2BodyDist x <= 30
trigger1 = statetype = S && ctrl
value = 225

[State -1, short medium slash]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "y" && P2BodyDist x <= 30
trigger1 = statetype = S && ctrl
value = 215

[State -1, short light slash]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "x" && P2BodyDist x <= 30
trigger1 = statetype = S && ctrl
value = 205

[State -1, short fierce kick]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "c" && P2BodyDist x <= 30
trigger1 = statetype = S && ctrl
value = 325

[State -1, stand fierce slash]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "z"
trigger1 = statetype = S && ctrl
value = 220

[State -1, stand medium slash]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "y"
trigger1 = statetype = S && ctrl
value = 210

[State -1, stand light slash]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "x"
trigger1 = statetype = S && ctrl
value = 200

[State -1, stand fierce kick]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "c"
trigger1 = statetype = S && ctrl
value = 320

[State -1, stand medium kick]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "b"
trigger1 = statetype = S && ctrl
value = 310

[State -1, stand light kick]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "a"
trigger1 = statetype = S && ctrl
value = 300

[State -1, air fierce slash]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "z"
trigger1 = statetype = A && ctrl
value = 620

[State -1, air medium slash]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "y"
trigger1 = statetype = A && ctrl
value = 610

[State -1, air light slash]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "x"
trigger1 = statetype = A && ctrl
value = 600

[State -1, air fierce kick]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "c"
trigger1 = statetype = A && ctrl
value = 720

[State -1, air medium kick]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "b"
trigger1 = statetype = A && ctrl
value = 710

[State -1, air light kick]
type = ChangeState
triggerall = var(59)<=0
triggerall = command = "a"
trigger1 = statetype = A && ctrl
value = 700
