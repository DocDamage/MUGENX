;|***************************************KARL'S CMD FILE*******************************************|
;|                                 2003/2004 mulambo production                                    |
;|																   |
:|                      PLEASE  DON'T MODIFY THIS FILE AND/OR OTHERs KARL'S                        |
;|                               FILES WITHOUT ANY PERMISSION.                                     |
;|																   |
;|e-mail address::                   mulambo_mc@katamail.com                                       |
;|visit the site::                  http:\\mastercount.too.it                                      |
;|*************************************************************************************************| 
;-| Hyper Motions |---------------------------------------------------
[Command]
name = "gal"
command = D,DF,F,D,DF,F,y
time = 28

[Command]
name = "staff"
command = D,DF,F,D,DF,F,a+b
;command = c
time = 30

[Command]
name = "mtaff"
command = D,DF,F,D,DF,F,b
;command = c
time = 30


[Command]
name = "wtaff"
command = D,DF,F,D,DF,F,a
;command = c
time = 30


[Command]
name = "ass1"
command = D,DF,F,D,DB,B,x+y
time = 28

[Command]
name = "ass2"
command = D,DF,F,D,DB,B,y
time = 25

[Command]
name = "ass3"
command = D,DF,F,D,DB,B,x
time = 25

[Command]
name = "haho"
command = F,B,DB,D,DF,F,x+y
time = 31

[Command]
name = "haho1"
command = F,B,DB,D,DF,F,y
time = 31

[Command]
name = "haho2"
command = F,B,DB,D,DF,F,x
time = 31

;-| Super Motions |---------------------------------------------------


[Command]
name = "gedan"
command = D, DB, B, x
time = 15

[Command]
name = "ucchi"
command = D, DB, B, y
time = 15

[Command]
name = "kohouken_x"
command = ~D,  DF,  F,  x
time = 15

[Command]
name = "kohouken_y"
command = ~D,  DF,  F,  y
time = 15

[Command]
name = "double1"
command = ~D,  DF,  F,  b
time = 15

[Command]
name = "double2"
command = ~D,  DF,  F,  a
time = 15

[Command]
name = "senpu1"
command = D, DB, B, b
time = 14

[Command]
name = "senpu2"
command = D, DB, B, a
time = 14

[Command]
name = "hien_b"
command = ~F, D, B, b
time = 8

[Command]
name = "zanretsuken_x"
command = ~F, B, F, x
time = 15

[Command]
name = "zanretsuken_y"
command = ~F, B, F, y
time = 15

[Command]
name = "upper1"
command = ~F, D, DF, y
time = 15

[Command]
name = "upper2"
command = ~F, D, DF, x
time = 15

[Command]
name = "upper3"
command = ~F, D, DF, x+y
time = 20

[Command]
name = "upper2"
command = ~F, D, DF, x
time = 20

[Command]
name = "rise1"
command = ~32$B, F, a
time = 10

[Command]
name = "rise2"
command = ~32$B, F, b
time = 10

[Command]
name = "CD"
command = y+b



;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1

[Command]
name = "CD"
command = c

[Command]
name = "roll3"
command = z

[Command]
name = "charge-p"
command = x+y

[Command]
name = "charge-k"
command = a+b

[Command]
name = "all"
command = a+b+x+y
time = 1

;-| Dir + Button |----------------------------------------------------
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
name = "fwd+y"
command = F,y
time = 2

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
name = "downfwd_x"
command = /DF,x
time = 1

;-| Single Button |---------------------------------------------------
[Command]
name = "x"
command = x
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "y"
command = y
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
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------
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
name = "hold_s"
command = /$s
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$z
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_c"
command = /$z
time = 1



;***************************************************************************
;					 STATE ENTRY
;***************************************************************************
;---------------------------------------------------------------------------


[Statedef -1]


;***************************************************************************
;*												   *
;================================HYPER MOVES===============================*
;*											         *
;***************************************************************************
;---------------------------------------------------------------------------
;Strong Moresko Assault
[State -1]
type = ChangeState
value = 3005
triggerall = command = "ass1"
triggerall = statetype != A ;&& FrontEdgeBodyDist >= 35
triggerall = power >= 3000
;triggerall = var(4) = 0
trigger1 = ctrl = 1
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 

