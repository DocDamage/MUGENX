;-| Super Motions |--------------------------------------------------------
[Command]
name = "SuperLa輟"
command = ~D, DF, F, x+y
time = 25

[Command] 
name = "SuperLa輟"   ;Same name as above
command = ~D, DF, F, y+z
time = 25

[Command]
name = "spirit"
command = ~D, DF, F, a+b
time = 25

[Command]
name = "spirit"
command = ~D, DF, F, b+c
time = 25

[Command]
name = "amazonfury"
command = ~D, DB, B, x+y
time = 25

[Command]
name = "amazonfury"
command = ~D, DB, B, y+z
time = 25

[Command]
name = "InvisibleJet"
command = ~D, DF, F, D, DF, F, x
time = 25

[Command]
name = "InvisibleJet"
command = ~D, DF, F, D, DF, F, y
time = 25

[Command]
name = "InvisibleJet"
command = ~D, DF, F, D, DF, F, z
time = 25

;-| Special Motions |------------------------------------------------------

[Command]
name = "earthquake_x"
command = ~D, DF, F, x 

[Command]
name = "earthquake_y"
command = ~D, DF, F, y 

[Command]
name = "earthquake_z"
command = ~D, DF, F, z 

[Command]
name = "hstomp_x"
command = ~F, D, F, a

[Command]
name = "hstomp_y"
command = ~F, D, F, b

[Command]
name = "hstomp_z"
command = ~F, D, F, c

; Dragon Lasso
[Command]
name = "FDF_x"
command = ~F, D, DF, x

; Dragon Lasso
[Command]
name = "FDF_y"
command = ~F, D, DF, y

; Dragon Lasso
[Command]
name = "FDF_z"
command = ~F, D, DF, z

[Command]
name = "voo"
command = ~D, B, a+b

[Command]
name = "voo"
command = ~D, B, b+c

[Command]
name ="reflection"
command = ~D, B, x

[Command]
name ="reflection"
command = ~D, B, y

[Command]
name ="reflection"
command = ~D, B, z

[Command]
name = "doublekick"
command = ~D, DF, F, a

[Command]
name = "doublekick"
command = ~D, DF, F, b

[Command]
name = "doublekick"
command = ~D, DF, F, c

[Command]
name = "Flyingkick"
command = ~U, F, B, D, U

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
command = x+y
time = 1

[Command]
name = "superjump1"
command = a+b+c
time = 10

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
name = "superjump"
command = $D, $U
time = 10

;---------------------------------------------------------------------------
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------

;Invisible Jet (Level 3 super)
[State -1, Invisible Jet]
type = ChangeState
value = 3800
triggerall = command = "InvisibleJet"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = palno != 8 && palno!= 9
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;Super La輟 (uses one super bar)
[State -1, Super La輟]
type = ChangeState
value = 3000
triggerall = command = "SuperLa輟"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;Spirit of truth
[State -1, Spirit of truth]
type = ChangeState
value = 3100
triggerall = command = "spirit"
triggerall = power >= 1000 || Var(29) > 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;Amazon Fury 
[State -1, amazonfury]
type = ChangeState
value = 3700
triggerall = command = "amazonfury"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;---------------------------------------------------------------------------
;Voo
;Flying
[State -1]
type = ChangeState
trigger1 = Pos Y < 0
trigger1 = command = "voo"
trigger1 = statetype = A
trigger1 = ctrl = 1
value = 2000

[State -1]
type = ChangeState
value = 2050
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command = "voo"
trigger1 = palno != 8

;===========================================================================
;---------------------------------------------------------------------------
;Head Stomp
[State -1, Head Stomp]
type = ChangeState
value = 1020
triggerall = command = "hstomp_x" || command = "hstomp_y" || command = "hstomp_z"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Light dragon lasso]
type = ChangeState
value = 1300
triggerall = command = "FDF_x"
triggerall = statetype != A
trigger1 = ctrl

[State -1, medium dragon lasso]
type = ChangeState
value = 1400
triggerall = command = "FDF_y"
triggerall = statetype != A
trigger1 = ctrl

[State -1, hard dragon lasso]
type = ChangeState
value = 1500
triggerall = command = "FDF_z"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;earthquake_X
[State -1]
type = ChangeState
value = 300
triggerall = command = "earthquake_x"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200        ;Stand_a
trigger3 = stateno = 230        ;Stand_x
trigger3 = MoveContact
trigger4 = stateno = 240        ;stand_y
trigger4 = MoveContact
trigger5 = stateno = 250        ;stand_z
trigger5 = MoveContact
trigger6 = stateno = 400        ;crouch_a
trigger6 = MoveContact
trigger6 = time > 7
trigger7 = stateno = 430        ;crouch_x
trigger7 = MoveContact
trigger7 = time > 6
trigger8 = stateno = 440        ;crouch_y
trigger8 = MoveContact
trigger9 = stateno = 355        ;stand_back_z
trigger9 = MoveContact
trigger10 = stateno = 245       ;stand_y (close)
trigger10 = MoveContact

