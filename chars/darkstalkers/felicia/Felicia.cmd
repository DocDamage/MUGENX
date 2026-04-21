;Felicia CMD file
;-| Super Motions |--------------------------------------------------------
;EXd
[Command]
name = "bdf_xy"
command = ~B, D, F, x+y
time = 15

[Command]
name = "bdf_xy"
command = ~B, D, F, y+z
time = 15

[Command]
name = "bdf_xy"
command = ~B, D, F, y+z
time = 15


;-| Special Motions |------------------------------------------------------
[Command]
name = "fdb_b"
command = ~F, D, B, b
time = 50

[Command]
name = "fdb_c"
command = ~F, D, B, c
time = 50



[Command]
name = "fdf_x"
command = ~F, D, DF, x
time = 15

[Command]
name = "fdf_y"
command = ~F, D, DF, y
time = 15

[Command]
name = "fdf_z"
command = ~F, D, DF, z
time = 15





[Command]
name = "fdf_a"
command = ~F, D, DF, a
time = 15

[Command]
name = "fdf_b"
command = ~F, D, DF, b
time = 15

[Command]
name = "fdf_c"
command = ~F, D, DF, c
time = 15


[Command]
name = "ss_a"
command = ~D, DF, F, a
time = 15

[Command]
name = "ss_b"
command = ~D, DF, F, b
time = 15

[Command]
name = "ss_c"
command = ~D, DF, F, c
time = 15



[Command]
name = "rol_x"
command = ~D, DF, F, x
time = 15

[Command]
name = "rol_y"
command = ~D, DF, F, y
time = 15

[Command]
name = "rol_z"
command = ~D, DF, F, z
time = 15


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 13

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 13



;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 2

[Command]
name = "cathelper"
command = x+a
time = 2
[Command]
name = "cathelper"
command = y+b
time = 2
[Command]
name = "cathelper"
command = z+c
time = 2



;adv guard
[command]
name = "adv"
command = a, a, a
time = 40
[command]
name = "adv"
command = b, b, b
time = 40
[command]
name = "adv"
command = c, c, c
time = 40
[command]
name = "adv"
command = x, x, x
time = 40
[command]
name = "adv"
command = y, y, y
time = 40
[command]
name = "adv"
command = z, z, z
time = 40


;EScs
[Command]
name = "escs"
command = ~F, D, DF, x+y
time = 15
;EScs2
[Command]
name = "escs"
command = ~F, D, DF, y+z
time = 15
;EScs3
[Command]
name = "escs"
command = ~F, D, DF, x+z
time = 15


;ESsp1
[Command]
name = "fdf_ab"
command = ~F, D, DF, a+b
time = 15
;ESsp1
[Command]
name = "fdf_ab"
command = ~F, D, DF, b+c
time = 15
;ESsp1
[Command]
name = "fdf_ab"
command = ~F, D, DF, a+c
time = 15


;ESss

[Command]
name = "ss_ab"
command = ~D, DF, F, a+b
time = 15

[Command]
name = "ss_ab"
command = ~D, DF, F, b+c
time = 15

[Command]
name = "ss_ab"
command = ~D, DF, F, a+c
time = 15




;ESsp2
[Command]
name = "rol_xy"
command = ~D, DF, F, x+y
time = 15
;ESsp2
[Command]
name = "rol_xy"
command = ~D, DF, F, y+z
time = 15
;ESsp2
[Command]
name = "rol_xy"
command = ~D, DF, F, x+z
time = 15



;EShellcat
[Command]
name = "fdb_bc"
command = ~F, D, B, b+c
time = 30



;-| Dir + Button |---------------------------------------------------------
[Command]
name = "dd_kk"
command = ~D, D, a+b
time = 15

[Command]
name = "dd_kk"
command = ~D, D, b+c
time = 15

[Command]
name = "ab"
command = /$a+b
time = 1

[Command]
name = "bc"
command = /$b+c
time = 1



[Command]
name = "aaaa"
command = /$B, B
time = 1

;-| Single Button |---------------------------------------------------------
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
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1



;state ent
[Statedef -1]
;----------------------------------------------------------------------------


;EX 댄싱플래시
[State -1, EXd]
type = ChangeState
value = 3000
triggerall = power >= 1000
trigger1 = command = "bdf_xy"
trigger1 = statetype != A
trigger1 = ctrl
;trigger2 = command = "bdf_xy"
;trigger2 = (stateno = [200,499])
;trigger2 = movehit = 1


;don't use this
;[State -1, cathelper]
;type = ChangeState
;value = 3100
;triggerall = command = "cathelper"
;trigger1 = statetype != A
;trigger1 = ctrl


;escs
[State -1, escs1]
type = ChangeState
value = 1430
triggerall = power >= 1000
trigger1 = command = "escs"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "escs"
trigger2 = (stateno = [200,499])
trigger2 = movehit = 1




