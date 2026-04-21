;---------------------------------------------------------------------------
;☆超必殺技☆
;---------------------------------------
;陰陽鴉
[Command]
name = "SA1"
command = ~F, DF, D, DB, B, F, x+y
time = 60

;気狂障壁
[Command]
name = "SA2"
command = ~F, B, DB, D, DF, F, x+a
time = 60

;鴉地獄の舞
[Command]
name = "SA3"
command = ~B, F, DF, D, DB, B, x+y
time = 60

[Command]
name = "SA4"
command = ~B, F, DF, D, DB, B, a+b
time = 60
;=======================================
;必殺技
;---------------------------------------
;昇竜拳
[Command]
name = "shouryu_w"
command = ~F ,D ,DF, x
time = 30

[Command]
name = "shouryu_s"
command = ~F ,D ,DF, y
time = 30

[Command]
name = "shouryu_h"
command = ~F ,D ,DF, x+y
time = 30

;波動拳
[Command]
name = "hadou_w"
command = ~D, DF, F, x
time = 30

[Command]
name = "hadou_s"
command = ~D, DF, F, y
time = 30

[Command]
name = "hadou_h"
command = ~D, DF, F, x+y
time = 30

;逆波動
[Command]
name = "rhadou_w"
command = ~D, DB, B, x
time = 30

[Command]
name = "rhadou_s"
command = ~D, DB, B, y
time = 30

[Command]
name = "rhadou_h"
command = ~D, DB, B, x+y
time = 30

;コマンド投げ
[Command]
name = "CT"
command = ~F, DF, D, DB, B,  y
time = 50

;=======================================
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

;=====================================
[command]
name = "fwd_a"
command = /F, a
time = 1

[command]
name = "fwd_b"
command = /F, b
time = 1

[command]
name = "fwd_x"
command = /F, x
time = 1

[command]
name = "fwd_y"
command = /F, y
time = 1

[command]
name = "back_x"
command = /B, x
time = 1

[command]
name = "back_y"
command = /B, y
time = 1

[command]
name = "back_a"
command = /B, a
time = 1

[command]
name = "back_b"
command = /B, b
time = 1

[command]
name = "down_a"
command = /D, a
time = 1

[command]
name = "down_b"
command = /D, b
time = 1

[command]
name = "down_x"
command = /D, x
time = 1

[command]
name = "down_y"
command = /D, y
time = 1

[command]
name = "df_a"
command = /DF, a
time = 1

[command]
name = "df_b"
command = /DF, b
time = 1

[command]
name = "df_x"
command = /DF, x
time = 1

[command]
name = "df_y"
command = /DF, y
time = 1

[command]
name = "db_x"
command = /DB, x
time = 1

[command]
name = "db_y"
command = /DB, y
time = 1

[command]
name = "db_a"
command = /DB, a
time = 1

[command]
name = "db_b"
command = /DB, b
time = 1

[command]
name = "uf_x"
command = /UF, x
time = 1

[command]
name = "uf_y"
command = /UF, y
time = 1

[command]
name = "uf_a"
command = /UF, a
time = 1

[command]
name = "uf_b"
command = /UF, b
time = 1

[command]
name = "ub_x"
command = /UB, x
time = 1

[command]
name = "ub_y"
command = /UB, y
time = 1

[command]
name = "ub_a"
command = /UB, a
time = 1

[command]
name = "ub_b"
command = /UB, b
time = 1

[command]
name = "ff_x"
command = ~F, F, x
time = 20

[command]
name = "ff_y"
command = ~F, F, y
time = 20

[command]
name = "ff_h"
command = ~F, F, x+y
time = 20

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

[Statedef -1]
;---------------------------------------------------------------------------
;☆超必殺技☆
;陰陽鴉
[State -1]
type = ChangeState
value = 3000
triggerall = Var(1) = 0
triggerall = command = "SA1"
triggerall = command !="holddown"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

[State -1]
type = ChangeState
value = 3050
triggerall = Var(1) = 1
triggerall = command = "SA1"
triggerall = command !="holddown"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

;気狂障壁
[State -1]
type = ChangeState
value = 3100
triggerall = Var(1) = 0
triggerall = command = "SA2"
triggerall = command !="holddown"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

[State -1]
type = ChangeState
value = 3150
triggerall = Var(1) = 1
triggerall = command = "SA2"
triggerall = command !="holddown"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

