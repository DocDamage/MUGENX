;===============
;Cammy CMD File
;===============
;AI COMMANDS -----------------------------------------------------------------
[Command]
name = "CPU1"
command = U, U, U, D, D, D
time = 1

[Command]
name = "CPU2"
command = D, D, D, U, U, U
time = 1

[Command]
name = "CPU3"
command = D, U, D, U, D, U
time = 1

[Command]
name = "CPU4"
command = U, D, U, D, U, D
time = 1

[Command]
name = "CPU5"
command = D, D, U, U, D, D
time = 1

[Command]
name = "CPU6"
command = U, U, D, D, U, U
time = 1

[Command]
name = "CPU7"
command = U, U, U, U, U, U
time = 1

[Command]
name = "CPU8"
command = D, D, D, D, D, D
time = 1

[Command]
name = "CPU9"
command = U, D, D, D, D, D
time = 1

[Command]
name = "CPU10"
command = D, D, D, D, D, D
time = 1

[Command]
name = "CPU11"
command = D, U, D, D, D, D
time = 1

[Command]
name = "CPU12"
command = D, D, D, D, U, D
time = 1

[Command]
name = "CPU13"
command = D, D, U, D, D, D
time = 1

[Command]
name = "CPU14"
command = D, D, D, U, D, D
time = 1

[Command]
name = "CPU15"
command = D, U, U, U, U, U
time = 1

[Command]
name = "CPU16"
command = U, U, U, U, U, D
time = 1

[Command]
name = "CPU17"
command = U, D, U, U, U, U
time = 1

[Command]
name = "CPU18"
command = U, U, U, U, D, U
time = 1

[Command]
name = "CPU19"
command = U, U, D, U, U, U
time = 1

[Command]
name = "CPU20"
command = U, U, U, D, U, U
time = 1

;SUPER MOVES -----------------------------------------------------------------
[Command]
name = "heatdrive"
command = ~D, DF, F, b+c
time = 25

[Command]
name = "heatdrive"
command = ~D, DF, F, a+b
time = 25

[Command]
name = "maxcam"
command = ~D, DB, B, b+c
time = 25

[Command]
name = "maxcam"
command = ~D, DB, B, a+b
time = 25

[Command]
name = "revshaft"
command = ~F, D, DF, a+b
time = 20

[Command]
name = "revshaft"
command = ~F, D, DF, b+c
time = 20

;SPECIAL MOVES ---------------------------------------------------------------
[Command]
name = "drilla"
command = ~D, DF, F, a
time = 20

[Command]
name = "drillb"
command = ~D, DF, F, b
time = 20

[Command]
name = "drillc"
command = ~D, DF, F, c
time = 20

[Command]
name = "spikea"
command = ~F, D, DF, a
time = 20

[Command]
name = "spikeb"
command = ~F, D, DF, b
time = 20

[Command]
name = "spikec"
command = ~F, D, DF, c
time = 20

[Command]
name = "thrusta"
command = ~D, DB, B, a
time = 20

[Command]
name = "thrustb"
command = ~D, DB, B, b
time = 20

[Command]
name = "thrustc"
command = ~D, DB, B, c
time = 20

[Command]
name = "knucklex"
command = ~B, DB, D, DF, F, x
time = 25

[Command]
name = "knuckley"
command = ~B, DB, D, DF, F, y
time = 25

[Command]
name = "knucklez"
command = ~B, DB, D, DF, F, z
time = 25

[Command]
name = "hooligana"
command = ~F, DF, D, DB, B, a
time = 30

[Command]
name = "hooliganb"
command = ~F, DF, D, DB, B, b
time = 30

[Command]
name = "hooliganc"
command = ~F, DF, D, DB, B, c
time = 30

[Command]
name = "hooligancounterx"
command = ~F, DF, D, DB, B, x
time = 30

[Command]
name = "hooligancountery"
command = ~F, DF, D, DB, B, y
time = 30

[Command]
name = "hooligancounterz"
command = ~F, DF, D, DB, B, z
time = 30

