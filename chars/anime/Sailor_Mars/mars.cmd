[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Special Motions |------------------------------------------------------

[Command]
name = "karasu_attack"
command = ~D,DF,F,D,DF,F,x
time = 28

[Command]
name = "S_akuryou"
command = ~D,DF,F,D,DF,F,a
time = 28

[Command]
name = "S_mandara"
command = ~D,DF,F,D,DF,F,y
time = 28

[Command]
name = "S_soul"
command = ~D,DF,F,D,DF,F,b
time = 28

[Command]
name = "mars_flame_dance"
command = ~D,DF,F,D,DF,F,s
time = 28

[Command]
name = "fire_bird_l"
command = ~B,DB,D,DF,F,x
time = 25

[Command]
name = "fire_bird_h"
command = ~B,DB,D,DF,F,y
time = 25

[Command]
name = "fire_ball"
command = ~35$B, F, x

[Command]
name = "fire_ball"
command = ~35$B, F, y

[Command]
name = "fire_snake_l"
command = ~B,DB,D,DF,F,a
time = 25

[Command]
name = "fire_snake_h"
command = ~B,DB,D,DF,F,b
time = 25

[Command]
name = "fire_snake_s"
command = ~F,DF,D,DB,B,D,b
time = 28

[Command]
name = "fire_snake_s"
command = ~F,DF,D,DB,B,DB,D,b
time = 28

[Command]
name = "fire_sniper_l"
command = ~D,DB,B,x
time = 25

[Command]
name = "fire_sniper_h"
command = ~D,DB,B,y
time = 25

[Command]
name = "fire_kick_l"
command = ~D,DB,B,a
time = 20

[Command]
name = "fire_kick_h"
command = ~D,DB,B,b
time = 20

[Command]
name = "mandara"
command = ~F,D,DF,x
time = 20

[Command]
name = "mandara"
command = ~F,D,DF,y
time = 20

[Command]
name = "akuryou"
command = ~F,D,DF,a
time = 20

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
name = "nage"
command = x+y
time = 1

[Command]
name = "nage2"
command = a+b
time = 1

[Command]
name = "kaihi"
command = x+a
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
name = "turn"
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
name = "yb"
command = y+b
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
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$b
time = 1

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

[Statedef -1]
;===========================================================================
[State -1, Stand Light Punch]
type = ChangeState
value = 3400
triggerall = command = "mars_flame_dance"
triggerall = power >= 5000
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 3000
triggerall = command = "karasu_attack"
triggerall = !NumHelper(901)
triggerall = !NumHelper(902)
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 3100
triggerall = command = "S_akuryou"
triggerall = !Numhelper(900)
triggerall = !Numhelper(3101)
triggerall = !Numhelper(3102)
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 3200
triggerall = command = "S_mandara"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 3300
triggerall = command = "S_soul"
triggerall = power >= 4000
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 1000
triggerall = command = "fire_sniper_l"
triggerall = NumProjID(1000) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 410
trigger3 = MoveContact
trigger4 = stateno = 195
trigger4 = time >= 55
trigger5 = stateno = 411
trigger5 = MoveContact

[State -1, Stand Light Punch]
type = ChangeState
value = 1050
triggerall = command = "fire_sniper_h"
triggerall = NumProjID(1000) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 410
trigger3 = MoveContact
trigger4 = stateno = 195
trigger4 = time >= 55
trigger5 = stateno = 411
trigger5 = MoveContact

[State -1, Stand Light Punch]
type = ChangeState
value = 1100
triggerall = command = "fire_snake_l"
triggerall = NumProjID(1100) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 410
trigger3 = MoveContact
trigger4 = stateno = 195
trigger4 = time >= 55
trigger5 = stateno = 411
trigger5 = MoveContact

[State -1, Stand Light Punch]
type = ChangeState
value = 1150
triggerall = command = "fire_snake_h"
triggerall = NumProjID(1100) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 410
trigger3 = MoveContact
trigger4 = stateno = 195
trigger4 = time >= 55
trigger5 = stateno = 411
trigger5 = MoveContact

[State -1, Stand Light Punch]
type = ChangeState
value = 1190
triggerall = command = "fire_snake_s"
triggerall = NumProjID(1100) = 0
triggerall = life <= 300
triggerall = power >= 500
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 410
trigger3 = MoveContact
trigger4 = stateno = 195
trigger4 = time >= 55
trigger5 = stateno = 411
trigger5 = MoveContact

[State -1, Stand Light Punch]
type = ChangeState
value = 1200
triggerall = command = "fire_bird_l"
triggerall = NumProjID(1200) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 410
trigger3 = MoveContact
trigger4 = stateno = 195
trigger4 = time >= 55
trigger5 = stateno = 411
trigger5 = MoveContact

[State -1, Stand Light Punch]
type = ChangeState
value = 1250
triggerall = command = "fire_bird_h"
triggerall = NumProjID(1200) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 410
trigger3 = MoveContact
trigger4 = stateno = 195
trigger4 = time >= 55
trigger5 = stateno = 411
trigger5 = MoveContact

[State -1, Stand Light Punch]
type = null;ChangeState
value = 1290
triggerall = command = "fire_ball"
triggerall = NumProjID(1290) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 410
trigger3 = MoveContact
trigger4 = stateno = 195
trigger4 = time >= 55
trigger5 = stateno = 411
trigger5 = MoveContact

[State -1, Stand Light Punch]
type = ChangeState
value = 1300
triggerall = command = "fire_kick_l"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 410
trigger3 = MoveContact
trigger4 = stateno = 195
trigger4 = time >= 55
trigger5 = stateno = 411
trigger5 = MoveContact

[State -1, Stand Light Punch]
type = ChangeState
value = 1350
triggerall = command = "fire_kick_h"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 410
trigger3 = MoveContact
trigger4 = stateno = 195
trigger4 = time >= 55
trigger5 = stateno = 411
trigger5 = MoveContact

[State -1, Stand Light Punch]
type = ChangeState
value = 1400
triggerall = var(42) < 3
triggerall = command = "akuryou"
triggerall = !Numhelper(900)
triggerall = !Numhelper(3101)
triggerall = !Numhelper(3102)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 410
trigger3 = MoveContact
trigger4 = stateno = 195
trigger4 = time >= 55
trigger5 = stateno = 411
trigger5 = MoveContact

[State -1, Stand Light Punch]
type = ChangeState
value = 1500
triggerall = command = "mandara"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = MoveContact
trigger3 = stateno = 410
trigger3 = MoveContact
trigger4 = stateno = 195
trigger4 = time >= 55
trigger5 = stateno = 411
trigger5 = MoveContact

[State -1, Stand Light Punch]
type = ChangeState
value = 1301
triggerall = command = "fire_kick_l" || command = "fire_kick_h"
trigger1 = statetype = A
trigger1 = stateno = 231
trigger1 = time <= 15
trigger1 = MoveContact
trigger2 = statetype = A
trigger2 = stateno = 710
trigger2 = time <= 13
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;回避
[State -1, Run Back]
type = ChangeState
value = 108
triggerall = command = "kaihi"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "nage"
triggerall = statetype = S
trigger1 = ctrl
trigger1 = stateno != 100
trigger2 = stateno = 195
trigger2 = time >= 55

[State -1, Kung Fu Throw]
type = ChangeState
value = 890
triggerall = command = "nage2"
triggerall = statetype = S
trigger1 = ctrl
trigger1 = stateno != 100
trigger2 = stateno = 195
trigger2 = time >= 55

[State -1, Jump Strong Punch]
type = ChangeState
value = 700
triggerall = command = "a"
trigger1 = stateno = 100
trigger1 = ctrl
trigger2 = stateno = 105
trigger2 = ctrl

[State -1, Jump Strong Punch]
type = ChangeState
value = 710
triggerall = command = "b"
trigger1 = stateno = 100
trigger1 = ctrl
trigger2 = stateno = 105
trigger2 = ctrl

;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "yb" || command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = time >= 9
trigger2 = MoveContact
trigger3 = stateno = 410
trigger3 = MoveContact

;コンボ立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = stateno = 200
trigger1 = time >= 3
trigger1 = movehit

;コンボ立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 215
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = stateno = 205
trigger1 = time >= 4
trigger1 = movehit

;コンボ立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 225
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = command = "x"
trigger1 = stateno = 215
trigger1 = time >= 5
trigger1 = movehit

;コンボ立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 235
triggerall = command != "holddown"
triggerall = command = "x"
trigger1 = stateno = 225
trigger1 = time >= 9
trigger1 = movehit


;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(43) < 3
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Punch]
type = ChangeState
value = 640
triggerall = command = "holdback"
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Punch]
type = ChangeState
value = 630
triggerall = command = "yb" || command = "z"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Punch]
type = ChangeState
value = 620
triggerall = command = "b" || command = "y"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" || command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Crouching Light Punch]
type = ChangeState
value = 401
triggerall = command = "x" || command = "a"
triggerall = command = "holddown"
trigger1 = stateno = 400
trigger1 = MoveContact
trigger2 = stateno = 401
trigger2 = MoveContact

[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y" || command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Crouching Strong Punch]
type = ChangeState
value = 411
triggerall = command = "y" || command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = MoveContact
trigger3 = stateno = 401
trigger3 = MoveContact

[State -1, Jump Strong Punch]
type = null;turn
trigger1 = command = "c"
trigger1 = stateno != [40,105]
trigger1 = statetype != L
trigger1 = movetype != H
trigger1 = ctrl

[State -1, setting];kao;アクション顔画像
type = varset
trigger1 = 1
v = 46
value = 1

[State -1, setting];ero;脱衣KO ON(1)/OFF(0)
type = varset
trigger1 = 1
v = 39
value = 1