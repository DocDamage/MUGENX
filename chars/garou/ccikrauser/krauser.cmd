; Command file for David Demianoff 's CCI Krauser RBS
; Please don't edit, thanks
;
;-| Super Motions |--------------------------------------------------------
[Command]
name =  "kaiserwave"
command = ~F, B, D, F, b
time = 30

[Command]
name = "cyclone"
command = ~F, D, B, F, D, c
time = 40

[Command]
name = "deadlyrave"
command = ~F, D, B, F, a
time = 30

[Command]
name =  "deadly_cyclone"
command = ~B, D, DB, c
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "blitz1"
command = ~D, B, a
time = 20

[Command]
name = "blitz2"
command = ~D, B, c
time = 20

[Command]
name = "tomahawk"
command = ~D, F, b
time = 20

[Command]
name = "ateminage"
command = ~B, D, F, c
time = 25

[Command]
name = "airthrow"
command = ~F, D, B, b
time = 25

[Command]
name = "sideswap"
command = ~B, D, F, a
time = 25

[Command]
name = "qcf_c"
command = ~D, F, c
time = 25

[Command]
name = "pursut"
command = ~D, D, c
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "cd"
command = b+y
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "abc"
command = a+y+x
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
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
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
name = "hold_z"
command = /$z
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
name = "holddownfwd";Required (do not remove)
command = /$DF
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

[Statedef -1]

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;--------------------------------------------------------------------------- 
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Unlimited Desire HSDM
[State -1,]
type = ChangeState
value = 2200
triggerall = command = "deadlyrave"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && time = [8,12]
trigger4 = stateno = 205 && time = [6,10]
trigger5 = stateno = 210 && time = [8,13]
trigger6 = stateno = 215 && time = [8,13]
trigger7 = stateno = 225 && time = [10,16]
trigger8 = stateno = 260 && time = [8,13]
trigger9 = stateno = 262 && time = [10,16]
trigger10 = stateno = 263 && time = [10,16]
trigger11 = stateno = 240 && time = [5,19]
trigger12 = stateno = 400 && time = [6,10]
trigger13 = stateno = 410 && time = [9,12]
trigger14 = stateno = 460 && time = [9,12]
trigger15 = stateno = 420 && time = [10,12]

;Gygantic Cyclone SDM
[State -1,]
type = ChangeState
value = 2100
triggerall = command = "cyclone"
triggerall = power >= 2000
triggerall = p2movetype != H
triggerall = p2statetype != A
triggerall = p2bodydist X < 100
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1

;Kaiser Wave DM
[State -1,]
type = ChangeState
value = 2000
triggerall = command = "kaiserwave"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && time = [8,12]
trigger4 = stateno = 205 && time = [6,10]
trigger5 = stateno = 210 && time = [8,13]
trigger6 = stateno = 215 && time = [8,13]
trigger7 = stateno = 225 && time = [10,16]
trigger8 = stateno = 260 && time = [8,13]
trigger9 = stateno = 262 && time = [10,16]
trigger10 = stateno = 263 && time = [10,16]
trigger11 = stateno = 240 && time = [5,19]
trigger12 = stateno = 400 && time = [6,10]
trigger13 = stateno = 410 && time = [9,12]
trigger14 = stateno = 460 && time = [9,12]
trigger15 = stateno = 420 && time = [10,12]

;Lift Blow
[State -1,]
type = ChangeState
value = 1400
triggerall = command = "airthrow"
triggerall = p2movetype != H
triggerall = p2statetype != A
triggerall = p2bodydist X < 30
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1

;Dangerous Thrust
[State -1,]
type = ChangeState
value = 1300
triggerall = command = "sideswap"
triggerall = p2movetype != H
triggerall = p2statetype != A
triggerall = p2bodydist X < 30
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1

;Pheonix Thrust
[State -1,]
type = ChangeState
value = 1200
triggerall = command = "ateminage"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && time = [8,12]
trigger4 = stateno = 205 && time = [6,10]
trigger5 = stateno = 210 && time = [8,13]
trigger6 = stateno = 215 && time = [8,13]
trigger7 = stateno = 225 && time = [10,16]
trigger8 = stateno = 260 && time = [8,13]
trigger9 = stateno = 262 && time = [10,16]
trigger10 = stateno = 263 && time = [10,16]
trigger11 = stateno = 240 && time = [5,19]
trigger12 = stateno = 400 && time = [6,10]
trigger13 = stateno = 410 && time = [9,12]
trigger14 = stateno = 460 && time = [9,12]
trigger15 = stateno = 420 && time = [10,12]