;鴉地獄の舞
[State -1]
type = ChangeState
value = 3200
triggerall = Var(1) = 0
triggerall = command = "SA3"
triggerall = command !="holddown"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

[State -1]
type = ChangeState
value = 3250
triggerall = Var(1) = 0
triggerall = command = "SA4"
triggerall = command !="holddown"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

;---------------------------------------------------------
;必殺技
;鴉刃
[State -1]
type = ChangeState
value = 2000
triggerall = Var(1) = 0
triggerall = command = "shouryu_h"
triggerall = command !="holddown"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

[State -1]
type = ChangeState
value = 1000
triggerall = Var(1) = 0
triggerall = command = "shouryu_w"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

[State -1]
type = ChangeState
value = 1050
triggerall = Var(1) = 0
triggerall = command = "shouryu_s"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

;疾風羽
[State -1]
type = ChangeState
value = 2100
triggerall = Var(1) = 1
triggerall = command = "shouryu_h"
triggerall = command !="holddown"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

[State -1]
type = ChangeState
value = 1100
triggerall = Var(1) = 1
triggerall = command = "shouryu_w"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

[State -1]
type = ChangeState
value = 1150
triggerall = Var(1) = 1
triggerall = command = "shouryu_s"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

;闇鴉
[State -1]
type = ChangeState
value = 2200
triggerall = Var(1) = 0
triggerall = NumHelper(7000)= 0
triggerall = command = "hadou_h"
triggerall = command !="holddown"
triggerall = power >= 200
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

[State -1]
type = ChangeState
value = 1200
triggerall = Var(1) = 0
triggerall = NumHelper(7000)= 0
triggerall = command = "hadou_w"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

[State -1]
type = ChangeState
value = 1250
triggerall = Var(1) = 0
triggerall = NumHelper(7000)= 0
triggerall = command = "hadou_s"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

[State -1]
type = ChangeState
value = 2300
triggerall = Var(1) = 1
triggerall = NumHelper(7000)= 0
triggerall = command = "hadou_h"
triggerall = command !="holddown"
triggerall = power >= 200
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

[State -1]
type = ChangeState
value = 1300
triggerall = Var(1) = 1
triggerall = NumHelper(7000)= 0
triggerall = command = "hadou_w"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

[State -1]
type = ChangeState
value = 1350
triggerall = Var(1) = 1
triggerall = NumHelper(7000)= 0
triggerall = command = "hadou_s"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

;コマンド投げ（武器あり）
[State -1]
type = ChangeState
value = 900
triggerall = p2bodydist X < 20
triggerall = statetype = S
triggerall = ctrl
triggerall = Var(1) = 0
trigger1 = command = "CT"

;コマンド投げ（武器なし）
[State -1]
type = ChangeState
value = 950
triggerall = p2bodydist X < 20
triggerall = statetype = S
triggerall = ctrl
triggerall = Var(1) = 1
trigger1 = command = "CT"

;乱れ羽
[State -1]
type = ChangeState
value = 2400
triggerall = Var(1) = 0
triggerall = command = "rhadou_h"
triggerall = command !="holddown"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

[State -1]
type = ChangeState
value = 1400
triggerall = Var(1) = 0
triggerall = command = "rhadou_w"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

[State -1]
type = ChangeState
value = 1410
triggerall = Var(1) = 0
triggerall = command = "rhadou_s"
triggerall = command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 210
trigger3 = Movecontact = 1
trigger3 = stateno = 230
trigger4 = Movecontact = 1
trigger4 = stateno = 250
trigger5 = Movecontact = 1
trigger5 = stateno = 270
trigger6 = Movecontact = 1
trigger6 = stateno = 280
trigger7 = Movecontact = 1
trigger7 = stateno = 290
trigger8 = Movecontact = 1
trigger8 = stateno = 300
trigger9 = Movecontact = 1
trigger9 = stateno = 310
trigger10 = Movecontact = 1
trigger10 = stateno = 320
trigger11 = Movecontact = 1
trigger11 = stateno = 330
trigger12 = Movecontact = 1
trigger12 = stateno = 340
trigger13 = Movecontact = 1
trigger13 = stateno = 350
trigger14 = Movecontact = 1
trigger14 = stateno = 360
trigger15 = Movecontact = 1
trigger15 = stateno = 370
trigger16 = Movecontact = 1
trigger16 = stateno = 380
trigger17 = Movecontact = 1
trigger17 = stateno = 390
trigger18 = Movecontact = 1
trigger18 = stateno = 400
trigger19 = Movecontact = 1
trigger19 = stateno = 420
trigger20 = Movecontact = 1
trigger20 = stateno = 430
trigger21 = Movecontact = 1
trigger21 = stateno = 440
trigger22 = Movecontact = 1
trigger22 = stateno = 450
trigger23 = Movecontact = 1
trigger23 = stateno = 460
trigger24 = Movecontact = 1
trigger24 = stateno = 470
trigger25 = Movecontact = 1
trigger25 = stateno = 4000
trigger26 = Movecontact = 1
trigger26 = stateno = 4010
trigger27 = Movecontact = 1
trigger27 = stateno = 4030
trigger28 = Movecontact = 1
trigger28 = stateno = 4050
trigger29 = Movecontact = 1
trigger29 = stateno = 4060
trigger30 = Movecontact = 1
trigger30 = stateno = 4080

