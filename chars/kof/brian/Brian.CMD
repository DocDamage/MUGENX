;-|AI Command |--------------------------------------------------------
[Command]
name = "AI_1"
command = U,D,F,F,B,B,U,D,F,F,B,F
time = 1

[Command]
name = "AI_2"
command = U,D,F,F,B,F,U,D,F,F,B,B
time = 1

[Command]
name = "AI_3"
command = U,D,F,F,B,D,U,D,F,F,B,U
time = 1

[Command]
name = "AI_4"
command = U,D,F,F,B,U,U,D,F,F,B,D
time = 1

[Command]
name = "AI_5"
command = U,D,F,F,U,B,U,D,F,F,D,B
time = 1

[Command]
name = "AI_6"
command = U,D,F,F,D,B,U,D,F,F,U,B
time = 1

[Command]
name = "AI_7"
command = U,D,F,F,F,B,U,D,U,F,B,B
time = 1

[Command]
name = "AI_8"
command = U,D,U,F,B,B,U,D,F,F,F,B
time = 1

[Command]
name = "AI_9"
command = U,D,D,F,B,B,D,D,F,F,B,B
time = 1

[Command]
name = "AI_10"
command = D,D,F,F,B,B,U,D,D,F,B,B
time = 1

[Command]
name = "AI_11"
command = U,U,F,F,B,B,U,B,F,F,B,B
time = 1

[Command]
name = "AI_12"
command = U,B,F,F,B,B,U,U,F,F,B,B
time = 1
;********************************************************************************************
;-| Super Motions |--------------------------------------------------------
[Command]
name = "HyperP2"
command = ~D,DF,F,D,DF,F,a+b
time=20

[Command]
name = "HyperPH"
command = ~D,DF,F,D,DF,F,b
time=20

[Command]
name = "HyperPL"
command = ~D,DF,F,D,DF,F,a
time=20

[Command]
name = "HyperK"
command = ~D,DF,F,D,DF,F,x
time=20

[Command]
name = "HyperK"
command = ~D,DF,F,D,DF,F,y
time=20

[Command]
name = "HyperK2"
command = ~D,DF,F,D,DF,F,x+y
time=20


;-| Special Motions |------------------------------------------------------
[Command]
name = "B&B"
command = ~D,U,a
time=20

[Command]
name = "B&B"
command = ~D,U,b
time=20

[Command]
name = "SBreak"
command = ~D,D,x
time=20

[Command]
name = "SBreak"
command = ~D,D,y
time=20

[Command]
name = "Samurai"
command = ~D,D,a
time=20

[Command]
name = "Samurai"
command = ~D,D,b
time=20

[Command]
name = "Tiger"
command = ~D,DF,F,a
time=20

[Command]
name = "Tiger"
command = ~D,DF,F,b
time=20

[Command]
name = "Hammer"
command = ~D,DB,B,a
time=20

[Command]
name = "Hammer"
command = ~D,DB,B,b
time=20

[Command]
name = "SuperCombo1"
command = ~B,DB,D,DF,F,x
time=20

[Command]
name = "SuperCombo1"
command = ~40$B,F,x
time=10

[Command]
name = "SuperCombo2"
command = ~B,DB,D,DF,F,y
time=20

[Command]
name = "SuperCombo2"
command = ~40$B,F,y
time=10

[Command]
name = "ScrewBodyPress1"
command = ~D,DF,F,a
time=15

[Command]
name = "ScrewBodyPress2"
command = ~D,DF,F,b
time=15

[Command]
name = "Rocket1"
command = ~F,D,DF,x
time=15

[Command]
name = "Rocket2"
command = ~F,D,DF,y
time=15

[Command]
name = "BrianCyclone1"
command = ~B,DB,D,DF,F,a
time=20

[Command]
name = "BrianCyclone1"
command = ~40$B,F,a
time=10

[Command]
name = "BrianCyclone2"
command = ~B,DB,D,DF,F,b
time=20

[Command]
name = "BrianCyclone2"
command = ~40$B,F,b
time=10

[Command]
name = "test"
command = /B,s
time = 1

;--Kof Special Motion---
[Command]
name = "longjump"
command = D, $U
time = 15

[Command]
name = "knockdown"
command = y+b
time = 1

[Command]
name = "knockdown"
command = c
time = 1

[Command]
name = "charge"
command = x+y
time = 1

[Command]
name = "powerup"
command = a+b
time = 1

[Command]
name = "dodge"
command = x+a
time = 1

[Command]
name = "dodge"
command = z
time = 1

