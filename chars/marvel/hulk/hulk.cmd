;Hulk's CMD Lets Rock! 
;-| Super Motions |--------------------------------------------------------
[Command]
name = "hgamasl"
command = ~D, DF, F, y+z

[Command]
name = "hgamasl"
command = ~D, DF, F, x+y

[Command]
name = "hgamasl"
command = ~D, DF, F, x+z

[Command]
name = "gamacr"
command = ~D, DB, B, y+z

[Command]
name = "gamacr"
command = ~D, DB, B, x+z

[Command]
name = "gamacr"
command = ~D, DB, B, x+y

[Command]
name = "gamaqa"
command = ~D, DF, F, a+b

[Command]
name = "gamaqa"
command = ~D, DF, F, b+c

[Command]
name = "gamaqa"
command = ~D, DF, F, a+c

;-| Special Motions |------------------------------------------------------
[Command]
name = "gamaslx"
command = ~D, DF, F, x

[Command]
name = "gamasly"
command = ~D, DF, F, y

[Command]
name = "gamaslz"
command = ~D, DF, F, z

[Command]
name = "gamatx"
command = ~F, DF, D, DB, B, x
time = 20

[Command]
name = "gamaty"
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "gamatz"
command = ~F, DF, D, DB, B, z
time = 20

[Command]
name = "gamatossa"
command = ~30$B, F, a
time = 10

[Command]
name = "gamatossb"
command = ~30$B, F, b
time = 10

[Command]
name = "gamatossc"
command = ~30$B, F, c
time = 10
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
name = "DU"
command = $D, $U
time = 10

[Command]
name = "UF"
command = UF
time = 1

[Command]
name = "UB"
command = UB
time = 1

[Command]
name = "DUF"
command = $D, $UF
time = 10

[Command]
name = "DUB"
command = $D, $UB
time = 10

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
name = "up"
command = U
time = 1

;-| Helpers |---------------------------------------------------------------

;Zangief!
[Command]
name = "zang"
command = x+a
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
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_y"
command = /F,z
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

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Dash Forward
[State -1, Dash Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Dash Back
[State -1, Dash Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Super Jump
[State -1]
type = ChangeState
value = 141
triggerall = var(7) = 0
trigger1 = command = "DU"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = command = "DU"
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = command = "up"
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = command = "DUF"
trigger4 = statetype = S
trigger4 = ctrl = 1
trigger5 = command = "DUF"
trigger5 = statetype = C
trigger5 = ctrl = 1
trigger6 = command = "DUB"
trigger6 = statetype = S
trigger6 = ctrl = 1
trigger7 = command = "DUB"
trigger7 = statetype = C
trigger7 = ctrl = 1
trigger8 = command = "UF"
trigger8 = stateno = 210
trigger8 = movehit = 1
trigger9 = command = "UB"
trigger9 = stateno = 210
trigger9 = movehit = 1
trigger10 = command = "up"
trigger10 = stateno = 440
trigger10 = movehit = 1
trigger11 = command = "UF"
trigger11 = stateno = 440
trigger11 = movehit = 1
trigger12 = command = "UB"
trigger12 = stateno = 440
trigger12 = movehit = 1
;==========================================================================
;Supers
;==========================================================================
;---------------------------------------------------------------------------
;Hyper Gama Slam!
[State -1]
type = ChangeState
value = 3000
triggerall = command = "hgamasl"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Gama Crush! 
[State -1]
type = ChangeState
value = 3100
triggerall = command = "gamacr"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Gama Quake!
[State -1]
type = ChangeState
value = 4000
triggerall = command = "gamaqa"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;Specials
;===========================================================================
;---------------------------------------------------------------------------
;Gama Tornado Light/X 
[State -1]
type = ChangeState
value = 904
triggerall = command = "gamatx"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Gama Tornado Medium/Y
[State -1]
type = ChangeState
value = 910
triggerall = command = "gamaty"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Gama Tornado Hard/Z
[State -1]
type = ChangeState
value = 920
triggerall = command = "gamatz"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Gama Slam Lig/X
[State -1]
type = ChangeState
value = 1000
trigger1 = command = "gamaslx"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Gama Slam Med/Y
[State -1]
type = ChangeState
value = 1001
trigger1 = command = "gamasly"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Gama Slam Hrd/Z
[State -1]
type = ChangeState
value = 1002
trigger1 = command = "gamaslz"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Gama Toss Horzontal Lig/A
[State -1]
type = ChangeState
value = 1100
trigger1 = command = "gamatossa"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Gama Toss Horzontal Med/B
[State -1]
type = ChangeState
value = 1102
trigger1 = command = "gamatossb"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Gama Toss Horzontal Hrd/C
[State -1]
type = ChangeState
value = 1104
trigger1 = command = "gamatossc"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Gama Toss Vertical Light Commands
[State -1]
type = ChangeState
value = 1110
trigger1 = command = "a"
trigger1 = stateno = 1101
trigger1 = time >= 0
;Gama Toss Vertical Med/B
[State -1]
type = ChangeState
value = 1110
trigger1 = command = "b"
trigger1 = stateno = 1101
trigger1 = time >= 0
;Gama Toss Vertical Hrd/C
[State -1]
type = ChangeState
value = 1110
trigger1 = command = "c"
trigger1 = stateno = 1101
trigger1 = time >= 0
;---------------------------------------------------------------------------
;Gama Toss Vertical Medium Commands
[State -1]
type = ChangeState
value = 1110
trigger1 = command = "a"
trigger1 = stateno = 1103
trigger1 = time >= 0
;Gama Toss Vertical Med/B
[State -1]
type = ChangeState
value = 1110
trigger1 = command = "b"
trigger1 = stateno = 1103
trigger1 = time >= 0
;Gama Toss Vertical Hrd/C
[State -1]
type = ChangeState
value = 1110
trigger1 = command = "c"
trigger1 = stateno = 1103
trigger1 = time >= 0
;---------------------------------------------------------------------------
;Gama Toss Vertical Hard Commands
[State -1]
type = ChangeState
value = 1110
trigger1 = command = "a"
trigger1 = stateno = 1105
trigger1 = time >= 0
;Gama Toss Vertical Med/B
[State -1]
type = ChangeState
value = 1110
trigger1 = command = "b"
trigger1 = stateno = 1105
trigger1 = time >= 0
;Gama Toss Vertical Hrd/C
[State -1]
type = ChangeState
value = 1110
trigger1 = command = "c"
trigger1 = stateno = 1105
trigger1 = time >= 0

;---------------------------------------------------------------------------
;Zangief (hulk call)
[State -1]
type = ChangeState
value = 9200
triggerall = numhelper(9700) = 0
triggerall = P2Name != "zangief"
triggerall = P4Name != "zangief"
triggerall = command = "zang"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;===========================================================================
;Standing\Crouching\Jumping attacks
;===========================================================================
;---------------------------------------------------------------------------
;Hulks Basic Throw
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 4 ;Near P2
trigger1 = command = "fwd_y";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_y";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
;Punch X\Light
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Punch Y\Medium
[State -1]
type = ChangeState
value = 201
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Punch Z\Hard
[State -1]
type = ChangeState
value = 202
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 201
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Kick A\Light
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Kick B\Medium
[State -1]
type = ChangeState
value = 231
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Kick C\Hard
[State -1]
type = ChangeState
value = 232
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Punch X\Light
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time > 6
;---------------------------------------------------------------------------
;Crouching Punch Y\Medium
[State -1]
type = ChangeState
value = 401
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Crouching Punch Z\Hard
[State -1]
type = ChangeState
value = 402
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 401 
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Crouching Kick A\Light
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Kick B\Medium
[State -1]
type = ChangeState
value = 431
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Crouching Kick C\Hard
[State -1]
type = ChangeState
value = 432
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 431
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;Jump Punch X\Light
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = p2statetype = A
trigger2 = movecontact = 1
trigger2 = stateno = 630
;---------------------------------------------------------------------------
;Jump Punch Y\Medium
[State -1]
type = ChangeState
value = 601
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = p2statetype = A
trigger2 = movecontact = 1
trigger2 = stateno = 600
trigger3 = p2statetype = A
trigger3 = movecontact = 1
trigger3 = stateno = 630
;---------------------------------------------------------------------------
;Jump Punch Z\Hard
[State -1]
type = ChangeState
value = 602
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = p2statetype = A
trigger2 = movecontact = 1
trigger2 = stateno = 601
;---------------------------------------------------------------------------
;Jump Light Kick A\Light 
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = p2statetype = A
trigger2 = movecontact = 1
trigger2 = stateno = 600
;---------------------------------------------------------------------------
;Jump Kick B\Medium 
[State -1]
type = ChangeState
value = 631
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = p2statetype = A
trigger2 = movecontact = 1
trigger2 = stateno = 630
trigger3 = p2statetype = A
trigger3 = movecontact = 1
trigger3 = stateno = 600
;---------------------------------------------------------------------------
;Jump Kick C\Hard 
[State -1]
type = ChangeState
value = 632
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = p2statetype = A
trigger2 = movecontact = 1
trigger2 = stateno = 631
trigger3 = p2statetype = A
trigger3 = movecontact = 1
trigger3 = stateno = 601
