;-| ³¬É±  |-----------------------------------------------------------
;Ô²É±Õó
[Command]
name = "dfdf_1"
command = ~D,F,D,F, x
time = 35

[Command]
name = "dfdf_3"
command = ~D,F,D,F, a
time = 35


;Õ¶Ìúó«òëÈ­
[Command]
name = "dbdf_2"
command = ~D,F,D,B, y
time = 35

[Command]
name = "dbdf_4"
command = ~D,F,D,B, b
time = 35

;èóÌìÉÁ¹âÕó
[Command]
name = "dbdb_4"
command = ~D,B,D,B, b
time = 35

[Command]
name = "dbdb_2"
command = ~D,B,D,B, y
time = 35
;-| ±ØÉ±¼¼ |-----------------------------------------------------------
;Æø¿×ÅÝ
[Command]
name = "df_1"
command = ~D, F, x

[Command]
name = "df_3"
command = ~D, F, a

;Ï¼Õ¶
[Command]
name = "db_1"
command = ~D, B, x

[Command]
name = "db_3"
command = ~D, B, a

;Á÷Ó°Õó
[Command]
name = "bdf_1"
command = ~B, D, F, x

[Command]
name = "bdf_3"
command = ~B, D, F, a

;¹ÇÆÆÕ¶
[Command]
name = "fdb_2"
command = ~F, D, B, y

[Command]
name = "fdb_4"
command = ~F, D, B, b

;ÌìÂí½Å
[Command]
name = "db_2"
command = ~D, B, y

[Command]
name = "db_4"
command = ~D, B, b

;Ó°¼£
[Command]
name = "df_2"
command = ~D, F, y

[Command]
name = "df_4"
command = ~D, F, b

;Õ¶Ìú²¨
[Command]
name = "dbdf_1"
command = ~D,F,D,B, x
time = 35

[Command]
name = "dbdf_3"
command = ~D,F,D,B, a
time =35

[Command]
name = "F"
command = F
time = 1

[Command]
name = "B"
command = B
time = 1
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
name = "dodge"
command = x+y
time = 1

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
name = "fd_y"
command = /DF,y
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

;Èý½ÇÌø
[State -1]
type = ChangeState
value = 4000
triggerall = command = "F" && stateno != 4000 && ctrl = 1
triggerall = anim = 42 || anim = 43
trigger1 = Pos y < -40 && screenpos X < 40 && facing = 1 || Pos y < -40 && screenpos X > 280 && facing = -1

;Èý½ÇÌø
[State -1]
type = ChangeState
value = 4010
triggerall = command = "B" && stateno != 4010 && ctrl = 1
triggerall = anim = 42 || anim = 43
trigger1 = Pos y < 30 && screenpos X < 40 && facing = -1 || Pos y < 30 && screenpos X > 280 && facing = 1

;Í¶¼¼
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 15
triggerall = stateno != 100
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = command = "fwd_a"

[State -1]
type = ChangeState
value = 950
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 15
triggerall = stateno != 100
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"

;===========================================================================
;Ô²É±Õó
[State -1]
type = ChangeState
value = 3250
triggerall = command = "dfdf_3"
triggerall = statetype != A
triggerall = power > 2000
trigger1 = ctrl

[State -1]
type = ChangeState
value = 3200
triggerall = command = "dfdf_1" ||command = "dfdf_3"
triggerall = statetype != A
triggerall = power > 1000
trigger1 = ctrl

;Õ¶Ìúó«òëÈ­
[State -1]
type = ChangeState
value = 3050
triggerall = command = "dbdf_4"
triggerall = statetype != A
triggerall = power > 2000
trigger1 = ctrl

[State -1]
type = ChangeState
value = 3000
triggerall = command = "dbdf_2"
triggerall = statetype != A
triggerall = power > 1000
trigger1 = ctrl

[State -1]
type = ChangeState
value = 3150
triggerall = command = "dbdb_4"
triggerall = statetype != A
triggerall = power > 2000
trigger1 = ctrl

[State -1]
type = ChangeState
value = 3151
triggerall = command = "dbdb_4"
triggerall = statetype = A
triggerall = power > 2000
trigger1 = ctrl

[State -1]
type = ChangeState
value = 3100
triggerall = command = "dbdb_2"
triggerall = statetype != A
triggerall = power > 1000
trigger1 = ctrl

[State -1]
type = ChangeState
value = 3101
triggerall = command = "dbdb_2"
triggerall = statetype = A
triggerall = power > 1000
trigger1 = ctrl

;¾ÛÆø
[State -1]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "hold_x"
trigger1 = command = "hold_y"
trigger1 = command = "hold_z"