[Command]
name = "fwd_dodge"
command = /F, x+a
time = 1

[Command]
name = "back_dodge"
command = /B, x+a
time = 1

[Command]
name = "down_dodge"
command = /D, x+a
time = 1

[Command]
name = "fwd_dodge"
command = /F, z
time = 1

[Command]
name = "back_dodge"
command = /B, z
time = 1

[Command]
name = "down_dodge"
command = /D, z
time = 1
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
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
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
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

;-| Hold Button |-----------------------------------------------------------

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
name="start"
command=s
time=1
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

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================

;HyperP2
[State -1,HP2]
type = ChangeState
value = 3240
triggerall = command = "HyperPH"
triggerall = statetype != A
trigger1 = ctrl || ((hitdefattr = SC,NA) && movecontact)
triggerall = Var(10) = 0
triggerall = Var(2) > 0
triggerall = Power >= 1000

;HyperP2
[State -1,HP2]
type = ChangeState
value = 3230
triggerall = command = "HyperPL"
triggerall = statetype != A
trigger1 = ctrl || ((hitdefattr = SC,NA) && movecontact)
triggerall = Var(10) = 0
triggerall = Var(2) > 0
triggerall = Power >= 1000

;HyperP2
[State -1,HP2]
type = ChangeState
value = 3240
triggerall = command = "HyperP2"
triggerall = statetype != A
trigger1 = ctrl || ((hitdefattr = SC,NA) && movecontact)
triggerall = Var(10) = 0
triggerall = Var(2) > 0
trigger1 = Power >= 1000

;HyperP2
[State -1,HP2]
type = ChangeState
value = 3240
triggerall = command = "HyperP2"
triggerall = statetype != A
trigger1 = ctrl || ((hitdefattr = SC,NA) && movecontact)
triggerall = Var(10) = 0
triggerall = Var(2) = 0
trigger1 = Power >= 2000

;HyperP2
[State -1,HPH]
type = ChangeState
value = 3220
triggerall = command = "HyperPH"
triggerall = statetype != A
trigger1 = ctrl
triggerall = Var(10) = 0
triggerall = Var(2) = 0
triggerall = Power >= 1000
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact = 1

;HyperP2
[State -1,HPL]
type = ChangeState
value = 3200
triggerall = command = "HyperPL"
triggerall = statetype != A
trigger1 = ctrl
triggerall = Var(10) = 0
triggerall = Var(2) = 0
triggerall = Power >= 1000
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact = 1

;HyperK2
[State -1,HK2]
type = ChangeState
value = 3020
triggerall = command = "HyperK"
triggerall = statetype != A
trigger1 = ctrl
triggerall = Var(2) > 0
triggerall = Power >= 1000
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact = 1

;HyperK
[State -1,HK]
type = ChangeState
value = 3010
triggerall = command = "HyperK"
triggerall = statetype != A
trigger1 = ctrl
triggerall = Var(2) = 0
triggerall = Power >= 1000
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact = 1

;HyperK3
[State -1,HK3]
type = ChangeState
value = 3010
triggerall = statetype != A
trigger1 = ctrl
triggerall = command = "HyperK2"
triggerall = Var(2) = 0
triggerall = Power <= 2000
triggerall = Power >= 1000
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact = 1

;HyperK2
[State -1,HK2]
type = ChangeState
value = 3020
triggerall = statetype != A
triggerall = ctrl||((hitdefattr = SC,NA) && movecontact)
triggerall = command = "HyperK2"
trigger1 = Var(2) = 0
trigger1 = Power >= 2000
trigger2 = Var(2) > 0
trigger2 = Power >= 1000

;HyperK4
[State -1,HK4]
type = ChangeState
value = 3030
triggerall = statetype != A
triggerall = ctrl||((hitdefattr = SC,NA) && movecontact)
triggerall = Var(2) > 0
triggerall = Life <= 100
trigger1 = command = "HyperK"
trigger2 = command = "HyperK2"

;;;;;;;;;;test
;[State -1,test]
;type = ChangeState
;value = 1110
;triggerall = command = "fwd_b"
;trigger1 = statetype != A
;trigger1 = ctrl = 1
;trigger2 = hitdefattr = SC,NA
;trigger2 = movecontact = 1

;BrianHammer
[State -1]
type = ChangeState
value = 1050
triggerall = command = "Hammer"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact = 1

;SuperCombo-L
[State -1]
type = ChangeState
value = 1040
triggerall = command = "SuperCombo1"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact = 1

;SuperCombo-H
[State -1]
type = ChangeState
value = 1045
triggerall = command = "SuperCombo2"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact = 1

