;-| ³¬±ØÉ± |-----------------------------------------------------------
[Command]
name = "dfdb_1"
command = ~D ,F ,D ,B , x
time = 30

[Command]
name = "dfdb_2"
command = ~D ,F ,D ,B , y
time = 30

[Command]
name = "dbdb_3"
command = ~D ,B ,D ,B , a
time = 30

[Command]
name = "dbdb_4"
command = ~D ,B ,D ,B , b
time = 30

[Command]
name = "dbdf_3"
command = ~D ,B ,D ,F , a
time = 30

[Command]
name = "dbdf_4"
command = ~D ,B ,D ,F , b
time = 30

[Command]
name = "dfdf_3"
command = ~D ,F ,D ,F , a
time = 30

[Command]
name = "dfdf_4"
command = ~D ,F ,D ,F , b
time = 30

[Command]
name = "fdbf_1"
command = ~F, B,DB, D, F, x
time = 30

[Command]
name = "fdbf_2"
command = ~F, B,DB, D, F, y
time = 30

;-| ±ØÉ±¼¼ |-----------------------------------------------------------
[Command]
name = "fdf_1"
command = ~F,D,F,x

[Command]
name = "fdf_2"
command = ~F,D,F,y

[Command]
name = "fbf_3"
command = ~F,B,F,a

[Command]
name = "fbf_4"
command = ~F,B,F,b

[Command]
name = "fdf_3"
command = ~45$D, U, a
time = 10

[Command]
name = "fdf_4"
command = ~45$D, U, b
time = 10

[Command]
name = "df_1"
command = ~30$B, F, x
time = 10

[Command]
name = "df_2"
command = ~30$B, F, y
time = 10

[Command]
name = "db_1"
command = ~30$D, U, x
time = 10

[Command]
name = "db_2"
command = ~30$D, U, y
time = 10

[Command]
name = "db_3"
command = ~30$B, F, a
time = 10

[Command]
name = "db_4"
command = ~30$B, F, b
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
name = "call"
command = y+a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "dodge"
command = x+y
time = 1

[Command]
name = "c"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

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
name = "fd_b"
command = /DF,b
time = 1

[Command]
name = "fd_a"
command = /DF,a
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



;-| Single Button |---------------------------------------------------------
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
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_s"
command = /$s
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
name = "back"
command = B
time = 1

[Command]
name = "upback"
command = UB
time = 1

[Command]
name = "downback"
command = DB
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
name = "longjump"
command = D, $U
time = 18

;---------------------------------------------------------------------------
[Statedef -1]
;---------------------------------------------------------------------------

;Ô®Öú
[State -1]
type = ChangeState
value = 4000
triggerall = var(2) > 0
triggerall = command = "call"
triggerall = numhelper = 0
trigger1 = statetype != A
trigger1 = ctrl = 1

;Ç°ÅÜ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3250
triggerall = command = "dfdb_2"
triggerall = POWER >= 2000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1]
type = ChangeState
value = 3550
triggerall = command = "dbdb_4"
triggerall = POWER >= 2000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1]
type = ChangeState
value = 3500
triggerall = command = "dbdb_3"
triggerall = POWER >= 1000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1]
type = ChangeState
value = 3450
triggerall = command = "dbdf_4"
triggerall = POWER >= 2000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1]
type = ChangeState
value = 3400
triggerall = command = "dbdf_3"
triggerall = POWER >= 1000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1]
type = ChangeState
value = 3350
triggerall = command = "dfdf_4"
triggerall = POWER >= 2000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1]
type = ChangeState
value = 3300
triggerall = command = "dfdf_3"
triggerall = POWER >= 1000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1]
type = ChangeState
value = 3200
triggerall = command = "dfdb_1"
triggerall = POWER >= 1000
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1]
type = ChangeState
value = 3100
triggerall = command = "fdbf_2"
triggerall = numproj = 0
triggerall = POWER >= 2000
triggerall = statetype != A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3000
triggerall = command = "fdbf_1"
triggerall = numproj = 0
triggerall = POWER >= 1000
triggerall = statetype != A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1550
triggerall = command = "fbf_4"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1500
triggerall = command = "fbf_3"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1450
triggerall = command = "fdf_2"
triggerall = statetype != A
trigger1 = ctrl = 1


[State -1]
type = ChangeState
value = 1400
triggerall = command = "fdf_1"
triggerall = statetype != A
trigger1 = ctrl = 1