;Leg Tomahawk
[State -1,]
type = ChangeState
value = 1100
triggerall = command = "tomahawk"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && time = [8,12]
trigger4 = stateno = 205 && time = [6,10]
trigger5 = stateno = 210 && time = [8,13]
trigger6 = stateno = 215 && time = [8,13]
trigger7 = stateno = 225 && time = [10,16]
trigger8 = stateno = 260 && time = [8,13]
trigger9 = stateno = 262 && time = [10,16]
trigger10 = stateno = 263 && time = [10,16]
trigger11 = stateno = 240 && time = [5,19]
trigger12 = stateno = 400 && time = [6,10]
trigger13 = stateno = 410 && time = [9,12]
trigger14 = stateno = 460 && time = [9,12]
trigger15 = stateno = 420 && time = [10,12]

;Blitz Ball - High
[State -1,]
type = ChangeState
value = 1000
triggerall = command = "blitz1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && time = [8,12]
trigger4 = stateno = 205 && time = [6,10]
trigger5 = stateno = 210 && time = [8,13]
trigger6 = stateno = 215 && time = [8,13]
trigger7 = stateno = 225 && time = [10,16]
trigger8 = stateno = 260 && time = [8,13]
trigger9 = stateno = 262 && time = [10,16]
trigger10 = stateno = 263 && time = [10,16]
trigger11 = stateno = 240 && time = [5,19]
trigger12 = stateno = 400 && time = [6,10]
trigger13 = stateno = 410 && time = [9,12]
trigger14 = stateno = 460 && time = [9,12]
trigger15 = stateno = 420 && time = [10,12]

;Blitz Ball - Low
[State -1,]
type = ChangeState
value = 1050
triggerall = command = "blitz2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && time = [8,12]
trigger4 = stateno = 205 && time = [6,10]
trigger5 = stateno = 210 && time = [8,13]
trigger6 = stateno = 215 && time = [8,13]
trigger7 = stateno = 225 && time = [10,16]
trigger8 = stateno = 260 && time = [8,13]
trigger9 = stateno = 262 && time = [10,16]
trigger10 = stateno = 263 && time = [10,16]
trigger11 = stateno = 240 && time = [5,19]
trigger12 = stateno = 400 && time = [6,10]
trigger13 = stateno = 410 && time = [9,12]
trigger14 = stateno = 460 && time = [9,12]
trigger15 = stateno = 420 && time = [10,12]

; Down, down, C
[State -1,]
type = ChangeState
value = 250
triggerall = command = "pursut"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1
;---------------------------------------------------------------------------
;Run Fwd 1
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

;Throw 1
[State -1]
type = ChangeState
value = 800
triggerall = command = "c"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
trigger1 = p2stateno != 5120
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x < 20
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = ctrl

; Taunt
[State -1]
type = ChangeState
value = 195
trigger1 = command = "start"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Standing AB
[State -1]
type = ChangeState
value = 300
triggerall = var(9) = 0
triggerall = command = "ab"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;Standing Forward Weak punch
[State -1,]
type = ChangeState
value = 240
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1

;Standing Weak punch
[State -1,]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = p2bodydist x >= 40
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1

;Standing Close Weak punch
[State -1,]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1

;---------------------------------------------------------------------------
;Standing Weak Kick
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = var(9) = 0
triggerall = command != "holddown"
trigger1 = p2bodydist x >= 40
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1

;Standing Close Weak Kick
[State -1]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = var(9) = 0
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 100
trigger2 = animelem = 1, >= 1

;---------------------------------------------------------------------------
;Running Hard Punch
[State -1]
type = ChangeState
value = 230
triggerall = command = "c"
triggerall = p2bodydist x > 40
trigger1 = stateno = 100

;Standing Hard Punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = p2bodydist x > 40
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 100

;Standing Close Hard Punch
[State -1]
type = ChangeState
value = 225
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 100

;---------------------------------------------------------------------------
;Crouching Weak punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time = [6,9]

;---------------------------------------------------------------------------
;Crouching weak Kick
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching hard Kick
[State -1]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jumping Weak punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jumping Kick
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jumping Strong Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;Jumping Strong Kick
[State -1]
type = ChangeState
value = 620
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = vel x = 0
trigger1 = ctrl

;Jumping Strong Kick
[State -1]
type = ChangeState
value = 625
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact

;Crouch walk
[State -1]
type = ChangeState
value = 15
triggerall = command = "holddownfwd"
trigger1 = statetype = C
trigger1 = stateno != 15
trigger1 = ctrl