;STsp1k
[State -1, STsp1k]
type = ChangeState
value = 1030
triggerall = power >= 1000
trigger1 = command = "fdf_ab"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "fdf_ab"
trigger2 = (stateno = [200,499])
trigger2 = movehit = 1



;STsp2p
[State -1, STsp2p]
type = ChangeState
value = 1130
triggerall = power >= 1000
trigger1 = command = "rol_xy"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "rol_xy"
trigger2 = (stateno = [200,499])
trigger2 = movehit = 1





;STspssa(k)

[State -1, stssa]
type = ChangeState
value = 1230
triggerall = power >= 1000
trigger1 = command = "ss_ab"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "ss_ab"
trigger2 = (stateno = [200,499])
trigger2 = movehit = 1







;EShellcat(k)

[State -1, hc]
type = ChangeState
value = 1350
triggerall = power >= 1000
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "fdb_bc"
trigger1 = p2bodydist X < 25
trigger1 = (p2statetype = S) || (p2statetype = C)






;hellcat(k)

[State -1, hc]
type = ChangeState
value = 1300
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "fdb_b"
trigger1 = p2bodydist X < 20
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "fdb_c"
trigger2 = p2bodydist X < 20
trigger2 = (p2statetype = S) || (p2statetype = C)


;charge

[State -1, cgpw]
type = ChangeState
value = 1900
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "dd_kk"


;벽에붙기

[State -1, aaaa]
type = ChangeState
value = 700
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "aaaa"
trigger1 = BackEdgeBodyDist <= 0
trigger1 = Pos Y < -50


[State -1, bbbb]
type = ChangeState
value = 750
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = FrontEdgeBodyDist <= 0
trigger1 = Pos Y < -50




;SP1a(k)

[State -1, sp1a]
type = ChangeState
value = 1000
triggerall = command = "fdf_a"
trigger1 = statetype != A
trigger1 = ctrl

;SP1b(k)

[State -1, sp1b]
type = ChangeState
value = 1010
triggerall = command = "fdf_b"
trigger1 = statetype != A
trigger1 = ctrl

;SP1c(k)

[State -1, sp1c]
type = ChangeState
value = 1020
triggerall = command = "fdf_c"
trigger1 = statetype != A
trigger1 = ctrl




;catspike

[State -1, cs]
type = ChangeState
value = 1400
triggerall = command = "fdf_x"
trigger1 = statetype != A
trigger1 = ctrl



;catspike2

[State -1, cs2]
type = ChangeState
value = 1410
triggerall = command = "fdf_y"
trigger1 = statetype != A
trigger1 = ctrl

;catspike2s

[State -1, cs2]
type = ChangeState
value = 1420
triggerall = command = "fdf_z"
trigger1 = statetype != A
trigger1 = ctrl



;SPssa(k)

[State -1, ssa]
type = ChangeState
value = 1200
triggerall = command = "ss_a"
trigger1 = statetype != A
trigger1 = ctrl

;SPssb(k)

[State -1, ssb]
type = ChangeState
value = 1210
triggerall = command = "ss_b"
trigger1 = statetype != A
trigger1 = ctrl

;SPssc(k)

[State -1, ssc]
type = ChangeState
value = 1220
triggerall = command = "ss_c"
trigger1 = statetype != A
trigger1 = ctrl






;SP2x(p)

[State -1, sp2x]
type = ChangeState
value = 1100
triggerall = command = "rol_x"
trigger1 = statetype != A
trigger1 = ctrl

;SP2y(p)

[State -1, sp2y]
type = ChangeState
value = 1110
triggerall = command = "rol_y"
trigger1 = statetype != A
trigger1 = ctrl

;SP2z(p)

[State -1, sp2z]
type = ChangeState
value = 1120
triggerall = command = "rol_z"
trigger1 = statetype != A
trigger1 = ctrl





;Run Fwd

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl


;Run Back

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl



;C 던지기

[State -1, throw]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "b"
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "c"
trigger2 = command = "holdfwd"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = command = "b"
trigger3 = command = "holdback"
trigger3 = p2bodydist X < 7
trigger3 = (p2statetype = S) || (p2statetype = C)
trigger3 = p2movetype != H
trigger4 = command = "c"
trigger4 = command = "holdback"
trigger4 = p2bodydist X < 7
trigger4 = (p2statetype = S) || (p2statetype = C)
trigger4 = p2movetype != H


;don't use this
;Aguard
;[State -1]
;type = ChangeState
;value = 9999
;triggerall = stateno = 150
;triggerall = stateno != 9999
;trigger1 = command = "adv"



;close_x

[State -1, close x]
type = ChangeState
value = 260
triggerall = command = "x" && command != "holddown" && p2bodydist x < 15
trigger1 = statetype = S && ctrl


;stand_x

[State -1, stand x]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = movecontact != 1 && (stateno = 200) && time > 3






;close_y

[State -1, close y]
type = ChangeState
value = 270
triggerall = command = "y" && command != "holddown" && p2bodydist x < 15
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 || stateno = 260 || stateno = 400 || stateno = 230 || stateno = 290 || stateno = 430
trigger2 = movecontact = 1