[State -1]
type = ChangeState
value = 1350
triggerall = command = "fdf_4"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger3 = stateno = 40
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1300
triggerall = command = "fdf_3"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 40

[State -1]
type = ChangeState
value = 1200
triggerall = command = "db_3" 
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1250
triggerall = command = "db_4" 
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1100
triggerall = command = "db_1" || command = "db_2"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger3 = stateno = 40

[State -1]
type = ChangeState
value = 1005
triggerall = command = "df_2"
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1000
triggerall = command = "df_1"
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact


; ºó¹ö
[State -1]
type = ChangeState
value = 112
trigger1 =  command = "z"
trigger1 = command = "holdback" && statetype = S && ctrl

; Ç°¹ö
[State -1]
type = ChangeState
value = 110
trigger1 = command =  "z"
trigger1 = statetype = S && ctrl

; ½ô¼±»Ø±Ü
[State -1]
type = ChangeState
value = 113
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1000
triggerall = command = "holdback"
trigger1 = command = "z"

; ½ô¼±»Ø±Ü
[State -1]
type = ChangeState
value = 111
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1000
trigger1 = command = "z"

; ·ÀÓù·´»÷
[State -1]
type = ChangeState
value = 241
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1000
trigger1 = command = "c"


;»Ø±Ü¹¥»÷
[State -1]
type = ChangeState
value = 350
triggerall = command = "a" ||command = "b"||command = "x"||command = "y"
trigger1 = stateno = 110
trigger1 = time = [12,26]

;Í¶¼¼
[State -1]
type = ChangeState
value = 750
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 15
triggerall = stateno != 100
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"


[State -1]
type = ChangeState
value = 700
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 15
triggerall = stateno != 100
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = command = "fwd_y"

[State -1]
Type = ChangeState
Value = 320
Triggerall = Command = "fd_a"
Triggerall = Statetype != A
Trigger1 = Ctrl = 1

[State -1]
Type = ChangeState
Value = 330
Triggerall = Command = "fd_a"
Triggerall = Statetype = A
Trigger1 = Ctrl = 1

[State -1]
Type = ChangeState
Value = 340
Triggerall = Command = "fd_b"
Triggerall = Statetype = A
Trigger1 = Ctrl = 1

[State -1]
Type = ChangeState
Value = 300
Triggerall = Command = "fwd_a" || Command = "back_a" 
triggerall = Command != "holddown"
Triggerall = Statetype = S
Trigger1 = Ctrl = 1
trigger2 = (stateno = 215 ||stateno = 225) && movehit
trigger3 = (stateno = 200 ||stateno = 205) && movehit

[State -1]
Type = ChangeState
Value = 310
Triggerall = Command = "fwd_x" || Command = "back_x" 
triggerall = Command != "holddown"
Triggerall = Statetype = S
Trigger1 = Ctrl = 1
trigger2 = (stateno = 215 ||stateno = 225) && movehit
trigger3 = (stateno = 200 ||stateno = 205) && movehit

;ÌøÇáÈ­
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 620
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;Ìø³¬ÖØ»÷
[State -1]
type = ChangeState
value = 640
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;ÌøÖØ½Å
[State -1, Jump Strong Kick]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl



;ÏÂ¶×ÇáÈ­
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;ÏÂ¶×Çá½Å
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;ÏÂ¶×ÖØÈ­
[State -1, Crouching Light Kick]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;ÏÂ¶×ÖØ½Å
[State -1, Crouching Strong Kick]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410)
trigger2 = (time > 9) || (movecontact && time > 5)

;³¬ÖØ»÷
[State -1]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Õ¾Á¢ÇáÈ­£¨½üÉí£©
[State -1]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 18
trigger1 = statetype = S
trigger1 = ctrl = 1


;Õ¾Á¢ÇáÈ­
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Õ¾Á¢Çá½Å

[State -1]
type = ChangeState
value = 215
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl




;---------------------------------------------------------------------------
;Õ¾Á¢ÖØÈ­
[State -1]
type = ChangeState
value = 225
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Õ¾Á¢ÖØ½Å
[State -1]
type = ChangeState
value = 235
triggerall = command = "b"
triggerall = p2bodydist x <= 20
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl



;ÌôÐÆ
[State -1]
type = ChangeState
value = 195
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "s"
