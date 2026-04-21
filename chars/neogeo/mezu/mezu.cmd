; The CMD file.
;Mezu moves

;-| Super Motions |--------------------------------------------------------

[Command]
name = "JagaRangekiKyaku"
command = ~D, DF, F, x+y+z
[Command]
name = "JagaRangekiKyaku"
command = ~D, DF, F, x+y
[Command]
name = "JagaRangekiKyaku"
command = ~D, DF, F, y+z

[Command]
name = "Estalactite"
command = ~D, DF, F, a+b+c
[Command]
name = "Estalactite"
command = ~D, DF, F, a+b
[Command]
name = "Estalactite"
command = ~D, DF, F, b+c

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "magiaar"
command = ~D, DF, F, c

[Command]
name = "magiaar"
command = ~D, DF, F, z

[Command]
name = "furacao"
command = ~D, DF, F, b

[Command]
name = "furacao"
command = ~D, DF, F, y

[Command]
name = "giratoria"
command = ~D, DB, B, a

[Command]
name = "giratoria"
command = ~D, DB, B, x

[Command]
name = "freeze"
command = ~D, DF, F, a

[Command]
name = "freeze"
command = ~D, DF, F, x

[Command]
name = "magiabax"
command = ~D, DB, B, c

[Command]
name = "magiabax"
command = ~D, DB, B, z

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_b"
command = ~D, DB, B, y

[Command]
name = "magiatalons"
command = ~D, DF, F, c

[Command]
name = "magiatalons"
command = ~D, DF, F, z

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "F_z"
command = F, z

[Command]
name = "FF_b"
command = F, F, b

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
command = a+b
time = 1
name = "recovery"
command = x+y
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
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;"JagaRangekiKyaku" 
[State -1, chutes multiplos ex]
type = ChangeState
value = 3000
triggerall = command = "JagaRangekiKyaku"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact = 1
;===========================================================================
;"Estalactites" 
[State -1, estalactites ex]
type = ChangeState
value = 3100
triggerall = command = "Estalactite"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact = 1
;===========================================================================
;talons
[State -1, talons]
type = ChangeState
value = 1000
triggerall = command = "magiatalons"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact

;---------------------------------------------------------------------
;sequencia de chutes multiplos
[State -1, multiplos]
type = ChangeState
value = 1100
triggerall = command = "QCB_b"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------
;giratoria
[State -1, giratoria]
type = ChangeState
value = 1200
triggerall = command = "giratoria"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------
;freeze
[State -1, freeze]
type = ChangeState
value = 1500
triggerall = command = "freeze"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 1800)
trigger2 = movecontact
;---------------------------------------------------------------------
;magia abaixado
[State -1, magiabax]
type = ChangeState
value = 1800
triggerall = command = "magiabax"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 1500)
trigger2 = movecontact
;---------------------------------------------------------------------
;magia no ar
[State -1, magiabax]
type = ChangeState
value = 1700
triggerall = command = "magiaar"
trigger1 = statetype != S
trigger1 = ctrl
;---------------------------------------------------------------------
;furacao
[State -1, furacao]
type = ChangeState
value = 1600
triggerall = command = "furacao"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------
;throw multi ball
[State -1, tfrou]
type = ChangeState
value = 1900
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;===========================================================================

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 101
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

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 1000)
trigger2 = movecontact
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X >= 31
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220 && movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact = 1

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X >= 31
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 290 && movecontact
;---------------------------------------------------------------------------
;Stand HEAD
[State -1, Stand Light Punch]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220 && movecontact
;---------------------------------------------------------------------------
;Stand BIKE KICK
[State -1, Stand Light Punch]
type = ChangeState
value = 260
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 250 && movecontact
;---------------------------------------------------------------------------
;Stand Light talons
[State -1, Stand Light Kick]
type = ChangeState
value = 290
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220) && movecontact

;---------------------------------------------------------------------------
;Standing Strong talons
[State -1, Standing Strong Kick]
type = ChangeState
value = 280
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 250 && movecontact
trigger3 = stateno = 210 && movecontact

;---------------------------------------------------------------------------
;Taunt
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 1100)
trigger2 = movecontact
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 1200)
trigger2 = movecontact
;---------------------------------------------------------------------------
;Crouching Light talons
[State -1, Crouching Light Kick]
type = ChangeState
value = 460
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 1600)
trigger2 = movecontact
;---------------------------------------------------------------------------
;Crouching Strong talons
[State -1, Crouching Strong Kick]
type = ChangeState
value = 470
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 1700)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 620
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 1700)
trigger2 = movecontact
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 1700)
trigger2 = movecontact
;---------------------------------------------------------------------------
;Jump Light talons
[State -1, Jump Light Kick]
type = ChangeState
value = 640
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 1700)
trigger2 = movecontact
;---------------------------------------------------------------------------
;Jump Strong talons
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