;---------------------------------------------------------------------------
;Medium Moresko Assault
[State -1]
type = ChangeState
value = 3003
triggerall = command = "ass2"
triggerall = statetype != A ;&& FrontEdgeBodyDist >= 35
triggerall = power >= 2000
;triggerall = var(4) = 0
trigger1 = ctrl = 1
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 

;---------------------------------------------------------------------------
;Weak Moresko Assault
[State -1]
type = ChangeState
value = 3000
triggerall = command = "ass3"
triggerall = statetype != A ;&& FrontEdgeBodyDist >= 35
triggerall = power >= 1000
;triggerall = var(4) = 0
trigger1 = ctrl = 1
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact

;---------------------------------------------------------------------------
;Strong "T'Affierru!" Assault
[State -1]
type = ChangeState
value = 3220
triggerall = command = "staff"
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = ctrl = 1
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact  

;---------------------------------------------------------------------------
;Medium "T'Affierru!" Assault
[State -1]
type = ChangeState
value = 3210
triggerall = command = "mtaff"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 

;---------------------------------------------------------------------------
;Weak "T'Affierru!" Assault
[State -1]
type = ChangeState
value = 3200
triggerall = command = "wtaff"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 


;---------------------------------------------------------------------------
;Galatica Phantom 
[State -1]
type = ChangeState
value = 3050
triggerall = command = "gal"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 310
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
; Strong Haho
[State -1]
type = ChangeState
value = 3115
triggerall = command = "haho"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Medium Haho
[State -1]
type = ChangeState
value = 3110
triggerall = command = "haho1"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Weak Haho
[State -1]
type = ChangeState
value = 3100
triggerall = command = "haho2"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;***************************************************************************
;*												   *
;==============================SPECIAL MOVES===============================*
;*											         *
;***************************************************************************
;---------------------------------------------------------------------------
;Mishima's Upper Cut
[State -1,m]
type = ChangeState
value = 1018
triggerall = command = "upper3"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Strong Upper Cut
[State -1,c]
type = ChangeState
value = 1015
triggerall = command = "upper1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 
trigger10 = (stateno = 1002) && movecontact 
;---------------------------------------------------------------------------
;Weak Upper Cut
[State -1,z]
type = ChangeState
value = 1016
triggerall = command = "upper2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 
trigger10 = (stateno = 1002) && movecontact 
;---------------------------------------------------------------------------
;Strong Senpu Kyaku
[State -1,Senpu kyaku]
type = ChangeState
value = 1120
triggerall = Command = "senpu1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 
trigger10 = (stateno = 1002) && movecontact 
;---------------------------------------------------------------------------
;Weak Senpu Kyaku
[State -1,Senpu kyaku]
type = ChangeState
value = 1121
triggerall = Command = "senpu2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 
trigger10 = (stateno = 1002) && movecontact 
;---------------------------------------------------------------------------
;Strong Double Kick
[State -1,]
type = ChangeState
value = 1110
triggerall = command = "double2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 
trigger10 = (stateno = 1002) && movecontact 
;---------------------------------------------------------------------------
;Weak Double Kick
[State -1,]
type = ChangeState
value = 1115
triggerall = command = "double1"
triggerall = var(9) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 
trigger10 = (stateno = 1002) && movecontact 
;---------------------------------------------------------------------------
;Weak Ko'ouken
[State -1,Weak Ko'ouken]
type = ChangeState
value = 1000
triggerall = command = "kohouken_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 
trigger10 = (stateno = 1002) && movecontact 
;---------------------------------------------------------------------------
;Strong Ko'ouken
[State -1,Strong Ko'ouken]
type = ChangeState
value = 1001
triggerall = command = "kohouken_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 
trigger10 = (stateno = 1002) && movecontact 
;---------------------------------------------------------------------------
;Weak Zanretsuken
[State -1,Weak Zanretsuken]
type = ChangeState
value = 1200
triggerall = command = "zanretsuken_x"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 
trigger10 = (stateno = 1002) && movecontact 
;---------------------------------------------------------------------------
;Strong zanretsuken
[State -1,Strong zanretsuken]
type = ChangeState
value = 1250
triggerall = command = "zanretsuken_y"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 
trigger10 = (stateno = 1002) && movecontact 
;---------------------------------------------------------------------------
;Weak Rising Sun
[State -1,rs]
type = ChangeState
value = 1300
triggerall = P2Bodydist X >= 17
triggerall = command = "rise1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 
;---------------------------------------------------------------------------
;Strong Rising Sun
[State -1,rs]
type = ChangeState
value = 1303
triggerall = command = "rise2" 
triggerall = P2Bodydist X >= 17
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 
;---------------------------------------------------------------------------
; Crouching Parry
[State -1]
type = ChangeState
value = 1350
triggerall = command = "gedan"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Standing Parry
[State -1]
type = ChangeState
value = 1351
triggerall = command = "ucchi"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;2 Hands Smash
[State -1, 2]
type = ChangeState
value = 1500
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Falling Sun
[State -1, 2]
type = ChangeState
value = 631
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Charge
[State -1] 
type = ChangeState
value = 700
triggerall = command = "charge-p"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = life > 0 && statetype != A
triggerall = power < 3000
trigger1 = ctrl

;---------------------------------------------------------------------------
; Punch Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command = "charge-p"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 
trigger10 = (stateno = 1002) && movecontact 
trigger11 = (stateno = 1002) && AnimTime = 0
;---------------------------------------------------------------------------
; Kick Throw
[State -1, kThrow]
type = ChangeState
value = 804
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command = "charge-k"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 
trigger10 = (stateno = 1002) && movecontact 
trigger11 = (stateno = 1002) && AnimTime = 0
;---------------------------------------------------------------------------
; Forward Roll
[State -1]
type = ChangeState
value = 840
triggerall = command = "holdfwd" && command = "recovery"
trigger1 = statetype = S
trigger1 = ctrl 

;---------------------------------------------------------------------------
; Back Roll
[State -1]
type = ChangeState
value = 841
triggerall = command = "holdback" && command = "recovery"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Running Slide Kick
[State -1]
type = ChangeState
value = 1710
triggerall = command = "a"
triggerall = stateno = 100 && time >=8
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; Running Slash Kick
[State -1]
type = ChangeState
value = 1711
triggerall = command = "b"
triggerall = stateno = 100 && time >=8
trigger1 = statetype = S
trigger1 = ctrl



;***************************************************************************
;*												   *
;===============================NORMAL MOVES===============================*
;*											         *
;***************************************************************************



;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Strong Punch (Left DownPunch)
[State -1, lo]
type = ChangeState
value = 1002
triggerall = command = "holdfwd"
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact 
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 245) && movecontact 
trigger6 = (stateno = 246) && movecontact
trigger7 = (stateno = 240) && movecontact 
trigger8 = (stateno = 210) && movecontact
trigger9 = (stateno = 230) && movecontact 
trigger10 = (stateno = [600,688]) && movecontact && statetype = S
trigger11 = (stateno = 840) && AnimTime = 0
trigger12= (stateno = 841) && AnimTime = 0



;---------------------------------------------------------------------
;Stand Strong Kick Forward
[State -1,ssk]
type = ChangeState
value = 242
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = stateno != 100 
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 230) && movecontact && time >= 9
trigger3 = (stateno = 205) && movecontact
trigger4 = (stateno = 245) && movecontact
trigger5 = (stateno = [600,699]) && movecontact
trigger5 = statetype != A
trigger6 = (stateno = [600,688]) && movecontact && statetype = S
trigger7 = (stateno = 840) && AnimTime = 0
trigger8 = (stateno = 841) && AnimTime = 0

;---------------------------------------------------------------------
;Stand Weak Punch
[State -1,swp]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist   X >= 12
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 230) && movecontact && time >= 12 
trigger3 = (stateno = [600,699]) && movecontact
trigger3 = statetype != A
trigger4 = (stateno = [600,688]) && movecontact && statetype = S
trigger5 = (stateno = 840) && AnimTime = 0
trigger6= (stateno = 841) && AnimTime = 0
;---------------------------------------------------------------------
;Near Weak Punch
[State -1,nwp]
type = ChangeState
value = 245
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X < 12
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = 241) && movecontact && time > 22
trigger4 = (stateno = [600,699]) && movecontact
trigger4 = statetype != A
trigger5 = (stateno = 840) && AnimTime = 0
trigger6= (stateno = 841) && AnimTime = 0
;---------------------------------------------------------------------
;Stand Weak Right Punch
[State -1,swrp]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist   X >= 12
trigger1 = statetype = S
trigger1 = ctrl 
triggerall = stateno = 200 

;---------------------------------------------------------------------
;Stand Weak Kick
[State -1,swk]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 15
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 200) && movecontact && var(2)!=1
trigger2 = time >= 3
trigger3 = (stateno = [600,699]) && movecontact
trigger3 = statetype != A
trigger4 = (stateno = 840) && AnimTime = 0
trigger5= (stateno = 841) && AnimTime = 0
;---------------------------------------------------------------------
;Near Weak Kick
[State -1,nwk]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X < 15
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 245) && movecontact
trigger3 = (stateno = [600,699]) && movecontact
trigger3 = statetype != A
trigger4 = (stateno = 840) && AnimTime = 0
trigger5= (stateno = 841) && AnimTime = 0
;---------------------------------------------------------------------
;Stand Strong Punch
[State -1,ssp]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist   X >= 25
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = [600,699]) && movecontact
trigger3 = statetype != A
trigger4 = (stateno = 840) && AnimTime = 0
trigger5= (stateno = 841) && AnimTime = 0

