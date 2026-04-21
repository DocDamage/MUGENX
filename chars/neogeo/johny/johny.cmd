

;-| Super Motions |--------------------------------------------------------



[Command]
name = "ruji"
command = ~D, DB, B, DB, D, DF, F, x
time = 35

[Command]
name = "ruji"
command = ~D, DB, B, DB, D, DF, F, y
time = 35

[Command]
name = "ruji"
command = ~D, DB, B, DB, D, DF, F, z
time = 35

[Command]
name = "TripleKFPalmx"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command] 
name = "TripleKFPalmy"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command] 
name = "TripleKFPalmz"   ;Same name as above
command = ~D, DF, F, D, DF, F, z
time = 20



[Command] 
name = "taiko_p"
command = ~D, DB, B, D, DB, B, b
time = 20


[Command] 
name = "taiko_g"
command = ~D, DB, B, D, DB, B, c
time = 20


[Command] 
name = "taiko_aa"
command = ~D, DB, B, D, DB, B, a
time = 20




;-| Special Motions |------------------------------------------------------
[Command]
name = "DB_x"
command = ~20$B, F, x

[Command]
name = "DB_y"
command = ~20$B, F, y

[Command]
name = "DB_z"
command = ~20$B, F, z


[Command]
name = "sfx"
command = ~F, D, DF, x

[Command]
name = "sfy"
command = ~F, D, DF, y

[Command]
name = "sfz"
command = ~F, D, DF, z

[Command]
name = "QCF_x"
command = ~D, DF, F, a

[Command]
name = "QCF_y"
command = ~D, DF, F, b

[Command]
name = "QCF_xy"
command = ~D, DF, F, c

[Command]
name = "pro"
command = ~D, DB, B, x

[Command]
name = "rback"
command = ~B, D, DB, a

[Command]
name = "rback"
command = ~B, D, DB, b

[Command]
name = "rback"
command = ~B, D, DB, c

[command]
name = "taiko_w"
command = ~F, D, FD, a

[command]
name = "taiko_s"
command = ~F, D, FD, b

[command]
name = "taiko_z"
command = ~F, D, FD, c

[Command]
name = "pro"
command = ~D, DB, B, y

[Command]
name = "pro"
command = ~D, DB, B, z


[Command]
name = "DB_a"
command = ~20$B, F, a

[Command]
name = "DB_b"
command = ~20$B, F, b

[Command]
name = "DB_c"
command = ~20$B, F, c



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"    
command = F, F
time = 10

[Command]
name = "BB"    
command = B, B
time = 10

[Command]
name = "longjump"
command = D, $U
time = 18

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "rback"
command = B+a+b
time = 1


;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_b"
command = /F,b
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
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1


[Command]
name = "fwd_c"
command = /F,c
time = 1


[Command]
name = "fwd_z"
command = /F,z
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
name = "holdfwd2";Required (do not remove)
command = /$DF
time = 1

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
[Statedef -1]

[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 4000
triggerall = command = "ruji"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "TripleKFPalmx"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3001
triggerall = command = "TripleKFPalmy"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3002
triggerall = command = "TripleKFPalmz"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

[State -1]
type = ChangeState
value = 540
triggerall = command = "DB_a"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 541
triggerall = command = "DB_b"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 542
triggerall = command = "DB_c"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1]
type = ChangeState
value = 550
triggerall = command = "DB_x"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 551
triggerall = command = "DB_y"
trigger1 = statetype = S
trigger1 = ctrl = 1


[State -1]
type = ChangeState
value = 552
triggerall = command = "DB_z"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1200
triggerall = command = "taiko_w"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger4 = movecontact = 1
trigger4 = stateno = 220
trigger5 = movecontact = 1
trigger5 = stateno = 400
trigger6 = movecontact = 1
trigger6 = stateno = 410
trigger7 = movecontact = 1
trigger7 = stateno = 420
trigger8 = movecontact = 1
trigger8 = stateno = 230
trigger9 = movecontact = 1
trigger9 = stateno = 240
trigger10 = movecontact = 1
trigger10 = stateno = 250
trigger11 = movecontact = 1
trigger11 = stateno = 260
trigger12 = movecontact = 1
trigger12 = stateno = 255

[State -1]
type = ChangeState
value = 1250
triggerall = command = "taiko_s"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger4 = movecontact = 1
trigger4 = stateno = 220
trigger5 = movecontact = 1
trigger5 = stateno = 400
trigger6 = movecontact = 1
trigger6 = stateno = 410
trigger7 = movecontact = 1
trigger7 = stateno = 420
trigger8 = movecontact = 1
trigger8 = stateno = 230
trigger9 = movecontact = 1
trigger9 = stateno = 240
trigger10 = movecontact = 1
trigger10 = stateno = 250
trigger11 = movecontact = 1
trigger11 = stateno = 260
trigger12 = movecontact = 1
trigger12 = stateno = 255

