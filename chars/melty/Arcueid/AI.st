; Arcueid Brunestud - Custom AI File
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

[Statedef -3]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

[State -3, AI ON]
type = VarSet
triggerall = var(0) != 1
trigger1 = command = "AI"
trigger2 = command = "AI0"
trigger3 = command = "AI1"
trigger4 = command = "AI2"
trigger5 = command = "AI3"
trigger6 = command = "AI4"
trigger7 = command = "AI5"
trigger8 = command = "AI6"
trigger9 = command = "AI7"
trigger10= command = "AI8"
trigger11= command = "AI9"
trigger12= command = "CustomAI"
var(0) = 1

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

[State -3, AI Support]
type = VarSet
triggerall = var(0) = 1
trigger1 = Alive = 0
trigger2 = RoundState != 2
trigger3 = Life <= 0
trigger4 = P2Life <= 0
v = 0
value = 0

[State -3, AI Support]
type = VarSet
trigger1 = ((RoundNo >= 1) && (var(0) = 1))
v = 1
value = 1

[State -3, AI Support]
type = VarSet
trigger1 = var(1) != 1
v = 1
value = 0

[State -3, AI Support]
type = VarSet
triggerall = var(1) = 1
trigger1 = RoundState = 2
v = 0
value = 1

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

;[State -3, Weak AI]
;type = VarRandom
;triggerall = ((var(0) = 1) && (RoundState = 2))
;trigger1 = TimeMod = 5,0
;v = 45
;range = 1,900 ;←ココの右側数値を少なくしてみよう。ＡＩのレベルが強くなるよ。
;IgnoerHitPause = 1
;RemoveOnGetHit = 1

[State -3, Weak AI]
type = VarRandom
triggerall = ((var(0) = 1) && (RoundState = 2))
trigger1 = TimeMod = 5,0
v = 45
range = 1,ceil(ifelse(var(6)=1,450,900))
IgnoerHitPause = 1
RemoveOnGetHit = 1

[State -3, Weak AI]
type = VarSet
triggerall = var(0) = 0
trigger1 = 1
v = 45
value = 0

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

[State -3, ????]
type = AssertSpecial
triggerall = var(0) = 1
trigger1 = 1
flag = NoJuggleCheck
ignorehitpause = 1

[State -3, Turn]
type = Turn
triggerall = var(0) = 1
trigger1 = ((p2bodydist X <= -9) && (ctrl = 1))
trigger2 = ((StateNo = 200) && (AnimElemTime(3) > 0) && (p2bodydist X <= -12) && (!MoveHit))
trigger3 = ((StateNo = 400) && (AnimElemTime(3) > 0) && (p2bodydist X <= -12) && (!MoveHit))
Persistent = 0

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
; C a n c e l
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

[State -3, Cancel]
type = ChangeState
triggerall = var(45) = [11,120]
triggerall = StateType != A
triggerall = power >= 1000
triggerall = power <= 2999
triggerall = P2Life > 0
triggerall = ctrl = 0
trigger1 = ((StateNo = [200,499]) && (MoveContact) && (p2bodydist X <= 9))
trigger2 = ((StateNo = 1110) && (MoveContact) && (HitCount = 1))
value = 3010

[State -3, Cancel]
type = ChangeState
triggerall = var(45) = [11,120]
triggerall = StateType != A
triggerall = power >= 1000
triggerall = power <= 2999
triggerall = P2Life > 0
triggerall = ctrl = 0
trigger1 = ((StateNo = [200,499]) && (MoveContact) && (p2bodydist X = [10,50]))
trigger2 = ((StateNo = 1110) && (MoveContact) && (HitCount = 1))
value = 3000

[State -3, Cancel]
type = ChangeState
triggerall = var(45) = [11,120]
triggerall = StateType != A
triggerall = power >= 1000
triggerall = power <= 2999
triggerall = P2Life > 0
triggerall = ctrl = 0
trigger1 = ((StateNo = [200,499]) && (MoveContact) && (p2bodydist X > 50))
value = 3100

[State -3, Cancel]
type = ChangeState
triggerall = var(45) = [11,120]
triggerall = StateType != A
triggerall = power >= 3000
triggerall = P2Life > 0
triggerall = ctrl = 0
trigger1 = ((StateNo = [200,499]) && (MoveContact))
trigger2 = ((StateNo = 1110) && (MoveContact) && (HitCount = 1))
value = 3500

;---------------------------------------------------------------------------
;[State -3, Air Super Cancel]
;type = ChangeState
;triggerall = var(45) = [11,120]
;triggerall = StateType != S
;triggerall = StateType != C
;triggerall = power >= 1000
;triggerall = power <= 2999
;triggerall = P2Life > 0
;triggerall = ctrl = 0
;trigger1 = ((StateNo = [1020,1050]) && (MoveContact))
;trigger2 = ((StateNo = [1120,1130]) && (Time = [8,12]) && (p2movetype = H))
;value = 3010

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
; A I - M o v e s
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
; Ground Moves
[State -3, Ground Far Distance]
type = ChangeState
triggerall = var(45) = [11,120]
triggerall = StateType != A
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = p2bodydist X = [221,999]
value = ifelse(Random<=150,1210,900)

[State -3, Ground Middle Distance]
type = ChangeState
triggerall = var(45) = [11,120]
triggerall = StateType != A
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = p2bodydist X = [71,220]
value = ifelse(Random<=400,900,1210)

[State -3, Ground Near Distance]
type = ChangeState
triggerall = var(45) = [11,120]
triggerall = StateType != A
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = p2bodydist X = [21,70]
value = ifelse(Random<=200,1100,1000)

[State -3, Ground Close Distance]
type = ChangeState
triggerall = var(45) = [11,120]
triggerall = StateType != A
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = p2bodydist X <= 20
value = ifelse(Random<=200,1110,400)

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
[State -3, Rapied Crouch L.Punch]
type = ChangeState
triggerall = var(45) = [11,120]
triggerall = ((RoundState = 2) && (StateNo = 200))
trigger1 = ((AnimElemTime(4) > 1) && (!MoveHit))
value = ifelse(p2bodydist Y<=-50,1100,200)

[State -3, Rapied Crouch L.Punch]
type = ChangeState
triggerall = var(45) = [11,120]
triggerall = ((RoundState = 2) && (StateNo = 400))
trigger1 = ((AnimElemTime(4) > 1) && (!MoveHit))
value = ifelse(p2bodydist Y<=-50,1100,400)

;---------------------------------------------------------------------------
; Air Moves
[State -3, Air Far Distance]
type = ChangeState
triggerall = var(45) = [11,120]
triggerall = StateType != S
triggerall = StateType != C
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = p2bodydist X = [141,999]
value = ifelse(Random<=400,102,1310)

[State -3, Air Middle Distance]
type = ChangeState
triggerall = var(45) = [11,120]
triggerall = StateType != S
triggerall = StateType != C
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = p2bodydist X = [41,140]
value = ifelse(Random<=400,102,620)

[State -3, Air Near Distance]
type = ChangeState
triggerall = var(45) = [11,120]
triggerall = StateType != S
triggerall = StateType != C
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = p2bodydist X <= 40
value = ifelse(Random<=450,621,600)

;---------------------------------------------------------------------------
; Other
[State -3, Quick Standing]
type = ChangeState
triggerall = var(45) = [11,120]
triggerall = Alive = 1
triggerall = MoveType = H
triggerall = RoundState = 2
trigger1 = ((StateNo = 5100) && (time = 1))
trigger2 = ((StateNo = 5110) && (time = 1))
value = 10000

[State -3, Auto Random Jump]
type = ChangeState
triggerall = var(45) = [11,120]
triggerall = P2Dist Y < 0
triggerall = P2Life > 0
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [0,20]
trigger1 = Random <= 600
value = 40

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
; A I - C h a i n C o m b o
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

[State -3, Chain Combo]
type = ChangeState
triggerall = var(45) = [11,120]
trigger1 = ((StateNo = 200) && (MoveContact))
trigger2 = ((StateNo = 401) && (MoveContact))
value = 210

[State -3, Chain Combo]
type = ChangeState
triggerall = var(45) = [11,120]
trigger1 = ((StateNo = 400) && (MoveContact))
value = 401

[State -3, Chain Combo]
type = ChangeState
triggerall = var(45) = [11,120]
trigger1 = ((StateNo = 210) && (MoveContact))
value = 211

[State -3, Aerial-Rave]
type = ChangeState
triggerall = var(45) = [11,120]
trigger1 = ((StateNo = 211) && (MoveContact))
value = ifelse(Random<300,1110,40)

;*********************************
[State -3, Chain Combo]
type = ChangeState
triggerall = var(45) = [121,240]
trigger1 = ((StateNo = 410) && (MoveContact))
value = 420

[State -3, Chain Combo]
type = ChangeState
triggerall = var(45) = [121,240]
trigger1 = ((StateNo = 420) && (MoveContact))
value = 220

[State -3, Chain Combo]
type = ChangeState
triggerall = var(45) = [121,240]
trigger1 = ((StateNo = 220) && (MoveContact))
value = 221

;*********************************
[State -3, Aerial-Rave]
type = ChangeState
triggerall = var(45) = [11,120]
trigger1 = ((StateNo = 600) && (MoveContact))
value = 610

[State -3, Aerial-Rave]
type = ChangeState
triggerall = var(45) = [11,120]
trigger1 = ((StateNo = 610) && (MoveContact))
value = 620

[State -3, Aerial-Rave]
type = ChangeState
triggerall = var(45) = [11,120]
trigger1 = ((StateNo = 620) && (MoveContact))
value = ifelse(var(58)=1,910,ifelse(var(59)=1,621,102))

[State -3, Aerial-Rave]
type = ChangeState
triggerall = var(45) = [121,240]
triggerall = var(58) = 1
triggerall = var(59) = 0
trigger1 = ((StateNo = 102) && (time = 5))
value = 600

[State -3, Aerial-Rave]
type = ChangeState
triggerall = var(45) = [121,240]
triggerall = var(58) = 1
triggerall = var(59) = 1
trigger1 = ((StateNo = 910) && (time = 3))
value = 600

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

[State -3, Extra-Cancel]
type = ChangeState
triggerall = var(0) = 1
trigger1 = ((StateNo = 1000) && (AnimElemTime(10) > 0))
value = 1001

[State -3, Extra-Cancel]
type = ChangeState
triggerall = var(0) = 1
trigger1 = ((StateNo = 1001) && (AnimElemTime(8) > 0))
value = ifelse(Random<500,1012,1002)

[State -3, Extra-Cancel]
type = ChangeState
triggerall = var(0) = 1
trigger1 = ((StateNo = 1010) && (AnimElemTime(10) > 0))
value = 1011

[State -3, Extra-Cancel]
type = ChangeState
triggerall = var(0) = 1
trigger1 = ((StateNo = 1011) && (AnimElemTime(8) > 0))
value = ifelse(Random<500,1012,1002)

;*********************************
[State -3, Extra-Cancel]
type = VarSet
triggerall = var(0) = 1
trigger1 = ((StateNo = 1101) && (MoveContact))
trigger2 = ((StateNo = 1111) && (MoveContact))
v = 9
value = 1
IgnoreHitPause = 1
Persistent = 1

[State -3, Extra-Cancel]
type = ChangeState
triggerall = var(0) = 1
trigger1 = ((StateNo = 1120) && (AnimElemTime(7) > 0))
value = 1121

;*********************************
[State -3, Extra-Cancel]
type = ChangeState
triggerall = var(0) = 1
trigger1 = ((StateNo = 3001) && (AnimElemTime(8) > 0))
value = ifelse(Random<400,3004,3002)

;*********************************
[State -3, Meteor Smash]
type = VarSet
triggerall = var(0) = 1
trigger1 = ((StateNo = 3101) && (MoveHit))
v = 10
value = 1
IgnoreHitPause = 1
Persistent = 1

[State -3, Meteor Smash]
type = VarSet
triggerall = var(0) = 1
trigger1 = ((StateNo = 3106) && (MoveHit))
v = 10
value = 5
IgnoreHitPause = 1
Persistent = 1

[State -3, Meteor Smash]
type = VarSet
triggerall = var(0) = 1
trigger1 = ((StateNo = 3108) && (MoveHit))
v = 10
value = 7
IgnoreHitPause = 1
Persistent = 1

;*********************************
[State -3, Marvel Fantasum]
type = VarSet
triggerall = var(0) = 1
trigger1 = ((StateNo = 3502) && (time = 250))
v = 11
value = 1
IgnoreHitPause = 1
Persistent = 1

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