;ScrewBodyPress-L
[State -1]
type = ChangeState
value = 1030
triggerall = command = "ScrewBodyPress1"
triggerall = stateno != 1030
triggerall = stateno != 1035
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno =105
trigger3 = hitdefattr = A,NA
trigger3 = movecontact = 1

;ScrewBodyPress-H
[State -1]
type = ChangeState
value = 1035
triggerall = command = "ScrewBodyPress2"
triggerall = stateno != 1030
triggerall = stateno != 1035
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno =105
trigger3 = hitdefattr = A,NA
trigger3 = movecontact = 1

;Rocket-L
[State -1]
type = ChangeState
value = 1020
triggerall = command = "Rocket1"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact = 1

;Rocket-H
[State -1]
type = ChangeState
value = 1025
triggerall = command = "Rocket2"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact = 1

;BrianCyclone-L
[State -1]
type = ChangeState
value = 1010
triggerall = command = "BrianCyclone1"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger2 = Time > 17
trigger3 = hitdefattr = SC,NA
trigger3 = movecontact = 1

;BrianCyclone-H
[State -1]
type = ChangeState
value = 1015
triggerall = command = "BrianCyclone2"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact = 1
trigger2 = Time > 18
trigger3 = hitdefattr = SC,NA
trigger3 = movecontact = 1

;-----------------------------
;投技破坏---研究中
;[State -1]
;type = ChangeState
;value = 242
;triggerall = Statetype != A
;trigger1 = P2MoveType = H
;trigger1 = MoveType = H
;trigger1 = Command = "b"
;trigger2 = Command = "y"

;投技破坏
;[State -1]
;type = ChangeState
;value = 242
;triggerall = Statetype != A
;trigger1 = (P2Stateno = 900)||(P2Stateno = 910)
;trigger1 = Command = "b"
;trigger2 = Command = "y"

;PowerUp
[State -1]
type = ChangeState
value = 270
triggerall = command = "powerup"
triggerall = stateno != 270
trigger1=Power>=1000
trigger1=var(2)=0
trigger1 = statetype = S
trigger1 = ctrl = 1

;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1

; Guard reversal
[State -1]
type = ChangeState
value = 243
triggerall = command = "knockdown"
triggerall = power >= 1000
trigger1 = stateno >= 150
trigger1 = stateno <= 153
trigger2 = stateno = 1150
trigger3 = stateno = 1151

; Guard reversal
[State -1]
type = ChangeState
value = 243
triggerall = command = "knockdown"
triggerall = Var(2)>0
trigger1 = stateno >= 150
trigger1 = stateno <= 153
trigger2 = stateno = 1150
trigger3 = stateno = 1151

; Air Knock
[State -1]
type = ChangeState
value = 241
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "knockdown"

; Standing knockdown attack
[State -1]
type = ChangeState
value = 240
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "knockdown"

; Guard cancel roll (backwards)
[State -1]
type = ChangeState
value = 256
triggerall = command = "back_dodge"
triggerall = power >= 1000
trigger1 = stateno >= 150
trigger1 = stateno <= 153
trigger2 = stateno = 1150
trigger3 = stateno = 1151

; Guard cancel roll (forward)
[State -1]
type = ChangeState
value = 255
triggerall = power >= 1000
triggerall = command = "dodge"
trigger1 = stateno >= 150
trigger1 = stateno <= 153
trigger2 = stateno = 1150
trigger3 = stateno = 1151

; Guard cancel roll (backwards)
[State -1]
type = ChangeState
value = 256
triggerall = Var(2)>0
triggerall = command = "back_dodge"
trigger1 = stateno >= 150
trigger1 = stateno <= 153
trigger2 = stateno = 1150
trigger3 = stateno = 1151

; Guard cancel roll (forward)
[State -1]
type = ChangeState
value = 255
triggerall = Var(2)>0
triggerall = command = "dodge"
trigger1 = stateno >= 150
trigger1 = stateno <= 153
trigger2 = stateno = 1150
trigger3 = stateno = 1151

; Power charge
[State -1]
type = ChangeState
value = 260
trigger1 = command = "charge"
trigger1 = Var(2) = 0
trigger1 = power < 3000
trigger1 = statetype = S
trigger1 = ctrl = 1

;Dodge Fwd
[State -1]
type = ChangeState
value = 253
triggerall = stateno != 253
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "fwd_dodge"

;Dodge Back
[State -1]
type = ChangeState
value = 254
triggerall = stateno != 254
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "back_dodge"

;HopReverse
[State -1]
type = ChangeState
value = 257
triggerall = stateno != 257
trigger1 = statetype = C
triggerall = ctrl = 1
trigger1 = command = "down_dodge"

;Dodge AB
[State -1]
type = ChangeState
value = 250
triggerall = command = "dodge"
triggerall = stateno != 250
trigger1 = statetype = S
trigger1 = ctrl = 1

;Dodge Ret
[State -1]
type = ChangeState
value = 252
triggerall = stateno = 250
;triggerall = animelem = 2, < 0
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "x"
trigger4 = command = "y"
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
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5
trigger1 = command = "fwd_b"
trigger1 = stateno != 100
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger2 = command = "back_b"
trigger2 = p2statetype != A
trigger2 = p2movetype != H

;Stand_Throw (close dir+y)
[State -1]
type = ChangeState
value = 910
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5
trigger1 = command = "fwd_y"
trigger1 = stateno != 100
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger2 = command = "back_y"
trigger2 = p2statetype != A
trigger2 = p2movetype != H
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

;===========================================================================
;---------------------------------------------------------------------------
;Stand_A_Close
[State -1]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 6
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_B_Close
[State -1]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 6
trigger1 = statetype = S
trigger1 = ctrl = 1

;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = time >= 10
trigger3 = stateno = 200
trigger3 = time >= 12

;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
trigger2 = Time > 10

;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_B_2
[State -1]
type = ChangeState
value = 615
trigger1 = command = "down_b"
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

;Stand_X_Close
[State -1]
type = ChangeState
value = 225
triggerall = command = "x";
triggerall = command != "holddown"
triggerall = P2bodydist X <= 6
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_Y_Close
[State -1]
type = ChangeState
value = 235
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 6
trigger1 = statetype = S
trigger1 = ctrl = 1

;Stand_X
[State -1]
type = ChangeState
value = 220
triggerall = command = "x";
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
trigger2 = Time > 12
;---------------------------------------------------------------------------
;Stand_Y
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_X
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
trigger2 = Time > 10
trigger3 = stateno =420
trigger3 = movecontact = 0
trigger3 = Time > 8

;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
triggerall= stateno != 430
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = hitdefattr = C, NA
trigger2 = movecontact = 1
trigger2 = Time > 12

;---------------------------------------------------------------------------
;Jump_X
[State -1]
type = ChangeState
value = 620
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 630
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;====----AI区----====
[State -1, AI start]
type = Varset
triggerall = var(10) != 1
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
var(10) = 1

;站立防御
[State -1]
type = ChangeState
value = 130
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = random <= 700
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = ctrl
trigger1 = stateno != [120,160]
trigger1 = stateno != [1120,1160]

;蹲态防御
[State -1]
type = ChangeState
value = 131
triggerall = P2movetype = A
triggerall = P2bodydist X <= 40
triggerall = P2life != 0
triggerall = statetype != A
triggerall = random <= 700
triggerall = var(10) = 1
triggerall = ctrl
triggerall = p2statetype = C
trigger1 = stateno != [120,160]
trigger1 = stateno != [1120,1160]

;空中防御
[State -1]
type = ChangeState
value = 132
triggerall = P2movetype = A
triggerall = P2bodydist X <= 40
triggerall = P2life != 0
triggerall = statetype = A
triggerall = random <= life
triggerall = var(10) = 1
triggerall = ctrl
trigger1 = stateno != [120,160]
trigger1 = stateno != [1120,1160]
;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 253
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = random <= 100
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = ctrl
triggerall = p2statetype = S
trigger1 = stateno != [120,160]
trigger1 = stateno != [1120,1160]

[State -1]
type = ChangeState
value = 254
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = random <= 100
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = ctrl
triggerall = p2statetype = S
trigger1 = stateno != [120,160]
trigger1 = stateno != [1120,1160]

[State -1]
type = ChangeState
value = 250
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = random <= 600
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = ctrl
triggerall = p2statetype = S
trigger1 = stateno != [120,160]
trigger1 = stateno != [1120,1160]

;[State -1,groundrecover]
;type = ChangeState
;value = 253
;triggerall = life > 0
;triggerall = random <= 700;high percent
;triggerall = canrecover
;triggerall = var(10) = 1;only AI can access
;trigger1 = Vel Y > 0 && Pos Y >= 0
;trigger1 = stateno = [5050,5060]

[State -1,扫]
type = ChangeState
value = 430
triggerall = P2bodydist X <= 30
triggerall = random >= Life - 800 
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = ctrl
triggerall = p2statetype = S
trigger1 = P2StateNo = 12

