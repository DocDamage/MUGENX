[Command]
name = "AI1"
command = U, D, U, D, U, D, U, D
time = 1
[Command]
name = "AI2"
command = U, D, U, D, U, D, U ,D,U
time = 1
[Command]
name = "AI3"
command = U, D, U, D, U, D, U ,D ,U ,D
time = 1
[Command]
name = "AI4"
command = U, D, U, D, U, D, U, D ,b
time = 1
[Command]
name = "AI5"
command = U, D, D, D, U, D, U, D, U
time = 1
[Command]
name = "AI6"
command = U, U, U, D, U, D, U ,D ,U ,D
time = 1
[Command]
name = "AI7"
command = U, D, U, D, U, D, U, D ,x
time = 1
[Command]
name = "AI8"
command = U, D, U, D, U, D, U ,D,U ,y
time = 1
[Command]
name = "AI9"
command = U, D, U, D, U, D, U ,D ,U ,D ,z
time = 1
[Command]
name = "AI10"
command = U, D, U, D, U, D, U, D ,U ,D ,a
time = 1
[Command]
name = "AI11"
command = U, D, U, D, U, D, U ,D,U,D,U,b
time = 1
[Command]
name = "AI12"
command = U, D, U, D, U, D, U ,D ,U ,D,c
time = 1
[Command]
name = "AI13"
command = U, D, U, D, U, D, U, D ,U ,D ,F
time = 1
[Command]
name = "AI14"
command = U, D, U, D, U, D, U ,D,U,D,U,B
time = 1
[Command]
name = "AI15"
command = U, D, U, D, U, D, U ,D ,U ,D,D,D
time = 1
[Command]
name = "AI16"
command = U, F, U, D, U, D, U ,D ,U ,D ,z
time = 1
[Command]
name = "AI17"
command = U, F, U, D, U, D, U, D ,U ,D ,a
time = 1
[Command]
name = "AI18"
command = U, F, U, D, U, D, U ,D,U,D,U,b
time = 1
[Command]
name = "AI19"
command = U, F, U, D, U, D, U ,U ,U ,D ,z
time = 1
[Command]
name = "AI20"
command = U, F, U, D, U, D, U, B ,U ,D ,a
time = 1
[Command]
name = "AI21"
command = U, F, U, D, B, D, U ,D,U,D,U,b
time = 1
[Command]
name = "AI22"
command = U, F, U, D, U, D, U ,U ,U ,D ,z,b
time = 1
[Command]
name = "AI23"
command = U, F, U, D, U, D, U, B ,U ,D ,a,c
time = 1
[Command]
name = "AI24"
command = U, F, U, D, B, D, U ,D,U,D,U,b,a
time = 1
[Command]
name = "AI25"
command = U, F, U, D, U, D, U ,U ,U ,D ,z,b,U
time = 1
[Command]
name = "AI26"
command = U, F, U, D, U, D, U, B ,U ,D ,a,c,D
time = 1
[Command]
name = "AI27"
command = U, F, U, D, B, D, U ,D,U,D,U,b,a,F
time = 1
[Command]
name = "AI28"
command = U, F, U, D, B, D, U ,D,U,D,U,b,a,a,a
time = 1
[Command]
name = "AI29"
command = U, F, U, D, U, D, U ,U ,U ,D ,z,b,U,a,b
time = 1
[Command]
name = "AI30"
command = U, F, U, D, U, D, U, B ,U ,D ,a,c,D,a,c
time = 1
[Command]
name = "AI31"
command = U, F, U, D, B, D, U ,D,U,D,U,b,a,F,a,c
time = 1

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
;===============================================↓AI↓
[State -1,2]
type = Varset
triggerall = var(51) != 1
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
trigger31 = command = "AI31"
v = 51
value = 1;AI no settei

[State -2, ] ;Recover near ground
type = ChangeState
triggerall = var(51) = 1
triggerall = Stateno = 5050
triggerall = Vel Y > 0 && Pos Y >= -20
triggerall = alive && CanRecover
trigger1 = Random <= 222
value = 5200 ;HITFALL_RECOVER