[Command]
name = "recoveryrollfwd"
command = ~B, DB, D, DF, F, x
time = 30

[Command]
name = "recoveryrollfwd"
command = ~B, DB, D, DF, F, y
time = 30

[Command]
name = "recoveryrollfwd"
command = ~B, DB, D, DF, F, z
time = 30

[Command]
name = "recoveryrollback"
command = ~F, DF, D, DB, B, x
time = 30

[Command]
name = "recoveryrollback"
command = ~F, DF, D, DB, B, y
time = 30

[Command]
name = "recoveryrollback"
command = ~F, DF, D, DB, B, z
time = 30

;SPECIAL ---------------------------------------------------------------------
[Command]
name = "dizzyrecover"
command = F,B
time = 20

;DOUBLE TAP ------------------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;2/3 BUTTON COMBINATION ------------------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "yz"
command = y+z
time = 1

[Command]
name = "bc"
command = b+c
time = 1

;SINGLE BUTTON ---------------------------------------------------------------
[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holdz"
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
name = "start"
command = s
time = 1

;HOLD DIRECTION --------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;==============
[Statedef -1]
;==============
;=================
;AI ACTIVATION
;=================
;-----------------------------------------------------------------
[State -1, AI ACTIVE]
type = VarSet
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
v = 3
value = 1

;=================
;SUPER MOVES
;=================
;-----------------------------------------------------------------
;REVERSE SHAFT BREAKER
[State -1, REVERSE SHAFT BREAKER]
type = ChangeState
value = 4000
triggerall = command = "revshaft"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;-----------------------------------------------------------------
;MAXIMUM CAMMY/LEFT
[State -1, MAXIMUM CAMMY/LEFT]
type = ChangeState
value = 3500
triggerall = command = "maxcam"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;-----------------------------------------------------------------
;MAXIMUM CAMMY/RIGHT
[State -1, MAXIMUM CAMMY/RIGHT]
type = ChangeState
value = 3520
triggerall = command = "maxcam"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = facing = -1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;-----------------------------------------------------------------
;HEAT DRIVE SMASHER
[State -1, HEAT DRIVE SMASHER]
type = ChangeState
value = 3000
triggerall = command = "heatdrive"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;=================
;SPECIAL MOVES
;=================
;-----------------------------------------------------------------
;HOOLIGAN COUNTER / X
[State -1, HOOLIGAN COUNTER / X]
type = ChangeState
value = 1400
triggerall = command = "hooligancounterx"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;-----------------------------------------------------------------
;HOOLIGAN COUNTER / Y
[State -1, HOOLIGAN COUNTER / Y]
type = ChangeState
value = 1401
triggerall = command = "hooligancountery"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;-----------------------------------------------------------------
;HOOLIGAN COUNTER / Z
[State -1, HOOLIGAN COUNTER / Z]
type = ChangeState
value = 1402
triggerall = command = "hooligancounterz"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;-----------------------------------------------------------------
;HOOLIGAN SLAM
[State -1, HOOLIGAN SLAM]
type = ChangeState
value = 1310
triggerall = time >= 10
triggerall = p2bodydist x < 10
trigger1 = command = "y"
trigger1 = command = "holdfwd"
trigger1 = stateno = 1301
trigger2 = command = "y"
trigger2 = command = "holdfwd"
trigger2 = stateno = 1304
trigger3 = command = "y"
trigger3 = command = "holdfwd"
trigger3 = stateno = 1307
trigger4 = command = "z"
trigger4 = command = "holdfwd"
trigger4 = stateno = 1301
trigger5 = command = "z"
trigger5 = command = "holdfwd"
trigger5 = stateno = 1304
trigger6 = command = "z"
trigger6 = command = "holdfwd"
trigger6 = stateno = 1307

;-----------------------------------------------------------------
;HOOLIGAN HURRACANRANA
[State -1, HOOLIGAN HURRACANRANA]
type = ChangeState
value = 1320
triggerall = time >= 10
triggerall = p2bodydist x < 10
trigger1 = command = "b"
trigger1 = command = "holdfwd"
trigger1 = stateno = 1301
trigger2 = command = "b"
trigger2 = command = "holdfwd"
trigger2 = stateno = 1304
trigger3 = command = "b"
trigger3 = command = "holdfwd"
trigger3 = stateno = 1307
trigger4 = command = "c"
trigger4 = command = "holdfwd"
trigger4 = stateno = 1301
trigger5 = command = "c"
trigger5 = command = "holdfwd"
trigger5 = stateno = 1304
trigger6 = command = "c"
trigger6 = command = "holdfwd"
trigger6 = stateno = 1307

;-----------------------------------------------------------------
;HOOLIGAN COMBO/A
[State -1, HOOLIGAN COMBO/A]
type = ChangeState
value = 1300
triggerall = command = "hooligana"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;-----------------------------------------------------------------
;HOOLIGAN COMBO/B
[State -1, HOOLIGAN COMBO/B]
type = ChangeState
value = 1303
triggerall = command = "hooliganb"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;-----------------------------------------------------------------
;HOOLIGAN COMBO/C
[State -1, HOOLIGAN COMBO/C]
type = ChangeState
value = 1306
triggerall = command = "hooliganc"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;-----------------------------------------------------------------
;SPIN KNUCKLE/X
[State -1, SPIN KNUCKLE/X]
type = ChangeState
value = 1220
triggerall = command = "knucklex"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;-----------------------------------------------------------------
;SPIN KNUCKLE/Y
[State -1, SPIN KNUCKLE/Y]
type = ChangeState
value = 1223
triggerall = command = "knuckley"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;-----------------------------------------------------------------
;SPIN KNUCKLE/Z
[State -1, SPIN KNUCKLE/Z]
type = ChangeState
value = 1225
triggerall = command = "knucklez"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;-----------------------------------------------------------------
;THRUST KICK/A
[State -1, THRUST KICK/A]
type = ChangeState
value = 1200
triggerall = command = "thrusta"
triggerall = pos Y < -50
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact

;-----------------------------------------------------------------
;THRUST KICK/B
[State -1, THRUST KICK/B]
type = ChangeState
value = 1201
triggerall = command = "thrustb"
triggerall = pos Y < -50
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact

;-----------------------------------------------------------------
;THRUST KICK/C
[State -1, THRUST KICK/C]
type = ChangeState
value = 1202
triggerall = command = "thrustc"
triggerall = pos Y < -50
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact

;-----------------------------------------------------------------
;CANNON SPIKE/A
[State -1, CANNON SPIKE/A]
type = ChangeState
value = 1100
triggerall = command = "spikea"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;-----------------------------------------------------------------
;CANNON SPIKE/B
[State -1, CANNON SPIKE/B]
type = ChangeState
value = 1102
triggerall = command = "spikeb"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;-----------------------------------------------------------------
;CANNON SPIKE/C
[State -1, CANNON SPIKE/C]
type = ChangeState
value = 1104
triggerall = command = "spikec"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;-----------------------------------------------------------------
;AIR CANNON DRILL/A
[State -1, AIR CANNON DRILL/A]
type = ChangeState
value = 1010
triggerall = command = "drilla"
triggerall = pos Y < -50
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact

;-----------------------------------------------------------------
;AIR CANNON DRILL/B
[State -1, AIR CANNON DRILL/B]
type = ChangeState
value = 1012
triggerall = command = "drillb"
triggerall = pos Y < -50
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact

;-----------------------------------------------------------------
;AIR CANNON DRILL/C
[State -1, AIR CANNON DRILL/C]
type = ChangeState
value = 1014
triggerall = command = "drillc"
triggerall = pos Y < -50
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact

;-----------------------------------------------------------------
;CANNON DRILL/A
[State -1, CANNON DRILL/A]
type = ChangeState
value = 1000
triggerall = command = "drilla"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;-----------------------------------------------------------------
;CANNON DRILL/B
[State -1, CANNON DRILL/B]
type = ChangeState
value = 1003
triggerall = command = "drillb"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;-----------------------------------------------------------------
;CANNON DRILL/C
[State -1, CANNON DRILL/C]
type = ChangeState
value = 1006
triggerall = command = "drillc"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = movecontact
trigger7 = stateno = 225
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 235
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 255
trigger13 = movecontact
trigger14 = stateno = 400
trigger14 = movecontact
trigger15 = stateno = 410
trigger15 = movecontact
trigger16 = stateno = 420
trigger16 = movecontact
trigger17 = stateno = 430
trigger17 = movecontact
trigger18 = stateno = 440
trigger18 = movecontact
trigger19 = stateno = 450
trigger19 = movecontact

;=================
;DEFENSIVE
;=================
;-----------------------------------------------------------------
;RECOVERY ROLL (FWD)
[State -1, RECOVERY ROLL (FWD)]
type = ChangeState
value = 800
triggerall = command = "recoveryrollfwd"
triggerall = alive = 1 && canrecover = 1 && pos y > -5
trigger1 = stateno = 5071 || stateno = 5100

;-----------------------------------------------------------------
;RECOVERY ROLL (BKWD)
[State -1, RECOVERY ROLL (BKWD)]
type = ChangeState
value = 810
triggerall = command = "recoveryrollback"
triggerall = alive = 1 && canrecover = 1 && pos y > -5
trigger1 = stateno = 5071 || stateno = 5100

;=================
;THROWS
;=================
;-----------------------------------------------------------------
;GERMAN SUPLEX
[State -1, GERMAN SUPLEX]
type = ChangeState
value = 300
trigger1 = command = "holdfwd"
trigger1 = command = "yz"
trigger1 = P2bodydist X <=10
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno != 100
trigger1 = P2movetype != H 

;-----------------------------------------------------------------
;GERMAN SUPLEX (BACKWARDS)
[State -1, GERMAN SUPLEX (BACKWARDS)]
type = ChangeState
value = 305
trigger1 = command = "holdback"
trigger1 = command = "yz"
trigger1 = P2bodydist X <=10
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno != 100
trigger1 = P2movetype != H 

;-----------------------------------------------------------------
;HURRACANRANA
[State -1, HURRACANRANA]
type = ChangeState
value = 310
trigger1 = command = "holdfwd"
trigger1 = command = "bc"
trigger1 = P2bodydist X <=10
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno != 100
trigger1 = P2movetype != H 

;-----------------------------------------------------------------
;HURRACANRANA (BACKWARDS)
[State -1, HURRACANRANA (BACKWARDS)]
type = ChangeState
value = 320
trigger1 = command = "holdback"
trigger1 = command = "bc"
trigger1 = P2bodydist X <=10
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno != 100
trigger1 = P2movetype != H 

;-----------------------------------------------------------------
;AIR SLAM
[State -1, AIR SLAM]
type = ChangeState
value = 330
trigger1 = command = "holdfwd"
trigger1 = command = "yz"
trigger1 = P2bodydist X <=10
trigger1 = statetype = A
trigger1 = ctrl = 1

;-----------------------------------------------------------------
;AIR SLAM (BACKWARDS)
[State -1, AIR SLAM (BACKWARDS)]
type = ChangeState
value = 334
trigger1 = command = "holdback"
trigger1 = command = "yz"
trigger1 = P2bodydist X <=10
trigger1 = statetype = A
trigger1 = ctrl = 1

;-----------------------------------------------------------------
;AIR HURRACANRANA
[State -1, AIR HURRACANRANA]
type = ChangeState
value = 340
trigger1 = command = "holdfwd"
trigger1 = command = "bc"
trigger1 = P2bodydist X <=10
trigger1 = statetype = A
trigger1 = ctrl = 1

;-----------------------------------------------------------------
;AIR HURRACANRANA (BACKWARDS)
[State -1, AIR HURRACANRANA (BACKWARDS)]
type = ChangeState
value = 350
trigger1 = command = "holdback"
trigger1 = command = "bc"
trigger1 = P2bodydist X <=10
trigger1 = statetype = A
trigger1 = ctrl = 1

;=================
;CLOSE ATTACKS
;=================
;-----------------------------------------------------------------
;X
[State -1, X] 
type = ChangeState 
value = 205 
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 20 
trigger1 = statetype = S 
trigger1 = ctrl = 1 

;-----------------------------------------------------------------
;Y
[State -1, Y] 
type = ChangeState 
value = 215 
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 20 
trigger1 = statetype = S 
trigger1 = ctrl = 1 
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 235
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact

;-----------------------------------------------------------------
;Z
[State -1, Z] 
type = ChangeState 
value = 225 
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 20 
trigger1 = statetype = S 
trigger1 = ctrl = 1 
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = stateno = 440
trigger13 = movecontact

;-----------------------------------------------------------------
;A
[State -1, A] 
type = ChangeState 
value = 235 
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 20 
trigger1 = statetype = S 
trigger1 = ctrl = 1 
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact

;-----------------------------------------------------------------
;B
[State -1, B] 
type = ChangeState 
value = 245 
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 20 
trigger1 = statetype = S 
trigger1 = ctrl = 1 
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;-----------------------------------------------------------------
;C
[State -1, C] 
type = ChangeState 
value = 255 
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 20 
trigger1 = statetype = S 
trigger1 = ctrl = 1 
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = stateno = 440
trigger13 = movecontact

;=================
;STANDING ATTACKS
;=================
;-----------------------------------------------------------------
;X
[State -1, X]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X > 20 
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------------------------------------------
;Y
[State -1, Y]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X > 20 
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 235
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact

;-----------------------------------------------------------------
;Z
[State -1, Z]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = P2bodydist X > 20 
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = stateno = 440
trigger13 = movecontact

;-----------------------------------------------------------------
;A
[State -1, A]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X > 20 
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact

;-----------------------------------------------------------------
;B
[State -1, B]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X > 20 
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;-----------------------------------------------------------------
;C
[State -1, C]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2bodydist X > 20 
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = stateno = 440
trigger13 = movecontact

;=================
;CROUCHING ATTACKS
;=================
;-----------------------------------------------------------------
;X
[State -1, X]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;-----------------------------------------------------------------
;Y
[State -1, Y]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 235
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact

;-----------------------------------------------------------------
;Z
[State -1, Z]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = stateno = 440
trigger13 = movecontact

;-----------------------------------------------------------------
;A
[State -1, A]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact

;-----------------------------------------------------------------
;B
[State -1, B]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact

;-----------------------------------------------------------------
;C
[State -1, C]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 215
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 235
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact
trigger9 = stateno = 245
trigger9 = movecontact
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = stateno = 440
trigger13 = movecontact

;=================
;JUMPING ATTACKS
;=================
;-----------------------------------------------------------------
;X
[State -1, X]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;-----------------------------------------------------------------
;Y
[State -1, Y]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact

;-----------------------------------------------------------------
;Z
[State -1, Z]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact

;-----------------------------------------------------------------
;A
[State -1, A]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;-----------------------------------------------------------------
;B
[State -1, B]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact

;-----------------------------------------------------------------
;C
[State -1, C]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact

;===============
;BASIC/REQUIRED
;===============
;-----------------------------------------------------------------
;DASH
[State -1, DASH]
type = ChangeState
value = 100
trigger1 = StateNo != [100,101]
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------------------------------------------
;HOP BACK
[State -1, HOP BACK]
type = ChangeState
value = 105
trigger1 = StateNo != [105,106]
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------------------------------------------
;TAUNT
[State -1, TAUNT]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;----------------------------------------------------------------
;AERIAL RAVE JUMP
[State -1. AERIAL RAVE JUMP]
type = ChangeState
value = 40
triggerall = command = "holdup"
trigger1 = stateno = 255
trigger1 = movecontact
trigger2 = stateno = 420
trigger2 = movecontact



