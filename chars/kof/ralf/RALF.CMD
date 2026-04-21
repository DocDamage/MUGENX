
;-| Super Motions (³¬É±£©|--------------------------------------------------------
[command]
name = "ralfdash"
command = ~D,B,D,B,b
time = 50

[command]
name = "ralfdash2"
command = ~D,B,D,B,y
time = 50

[command]
name = "ralfthrow2"
command = ~D,B,D,B,x
time = 50

[command]
name = "ralfthrow"
command = ~D,B,D,B,a
time = 50

; Super Vulcan Punch a
[Command]
name = "svcp_a"
command = ~D,DF,F,DF,D,DB,B,a
time = 45

; Super Vulcan Punch c
[Command]
name = "svcp_c"
command = ~D,DF,F,DF,D,DB,B,x
time = 45

; Galatica Phantom
[Command]
name = "Galatica"
command = ~D,DF,F,D,DF,F,a
time = 45

; Galatica Phantom
[Command]
name = "Galatica2"
command = ~D,DF,F,D,DF,F,x
time = 45

; Mounted Vulcan Punch b
[Command]
name = "MVP_b"
command = ~D,DB,B,DB,D,DF,F,b
time = 30

; Mounted Vulcan Punch x
[Command]
name = "MVP_x"
command = ~D,DB,B,DB,D,DF,F,y
time = 30

;-| Special Motions £¨±ØÉ±¼¼£©|------------------------------------------------------

;--------------------
;Charge_Down_up
[Command]
name = "bltz_a"
command = ~D, F, a
time = 20

[Command]
name = "bltz_c"
command = ~D, F, x
time = 20
;-----------------
; QCF
[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_c"
command = ~D, DF, F, x

;--------------------
;Ralf Bulldozer
[Command]
name = "Ralfb_b"
command = ~F,DF,D,DB,B,b
time = 30
[Command]
name = "Ralfb_x"
command = ~F,DF,D,DB,B,y
time = 30



;--------------------
;Charge_Back_fwd
[Command]
name = "Gatling_a"
command = ~40$B, F, a
time = 10

[Command]
name = "Ralfk_b"
command = ~60$B, F, b
time = 10

[Command]
name = "Gatling_c"
command = ~40$B, F, x
time = 10

[Command]
name = "Ralfk_x"
command = ~60$B, F, y
time = 10

[Command]
name = "vulcan"
command = a,a,a
time = 40
buffer.time = 30

[Command]
name = "vulcan"
command = x,x,x
time = 40
buffer.time = 40

[Command]
name = "VulcanCancel"
command = a+b+x+y
time = 15

[Command]
name = "power_up"
command = a+b+x
time = 15

[Command]
name = "abb"
command = B,D,F,b
time = 20

[Command]
name = "abb"
command = B,D,F,y
time = 20

[Command]
name = "clark"
command = b+x
time = 1

[Command]
name = "ralf"
command = a+y
time = 1

[Command]
name = "cd"
command = x+y

[Command]
name = "F_ab"
command = a+b

[Command]
name = "B_ab"
command = /B,a+b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "countmode"
command = a+x
time = 1

[Command]
name = "armormode"
command = b+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /$F, a+b
time = 1

[Command]
name = "back_ab"
command = /$B, a+b
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
name = "s"
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
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

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Counter Mode
[State -1]
type = ChangeState
triggerall = command = "countmode"
triggerall = var(3) = 0
triggerall = var(2) = 0
triggerall = var(4) = 0
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
value = 6666

; Armor mode
[State -1]
type = ChangeState
value = 9300
trigger1 = statetype != A
triggerall = Power >= 3000
triggerall = command = "armormode"
triggerall = ctrl = 1
triggerall = var(4) = 0
triggerall = var(3) = 0
triggerall = var(2) = 0
trigger1 = ctrl = 1



;Power-Up
[State -1]
type = ChangeState
value = 6000
triggerall = statetype = S
triggerall = Power < 3000
triggerall = var(3) = 0
triggerall = var(4) = 0
triggerall = ctrl = 1
trigger1 = command = "hold_x"
trigger1 = command = "hold_y"
trigger1 = command = "hold_z"


;-----
; Guard cancel roll (backwards)
[State -1]
type = ChangeState
value = 260
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1000
triggerall = command = "holdback"
trigger1 = command = "ab"

; Guard cancel roll (forward)
[State -1]
type = ChangeState
value = 250
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1000
trigger1 = command = "ab"

; Guard cancel attack
[State -1]
type = ChangeState
value = 270
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1000
trigger1 = command = "cd"
trigger2 = command = "c"


;------------------------------------------------------------------

; Clark's super throw 
[State -1]
type = ChangeState
value = 2899
triggerall = statetype != A
triggerall = stateno = 225
triggerall = var(3) != 0
triggerall = movehit
trigger1 = command = "ralfthrow"
trigger2 = command = "ralfthrow2"

; Throw 1
[State -1]
type = ChangeState
value = 2900
triggerall = statetype != A
triggerall = var(3) != 0
trigger1 = command != "vulcan"
trigger1 = command = "ralfthrow"
triggerall = ctrl = 1
trigger2 = command = "ralfthrow2"

; Mounted Vulcan Punch SDM
[State -1]
type = ChangeState
value = 3600
triggerall = command = "MVP_x"
triggerall = statetype != A
triggerall = var(3) != 0
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact
trigger5 = Stateno = 1032
trigger5 = movecontact
trigger5 = Pos Y = 0
trigger6 = Stateno = 1037
trigger6 = movecontact
trigger6 = Pos Y = 0


; ralf dash!
[State -1]
type = ChangeState
value = 10000
triggerall = statetype != A
triggerall = var(3) != 0
triggerall = ctrl = 1
trigger1 = command = "ralfdash"
trigger2 = command = "ralfdash2"

; Mounted Vulcan Punch
[State -1]
type = ChangeState
value = 3600
triggerall = command = "MVP_b"
triggerall = statetype != A
triggerall = var(3) != 0
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact
trigger5 = Stateno = 1032
trigger5 = movecontact
trigger5 = Pos Y = 0
trigger6 = Stateno = 1037
trigger6 = movecontact
trigger6 = Pos Y = 0



;Super Vulcan Punch a
[State -1]
type = ChangeState
value = 3100
triggerall = command = "svcp_c"
triggerall = statetype != A
triggerall = var(3) != 0
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact
trigger5 = stateno = 1020
trigger5 = movecontact
trigger6 = stateno = 1025
trigger6 = movecontact


;Super Vulcan Punch a
[State -1]
type = ChangeState
value = 3100
triggerall = command = "svcp_a"
triggerall = statetype != A
triggerall = var(3) != 0
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact

;~~~~~~~~~~~~~~~~~`
;---------------------------------------------------------------------------
; ralf dash!
[State -1]
type = ChangeState
value = 20000
triggerall = power >= 2000
triggerall = statetype != A
triggerall = var(4) = 0
triggerall = var(3) = 0
triggerall = ctrl = 1
trigger1 = command = "ralfdash2"

[State -1]
type = ChangeState
value = 2949
triggerall = statetype != A
triggerall = stateno = 225
triggerall = power >=2000
triggerall = movehit
trigger1 = command = "ralfthrow2"


; Throw 1
[State -1]
type = ChangeState
value = 2950
triggerall = statetype != A
triggerall = power >=2000
trigger1 = command != "vulcan"
triggerall = command = "ralfthrow2"
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 2899
triggerall = stateno = 225
triggerall = power >=1000
triggerall = movehit
trigger1 = command = "ralfthrow"
trigger2 = command = "ralfthrow2"

; Throw 1
[State -1]
type = ChangeState
value = 2900
triggerall = statetype != A
triggerall = power >=1000
trigger1 = command != "vulcan"
trigger1 = command = "ralfthrow"
triggerall = ctrl = 1
trigger2 = command = "ralfthrow2"

; ralf dash!
[State -1]
type = ChangeState
value = 10000
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(4) = 0
triggerall = var(3) = 0
triggerall = ctrl = 1
trigger1 = command = "ralfdash"
trigger2 = command = "ralfdash2"

;---------------------------------------------------------------------------
;Galatica Phantom SDM
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Galatica2"
triggerall = statetype != A
triggerall = var(3) != 0
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact

;Galatica Phantom DM
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Galatica"
triggerall = statetype != A
triggerall = var(3) != 0
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact

;---------------------------------------------------------------------------


;------------------------------------------------------------------



; Mounted Vulcan Punch SDM
[State -1]
type = ChangeState
value = 3700
triggerall = command = "MVP_x"
triggerall = statetype != A
triggerall = power >= 2000
triggerall = var(4) = 0
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact
trigger5 = Stateno = 1032
trigger5 = movecontact
trigger5 = Pos Y = 0
trigger6 = Stateno = 1037
trigger6 = movecontact
trigger6 = Pos Y = 0


; Mounted Vulcan Punch
[State -1]
type = ChangeState
value = 3600
triggerall = command = "MVP_b" ||command = "MVP_x"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = var(4) = 0
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact
trigger5 = Stateno = 1032
trigger5 = movecontact
trigger5 = Pos Y = 0
trigger6 = Stateno = 1037
trigger6 = movecontact
trigger6 = Pos Y = 0



;Super Vulcan Punch a
[State -1]
type = ChangeState
value = 3200
triggerall = command = "svcp_c"
triggerall = statetype != A
triggerall = power >= 2000
triggerall = var(4) = 0
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact



;Super Vulcan Punch a
[State -1]
type = ChangeState
value = 3100
triggerall = command = "svcp_a"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = var(4) = 0
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact



;---------------------------------------------------------------------------
; super throw 
;[State -1]
;type = ChangeState
;value = 4000
;triggerall = power >= 1000
;trigger1 = command != "cd"
;triggerall = statetype != A
;triggerall = var(4) = 0
;triggerall = var(4) = 0
;triggerall = ctrl = 1
;trigger1 = command = "Dma1"
;trigger2 = command = "Dma2"


;Galatica Phantom SDM
[State -1]
type = ChangeState
value = 3050
triggerall = command = "Galatica2"
triggerall = statetype != A
triggerall = power >= 2000
triggerall = var(4) = 0
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact

;Galatica Phantom DM
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Galatica"
triggerall = statetype != A
triggerall = power >= 1000
triggerall = var(4) = 0
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact

;---------------------------------------------------------------------------
;BlitzKrieg Punch
[State -1]
type = ChangeState
value = 1005
triggerall = command = "bltz_c"
triggerall = statetype != A
trigger1 = ctrl = 1

;BlitzKrieg Punch
[State -1]
type = ChangeState
value = 1000
triggerall = command = "bltz_a"
triggerall = statetype != A
trigger1 = ctrl = 1


;Blitzkrieg Punch Air
[State -1]
type = ChangeState
value = 1002
triggerall = command = "QCF_a"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 620
trigger2 = movecontact
trigger3 = stateno = 625
trigger3 = movecontact

;Blitzkrieg Punch Air
[State -1]
type = ChangeState
value = 1002
triggerall = command = "QCF_c"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 620
trigger2 = movecontact
trigger3 = stateno = 625
trigger3 = movecontact


;---------------------------------------------------------------------------




;Power Up2
;[State -1]
;type = ChangeState
;value = 3900
;trigger1 = command = "power_up"
;trigger1 = statetype = S
;trigger1 = Power >= 1000
;trigger1 = Var(4) <= 0
;trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Clark striker
[State -1]
type = ChangeState
value = 4500
triggerall = power >= 1000
triggerall = command = "clark"
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 4501
triggerall = power >= 1000
triggerall = command = "ralf"
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

;-----
; Guard cancel roll (backwards)
[State -1]
type = ChangeState
value = 260
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1000
triggerall = command = "holdback"
trigger1 = command = "ab"

; Guard cancel roll (forward)
[State -1]
type = ChangeState
value = 250
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1000
trigger1 = command = "ab"

; Guard cancel attack
[State -1]
type = ChangeState
value = 270
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1000
trigger1 = command = "cd"
trigger2 = command = "c"


; DODGE backwards
[State -1]
type = ChangeState
value = 256
trigger1 = command = "back_ab"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Fwd ab
[State -1]
type = ChangeState
value = 800
triggerall = command = "F_ab"
triggerall = statetype = S
trigger1 = stateno != 100
trigger1= ctrl = 1

;---------------------------------------------------------------------------
;Fwd ab
[State -1]
type = ChangeState
value = 805
triggerall = command = "F_ab"
triggerall = statetype = S
trigger1 = stateno = 100
trigger1= ctrl = 1

; Dodge attack
[State -1]
type = ChangeState
value = 255
triggerall = stateno = 800
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "a"
trigger4 = command = "b"

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1899
triggerall = stateno = 225
triggerall = movehit
trigger1 = command = "abb"
trigger2 = command = "abb"

; Throw 1
[State -1]
type = ChangeState
value = 1900
trigger1 = statetype != A
trigger1 = command != "vulcan"
triggerall = command = "abb"
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movehit


;---------------------------------------------------------------------------
;Ralf Kick b
[State -1]
type = ChangeState
value = 1030
triggerall = command = "Ralfk_b"
triggerall = statetype = S
trigger1 = ctrl = 1

;Ralf Kick x
[State -1]
type = ChangeState
value = 1035
triggerall = command = "Ralfk_x"
triggerall = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Gatling Attack a
[State -1]
type = ChangeState
value = 1020
triggerall = command = "Gatling_a"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact
 
;Gatling Attack c
[State -1]
type = ChangeState
value = 1025
triggerall = command = "Gatling_c"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact

;---------------------------------------------------------------------------
;Ralf Bulldozer
[State -1]
type = ChangeState
value = 1010
triggerall = command = "Ralfb_b"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact

;---------------------------------------------------------------------------
;Ralf Bulldozer
[State -1]
type = ChangeState
value = 1010
triggerall = command = "Ralfb_x"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact

;---------------------------------------------------------------------------
;Vulcan Punch
[State -1]
type = ChangeState
value = 1040
triggerall = command = "vulcan"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact

;---------------------------------------------------------------------------
;Vulcan Punch Cancel
[State -1]
type = ChangeState
trigger1 = command = "VulcanCancel"
trigger1 = stateno = 1041
value = 0
ctrl = 1
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
;Stand_Throw (close dir+b)
; Complicated? Skip the throws and look at stand_a, etc, first.
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = ChangeState
value = 750
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 ;Near P2
trigger1 = command = "fwd_x";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;Air_Throw1 (close dir+b)
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = null; ChangeState
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"


 
;Ë¤¼¼2
[State -1]
type = ChangeState
value = 920
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 15
trigger1 = command = "fwd_y"
trigger1 = stateno != 100
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_y"
trigger2 = stateno != 100
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_y"
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_y"
trigger4 = p2statetype = C
trigger4 = p2movetype != H



;===========================================================================
; Taunt
[State -1]
type = ChangeState
value = 193
trigger1 = command = "s"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
trigger1 = statetype = S
trigger1 = ctrl = 1
 ;Uncomment the following if you want to be able to do a Stand_A rapidly
;trigger2 = stateno = 200
;trigger2 = time >= 7

;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1= p2bodydist X <= 15
 ;Uncomment the following if you want to be able to "chain" the attack
 ;from a Stand_A (state 200)
trigger2 = stateno = 200
trigger2 = movecontact  ;If move hits, or is guarded by opponent

;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
 ;Uncomment the following if you want to be able to "chain" the attack
 ;from a Stand_A (state 200)
;trigger2 = stateno = 200
;trigger2 = movecontact  ;If move hits, or is guarded by opponent

;---------------------------------------------------------------------------
;Stand CD 
[State -1]
type = ChangeState
value = 240
triggerall = command = "cd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand C Near
[State -1]
type = ChangeState
value = 225
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = p2bodydist X <= 20
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand C 
[State -1]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand D Near
[State -1]
type = ChangeState
value = 235
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = p2bodydist X <= 20
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand D 
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 320
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_c
[State -1]
type = ChangeState
value = 310
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_d
[State -1]
type = ChangeState
value = 330
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_CD
[State -1]
type = ChangeState
value = 650
trigger1 = command = "cd"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_A_stand
[State -1]
type = ChangeState
value = 605
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = Vel X = 0

;---------------------------------------------------------------------------
;Jump_B_stand
[State -1]
type = ChangeState
value = 615
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = Vel X = 0

;---------------------------------------------------------------------------
;Jump_C_stand
[State -1]
type = ChangeState
value = 625
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = Vel X = 0

;---------------------------------------------------------------------------
;Jump_D_stand
[State -1]
type = ChangeState
value = 635
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = Vel X = 0

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 610
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_C
[State -1]
type = ChangeState
value = 620
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_D
[State -1]
type = ChangeState
value = 630
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1