;stand_y

[State -1, stand y]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 || stateno = 260 || stateno = 400 || stateno = 230 || stateno = 290 || stateno = 430
trigger2 = movecontact = 1




;close_z

[State -1, close z]
type = ChangeState
value = 280
triggerall = command = "z" && command != "holddown" && p2bodydist x < 15
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 || stateno = 260 || stateno = 400 || stateno = 230 || stateno = 290 || stateno = 430 || stateno = 210 || stateno = 270 || stateno = 410 || stateno = 240 || stateno = 300 || stateno = 440
trigger2 = movecontact = 1

;stand_z

[State -1, stand z]
type = ChangeState
value = 220
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 || stateno = 260 || stateno = 400 || stateno = 230 || stateno = 290 || stateno = 430 || stateno = 210 || stateno = 270 || stateno = 410 || stateno = 240 || stateno = 300 || stateno = 440
trigger2 = movecontact = 1




;close_a

[State -1, close a]
type = ChangeState
value = 290
triggerall = command = "a" && command != "holddown" && p2bodydist x < 15
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 || stateno = 260 || stateno = 400
trigger2 = movecontact = 1

;stand_a

[State -1, stand a]
type = ChangeState
value = 230
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 || stateno = 260 || stateno = 400
trigger2 = movecontact = 1
trigger3 = movecontact != 1 && (stateno = 230) && time > 4





;close_b

[State -1, close b]
type = ChangeState
value = 300
triggerall = command = "b" && command != "holddown" && p2bodydist x < 15
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 || stateno = 260 || stateno = 400 || stateno = 210 || stateno = 270 || stateno = 410 || stateno = 230 || stateno = 290 || stateno = 430
trigger2 = movecontact = 1


;stand_b

[State -1, stand b]
type = ChangeState
value = 240
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 || stateno = 260 || stateno = 400 || stateno = 210 || stateno = 270 || stateno = 410 || stateno = 230 || stateno = 290 || stateno = 430
trigger2 = movecontact = 1





;close_c

[State -1, close c]
type = ChangeState
value = 310
triggerall = command = "c" && command != "holddown" && p2bodydist x < 15
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 || stateno = 260 || stateno = 400 || stateno = 210 || stateno = 270 || stateno = 410 || stateno = 230 || stateno = 290 || stateno = 430
trigger2 = movehit = 1
trigger3 = stateno = 220 || stateno = 280 || stateno = 420 || stateno = 240 || stateno = 300 || stateno = 440
trigger3 = movecontact = 1


;stand_c

[State -1, stand c]
type = ChangeState
value = 250
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 || stateno = 260 || stateno = 400 || stateno = 210 || stateno = 270 || stateno = 410 || stateno = 230 || stateno = 290 || stateno = 430
trigger2 = movecontact = 1
trigger3 = stateno = 220 || stateno = 280 || stateno = 420 || stateno = 240 || stateno = 300 || stateno = 440
trigger3 = movecontact = 1







;crouch_x

[State -1, crouch x]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl



;crouch_y

[State -1, crouch y]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 || stateno = 260 || stateno = 400 || stateno = 230 || stateno = 290 || stateno = 430
trigger2 = movecontact = 1



;crouch_z

[State -1, crouch z]
type = ChangeState
value = 420
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 || stateno = 260 || stateno = 400 || stateno = 230 || stateno = 290 || stateno = 430 || stateno = 210 || stateno = 270 || stateno = 410 || stateno = 240 || stateno = 300 || stateno = 440
trigger2 = movecontact = 1






;crouch_a

[State -1, crouch a]
type = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 || stateno = 260 || stateno = 400
trigger2 = movecontact = 1




;crouch_b

[State -1, crouch b]
type = ChangeState
value = 440
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 || stateno = 260 || stateno = 400 || stateno = 210 || stateno = 270 || stateno = 410 || stateno = 230 || stateno = 290 || stateno = 430
trigger2 = movecontact = 1




;crouch_c

[State -1, crouch c]
type = ChangeState
value = 450
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 || stateno = 260 || stateno = 400 || stateno = 210 || stateno = 270 || stateno = 410 || stateno = 230 || stateno = 290 || stateno = 430
trigger2 = movehit = 1
trigger3 = stateno = 220 || stateno = 280 || stateno = 420 || stateno = 240 || stateno = 300 || stateno = 440
trigger3 = movecontact = 1


;Air_x

[State -1, Air x]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl



;Air_y

[State -1, Air y]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movehit = 1

;Air_z

[State -1, Air z]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640
trigger2 = movehit = 1


;Air_a

[State -1, Air a]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movehit = 1


;Air_b

[State -1, Air b]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630
trigger2 = movehit = 1



;Air_c

[State -1, Air c]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620 || stateno = 630 || stateno = 640
trigger2 = movehit = 1








; Taunt
[State -1]
type = ChangeState
value = 199
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1