;---------------------------------------------------------------------------
;earthquake_Y
[State -1]
type = ChangeState
value = 301
triggerall = command = "earthquake_y"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200        ;Stand_a
trigger3 = stateno = 230        ;Stand_x
trigger3 = MoveContact
trigger4 = stateno = 240        ;stand_y
trigger4 = MoveContact
trigger5 = stateno = 250        ;stand_z
trigger5 = MoveContact
trigger6 = stateno = 400        ;crouch_a
trigger6 = MoveContact
trigger6 = time > 7
trigger7 = stateno = 430        ;crouch_x
trigger7 = MoveContact
trigger7 = time > 6
trigger8 = stateno = 440        ;crouch_y
trigger8 = MoveContact
trigger9 = stateno = 355        ;stand_back_z
trigger9 = MoveContact
trigger10 = stateno = 245       ;stand_y (close)
trigger10 = MoveContact

;---------------------------------------------------------------------------
;earthquake_z
[State -1]
type = ChangeState
value = 302
triggerall = command = "earthquake_z"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200        ;Stand_a
trigger3 = stateno = 230        ;Stand_x
trigger3 = MoveContact
trigger4 = stateno = 240        ;stand_y
trigger4 = MoveContact
trigger5 = stateno = 250        ;stand_z
trigger5 = MoveContact
trigger6 = stateno = 400        ;crouch_a
trigger6 = MoveContact
trigger6 = time > 7
trigger7 = stateno = 430        ;crouch_x
trigger7 = MoveContact
trigger7 = time > 6
trigger8 = stateno = 440        ;crouch_y
trigger8 = MoveContact
trigger9 = stateno = 355        ;stand_back_z
trigger9 = MoveContact
trigger10 = stateno = 245       ;stand_y (close)
trigger10 = MoveContact

;---------------------------------------------------------------------------
;Flying Kick
[State -1]
type = ChangeState
value = 1200
triggerall = command = "doublekick"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200        ;Stand_a
trigger3 = stateno = 230        ;Stand_x
trigger3 = MoveContact
trigger4 = stateno = 240        ;stand_y
trigger4 = MoveContact
trigger5 = stateno = 250        ;stand_z
trigger5 = MoveContact
trigger6 = stateno = 400        ;crouch_a
trigger6 = MoveContact
trigger6 = time > 7
trigger7 = stateno = 430        ;crouch_x
trigger7 = MoveContact
trigger7 = time > 6
trigger8 = stateno = 440        ;crouch_y
trigger8 = MoveContact
trigger9 = stateno = 355        ;stand_back_z
trigger9 = MoveContact
trigger10 = stateno = 245       ;stand_y (close)
trigger10 = MoveContact

;-----------------------------------------------------------------------
;Fireball reflection
[State -1, Reflection]
type = Changestate
value = 700
triggerAll = command = "reflection"
trigger1 = ctrl = 1
trigger1 = statetype = S

;---------------------------------------------------------------------------
;Flying Kick
[State -1]
type = ChangeState
value = 1610
triggerall = command = "Flyingkick"
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 1045
trigger1 = command = "superjump"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = command = "superjump1"
trigger2 = statetype != A
trigger2 = ctrl = 1


;---------------------------------------------------------------------------
;Throw
;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = animelem >= 3
trigger2 = stateno = 200

;---------------------------------------------------------------------------
;Stand Medium Punch
;立ち強パンチ
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 200

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 210
trigger3 = MoveContact
trigger3 = stateno = 240

;---------------------------------------------------------------------------
;Stand Light Kick
;-ｧち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Standing Medium Kick
;立ち強キック
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 230

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1,Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = MoveContact
trigger2 = stateno = 240

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Crouching Medium Punch
;しゃがみ強パンチ
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (stateno = 410) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 4)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Kick
;しゃがみ強キック
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact ;(stateno = 430) || (stateno = 430)
trigger2 = stateno = 430 ;(time > 10) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 440)
trigger2 = (time > 9) || (movecontact && time > 4)

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600
;trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600

;---------------------------------------------------------------------------
;Jump Medium Kick
;空中強キック
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 640 ;jump_x or jump_a
trigger2 = movecontact

[State -1]
type = Varset
trigger1 = stateno = 0
v=4
value = 0

[State -1]
type = Varset
trigger1 = stateno != 2001
trigger1 = stateno != 600
trigger1 = stateno != 610
trigger1 = stateno != 620
trigger1 = stateno != 630
trigger1 = stateno != 640
trigger1 = stateno != 650
v=5
value = 0

[State -1]
type = Varadd
trigger1 = var(5) = 5000 
trigger1 = time > 0
v=4
value = 1

[State -1]
type = Varset
trigger1 = var(4) = 459
v=5
value = 0