[State -2, ]; Recover in mid air
type = ChangeState
triggerall = var(51) = 1
triggerall = Stateno = 5050
triggerall = Vel Y > -1
triggerall = alive && CanRecover
trigger1 = Random <= 222
value = 5210 ;HITFALL_AIRRECOVER

[state -2, ]
type = ChangeState
value = Ifelse(EnemyNear,StateType = C,131,130)
triggerall = Var(51) = 1
triggerall = Random <= ifelse (StateType = A, 100, 500) && Ctrl
trigger1 = StateType != A && (Enemy, HitDefAttr = SCA, AA, SA ,HA ,AP, SP, HP)
trigger1 = MoveType = I && ((EnemyNear, MoveType = A  && P2BodyDist X <= 50) || (Enemy, NumProj >= 1)) && Ctrl

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType != A
triggerall = power >= 5000
triggerall = p2StateType != A
triggerall = p2statetype != L
triggerall = p2stateno != 130
triggerall = p2stateno != 131
triggerall = p2stateno != 150
triggerall = p2stateno != 151
triggerall = p2stateno != 5120
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [20,50]
value = 3400

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType != A
triggerall = p2moveType != H
triggerall = p2StateType != A
triggerall = p2statetype != L
triggerall = p2stateno != 150
triggerall = p2stateno != 151
triggerall = p2stateno != 5120
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X <= 10
value = 890

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType != A
triggerall = p2moveType != H
triggerall = p2StateType != A
triggerall = p2statetype != L
triggerall = p2stateno != 150
triggerall = p2stateno != 151
triggerall = p2stateno != 5120
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X <= 20
value = 800

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType != A
triggerall = p2StateType != A
triggerall = random <= 222
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [30,40]
value = 40322

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2moveType != A
triggerall = p2StateType != A
triggerall = random <= 222
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [41,50]
value = 40321

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [45,55]
value = 60322

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2StateType != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [51,60]
value = 40321

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype = A
triggerall = p2movetype = A
triggerall = random <= 222
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [45,55]
value = 1500

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype = L
triggerall = var(42) < 3
triggerall = !Numhelper(900)
triggerall = !Numhelper(3101)
triggerall = !Numhelper(3102)
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [50,80]
value = 1400

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = NumProjID(1100) = 0
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = p2stateno = 860
trigger1 = p2bodydist X > 100
trigger2 = p2stateno = 5101
trigger2 = p2bodydist X > 100
trigger3 = p2stateno = 5110
trigger3 = p2bodydist X > 100
value = 1100

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = p2stateno = 5101
trigger1 = p2bodydist X < 120
trigger2 = p2stateno = 5110
trigger2 = p2bodydist X < 120
value = 1300

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = p2stateno = 5101
trigger1 = p2bodydist X > 120
trigger2 = p2stateno = 5110
trigger2 = p2bodydist X > 120
value = 1350

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype = S
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X < 20
value = 200

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [31,40]
value = 220

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype != C
triggerall = random <= 222
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [41,70]
value = 230

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype != C
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [25,45]
value = 210

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype != C
triggerall = p2movetype != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X <= 30
value = 240

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype != A
triggerall = p2movetype != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X <= 25
value = 410

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X <= 20
value = 400

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2movetype = A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X <= 50
value = 108

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype != L
triggerall = p2movetype = I
triggerall = random <= 222
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [71,90]
value = 1500

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype = C
triggerall = p2movetype = A
triggerall = random <= 444
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [81,100]
value = 40321

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [91,100]
value = 108

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2movetype != A
triggerall = p2statetype != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [71,100]
value = 100321

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2movetype != H
triggerall = random <= 333
triggerall = NumProjID(1200) = 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [101,110]
trigger2 = stateno != 191
trigger2 = p2bodydist X = [171,180]
value = 1200

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2movetype != H
triggerall = random <= 333
triggerall = NumProjID(1200) = 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [201,220]
value = 1250

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2movetype != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [161,175]
value = 1300

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2movetype != A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [211,235]
value = 1350

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype != A
triggerall = random <= 222
triggerall = NumProjID(1000) = 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [121,125]
trigger2 = stateno != 191
trigger2 = p2bodydist X = [135,140]
trigger3 = stateno != 191
trigger3 = p2bodydist X = [161,170]
value = 1000

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype != A
triggerall = random <= 222
triggerall = NumProjID(1000) = 0
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [141,145]
trigger2 = stateno != 191
trigger2 = p2bodydist X = [211,220]
trigger3 = stateno != 191
trigger3 = p2bodydist X > 250
value = 1050

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype != A
triggerall = NumProjID(1100) = 0
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [101,120]
trigger2 = stateno != 191
trigger2 = p2bodydist X = [195,210]
value = 1100

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2statetype != A
triggerall = NumProjID(1100) = 0
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [141,160]
trigger2 = stateno != 191
trigger2 = p2bodydist X > 230
value = 1150

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2movetype != A
triggerall = random <= 444
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [151,200]
value = 20321

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2movetype = A
triggerall = random <= 333
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [141,150]
value = 108

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = p2movetype != A
triggerall = random <= 444
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X > 150
value = 100321

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType != A
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [123,125]
trigger2 = stateno != 191
trigger2 = p2bodydist X = [144,146]
trigger3 = stateno != 191
trigger3 = p2bodydist X = [157,159]
trigger4 = stateno != 191
trigger4 = p2bodydist X = [183,187]
trigger5 = stateno != 191
trigger5 = p2bodydist X = [199,204]
value = 105321

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType = A
triggerall = P2Life > 0
trigger1 = prevstateno = 40321
trigger1 = stateno = 50
trigger1 = p2bodydist X < 0
trigger1 = time >= 22
trigger2 = prevstateno = 40322
trigger2 = stateno = 50
trigger2 = time >= 22
trigger2 = p2bodydist X < 20
value = 640

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType = A
triggerall = P2Life > 0
trigger1 = prevstateno = 40322
trigger1 = stateno = 50
trigger1 = time >= 22
value = 630

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType = A
triggerall = p2StateType = A
triggerall = P2Life > 0
trigger1 = prevstateno = 40321
trigger1 = stateno = 50
trigger1 = p2bodydist X > 0
trigger1 = time >= 15
value = 610

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType = A
triggerall = p2StateType = S
triggerall = p2movetype = A
triggerall = random <= 333
triggerall = P2Life > 0
trigger1 = prevstateno = 40321
trigger1 = stateno = 50
trigger1 = p2bodydist X > 10
trigger1 = time >= 18
value = 630

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType = A
triggerall = p2StateType != A
triggerall = P2Life > 0
trigger1 = prevstateno = 40321
trigger1 = stateno = 50
trigger1 = time >= 18
value = 620

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType = A
triggerall = p2StateType = A
triggerall = P2Life > 0
trigger1 = stateno = 61321
trigger1 = time >= 15
trigger1 = p2bodydist X > 50
value = 610

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType = A
triggerall = p2StateType = C
triggerall = P2Life > 0
trigger1 = stateno = 61321
trigger1 = time >= 15
trigger1 = p2bodydist X > 50
value = 620

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType = A
triggerall = p2StateType = S
triggerall = P2Life > 0
trigger1 = stateno = 61321
trigger1 = time >= 20
trigger1 = p2bodydist X > 50
value = 630

[State -1 , AI]
type = ChangeState
triggerall = var(51) = 1
triggerall = StateType = A
triggerall = P2Life > 0
trigger1 = stateno = 61321
trigger1 = time >= 20
trigger1 = p2bodydist X < 50
value = 640

;===============================================↑AI↑
;===========================================================================
[State -1, Stand Light Punch]
type = ChangeState
value = 3400
triggerall = var(51) != 1
triggerall = command = "mars_flame_dance"
triggerall = power >= 5000
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 3000
triggerall = var(51) != 1
triggerall = command = "karasu_attack"
triggerall = !NumHelper(901)
triggerall = !NumHelper(902)
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 3100
triggerall = var(51) != 1
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
triggerall = var(51) != 1
triggerall = command = "S_mandara"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 3300
triggerall = var(51) != 1
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
triggerall = var(51) != 1
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