;羽刃
[State -1]
type = ChangeState
value = 2500
triggerall = Var(1) = 0
triggerall = command = "hadou_h"
triggerall = power >= 500
triggerall = statetype = A
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 620
trigger3 = Movecontact = 1
trigger3 = stateno = 630

[State -1]
type = ChangeState
value = 1500
triggerall = Var(1) = 0
triggerall = command = "hadou_w"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 620
trigger3 = Movecontact = 1
trigger3 = stateno = 630

[State -1]
type = ChangeState
value = 1550
triggerall = Var(1) = 0
triggerall = command = "hadou_s"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 620
trigger3 = Movecontact = 1
trigger3 = stateno = 630

;---------------------------------------------------------------------------
;ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;バックダッシュ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = stateno != 106
trigger1 = ctrl

;--------------------------------------------------------------
;武器をおさめる
[State -1]
type = ChangeState
value = 6000
triggerall = Var(1) = 0
triggerall = Statetype = S
trigger1 = command = "z"
trigger1 = ctrl

[State -1]
type = ChangeState
value = 6100
triggerall = Var(1) = 0
triggerall = Statetype = C
trigger1 = command = "z"
trigger1 = ctrl

;武器を取り出す
[State -1]
type = ChangeState
value = 6050
triggerall = Var(1) = 1
triggerall = NumHelper(7800)= 0
triggerall = Statetype = S
trigger1 = command = "z"
trigger1 = ctrl

[State -1]
type = ChangeState
value = 6150
triggerall = Var(1) = 1
triggerall = NumHelper(7800)= 0
triggerall = Statetype = C
trigger1 = command = "z"
trigger1 = ctrl

;======================================================
;投げ
;通常投げ（武器あり）
[State -1]
type = ChangeState
value = 800
triggerall = p2bodydist X < 20
triggerall = statetype = S
triggerall = ctrl
triggerall = Var(1) = 0
trigger1 = command = "fwd_y"

;通常投げ（武器なし）
[State -1]
type = ChangeState
value = 850
triggerall = p2bodydist X < 20
triggerall = statetype = S
triggerall = ctrl
triggerall = Var(1) = 1
trigger1 = command = "fwd_y"

;---------------------------------------------------------------------------
;レバー入れ立ち弱パンチ
[State -1]
type = ChangeState
value = 230
triggerall = Var(1) = 0
triggerall = command = "fwd_x"
triggerall = command !="holddown"
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 220
triggerall = Var(1) = 0
triggerall = command = "fwd_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 
;---------------------------------------
;闇コンボ発動１
[State -1]
type = ChangeState
value = 4000
triggerall = Var(1) = 0
triggerall = command = "x"
triggerall = command !="holddown"
triggerall = p2bodydist X < 20
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl

;立ち弱パンチ
[State -1]
type = ChangeState
value = 210
triggerall = Var(1) = 0
triggerall = command = "x"
triggerall = command !="holddown"
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 200
triggerall = Var(1) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 
;---------------------------------------------------------------------------
;レバー入れ強パンチ
[State -1]
type = ChangeState
value = 260
triggerall = Var(1) = 0
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 
;-------------------------------------------------------------
;立ち強パンチ
[State -1]
type = ChangeState
value = 250
triggerall = Var(1) = 0
triggerall = command = "y"
triggerall = command !="holddown"
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 240
triggerall = Var(1) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;--------------------------------------------
;立ち弱キック
[State -1]
type = ChangeState
value = 280
triggerall = Var(1) = 0
triggerall = command = "a"
triggerall = command !="holddown"
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 270
triggerall = Var(1) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------
;立ち強キック
[State -1]
type = ChangeState
value = 300
triggerall = Var(1) = 0
triggerall = command = "b"
triggerall = command !="holddown"
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 280