;Õ¶Ìú²¨
[State -1]
type = ChangeState
value = 1650
triggerall = command = "dbdf_3"
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 1600
triggerall = command = "dbdf_1"
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = ctrl
;Ó°¼£
[State -1]
type = ChangeState
value = 1500
triggerall = command = "df_2"
triggerall = statetype != A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 1550
triggerall = command = "df_4"
triggerall = statetype != A
trigger1 = ctrl


;¹ÇÆÆÕ¶
[State -1]
type = ChangeState
value = 1350
triggerall = command = "fdb_4"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno =225)&&(movehit)
trigger3 = (stateno =215)&&(movehit)
trigger4 = (stateno =400)&&(movehit)
trigger5 = (stateno =410)&&(movehit)
trigger6 = (stateno =420)&&(movehit)
trigger7 = (stateno =220)&&(movehit)
trigger8 = (stateno =701)&&(movehit)

[State -1]
type = ChangeState
value = 1300
triggerall = command = "fdb_2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno =225)&&(movehit)
trigger3 = (stateno =215)&&(movehit)
trigger4 = (stateno =400)&&(movehit)
trigger5 = (stateno =410)&&(movehit)
trigger6 = (stateno =420)&&(movehit)
trigger7 = (stateno =220)&&(movehit)
trigger8 = (stateno =701)&&(movehit)

;ÌìÂí½Å
[State -1]
type = ChangeState
value = 1400
triggerall = command = "db_2"
triggerall = statetype != A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 1450
triggerall = command = "db_4"
triggerall = statetype != A
trigger1 = ctrl

;Á÷Ó°Õó
[State -1]
type = ChangeState
value = 1200
triggerall = command = "bdf_1" || command = "bdf_3"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno =225)&&(movehit)
trigger3 = (stateno =215)&&(movehit)
trigger4 = (stateno =400)&&(movehit)
trigger5 = (stateno =410)&&(movehit)
trigger6 = (stateno =420)&&(movehit)
trigger7 = (stateno =220)&&(movehit)
trigger8 = (stateno =701)&&(movehit)

;Æø¿×ÅÝ
[State -1]
type = ChangeState
value = 1000
triggerall = command = "df_1" || command = "df_3"
triggerall = statetype != A 
trigger1 = ctrl
trigger2 = (stateno =225)&&(movehit)
trigger3 = (stateno =215)&&(movehit)
trigger4 = (stateno =400)&&(movehit)
trigger5 = (stateno =410)&&(movehit)
trigger6 = (stateno =420)&&(movehit)
trigger7 = (stateno =220)&&(movehit)
trigger8 = (stateno =701)&&(movehit)

;Ï¼Õ¶
[State -1]
type = ChangeState
value = 1100
triggerall = command = "db_1"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno =225)&&(movehit)
trigger3 = (stateno =215)&&(movehit)
trigger4 = (stateno =400)&&(movehit)
trigger5 = (stateno =410)&&(movehit)
trigger6 = (stateno =420)&&(movehit)
trigger7 = (stateno =220)&&(movehit)
trigger8 = (stateno =701)&&(movehit)

[State -1]
type = ChangeState
value = 1105
triggerall = command = "db_3"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno =225)&&(movehit)
trigger3 = (stateno =215)&&(movehit)
trigger4 = (stateno =400)&&(movehit)
trigger5 = (stateno =410)&&(movehit)
trigger6 = (stateno =420)&&(movehit)
trigger7 = (stateno =220)&&(movehit)
trigger8 = (stateno =701)&&(movehit)
;---------------------------------------------------------------------------
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

;³¬ÖØ»÷
[State -1]
type = ChangeState
value = 240
trigger1 = command = "c"
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
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 18
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl




;---------------------------------------------------------------------------
;Õ¾Á¢ÖØÈ­
[State -1]
type = ChangeState
value = 225
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 18
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl




;---------------------------------------------------------------------------
;Õ¾Á¢ÖØ½Å
[State -1]
type = ChangeState
value = 235
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 18
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
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
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;ÏÂ¶×ÖØÈ­
[State -1, Crouching Light Kick]
type = ChangeState
value = 420
triggerall = command = "a"
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

;---------------------------------------------------------------------------
;Ìø³¬ÖØ»÷
[State -1]
type = ChangeState
value = 640
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
;ÌøÇáÈ­
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 ;jump_x or jump_a
trigger2 = movecontact
triggerall = vel X = 0

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 615
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------

[State -1, Jump Light Kick]
type = ChangeState
value = 620
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
triggerall = vel X = 0

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 635
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;»Ø±Ü
[State -1]
type = ChangeState
value = 756
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "z" && command = "holdback"

;»Ø±Ü
[State -1]
type = ChangeState
value = 700
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "z" && command = "holdfwd"

;»Ø±Ü
[State -1]
type = ChangeState
value = 750
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "z"

;ÌôÐÆ
[State -1]
type = ChangeState
value = 195
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "s"