[State -1,扫]
type = ChangeState
value = 420
triggerall = P2bodydist X <= 45
triggerall = random <= 400
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = ctrl
triggerall = p2statetype = S
trigger1 = P2StateNo = 12

[State -1,对空]
type = ChangeState
value = 410
triggerall = P2bodydist X <= 30
triggerall = random <= 800 
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = ctrl
triggerall = P2life != 0
trigger1 = P2statetype = A
trigger1 = P2movetype != A
trigger1 = P2bodydist Y <= 20

[State -1,对空]
type = ChangeState
value = 1025
triggerall = P2bodydist X <= 30
triggerall = random >= 500
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = ctrl
triggerall=MatchOver=0
trigger1 = P2statetype = A
trigger1 = P2movetype = A
trigger1 = P2bodydist Y <= 12
trigger1 = P2StateNo < 1000

[State -1,投]
type = ChangeState
value = 900
triggerall = P2bodydist X <= 10
triggerall = random <= 100
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = ctrl
trigger1 = P2statetype != A

[State -1,投]
type = ChangeState
value = 910
triggerall = P2bodydist X <= 10
triggerall = Random <= 100
triggerall = statetype != A
triggerall = var(10) = 1
triggerall = ctrl
trigger1 = P2statetype != A

[State -1,Screw]
type = ChangeState
value = 1030
triggerall = Random <= 100
triggerall = var(10) = 1
trigger1 = stateno = 105
trigger2 = stateno = 257
trigger2 =AnimElem=6

;启动Stand_A_Close
[State -1]
type = ChangeState
value = 205
triggerall = Random <= 600
triggerall = var(10) = 1
triggerall = P2bodydist X <= 8
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2statetype != A

[State -1]
type = ChangeState
value = 205
triggerall = Random <= 600
triggerall = var(10) = 1
triggerall = P2bodydist X = [8,20]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2statetype != A

;后落地接超级打击
[State -1]
type=ChangeState
value=1040
triggerall = ctrl = 1
triggerall=Random<=160
triggerall=var(10)=1
trigger1=Stateno=52
trigger1=Var(8)<0

[State -1]
type=ChangeState
value=1045
triggerall = ctrl = 1
triggerall=Random<=80
triggerall=var(10)=1
trigger1=Stateno=52
trigger1=Var(8)<0

;以超级打击做打击防御
[State -1]
type = ChangeState
value =1040
triggerall = Random <= 600
triggerall = var(10) = 1
triggerall = P2bodydist X = [25,40];太近有被攻击第二次的危险
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = P2statetype != A
trigger1=P2Stateno=[200,600]

;绝地连招!!!---1、我跳
;[State -1]
;type=VarSet
;triggerall = var(11) != 1
;triggerall = Random <= 800
;trigger1 = P2bodydist X = 50
;var(11) = 1

;[State -1]
;type=ChangeState
;value=40
;triggerall=StateNo !=[40,50]
;trigger1=var(11)=1
;
;[State -1]
;type=Varset
;triggerall=StateNo !=[40,50]
;trigger1=var(11)=1
;var(8)=1
;
;[State -1]
;type=VarSet
;trigger1 = var(11)>0
;trigger1 = StateNo= 0
;var(11) = 0
;
;[State -1]
;type=VarSet
;trigger1 = var(11) = 1
;trigger1 = StateNo= 52
;var(11) = 2

;越过对手头顶时发动螺旋压，造成百合折效果。
[State -1]
type=ChangeState
value=1030
triggerall=var(10)=1
triggerall=ctrl=1
trigger1=StateType=A
trigger1=Var(8)>0
triggerall=StateNo!=1030
trigger1=P2bodydist Y>=60
trigger1=P2bodydist X<=10

[State -1]
type=ChangeState
value=215
triggerall=MatchOver=0
triggerall=var(10)=1
triggerall=StateType=S
triggerall=ctrl=1
triggerall=P2bodydist X<=6
trigger1=PrevStateNo=52

;紧身接BrianHammer
[State -1]
type=ChangeState
value=1050
triggerall=Random<=600
triggerall=var(10)=1
triggerall=Stateno=215
triggerall=MoveHit
trigger1=AnimElem=2
trigger2=AnimElem=3
trigger3=AnimElem=4

[State -1,PowUp]
type=ChangeState
value=260
triggerall=Random<=200
triggerall=var(10)=1
trigger1=StateType=S
triggerall=ctrl=1
triggerall=MatchNo=2
trigger1=Power<=1000
trigger1=P2bodydist X>=36