;---------------------------------------------------------------------
;Near Strong Punch
[State -1,nsk]
type = ChangeState
value = 246
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X < 25
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 245) && movecontact
trigger3 = (stateno = 241) && movecontact && time > 24
trigger4 = (stateno = [600,699]) && movecontact
trigger4 = statetype != A
trigger5 = (stateno = 840) && AnimTime = 0
trigger6= (stateno = 841) && AnimTime = 0
;---------------------------------------------------------------------
;Stand Strong Kick
[State -1,ssk]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 14
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = (stateno = 230) && movecontact && time >= 9
trigger3 = (stateno = 205) && movecontact
trigger4 = (stateno = 245) && movecontact
trigger5 = (stateno = [600,699]) && movecontact
trigger5 = statetype != A
trigger6 = (stateno = 840) && AnimTime = 0
trigger7= (stateno = 841) && AnimTime = 0
;---------------------------------------------------------------------
;Near Strong Kick
[State -1,nsk]
type = ChangeState
value = 241
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X < 14
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 205) && movecontact
trigger3 = (stateno = [600,699]) && movecontact
trigger3 = statetype != A
trigger4 = (stateno = 840) && AnimTime = 0
trigger5= (stateno = 841) && AnimTime = 0
;---------------------------------------------------------------------
;Crouching Weak Punch
[State -1,cwp]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (stateno = 430) && movecontact
trigger3 = (stateno = [600,699]) && movecontact
trigger3 = statetype != A
trigger4 = (stateno = 840) && AnimTime = 0
trigger5= (stateno = 841) && AnimTime = 0
;---------------------------------------------------------------------
;Crouching Weak Kick
[State -1,cwk]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [600,699]) && movecontact
trigger3 = statetype != A
trigger4 = (stateno = 840) && AnimTime = 0
trigger5= (stateno = 841) && AnimTime = 0
;---------------------------------------------------------------------
;Crouching Strong Punch
[State -1,csp]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = [600,699]) && movecontact
trigger3 = statetype != A
trigger4 = (stateno = 840) && AnimTime = 0
trigger5= (stateno = 841) && AnimTime = 0
;---------------------------------------------------------------------
;Crouching Strong Kick
[State -1,csk]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 
trigger2 = (stateno = 430) && movecontact
trigger3 = (stateno = [600,699]) && movecontact 
trigger3 = statetype != A
trigger4 = (stateno = 840) && AnimTime = 0
trigger5= (stateno = 841) && AnimTime = 0
;---------------------------------------------------------------------
;Air Weak Punch
[State -1,awp]
type = ChangeState
value = ifelse (!Vel X, 600, 601)
triggerall = command = "x"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
;Air Weak Kick
[State -1,awk]
type = ChangeState
value = ifelse (!Vel X, 610, 630)
triggerall = command = "a"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
;Air Strong Punch
[State -1,asp]
type = ChangeState
value = ifelse (!Vel X, 611, 612)
triggerall = command = "y" && command != "holddown"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105

;---------------------------------------------------------------------
;Air Strong Kick
[State -1,ask]
type = ChangeState
value = ifelse (!Vel X, 640, 641)
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = StateNo != 105