[State -1]
type = ChangeState
value = 290
triggerall = Var(1) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 270

;--------------------------------
;レバー入れ弱パンチ
[State -1]
type = ChangeState
value = 330
triggerall = Var(1) = 1
triggerall = command = "fwd_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 310
trigger3 = Movecontact = 1
trigger3 = stateno = 320

;----------------------------------
;闇コンボ２
[State -1]
type = ChangeState
value = 4050
triggerall = Var(1) = 1
triggerall = command = "x"
triggerall = command !="holddown"
triggerall = power >= 3000
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
;-----------------------------------
;立ち弱パンチ
[State -1]
type = ChangeState
value = 320
triggerall = Var(1) = 1
triggerall = command = "x"
triggerall = command !="holddown"
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 310
triggerall = Var(1) = 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-----------------------------------
;立ち強パンチ
[State -1]
type = ChangeState
value = 350
triggerall = Var(1) = 1
triggerall = command = "y"
triggerall = command !="holddown"
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 320
trigger3 = Movecontact = 1
trigger3 = stateno = 370
trigger4 = Movecontact = 1
trigger4 = stateno = 4050
trigger5 = Movecontact = 1
trigger5 = stateno = 4060

[State -1]
type = ChangeState
value = 340
triggerall = Var(1) = 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 310
trigger3 = Movecontact = 1
trigger3 = stateno = 360
;-----------------------------------
;立ち弱キック
[State -1]
type = ChangeState
value = 370
triggerall = Var(1) = 1
triggerall = command = "a"
triggerall = command !="holddown"
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 360
triggerall = Var(1) = 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;-----------------------------------
;立ち強キック
[State -1]
type = ChangeState
value = 390
triggerall = Var(1) = 1
triggerall = command = "b"
triggerall = command !="holddown"
triggerall = p2bodydist X < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 370
trigger3 = Movecontact = 1
trigger3 = stateno = 320
trigger4 = Movecontact = 1
trigger4 = stateno = 4050
trigger5 = Movecontact = 1
trigger5 = stateno = 4060

[State -1]
type = ChangeState
value = 380
triggerall = Var(1) = 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 360
trigger3 = Movecontact = 1
trigger3 = stateno = 310

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = Var(1) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 
;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 410
triggerall = Var(1) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = 420
triggerall = Var(1) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;----------------------------------------------
;しゃがみ強キック
[State -1]
type = ChangeState
value = 430
triggerall = Var(1) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 420
;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 440
triggerall = Var(1) = 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 
;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 450
triggerall = Var(1) = 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 
trigger2 = Movecontact = 1
trigger2 = stateno = 440
trigger3 = Movecontact = 1
trigger3 = stateno = 460

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = 460
triggerall = Var(1) = 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;----------------------------------------------
;しゃがみ強キック
[State -1]
type = ChangeState
value = 470
triggerall = Var(1) = 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 460
trigger3 = Movecontact = 1
trigger3 = stateno = 440

;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600
triggerall = Var(1) = 0
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl 
;---------------------------------------------------------------------------
;強パンチ
[State -1]
type = ChangeState
value = 610
triggerall = Var(1) = 0
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------
;弱キック
[State -1]
type = ChangeState
value = 620
triggerall = Var(1) = 0
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------
;ジャンプ強キック
[State -1]
type = ChangeState
value = 630
triggerall = Var(1) = 0
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 620
;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 640
triggerall = Var(1) = 1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl 
;---------------------------------------------------------------------------
;強パンチ
[State -1]
type = ChangeState
value = 650
triggerall = Var(1) = 1
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 640
trigger3 = Movecontact = 1
trigger3 = stateno = 660

;---------------------------------------
;弱キック
[State -1]
type = ChangeState
value = 660
triggerall = Var(1) = 1
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
;---------------------------------------
;ジャンプ強キック
[State -1]
type = ChangeState
value = 670
triggerall = Var(1) = 1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = Movecontact = 1
trigger2 = stateno = 640
trigger3 = Movecontact = 1
trigger3 = stateno = 660

;-------------------------