[State -1]
type = ChangeState
value = 1270
triggerall = command = "taiko_z"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger4 = movecontact = 1
trigger4 = stateno = 220
trigger5 = movecontact = 1
trigger5 = stateno = 400
trigger6 = movecontact = 1
trigger6 = stateno = 410
trigger7 = movecontact = 1
trigger7 = stateno = 420
trigger8 = movecontact = 1
trigger8 = stateno = 230
trigger9 = movecontact = 1
trigger9 = stateno = 240
trigger10 = movecontact = 1
trigger10 = stateno = 250
trigger11 = movecontact = 1
trigger11 = stateno = 260
trigger12 = movecontact = 1
trigger12 = stateno = 255

[State -1]
type = ChangeState
value = 1240
triggerall = command = "taiko_p"
triggerall = command !="holddown"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger4 = movecontact = 1
trigger4 = stateno = 220
trigger5 = movecontact = 1
trigger5 = stateno = 400
trigger6 = movecontact = 1
trigger6 = stateno = 410
trigger7 = movecontact = 1
trigger7 = stateno = 420
trigger8 = movecontact = 1
trigger8 = stateno = 230
trigger9 = movecontact = 1
trigger9 = stateno = 240
trigger10 = movecontact = 1
trigger10 = stateno = 250
trigger11 = movecontact = 1
trigger11 = stateno = 260
trigger12 = movecontact = 1
trigger12 = stateno = 255



[State -1]
type = ChangeState
value = 1242
triggerall = command = "taiko_g"
triggerall = command !="holddown"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger4 = movecontact = 1
trigger4 = stateno = 220
trigger5 = movecontact = 1
trigger5 = stateno = 400
trigger6 = movecontact = 1
trigger6 = stateno = 410
trigger7 = movecontact = 1
trigger7 = stateno = 420
trigger8 = movecontact = 1
trigger8 = stateno = 230
trigger9 = movecontact = 1
trigger9 = stateno = 240
trigger10 = movecontact = 1
trigger10 = stateno = 250
trigger11 = movecontact = 1
trigger11 = stateno = 260
trigger12 = movecontact = 1
trigger12 = stateno = 255



[State -1]
type = ChangeState
value = 1244
triggerall = command = "taiko_aa"
triggerall = command !="holddown"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger4 = movecontact = 1
trigger4 = stateno = 220
trigger5 = movecontact = 1
trigger5 = stateno = 400
trigger6 = movecontact = 1
trigger6 = stateno = 410
trigger7 = movecontact = 1
trigger7 = stateno = 420
trigger8 = movecontact = 1
trigger8 = stateno = 230
trigger9 = movecontact = 1
trigger9 = stateno = 240
trigger10 = movecontact = 1
trigger10 = stateno = 250
trigger11 = movecontact = 1
trigger11 = stateno = 260
trigger12 = movecontact = 1
trigger12 = stateno = 255



;===========================================================================
;---------------------------------------------------------------------------

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1500
triggerall = command = "sfx"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1600
triggerall = command = "sfy"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1700
triggerall = command = "sfz"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = command = "QCF_xy"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
;trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1040
triggerall = command = "pro"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------

[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------


[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Standing Throw]
type = null;ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "fwd_b"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "back_b";Near, p2 stand
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "fwd_z"
trigger1 = p2bodydist X < 15
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_z"
trigger2 = p2bodydist X < 15
trigger2 = p2statetype = C
trigger2 = p2movetype != H

[State -1]
type = ChangeState
value = 950
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "fwd_c"
trigger1 = p2bodydist X < 20
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_c"
trigger2 = p2bodydist X < 20
trigger2 = p2statetype = C
trigger2 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
[State -1, Stand fz]
type = ChangeState
value = 443
triggerall = command = "c"
triggerall = command = "holdfwd2"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Stand fz]
type = ChangeState
value = 199
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

[State -1, Stand Light Punch]
type = ChangeState
value = 198
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 198
trigger2 = time > 5


[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 7
trigger3 = stateno = 198
trigger3 = time > 5




;---------------------------------------------------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 198
trigger4 = time > 5


;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

[State -1, Stand Light Kick]
type = ChangeState
value = 231
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger3 = (stateno = 231) && time > 6
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 399
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, Crouching Light Kick]
type = ChangeState
value = 440
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

[State -1, Jump Strong Punch]
type = ChangeState
value = 611
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact


;---------------------------------------------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

[State -1, Jump Strong Kick]
type = ChangeState
value = 641
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact



