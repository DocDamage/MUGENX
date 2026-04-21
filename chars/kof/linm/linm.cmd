[Command]
name = "426426k"
command = ~D, F, D, F, b
time = 30

[Command]
name = "426426k"
command = ~D, F, D, F, a
time = 30

[Command]
name = "2624p"
command = ~D, B, D, F, x
time = 30

[Command]
name = "2624p1"
command = ~D, B, D, F, y
time = 30

[Command]
name = "2624p2"
command = ~D, B, D, F, x+y
time = 30

[Command]
name = "222p2"
command = ~D, D, D, x+y
time = 45


;----必杀技^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
[Command]
name = "df_1"
command = ~D, F, x

[Command]
name = "df_2"
command = ~D, F, y

[Command]
name = "fdb_1"
command = ~F, D, B, x

[Command]
name = "fdb_3"
command = ~F, D, B, y

;
[Command]
name = "fdf_4"
command = ~F, D, F, y

[Command]
name = "fdf_2"
command = ~F, D, F, x

;飞毛脚
[Command]
name = "df_4"
command = ~D, F, b

[Command]
name = "df_3"
command = ~D, F, a

;
[Command]
name = "db_4"
command = ~D, B, b

[Command]
name = "db_3"
command = ~D, B, a

[Command]
name = "db_2"
command = ~D, B, y

[Command]
name = "db_1"
command = ~D, B, x


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
name = "fd_y"
command = /DF,y
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
name = "fd_y"
command = /DF,y
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
;前跑
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
value = 3200
triggerall = power >= 3000
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "222p2"

[State -1]
type = ChangeState
value = 3150
triggerall = command = "2624p2"
triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno =220&& animelem = 6,<0) || stateno = 301 
trigger2 = movehit

[State -1]
type = ChangeState
value = 3130
triggerall = command = "2624p1"
triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno =220&& animelem = 6,<0) || stateno = 301 
trigger2 = movehit

[State -1]
type = ChangeState
value = 3100
triggerall = command = "2624p"
triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno =220&& animelem = 6,<0) || stateno = 301 
trigger2 = movehit

[State -1]
type = ChangeState
value = 3000
triggerall = command = "426426k"
triggerall = power >= 1000
triggerall = statetype = S
trigger1 = ctrl = 1


[State -1]
type = ChangeState
value = 1300
triggerall = command = "fdf_2" || command = "fdf_4"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno =220 || stateno = 301 
trigger2 = movehit

[State -1]
type = VarSet
v = 6
value = 1
triggerall = stateno = 1400
trigger1 = command = "fdb_1"

[State -1]
type = VarSet
v = 6
value = 2
triggerall = stateno = 1400
trigger1 = command = "fdb_3"

[State -1]
type = VarSet
v = 6
value = 1
triggerall = stateno = 1405 || stateno = 1406 
trigger1 = command = "fwd_x"
trigger2 = command = "fwd_y"


[State -1]
type = ChangeState
value = 1400
triggerall = command = "df_1" || command = "df_2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno =220 || stateno = 301 
trigger2 = movehit

[State -1]
type = ChangeState
value = 1210
triggerall = command = "db_4"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno =220 || stateno = 301 
trigger2 = movehit

[State -1]
type = ChangeState
value = 1200
triggerall = command = "db_3"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno =220 || stateno = 301 
trigger2 = movehit


;飞毛腿
[State -1]
type = ChangeState
value = 1100
triggerall = command = "df_3"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno =220 || stateno = 301 
trigger2 = movehit

[State -1]
type = ChangeState
value = 1105
triggerall = command = "df_4"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno =220 || stateno = 301 
trigger2 = movehit


[State -1]
type = ChangeState
value = 1010
triggerall = command = "db_2"
triggerall = numproj = 0 
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno =220 || stateno = 301 ||stateno = 420
trigger2 = movehit


[State -1]
type = ChangeState
value = 1000
triggerall = command = "db_1"
triggerall = numproj = 0 
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno =220 || stateno = 301 ||stateno = 420
trigger2 = movehit


;特殊技
[State -1]
type = ChangeState
value = 300
triggerall = command =  "fwd_x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 310
triggerall = command =  "fd_y"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 220 && movecontact && animelem = 6,<0
trigger3 = stateno = 420 && movecontact && animelem = 5,<0


[State -1]
type = ChangeState
value = 301
triggerall = command =  "fwd_x"
triggerall = command != "holddown"
trigger1 = stateno = 220 && movecontact && animelem = 6,<0
trigger2 = stateno = 420 && movecontact && animelem = 5,<0

;投技
[State -1]
type = ChangeState
value = 700
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 15
trigger1 = command = "fwd_y"
trigger1 = stateno != 100
trigger1 = p2statetype = S
trigger1 = p2movetype != H
;投技2
[State -1]
type = ChangeState
value = 710
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 15
trigger1 = command = "fwd_b"
trigger1 = stateno != 100
trigger1 = p2statetype = S
trigger1 = p2movetype != H


;超重击
[State -1]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 640
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 300 && anim=43

; 后滚 - back dodge
[State -1]
type = ChangeState
value = 112
trigger1 =  command = "z" || (command = "a" && command = "x")
trigger1 = command = "holdback" && statetype = S && ctrl

; 前滚 - Forward dodge
[State -1]
type = ChangeState
value = 110
trigger1 = command = "z" || (command = "a" && command = "x")
trigger1 = command != "holdback" && statetype = S && ctrl

[State -1]
type = ChangeState
value = 113
triggerall = stateno = 150 || stateno = 152
triggerall = power >= 1000
trigger1 = command = "holdback"
trigger1 =  command = "z" || (command = "a" && command = "x")

; FWD_dodge during guard cancel
[State -1]
type = ChangeState
value = 111
triggerall = stateno = 150 || stateno = 152
triggerall = power >= 1000
trigger1 =  command = "z" || (command = "a" && command = "x")



[State -1, Jump Kick]
type = ChangeState
value = 620
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Kick]
type = ChangeState
value = 630
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl


[State -1, Jump Strong Kick]
type = ChangeState
value = 610
triggerall = command = "a"
triggerall = statetype = A && vel x = 0
trigger1 = ctrl

[State -1, Jump Strong Kick]
type = ChangeState
value = 615
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl


[State -1]
type = ChangeState
value = 605
triggerall = command = "x"
triggerall = statetype = A && vel x = 0
trigger1 = ctrl


[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

[State -1, Crouching Light Kick]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410)
trigger2 = (time > 9) || (movecontact && time > 5)

;下蹲重脚
[State -1, Crouching Strong Kick]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410)
trigger2 = (time > 9) || (movecontact && time > 5)



;下蹲轻脚
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;下蹲轻拳
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time >6

[State -1]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = p2bodydist x <= 20
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 235
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;站立重拳
[State -1]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Stand Light Kick]
type = ChangeState
value = 225
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 18
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;站立轻拳（近身）
[State -1]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 18
trigger1 = statetype = S
trigger1 = ctrl = 1


;站立轻拳
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && time >6

[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = statetype = s
trigger1 = ctrl = 1

