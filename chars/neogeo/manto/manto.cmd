[Defaults]
command.time = 15
command.buffer.time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+a
time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "kszskddx"
command = ~D,D, x
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "kszskdba"
command = D,DB,B, a
time = 18

[Command]
name = "kszskfdfx"
command = F,D,DF,F, x
time = 18

[Command]
name = "kszskdfx"
command = D,DF,F, x
time = 18

[Command]
name = "kszskfdfa"
command = D,DF,F, a
time = 18

[Command]
name = "kszskfdfb"
command = D,DF,F, b
time = 18

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
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdfwds";Required (do not remove)
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

[Statedef -1]

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 8000

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 8001

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

[State -1]
type = ChangeState
triggerall = var(59) = 1
trigger1 = Ctrl
trigger1 = StateType = S
trigger1 = P2StateType = C
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 200
value = 10

[State -1]
type = ChangeState
triggerall = var(59) = 1
trigger1 = Ctrl
trigger1 = StateType = C
trigger1 = P2StateType = A
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 200
value = 12

[State -1]
type = ChangeState
triggerall = var(59) = 1
trigger1 = Ctrl
trigger1 = StateType = S
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 200
trigger1 = PrevStateNo != 151
trigger1 = PrevStateNo != 152
trigger1 = PrevStateNo != 153
value = 130

;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 3000
triggerall = var(59) = 1
trigger1= NumHelper(3001) = 0
trigger1 = power = 2000
trigger1 = (StateType != A) && (ctrl)

;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 3000
triggerall = var(59) <= 0
triggerall = command = "kszskddx"
trigger1= NumHelper(3001) = 0
trigger1 = power = 2000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 1200
triggerall = var(59) = 1
triggerall = (P2bodydist x > 40) && (P2Life > 0)
trigger1 = (StateType != A) && (ctrl) && (random = [500, 520))

;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 1200
triggerall = var(59) <= 0
triggerall = command = "kszskdba"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movehit
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250 || stateno = 300

;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 1100
triggerall = var(59) = 1
triggerall = P2Life > 0
trigger1 = (StateType != A) && (ctrl)
trigger1 = P2BodyDist X = [0,60]
trigger1 = P2BodyDist Y = [-50,0]
trigger1 = P2MoveType = A
trigger2 = movehit
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250 || stateno = 300

[State -1, Stand Light Kick]
type = ChangeState
value = 1100
triggerall = var(59) <= 0
triggerall = command = "kszskfdfx"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movehit
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250 || stateno = 300

;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 1000
triggerall = var(59) = 1
triggerall = (P2bodydist x > 60) && (P2Life > 0)
trigger1 = (StateType != A) && (ctrl) && (random = [600, 620))

[State -1, Stand Light Kick]
type = ChangeState
value = 1000
triggerall = var(59) <= 0
triggerall = command = "kszskdfx"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movehit
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250 || stateno = 300

;---------------------------------------------------------------------------
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = P2StateNo = 131
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = var(59) = 1
triggerall = P2StateNo = 131
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "kszskfdfa"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movehit
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250 || stateno = 300

;---------------------------------------------------------------------------
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = command = "kszskfdfb"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movehit
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 240 || stateno = 250 || stateno = 300

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 350
triggerall = stateno = 100
triggerall = command = "x"|command = "y"|command = "z"
triggerall = command = "a"|command = "b"|command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;-------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 300
triggerall = stateno = 100
triggerall = command = "x"|command = "y"|command = "z" || command = "a"|command = "b"|command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 200
triggerall = var(59) = 1
triggerall = (P2MoveType != A)||(PrevStateNo = 151)||(PrevStateNo = 152)||(PrevStateNo = 153)
triggerall = P2BodyDist X = (40,60]
triggerall = P2StateType != A
trigger1 = Random = [0,499]
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 210
triggerall = var(59) = 1
triggerall = (P2MoveType != A)||(PrevStateNo = 151)||(PrevStateNo = 152)||(PrevStateNo = 153)
triggerall = P2BodyDist X = (40,60]
triggerall = P2StateType != A
trigger1 = Random = [0,499]
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = (P2MoveType != A)||(PrevStateNo = 151)||(PrevStateNo = 152)||(PrevStateNo = 153)
triggerall = P2BodyDist X = (40,60]
triggerall = P2StateType != A
trigger1 = Random = [0,499]
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 230
triggerall = var(59) = 1
triggerall = (P2MoveType != A)||(PrevStateNo = 151)||(PrevStateNo = 152)||(PrevStateNo = 153)
triggerall = P2BodyDist X = (40,60]
triggerall = P2StateType != A
trigger1 = Random = [0,499]
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 240
triggerall = var(59) = 1
triggerall = (P2MoveType != A)||(PrevStateNo = 151)||(PrevStateNo = 152)||(PrevStateNo = 153)
triggerall = P2BodyDist X = (40,60]
triggerall = P2StateType != A
trigger1 = Random = [0,499]
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 250
triggerall = var(59) = 1
triggerall = (P2MoveType != A)||(PrevStateNo = 151)||(PrevStateNo = 152)||(PrevStateNo = 153)
triggerall = P2BodyDist X = (40,60]
triggerall = P2StateType != A
trigger1 = Random = [0,499]
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Light Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = vel x
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 611
triggerall = vel x
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 620
triggerall = vel x
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = vel x
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 670
triggerall = vel x
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" || command = "y" || command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 660
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl