; Shin Kaname Ameri - Custom AI File
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

[Statedef -3]

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

[State -3, AI ON]
type = VarSet
triggerall = var(5) != 1
trigger1 = command = "KnmAI"
trigger2 = command = "KnmAI0"
trigger3 = command = "KnmAI1"
trigger4 = command = "KnmAI2"
trigger5 = command = "KnmAI3"
trigger6 = command = "KnmAI4"
trigger7 = command = "KnmAI5"
trigger8 = command = "KnmAI6"
trigger9 = command = "KnmAI7"
trigger10= command = "KnmAI8"
trigger11= command = "KnmAI9"
trigger12= command = "KnmAI10"
trigger13= command = "KnmAI11"
trigger14= command = "KnmAI12"
trigger15= command = "KnmAI13"
trigger16= command = "KnmAI14"
trigger17= command = "KnmAI15"
trigger18= command = "KnmAI16"
trigger19= command = "KnmAI17"
trigger20= command = "KnmAI18"
trigger21= command = "KnmAI19"
trigger22= command = "KnmAI20"
trigger23= command = "KnmAI21"
trigger24= command = "KnmAI22"
trigger25= command = "KnmAI23"
trigger26= command = "KnmAI24"
trigger27= command = "KnmAI25"
trigger28= command = "KnmAI26"
trigger29= command = "KnmAI27"
trigger30= command = "KnmAI28"
trigger31= command = "KnmAI29"
trigger32= command = "KnmAI30"
trigger33= command = "KnmAI31"
trigger34= command = "KnmAI32"
trigger35= command = "KnmAI33"
trigger36= command = "KnmAI34"
trigger37= command = "KnmAI35"
trigger38= command = "KnmAI36"
trigger39= command = "KnmAI37"
trigger40= command = "KnmAI38"
trigger41= command = "KnmAITaunt"
trigger42= command = "KnmAI39"
trigger43= command = "KnmAI40"
trigger44= command = "KnmAI41"
trigger45= command = "KnmAI42"
trigger46= command = "KnmAI43"
trigger47= command = "KnmAI44"
trigger48= command = "KnmAI45"
trigger49= command = "KnmAI46"
trigger50= command = "KnmAI47"
trigger51= command = "KnmAI48"
trigger52= command = "KnmAI49"
trigger53= command = "KnmAI50"
trigger54= command = "KnmAI51"
trigger55= command = "KnmAI52"
trigger56= command = "KnmAI53"
trigger57= command = "KnmAI54"
trigger58= command = "CustomAI"
var(5) = 1

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

[State -3, AI Support]
type = VarSet
triggerall = var(5) = 1
trigger1 = Alive = 0
trigger2 = RoundState != 2
trigger3 = Life <= 0
trigger4 = P2Life <= 0
v = 5
value = 0

[State -3, AI Support]
type = VarSet
trigger1 = RoundNo >= 1 && var(5) = 1
v = 40
value = 1

[State -3, AI Support]
type = VarSet
trigger1 = var(40) != 1
v = 40
value = 0

[State -3, AI Support]
type = VarSet
triggerall = var(40) = 1
trigger1 = RoundState = 2
v = 5
value = 1

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

[State -3, Weak AI]
type = VarRandom
triggerall = ((var(5) = 1) && (RoundState = 2))
trigger1 = TimeMod = 5,0
v = 41
range = 1,999 ;←ココの右側数値を少なくしてみよう。ＡＩのレベルが強くなるよ。
IgnoerHitPause = 1
RemoveOnGetHit = 1

[State -3, Weak AI]
type = VarSet
triggerall = var(5) = 0
trigger1 = 1
v = 41
value = 0

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

[State -3, ????]
type = AssertSpecial
triggerall = var(5) = 1
trigger1 = 1
flag = NoJuggleCheck
;flag2= UnGuardable
ignorehitpause = 1

[State -3, Turn]
type = Turn
triggerall = var(5) = 1
trigger1 = ((p2bodydist X <= -9) && (ctrl = 1))
trigger2 = ((StateNo = 200) && (AnimElemTime(3) > 0) && (p2bodydist X <= -12) && (!MoveHit))
trigger3 = ((StateNo = 400) && (AnimElemTime(3) > 0) && (p2bodydist X <= -12) && (!MoveHit))

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
; S u p e r C a n c e l
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

[State -3, Super Cancel]
type = ChangeState
triggerall = var(41) = [11,120]
triggerall = StateType != A
triggerall = power >= 1000
triggerall = power <= 2999
triggerall = P2Life > 0
triggerall = ctrl = 0
trigger1 = ((StateNo = [1000,1010]) && (MoveContact))
trigger2 = ((StateNo = [1100,1110]) && (Time = [8,12]) && (p2movetype = H))
trigger3 = ((StateNo = 1201) && (MoveContact))
value = ifelse(p2bodydist X>=70,3100,3200)

[State -3, Super Cancel Lv.3]
type = ChangeState
triggerall = var(41) = [11,120]
triggerall = StateType != A
triggerall = power >= 3000
triggerall = P2Life > 0
triggerall = ctrl = 0
trigger1 = ((StateNo = [1000,1010]) && (MoveContact))
trigger2 = ((StateNo = [1100,1110]) && (Time = [8,12]) && (p2movetype = H))
trigger3 = ((StateNo = 1201) && (MoveContact))
value = 3000

;---------------------------------------------------------------------------
[State -3, Air Super Cancel]
type = ChangeState
triggerall = var(41) = [11,120]
triggerall = StateType != S
triggerall = StateType != C
triggerall = power >= 1000
triggerall = power <= 2999
triggerall = P2Life > 0
triggerall = ctrl = 0
trigger1 = ((StateNo = [1020,1050]) && (MoveContact))
trigger2 = ((StateNo = [1120,1130]) && (Time = [8,12]) && (p2movetype = H))
value = 3110

[State -3, Air Super Cancel]
type = ChangeState
triggerall = var(41) = [11,120]
triggerall = StateType != S
triggerall = StateType != C
triggerall = power >= 1000
triggerall = power <= 2999
triggerall = P2Life > 0
triggerall = ctrl = 0
trigger1 = ((StateNo = 1302) && (MoveContact))
value = 3020

[State -3, Air Super Cancel Lv.3]
type = ChangeState
triggerall = var(41) = [11,120]
triggerall = StateType != S
triggerall = StateType != C
triggerall = power >= 3000
triggerall = P2Life > 0
triggerall = ctrl = 0
trigger1 = ((StateNo = [1020,1050]) && (MoveContact))
trigger2 = ((StateNo = [1120,1130]) && (Time = [8,12]) && (p2movetype = H))
trigger3 = ((StateNo = 1302) && (MoveContact))
value = 3010

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
; A I - M o v e s
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
; Ground Moves
[State -3, Ground Far Distance]
type = ChangeState
triggerall = var(41) = [11,120]
triggerall = StateType != A
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = p2bodydist X = [221,999]
value = ifelse(Random<=150,1110,1010)

[State -3, Ground Middle Distance]
type = ChangeState
triggerall = var(41) = [11,120]
triggerall = StateType != A
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = p2bodydist X = [71,220]
value = ifelse(Random<=400,1100,1010)

[State -3, Ground Near Distance]
type = ChangeState
triggerall = var(41) = [11,120]
triggerall = StateType != A
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = p2bodydist X = [21,70]
value = ifelse(Random<=200,1100,1200)

[State -3, Ground Close Distance]
type = ChangeState
triggerall = var(41) = [11,120]
triggerall = StateType != A
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = p2bodydist X <= 20
value = ifelse(Random<=200,1100,400)

[State -3, Rapied Crouch L.Punch]
type = ChangeState
triggerall = ((RoundState = 2) && (var(41) >= 1) && (StateNo = 400))
trigger1 = ((AnimElemTime(3) > 1) && (!MoveHit))
value = ifelse(p2bodydist Y<=-50,1100,200)

[State -3, Rapied Crouch L.Punch]
type = ChangeState
triggerall = ((RoundState = 2) && (var(41) >= 1) && (StateNo = 400))
trigger1 = ((AnimElemTime(3) > 1) && (!MoveHit))
value = ifelse(p2bodydist Y<=-50,1100,400)

;---------------------------------------------------------------------------
; Air Moves
[State -3, Air Far Distance]
type = ChangeState
triggerall = var(41) = [11,120]
triggerall = StateType != S
triggerall = StateType != C
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = p2bodydist X = [141,999]
value = ifelse(Random<=400,1130,1030)

[State -3, Air Middle Distance]
type = ChangeState
triggerall = var(41) = [11,120]
triggerall = StateType != S
triggerall = StateType != C
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = p2bodydist X = [41,140]
value = ifelse(Random<=400,1050,1130)

[State -3, Air Near Distance]
type = ChangeState
triggerall = var(41) = [11,120]
triggerall = StateType != S
triggerall = StateType != C
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = p2bodydist X <= 40
value = ifelse(Random<=450,1030,600)

;---------------------------------------------------------------------------
; Other
[State -3, Quick Standing]
type = ChangeState
value = 708
triggerall = var(41) = [11,120]
triggerall = Alive = 1
trigger1 = ((StateNo = 5030) && (Movetype = H) && (Pos Y >= -30))
trigger2 = ((StateNo = 5035) && (Movetype = H) && (Pos Y >= -30))
trigger3 = ((StateNo = 5050) && (Movetype = H) && (Pos Y >= -30))
trigger4 = ((StateNo = 5071) && (Movetype = H) && (Pos Y >= -30))

[State -3, Auto Random Jump]
type = ChangeState
triggerall = var(41) = [11,120]
triggerall = P2Dist Y < 0
triggerall = P2Life > 0
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = stateno != 191
trigger1 = p2bodydist X = [0,20]
trigger1 = Random <= 600
value = 50

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
; A I - C h a i n C o m b o
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

[State -3, Chain Combo-1]
type = ChangeState
triggerall = var(41) = [11,120]
trigger1 = ((StateNo = 200) && (MoveContact))
trigger2 = ((StateNo = 400) && (MoveContact))
value = 230

[State -3, Chain Combo-2]
type = ChangeState
triggerall = var(41) = [11,120]
trigger1 = ((StateNo = 230) && (MoveContact))
trigger2 = ((StateNo = 430) && (MoveContact))
value = 410

[State -3, Chain Combo-3]
type = ChangeState
triggerall = var(41) = [11,120]
trigger1 = ((StateNo = 210) && (MoveContact))
trigger2 = ((StateNo = 410) && (MoveContact))
value = ifelse(p2statetype=A,810,440)

[State -3, Chain Combo-4]
type = ChangeState
triggerall = var(41) = [11,120]
trigger1 = ((StateNo = 240) && (MoveContact))
trigger2 = ((StateNo = 440) && (MoveContact))
value = 810

[State -3, Chain Combo-AerialRave Start]
type = ChangeState
triggerall = var(41) = [11,120]
trigger1 = ((StateNo = 810) && (MoveContact))
value = 10010

;---------------------------------------------------------------------------

[State -3, AerialRave-1]
type = ChangeState
triggerall = var(41) = [11,120]
trigger1 = ((StateNo = 600) && (MoveContact))
value = 630

[State -3, AerialRave-2]
type = ChangeState
triggerall = var(41) = [11,120]
trigger1 = ((StateNo = 630) && (MoveContact))
value = 610

[State -3, AerialRave-3]
type = ChangeState
triggerall = var(41) = [11,120]
trigger1 = ((StateNo = 610) && (MoveContact))
value = 640

[State -3, AerialRave-Finish]
type = ChangeState
triggerall = var(41) = [11,120]
trigger1 = ((StateNo = 640) && (MoveContact))
value = ifelse(Random<=400,820,1030)

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

