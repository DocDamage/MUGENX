;-|CPU|-------------------------------------------------------------------
[Command]
name = "CPU"
command = a

[Command]
name = "CPU"
command = b

[Command]
name = "CPU"
command = c

[Command]
name = "CPU"
command = x

[Command]
name = "CPU"
command = y

[Command]
name = "CPU"
command = z

[Command]
name = "CPU"
command = s

[Command]
name = "CPU"
command = F

[Command]
name = "CPU"
command = B

[Command]
name = "CPU"
command = U

[Command]
name = "CPU"
command = D

;-| Super Motions |------------------------------------------------------
[Command]
name = "DFaxy"
command = D,F,a+x
time = 15

[Command]
name = "DFaxy"
command = D,F,x+y
time = 15

[Command]
name = "DFaxy"
command = D,F,y+a
time = 15

[Command]
name = "DBaxy"
command = D,B,a+x
time = 15

[Command]
name = "DBaxy"
command = D,B,x+y
time = 15

[Command]
name = "DBaxy"
command = D,B,y+a
time = 15

[Command]
name = "FDFaxy"
command = F,D,F,a+x
time = 20

[Command]
name = "FDFaxy"
command = F,D,F,x+y
time = 20

[Command]
name = "FDFaxy"
command = F,D,F,y+a
time = 20

[Command]
name = "BDBaxy"
command = B,D,B,a+x
time = 20

[Command]
name = "BDBaxy"
command = B,D,B,x+y
time = 20

[Command]
name = "BDBaxy"
command = B,D,B,y+a
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "FDFa"
command = F,D,F,a
time = 20

[Command]
name = "FDFx"
command = F,D,F,x
time = 20

[Command]
name = "FDFy"
command = F,D,F,y
time = 20

[Command]
name = "DFa"
command = D,F,a
time = 15

[Command]
name = "DFb"
command = D,F,b
time = 15

[Command]
name = "DFx"
command = D,F,x
time = 15

[Command]
name = "DFy"
command = D,F,y
time = 15

[Command]
name = "DBa"
command = D,B,a
time = 15

[Command]
name = "DBb"
command = D,B,b
time = 15

[Command]
name = "DBx"
command = D,B,x
time = 15

[Command]
name = "DBy"
command = D,B,y
time = 15

[Command]
name = "DDa"
command = D,D,a
time = 15

[Command]
name = "DDx"
command = D,D,x
time = 15

[Command]
name = "DDy"
command = D,D,y
time = 15

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
command = a+x+y
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

[Command]
name = "fwd_x"
command = /$F,x
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

;---------------------------------------------------------------------------
[Statedef -1]

[State AI]
type = VarRangeSet
trigger1 = !IsHelper
ignorehitpause = 1
value = 0
first = 57
last = 58

[State AI]
type = VarSet
trigger1 = !IsHelper
trigger1 = EnemyNear, StateNo = Var(11)
ignorehitpause = 1
var(57) = Var(21)+(Var(58):=Var(31))*0

[State AI]
type = VarSet
trigger1 = !IsHelper
trigger1 = EnemyNear, StateNo = Var(12)
ignorehitpause = 1
var(57) = Var(22)+(Var(58):=Var(32))*0

[State AI]
type = VarSet
trigger1 = !IsHelper
trigger1 = EnemyNear, StateNo = Var(13)
ignorehitpause = 1
var(57) = Var(23)+(Var(58):=Var(33))*0

[State AI]
type = VarSet
trigger1 = !IsHelper
trigger1 = EnemyNear, StateNo = Var(14)
ignorehitpause = 1
var(57) = Var(24)+(Var(58):=Var(34))*0

[State AI]
type = VarSet
trigger1 = !IsHelper
trigger1 = EnemyNear, StateNo = Var(15)
ignorehitpause = 1
var(57) = Var(25)+(Var(58):=Var(35))*0

[State AI]
type = VarSet
trigger1 = !IsHelper
trigger1 = EnemyNear, StateNo = Var(16)
ignorehitpause = 1
var(57) = Var(26)+(Var(58):=Var(36))*0

[State AI]
type = VarSet
trigger1 = !IsHelper
trigger1 = EnemyNear, StateNo = Var(17)
ignorehitpause = 1
var(57) = Var(27)+(Var(58):=Var(37))*0

[State AI]
type = VarSet
trigger1 = !IsHelper
trigger1 = EnemyNear, StateNo = Var(18)
ignorehitpause = 1
var(57) = Var(28)+(Var(58):=Var(38))*0

[State AI]
type = VarSet
trigger1 = !IsHelper
trigger1 = EnemyNear, StateNo = Var(19)
ignorehitpause = 1
var(57) = Var(29)+(Var(58):=Var(39))*0

[State AI]
type = VarSet
trigger1 = !IsHelper
trigger1 = EnemyNear, StateNo = Var(20)
ignorehitpause = 1
var(57) = Var(30)+(Var(58):=Var(40))*0

;Stand Bar
[State Stand Bar Border]
type = Explod
triggerall = IsHelper(1000)
trigger1 = Parent,Var(5)
trigger2 = Parent,Var(1) != 500
ignorehitpause = 1
removetime = 1
pausemovetime = 99
supermovetime = 99
anim = 4003
pos = -30*Facing
facing= Facing
sprpriority = 10
ownpal = 1

[State Stand Bar Border]
type = Explod
triggerall = IsHelper(1000)
triggerall = Parent,Var(1) > 0
trigger1 = Parent,Var(5)
trigger2 = Parent,Var(1) != 500
ignorehitpause = 1
removetime = 1
pausemovetime = 99
supermovetime = 99
anim = 4004
pos = -30*Facing
facing= Facing
sprpriority = 11
ownpal = 1
scale = Parent,Var(1)/500.0,1

;No Guard
[State No Guard]
type = AssertSpecial
triggerall = !IsHelper
trigger1 = Var(5)
trigger2 = (Helper(1000),StateNo=[1001,1003])||(Helper(1000),StateNo=[1010,1012])||(Helper(1000),StateNo=[1020,1022])
trigger3 = (Helper(1000),StateNo=[1101,1104])||(Helper(1000),StateNo=1111)||(Helper(1000),StateNo=1121)
trigger4 = (Helper(1000),StateNo=1201)||(Helper(1000),StateNo=1211)||(Helper(1000),StateNo=1221)
trigger5 = (Helper(1000),StateNo=[3001,3003])
ignorehitpause = 1
flag = NoStandGuard
flag2 = NoCrouchGuard
flag3 = NoAirGuard

;Extra Checking
[State Extra Check for HitDef P2StateNo]
type = VarSet
trigger1 = 1
ignorehitpause = 1
var(3) = GameTime

[State Close Stand When Get P2 State]
type = ParentVarSet
trigger1 = IsHelper(1000)
trigger1 = Parent,Var(5)
trigger1 = Parent,MoveType = H
trigger1 = Parent,GameTime-Parent,Var(3) >= 2
trigger1 = RoundState = 2
trigger1 = StateNo != 3200
ignorehitpause = 1
var(5) = 0

[State Prev...StateNo]
type = VarSet
triggerall = IsHelper(1000)
trigger1 = Time = 1
trigger1 = StateNo != [0,199]
trigger2 = StateNo = [0,199]
ignorehitpause = 1
var(9) = (Var(7):=Var(8))*(Var(8):=Var(9))*0+StateNo

[State HitSpark]
type = Helper
triggerall = IsHelper(1000)
trigger1 = HitCount-Parent,Var(4) > 0
ignorehitpause = 1
pausemovetime = 214748364799
supermovetime = 214748364799
name = "Hit Spark"
pos = (EnemyNear,Pos X-Pos X-10)*Facing,-60
stateno = 30000
id = 30000
ownpal = 1
keyctrl = 0

[State Play Hit Sound]
type = PlaySnd
triggerall = IsHelper(1000)
triggerall = HitCount-Parent,Var(4) > 0
trigger1 = StateNo = [1002,1003]
trigger2 = StateNo = 3003
trigger3 = StateNo = [6200,6201]
trigger4 = StateNo = 6300
trigger5 = StateNo = 6400
ignorehitpause = 1
value = 0,0
channel = 2
volume = 200

[State Play Hit Sound]
type = PlaySnd
triggerall = IsHelper(1000)
triggerall = HitCount-Parent,Var(4) > 0
trigger1 = StateNo = [6210,6212]
trigger2 = StateNo = [6310,6311]
trigger3 = StateNo = [6410,6411]
trigger4 = StateNo = 7102
trigger5 = StateNo = 7112
trigger6 = StateNo = 7122
ignorehitpause = 1
value = 0,1
channel = 2
volume = 200

[State Play Hit Sound]
type = PlaySnd
triggerall = IsHelper(1000)
triggerall = HitCount-Parent,Var(4) > 0
trigger1 = StateNo = 1104
trigger2 = StateNo = 1201
trigger3 = StateNo = 1211
trigger4 = StateNo = 1221
trigger5 = StateNo = 3103
trigger6 = StateNo = 6220
trigger7 = StateNo = 6320
trigger8 = StateNo = 6322
trigger9 = StateNo = 6420
trigger10 = StateNo = [7200,7220]
trigger11 = StateNo = [3104,3107]
trigger12 = StateNo = 3201
ignorehitpause = 1
value = 0,2
channel = 2
volume = 200

[State Snp Pan]
type = SndPan
trigger1 = 1
channel = 1
pan = 0

[State OuT Var]
type = DisplayToClipBoard
trigger1 = IsHelper(1000)
text = "%d %d %d"
params = Var(7),Var(8),Var(9)

;----------------------------------------------------------------------------------------------------------------
;                                                 doll Alway
;----------------------------------------------------------------------------------------------------------------
[State HitBy]
type = HitBy
trigger1 = IsHelper(1000)
time = 1
value = , AA,AP

[State NotHitBy]
type = NotHitBy
trigger1 = IsHelper(1000)
time = 1
value = , AT

[State NotHitBy2]
type = NotHitBy
triggerall = IsHelper(1000)
trigger1 = !Parent,Var(5)
trigger1 = MoveType = H
trigger2 = !Parent,Var(5)
trigger2 = (StateNo=1001)||(StateNo=1011)||(StateNo=1021)||(StateNo=1004)
trigger3 = !Parent,Var(5)
trigger3 = (StateNo=1101)||(StateNo=1111)||(StateNo=1021)||(StateNo=1104)
trigger4 = !Parent,Var(5)
trigger4 = StateNo = 1202
trigger5 = !Parent,Var(5)
trigger5 = StateNo = [3001,3002]
trigger6 = Parent,Var(5)
trigger6 = Parent,StateNo = [5000,5099]
trigger6 = StateNo != [120,159]
trigger7 = Target,StateNo = 3203
ignorehitpause = 1
time = 1
value = SCA,AA,AP,AT

[State NotHitBy2]
type = NotHitBy
triggerall = !IsHelper
triggerall = Var(5)
trigger1 = Helper(1000),StateNo = [9000,9999]
trigger2 = Helper(1000),StateNo = [150,155]
trigger3 = Helper(1000),StateNo = 3202
ignorehitpause = 1
time = 1
value = SCA,AA,AP,AT

[State Override]
type = HitOverride
triggerall = IsHelper(1000)
trigger1 = !Parent,Var(5)
ignorehitpause = 1
attr = SCA,AA,AP,AT
stateno = 1006

[State Override2]
type = HitOverride
triggerall = IsHelper(1000)
triggerall = StateNo != [120,159]
trigger1 = Parent,Var(5)
ignorehitpause = 1
attr = SCA,AA,AP,AT
stateno = IfElse((StateNo>=120)&&(StateNo<=159),150+(Statetype=C)*2+(Statetype=A)*4,9000+(StateType=A)*20)

[State Change Correct Hit State]
type = ChangeState
trigger1 = IsHelper(1000)
trigger1 = StateNo = [5000,5999]
trigger1 =StateNo != [5200,5210]
ignorehitpause = 1
value = 9000+((StateType=A)||(Pos Y!=0))*20
ctrl = 0

[State Parent Go To Hit State]
type = VarSet
triggerall = IsHelper(1000)
trigger1 = Parent,StateNo = [5000,5999]
trigger2 = Parent,StateNo = [25000,25999]
trigger3 = RoundState != 2
ignorehitpause = 1
var(0) = 0

[State Push By Edge]
type = PosAdd
trigger1 = IsHelper(1000)
trigger1 = FrontEdgeBodyDist >= 300
x = FrontEdgeBodyDist-300

[State Push By Edge]
type = PosAdd
trigger1 = IsHelper(1000)
trigger1 = BackEdgeBodyDist >= 300
x = 300-BackEdgeBodyDist

[State PlayerPush]
type = PlayerPush
triggerall = IsHelper(1000)
trigger1 = !Parent,Var(5)
trigger1 = MoveType = H
time = 1
value = 0

[State PlayerPush]
type = PlayerPush
triggerall = IsHelper(1000)
trigger1 = !Parent,Var(5)
trigger1 = MoveType != H
trigger2 = Parent,Var(5)
time = 1
value = 1

[State Stand Break]
type = Explod
triggerall = IsHelper(1000)
triggerall = StateNo != 9110
trigger1 = Parent,Var(1) <= 0
trigger1 = StateNo != 1005
trigger1 = Parent,MoveType = H
;ignorehitpause = 1
removetime = 1
anim = 4005
postype = Back
pos = 160,120
sprpriority = -100

[State PlaySnd]
type = PlaySnd
triggerall = IsHelper(1000)
triggerall = StateNo != 9110
trigger1 = Parent,Var(1) <= 0
trigger1 = Parent,MoveType = H
trigger1 = StateNo != 1005
value = 11000,5
channel = 2
abspan = 0

[State SuperPause]
type = SuperPause
triggerall = IsHelper(1000)
triggerall = StateNo != 9110
trigger1 = Parent,Var(1) <= 0
trigger1 = Parent,MoveType = H
trigger1 = StateNo != 1005
time = 12
anim = -1

[State Parent Get Hit]
type = ChangeState
triggerall = IsHelper(1000)
triggerall = StateNo != 9110
trigger1 = MoveType != H
trigger1 = Parent,MoveType = H
trigger1 = Parent,StateNo != [120,159]
trigger1 = !Parent,Var(5)
trigger2 = Parent,Var(1) <= 0
trigger2 = Parent,MoveType = H
trigger2 = StateNo != 1005
;ignorehitpause = 1
value = 1005
ctrl = 0

[State Turn]
type = Turn
trigger1 = IsHelper(1000)
trigger1 = Ctrl
trigger1 = P2Dist X < 0
trigger1 = Statetype != A

;Guard Stand Image
[State Guard Image(Ground)]
type = Explod
triggerall = IsHelper(1000)
triggerall = TimeMod = 2,0
trigger1 = (StateNo=120)||(StateNo=[130,149])
trigger1 = StateType != A
ignorehitpause = 1
pausemovetime = 9999999
removetime = 1
anim = 123
pos = 15+(StateType=C)*30,-40+(Statetype=C)*30
sprpriority = 2

[State Guard Image(Air)]
type = Explod
triggerall = IsHelper(1000)
trigger1 = StateNo=[150,159]
pausemovetime = 9999999
ignorehitpause = 1
removetime = 1
anim = 124
pos = 10+(StateType=C)*30,-40+(Statetype=C)*30
sprpriority = 2

;Double Jump
[State Double Jump]
type = ChangeState
trigger1 = IsHelper(1000)
trigger1 = StateType = A
trigger1 = Var(4) = 1
trigger1 = Ctrl
trigger1 = Command = "holdup"
value = 45

[State Double Jump VarSet]
type = VarSet
trigger1 = IsHelper(1000)
trigger1 = StateType != A
var(4) = 0

[State Double Jump VarSet]
type = VarSet
trigger1 = IsHelper(1000)
trigger1 = StateType = A
trigger1 = Command != "holdup"
trigger1 = Var(4) = 0
var(4) = 1

[State Double Jump VarSet]
type = VarSet
trigger1 = IsHelper(1000)
trigger1 = StateNo = 45
var(4) = 2

;Win
[State Win]
type = ChangeState
trigger1 = IsHelper(1000)
trigger1 = RoundState > 2
trigger1 = Parent,Win
trigger1 = Ctrl
trigger1 = StateType != A
trigger1 = StateNo != 6180
value = 6180
ctrl = 0

;-------------------Doll Get Hit--------------------------
[State Doll Get Hit]
type = SelfState
triggerall = !IsHelper
trigger1 = Helper(1000),Var(0)
;trigger1 = RoundState = 2
ignorehitpause = 1
value = 25000+IfElse((!Var(5)&&(StateType!=A)&&(Helper(1000),GetHitVar(groundtype)=3)),70,(StateType=C)*10+(StateType=A)*20+(StateType=L)*80)
ctrl = 0

[State Doll Damage]
type = LifeAdd
trigger1 = !IsHelper
;trigger1 = Helper(1000),StateNo = 1006
;trigger2 = Helper(1000),StateNo = 9000
;trigger3 = Helper(1000),StateNo = 9010
;trigger4 = Helper(1000),StateNo = [5000,5999]
ignorehitpause = 1
value = -Helper(1000),GetHitVar(damage)*0.8

;---------------------------------------Normal Action-----------------------------------------
;Run Fwd
[State Run Fwd]
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = StateNo != 100
triggerall = !Var(5)
trigger1 = !Var(59)
trigger1 = Command = "FF"
value = 100
ctrl = 1

;Run Back
[State Run Fwd]
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = StateNo != 100
triggerall = !Var(5)
trigger1 = !Var(59)
trigger1 = Command = "BB"
value = 105
ctrl = 1

;Roll Fwd
[State Run Fwd]
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(5)
trigger1 = !Var(59)
trigger1 = Command = "recovery"
value = 110
ctrl = 0

;---------------------------------------------Throw--------------------------------------------
;Throw
[State Throw]
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = StateNo != 100
triggerall = Command != "holddown"
triggerall = P2BodyDist X = [-15,15]
triggerall = P2StateType != A
triggerall = !Var(5)
triggerall = Helper(1000),StateNo = 9110
trigger1 = !Var(59)
trigger1 = (Command="holdfwd")||(Command="holdback")
trigger1 = Command = "y"
trigger2 = Var(59)
trigger2 = Random = [0,100]
trigger2 = EnemyNear,StateNo != [5100,5999]
value = 700
ctrl = 0

;---------------------------------------Super Attack-----------------------------------------
;Super3300
[State Super 3300]
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(5)
triggerall = Helper(1000),StateNo = 9110
triggerall = Power >= 1000
trigger1 = !Var(59)
trigger1 = Command = "FDFaxy"
value = 3300
ctrl = 0

;Super3000
[State Super 3000]
type = ChangeState
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(5)
triggerall = Helper(1000),StateNo = 9110
triggerall = Power >= 1000
trigger1 = !Var(59)
trigger1 = Command = "DBaxy"
trigger2 = Var(59)
trigger2 = Random <= Power/300
value = 3000
ctrl = 0

[State 3000]
type = ChangeState
triggerall = IsHelper(1000)
trigger1 = Parent,StateNo = 3000
trigger1 = Parent,Time = 1
;trigger2 = !Parent,Var(59)
;trigger2 = !Parent,Var(5)
;trigger2 = Parent,StateType = A
;trigger2 = Parent,MoveType != H
;trigger2 = (Parent,Command="DFa")
;trigger2 = Parent,StateNo != [700,799]
;trigger2 = StateNo = 9110
value = 3001
ctrl = 0

;Super3100
[State Super 3100]
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(5)
triggerall = Helper(1000),StateNo = 9110
triggerall = Power >= 1000
trigger1 = !Var(59)
trigger1 = Command = "DFaxy"
trigger2 = Var(59)
trigger2 = Helper(1000),P2BodyDist X*Helper(1000),Facing*Facing+EnemyNear,Vel X*12*Helper(1000),Facing*Facing = [50,120]
trigger2 = P2Dist Y+EnemyNear,Vel Y*12+0.46*144 >= 0
trigger2 = !EnemyNear,Ctrl
trigger2 = P2MoveType != A
trigger2 = !EnemyNear,HitFall
trigger2 = EnemyNear,StateNo != [5100,5199]
value = 3100
ctrl = 0

[State 3100]
type = ChangeState
triggerall = IsHelper(1000)
trigger1 = Parent,StateNo = 3100
trigger1 = Parent,Time = 1
trigger1 = StateNo != [3100,3199]
;trigger2 = !Parent,Var(59)
;trigger2 = !Parent,Var(5)
;trigger2 = Parent,StateType = A
;trigger2 = Parent,MoveType != H
;trigger2 = (Parent,Command="DFa")
;trigger2 = Parent,StateNo != [700,799]
;trigger2 = StateNo = 9110
value = 3101
ctrl = 0

;---------------------------------------Special Attack-----------------------------------------
;Specail1000
[State Specail 1000]
type = ChangeState
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(59)
triggerall = !Var(5)
triggerall = Helper(1000),StateNo = 9110
trigger1 = Command = "DFa"
trigger2 = Var(9) = 1
value = 1000
ctrl = 0

[State 1000]
type = ChangeState
triggerall = IsHelper(1000)
trigger1 = Parent,StateNo = 1000
trigger1 = Parent,Time = 1
trigger2 = !Parent,Var(59)
trigger2 = !Parent,Var(5)
trigger2 = Parent,StateType = A
trigger2 = Parent,MoveType != H
trigger2 = (Parent,Command="DFa")
trigger2 = Parent,StateNo != [700,799]
trigger2 = StateNo = 9110
value = 1001
ctrl = 0

;Specail1010
[State Specail 1010]
type = ChangeState
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(59)
triggerall = !Var(5)
triggerall = Helper(1000),StateNo = 9110
trigger1 = Command = "DFx"
trigger2 = Var(9) = 2
value = 1010
ctrl = 0

[State 1010]
type = ChangeState
triggerall = IsHelper(1000)
trigger1 = Parent,StateNo = 1010
trigger1 = Parent,Time = 1
trigger2 = !Parent,Var(59)
trigger2 = !Parent,Var(5)
trigger2 = Parent,StateType = A
trigger2 = Parent,MoveType != H
trigger2 = (Parent,Command="DFx")
trigger2 = Parent,StateNo != [700,799]
trigger2 = StateNo = 9110
value = 1011
ctrl = 0

;Specail1020
[State Specail 1020]
type = ChangeState
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(5)
triggerall = Helper(1000),StateNo = 9110
trigger1 = !Var(59)
trigger1 = Command = "DFy"
trigger2 = !Var(59)
trigger2 = Var(9) = 3
trigger3 = Var(59)
trigger3 = P2MoveType != A
trigger3 = Random <= 1600/P2BodyDist X
trigger3 = P2BodyDist X >= 100
value = 1020
ctrl = 0

[State 1020]
type = ChangeState
triggerall = IsHelper(1000)
trigger1 = Parent,StateNo = 1020
trigger1 = Parent,Time = 1
trigger2 = !Parent,Var(59)
trigger2 = !Parent,Var(5)
trigger2 = Parent,StateType = A
trigger2 = Parent,MoveType != H
trigger2 = (Parent,Command="DFy")
trigger2 = Parent,StateNo != [700,799]
trigger2 = StateNo = 9110
value = 1021
ctrl = 0

;Specail11100
[State Specail 1100]
type = ChangeState
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(5)
triggerall = Helper(1000),StateNo = 9110
trigger1 = !Var(59)
trigger1 = Command = "DBa"
trigger2 = !Var(59)
trigger2 = Var(9) = 4
trigger3 = Var(59)
trigger3 = (Helper(1000),P2BodyDist X=[-30,-10])||(Helper(1000),P2BodyDist X=[10,40])
trigger3 = P2MoveType != A
trigger3 = P2BodyDist X >= 100
trigger3 = Random <= 1600/P2BodyDist X+(P2StateType=C)*200
value = 1100
ctrl = 0

[State 1100]
type = ChangeState
triggerall = IsHelper(1000)
trigger1 = Parent,StateNo = 1100
trigger1 = Parent,Time = 1
trigger2 = !Parent,Var(59)
trigger2 = !Parent,Var(5)
trigger2 = Parent,StateType = A
trigger2 = Parent,MoveType != H
trigger2 = (Parent,Command="DBa")
trigger2 = Parent,StateNo != [700,799]
trigger2 = StateNo = 9110
value = 1101
ctrl = 0

;Specail11110
[State Specail 1110]
type = ChangeState
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(5)
triggerall = Helper(1000),StateNo = 9110
trigger1 = !Var(59)
trigger1 = Command = "DBx"
trigger1 = !Var(59)
trigger2 = Var(9) = 5
trigger3 = Var(59)
trigger3 = (Helper(1000),P2BodyDist X=[-50,-30])||(Helper(1000),P2BodyDist X=[50,100])
trigger3 = P2BodyDist X >= 100
trigger3 = P2MoveType != A
trigger3 = Random <= 1600/P2BodyDist X+(P2StateType=C)*200
value = 1110
ctrl = 0

[State 1110]
type = ChangeState
triggerall = IsHelper(1000)
trigger1 = Parent,StateNo = 1110
trigger1 = Parent,Time = 1
trigger2 = !Parent,Var(59)
trigger2 = !Parent,Var(5)
trigger2 = Parent,StateType = A
trigger2 = Parent,MoveType != H
trigger2 = (Parent,Command="DBx")
trigger2 = Parent,StateNo != [700,799]
trigger2 = StateNo = 9110
value = 1111
ctrl = 0

;Specail11120
[State Specail 1120]
type = ChangeState
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(5)
triggerall = Helper(1000),StateNo = 9110
trigger1 = !Var(59)
trigger1 = Command = "DBy"
trigger2 = !Var(59)
trigger2 = Var(9) = 6
trigger3 = Var(59)
trigger3 = (Helper(1000),P2BodyDist X=[-100,-80])||(Helper(1000),P2BodyDist X=[100,150])
trigger3 = P2BodyDist X >= 100
trigger3 = P2MoveType != A
trigger3 = Random <= 1600/P2BodyDist X+(P2StateType=C)*200
value = 1120
ctrl = 0

[State 1120]
type = ChangeState
triggerall = IsHelper(1000)
trigger1 = Parent,StateNo = 1120
trigger1 = Parent,Time = 1
trigger2 = !Parent,Var(59)
trigger2 = !Parent,Var(5)
trigger2 = Parent,StateType = A
trigger2 = Parent,MoveType != H
trigger2 = (Parent,Command="DBy")
trigger2 = Parent,StateNo != [700,799]
trigger2 = StateNo = 9110
value = 1121
ctrl = 0

;Specail1200
[State Specail 1200]
type = ChangeState
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(59)
triggerall = !Var(5)
triggerall = Helper(1000),StateNo = 9110
trigger1 = Command = "DDa"
trigger2 = Var(9) = 7
value = 1200
ctrl = 0

[State 1200]
type = ChangeState
triggerall = IsHelper(1000)
trigger1 = Parent,StateNo = 1200
trigger1 = Parent,Time = 1
trigger2 = !Parent,Var(59)
trigger2 = !Parent,Var(5)
trigger2 = Parent,StateType = A
trigger2 = Parent,MoveType != H
trigger2 = (Parent,Command="DDa")
trigger2 = Parent,StateNo != [700,799]
trigger2 = StateNo = 9110
value = 1201
ctrl = 0

;Specail1210
[State Specail 1210]
type = ChangeState
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(59)
triggerall = !Var(5)
triggerall = Helper(1000),StateNo = 9110
trigger1 = Command = "DDx"
trigger2 = Var(9) = 8
value = 1210
ctrl = 0

[State 1210]
type = ChangeState
triggerall = IsHelper(1000)
trigger1 = Parent,StateNo = 1210
trigger1 = Parent,Time = 1
trigger2 = !Parent,Var(59)
trigger2 = !Parent,Var(5)
trigger2 = Parent,StateType = A
trigger2 = Parent,MoveType != H
trigger2 = (Parent,Command="DDx")
trigger2 = Parent,StateNo != [700,799]
trigger2 = StateNo = 9110
value = 1211
ctrl = 0

;Specail1220
[State Specail 1220]
type = ChangeState
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(5)
triggerall = Helper(1000),StateNo = 9110
trigger1 = !Var(59)
trigger1 = Command = "DDy"
trigger2 = !Var(59)
trigger2 = Var(9) = 9
trigger3 = Var(59)
trigger3 = Helper(1000),P2BodyDist X = [-60,60]
trigger3 = P2MoveType != A
trigger3 = P2BodyDist X >= 100
trigger3 = Random <= 1600/P2BodyDist X
value = 1220
ctrl = 0

[State 1220]
type = ChangeState
triggerall = IsHelper(1000)
trigger1 = Parent,StateNo = 1220
trigger1 = Parent,Time = 1
trigger2 = !Parent,Var(59)
trigger2 = !Parent,Var(5)
trigger2 = Parent,StateType = A
trigger2 = Parent,MoveType != H
trigger2 = (Parent,Command="DDy")
trigger2 = Parent,StateNo != [700,799]
trigger2 = StateNo = 9110
value = 1221
ctrl = 0

;---------------------------------------Normal Attack-----------------------------------------
;Stand_Light_Attack
[State Stand_Light_Attack]
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(59)
triggerall = (Command!="holddown")||(StateNo=100)
triggerall = !Var(5)
trigger1 = Command = "a"
trigger2 = Var(8) = 1
value = 200+(StateNo=100)
ctrl = 0

;Stand_fwd_Medium_Attack
[State Stand_Medium_Attack]
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(59)
triggerall = Command != "holddown"
triggerall = Command = "holdfwd"
triggerall = StateNo != 100
triggerall = !Var(5)
trigger1 = Command = "x"
trigger2 = Var(8) = 2
value = 211
ctrl = 0

;Stand_Medium_Attack
[State Stand_Medium_Attack]
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(59)
triggerall = (Command!="holddown")||(StateNo=100)
triggerall = !Var(5)
trigger1 = Command = "x"
trigger2 = Var(8) = 2
value = 210
ctrl = 0

;Stand_Heavy_Attack
[State Stand_Heavy_Attack]
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(59)
triggerall = (Command!="holddown")||(StateNo=100)
triggerall = !Var(5)
trigger1 = Command = "y"
trigger2 = Var(8) = 3
value = 220+(StateNo=100)
ctrl = 0

;Crouch_Light_Attack
[State Crouch_Light_Attack]
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(59)
triggerall = Command = "holddown"
triggerall = !Var(5)
trigger1 = Command = "a"
trigger2 = Var(8) = 1
value = 300
ctrl = 0

;Crouch_Medium_Attack
[State Crouch_Medium_Attack]
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(59)
triggerall = Command = "holddown"
triggerall = !Var(5)
trigger1 = Command = "x"
trigger2 = Var(8) = 2
value = 310
ctrl = 0

;Crouch_Fwd_Heavy_Attack
[State Crouch_Heavy_Attack]
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(59)
triggerall = Command = "holddown"
triggerall = !Var(5)
triggerall = Command = "holdfwd"
trigger1 = Command = "y"
trigger2 = Var(8) = 3
value = 321
ctrl = 0

;Crouch_Heavy_Attack
[State Crouch_Heavy_Attack]
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType != A
triggerall = !Var(59)
triggerall = Command = "holddown"
triggerall = !Var(5)
trigger1 = Command = "y"
trigger2 = Var(8) = 3
value = 320
ctrl = 0

;Air_Light_Attack
[State Air_Light_Attack]
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType = A
triggerall = !Var(59)
triggerall = !Var(5)
trigger1 = Command = "a"
trigger2 = Var(8) = 1
value = 400
ctrl = 0

;Air_Medium_Attack
[State Air_Medium_Attack]
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType = A
triggerall = !Var(59)
triggerall = !Var(5)
trigger1 = Command = "x"
trigger2 = Var(8) = 2
value = 410
ctrl = 0

;Air_Heavy_Attack
[State Air_Heavy_Attack]
type = ChangeState
triggerall = !IsHelper
triggerall = Ctrl
triggerall = StateType = A
triggerall = !Var(59)
triggerall = !Var(5)
trigger1 = Command = "y"
trigger2 = Var(8) = 3
value = 420
ctrl = 0

;----------------------------------------------------------------------------------------------------------------
;                                                 doll Super Attack
;----------------------------------------------------------------------------------------------------------------
;Super3200
[State 3200]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = StateType != A
triggerall = Ctrl
triggerall = Power >= 2000
trigger1 = !Parent,Var(59)
trigger1 = Facing = Parent,Facing
trigger1 = Parent,Command="FDFaxy"
trigger2 = !Parent,Var(59)
trigger2 = Facing != Parent,Facing
trigger2 = Parent,Command="BDBaxy"
value = 3200
ctrl = 0

;Super3000
[State 3000]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Ctrl
triggerall = Power >= 1000
trigger1 = Facing != Parent,Facing
trigger1 = Parent,Command="DFaxy"
trigger2 = Facing = Parent,Facing
trigger2 = Parent,Command="DBaxy"
value = 3002
ctrl = 0

;Super3000
[State 3000]
type = ChangeState
triggerall = Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Ctrl
triggerall = Power >= 1000
triggerall = P2BodyDist X = [0,50]
trigger1 = (Parent,Var(57)-EnemyNear,Time)>24
trigger2 = (Parent,Var(58)-EnemyNear,Time)>24
value = 3002
ctrl = 0

;Super3100
[State 3100]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = StateType != A
triggerall = Ctrl
triggerall = Power >= 1000
trigger1 = !Parent,Var(59)
trigger1 = Facing = Parent,Facing
trigger1 = Parent,Command="DFaxy"
trigger2 = !Parent,Var(59)
trigger2 = Facing != Parent,Facing
trigger2 = Parent,Command="DBaxy"
trigger3 = Parent,Var(59)
trigger3 = P2BodyDist X = [0,150]
trigger3 = P2StateType != A
trigger3 = !EnemyNear,Ctrl
trigger3 = EnemyNear,StateNo != [120,159]
value = 3102
ctrl = 0

;---------------------------------------------Throw--------------------------------------------
;Throw
[State Throw]
type = ChangeState
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = Ctrl
triggerall = StateType != A
triggerall = StateNo != 100
triggerall = P2BodyDist X = [-15,15]
triggerall = P2StateType != A
trigger1 = !Parent,Var(59)
trigger1 = Command != "holddown"
trigger1 = (Command="holdfwd")||(Command="holdback")
trigger1 = Command = "y"
trigger2 = Parent,Var(59)
trigger2 = Random = [0,150]
trigger2 = EnemyNear,StateNo != [5100,5999]
value = 6700
ctrl = 0

;----------------------------------------------------------------------------------------------------------------
;                                                 doll Special Attack
;----------------------------------------------------------------------------------------------------------------
;Special 1000
[State Special 1000]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Ctrl
trigger1 = Facing = Parent,Facing
trigger1 = (Parent,Command="DFa")||(Parent,Var(9)=1)
trigger2 = Facing != Parent,Facing
trigger2 = (Parent,Command="DBa")||(Parent,Var(9)=4)
value = 7000
ctrl = 0

;Special 1010
[State Special 1010]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Ctrl
trigger1 = Facing = Parent,Facing
trigger1 = (Parent,Command="DFx")||(Parent,Var(9)=2)
trigger2 = Facing != Parent,Facing
trigger2 = (Parent,Command="DBx")||(Parent,Var(9)=5)
value = 7010
ctrl = 0

;Special 1020
[State Special 1020]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Ctrl
trigger1 = Facing = Parent,Facing
trigger1 = (Parent,Command="DFy")||(Parent,Var(9)=3)
trigger2 = Facing != Parent,Facing
trigger2 = (Parent,Command="DBy")||(Parent,Var(9)=6)
value = 7020
ctrl = 0

;Special 1100
[State Special 1100]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = Ctrl
trigger1 = Facing != Parent,Facing
trigger1 = (Parent,Command="DFa")||(Parent,Var(9)=1)
trigger2 = Facing = Parent,Facing
trigger2 = (Parent,Command="DBa")||(Parent,Var(9)=4)
value = 7100
ctrl = 0

;Special 1110
[State Special 1110]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = Ctrl
trigger1 = Facing != Parent,Facing
trigger1 = (Parent,Command="DFx")||(Parent,Var(9)=2)
trigger2 = Facing = Parent,Facing
trigger2 = (Parent,Command="DBx")||(Parent,Var(9)=5)
value = 7110
ctrl = 0

[State Special 1110];--AI
type = ChangeState
triggerall = Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
trigger1 = Ctrl
trigger1 = Target,StateNo = [5100,5110]
trigger1 = P2BodyDist X = [0,40]
value = 7100
ctrl = 0

;Special 1120
[State Special 1120]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = Ctrl
trigger1 = Facing != Parent,Facing
trigger1 = (Parent,Command="DFy")||(Parent,Var(9)=3)
trigger2 = Facing = Parent,Facing
trigger2 = (Parent,Command="DBy")||(Parent,Var(9)=6)
value = 7120
ctrl = 0

;Special 1102
[State Special 1102]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateNo = 1104
triggerall = MoveContact
triggerall = Parent,Command="holddown"
trigger1 = Parent,Command = "a"
value = 7102
ctrl = 0

;Special 1102
[State Special 1102]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateNo = 1104
triggerall = MoveContact
triggerall = Parent,Command="holddown"
trigger1 = Parent,Command = "x"
value = 7112
ctrl = 0

;Special 1102
[State Special 1102]
type = ChangeState
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateNo = 1104
triggerall = MoveContact
trigger1 = !Parent,Var(59)
trigger1 = Parent,Command="holddown"
trigger1 = Parent,Command = "y"
trigger2 = Parent,Var(59)
trigger2 = MoveHit
value = 7122
ctrl = 0

;Special 1200
[State Special 1200]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Ctrl
trigger1 = (Parent,Command="DDa")||(Parent,Var(9)=7)
value = 7200
ctrl = 0

;Special 1210
[State Special 1210]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Ctrl
trigger1 = (Parent,Command="DDx")||(Parent,Var(9)=8)
value = 7210
ctrl = 0

;Special 1220
[State Special 1220]
type = ChangeState
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Ctrl
trigger1 = !Parent,Var(59)
trigger1 = (Parent,Command="DDy")||(Parent,Var(9)=9)
trigger2 = Parent,Var(59)
trigger2 = EnemyNear,Facing = Facing
trigger2 = P2BodyDist X = [-60,60]
trigger2 = Random <= 10
value = 7220
ctrl = 0

;----------------------------------------------------------------------------------------------------------------
;                                                 doll Normal Attack
;----------------------------------------------------------------------------------------------------------------
;RunFwd
[State RunFwd]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Parent,Command != "holddown"
triggerall = Ctrl
trigger1 = Facing = Parent,Facing
trigger1 = Parent,Command = "FF"
trigger2 = Facing != Parent,Facing
trigger2 = Parent,Command = "BB"
value = 6100

;RunBack
[State RunBack]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Parent,Command != "holddown"
triggerall = Ctrl
trigger1 = Facing != Parent,Facing
trigger1 = Parent,Command = "FF"
trigger2 = Facing = Parent,Facing
trigger2 = Parent,Command = "BB"
value = 6105

;Stand Fwd Light Attack
[State Stand Fwd light attack]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Parent,Command != "holddown"
triggerall = (Parent,Command="a")||(Parent,Var(8)=1)
triggerall = StateNo != [6100,6105]
trigger1 = Ctrl
trigger1 = ((Facing=Parent,Facing)&&(Parent,Command="holdfwd"))||((Facing!=Parent,Facing)&&(Parent,Command="holdback"))
trigger2 = StateNo = 6201
trigger2 = AnimElem = 4,>=0
value = 6201+(Var(7)=6201)*(Var(8)=6201)*(Var(9)=6201)
ctrl = 0

;Stand Light Attack
[State Stand light attack]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Parent,Command != "holddown"
triggerall = (Parent,Command="a")||(Parent,Var(8)=1)
trigger1 = Ctrl
trigger2 = PrevStateNo != [6100,6105]
trigger2 = StateNo = 6200
trigger2 = Anim = 6200
trigger2 = AnimElem = 3,>=0
value = 6200+(Var(7)=6200)*(Var(8)=6200)*(Var(9)=6200)*3
ctrl = 0

;Stand Fwd Medium Attack
[State Stand Fwd Medium attack]
type = ChangeState
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Ctrl
trigger1 = !Parent,Var(59)
trigger1 = Parent,Command != "holddown"
trigger1 = (Parent,Command="x")||(Parent,Var(8)=2)
trigger1 = ((Facing=Parent,Facing)&&(Parent,Command="holdfwd"))||((Facing!=Parent,Facing)&&(Parent,Command="holdback"))
trigger2 = Parent,Var(59)
trigger2 = P2BodyDist X = [0,60]
trigger2 = P2StateType = C
trigger2 = P2MoveType != A
trigger2 = Random <= EnemyNear,Time*10
value = 6211
ctrl = 0

;Stand back Medium Attack
[State Stand Back Medium attack]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Parent,Command != "holddown"
triggerall = (Parent,Command="x")||(Parent,Var(8)=2)
trigger1 = Ctrl
trigger1 = ((Facing!=Parent,Facing)&&(Parent,Command="holdfwd"))||((Facing=Parent,Facing)&&(Parent,Command="holdback"))
;trigger2 = StateNo = 6200
;trigger2 = Anim = 6200
;trigger2 = AnimElem = 3,>=0
value = 6212
ctrl = 0

;Stand Medium Attack
[State Stand Medium attack]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Parent,Command != "holddown"
triggerall = (Parent,Command="x")||(Parent,Var(8)=2)
trigger1 = Ctrl
trigger2 = StateNo = 6200
trigger2 = Anim = 6200
trigger2 = AnimElem = 3,>=0
value = 6210
ctrl = 0

;Stand Heavy Attack
[State Stand Heavy attack]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Parent,Command != "holddown"
triggerall = (Parent,Command="y")||(Parent,Var(8)=3)
trigger1 = Ctrl
trigger2 = StateNo = 6210
trigger2 = AnimElem = 6,>=0
value = 6220
ctrl = 0

;Crouch Light Attack
[State Crouch light attack]
type = ChangeState
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Ctrl
trigger1 = !Parent,Var(59)
trigger1 = Parent,Command = "holddown"
trigger1 = (Parent,Command="a")||(Parent,Var(8)=1)
trigger2 = Parent,Var(59)
trigger2 = P2Statetype = S
trigger2 = P2BodyDist X = [0,50]
trigger2 = P2MoveType != A
trigger2 = Random <= EnemyNear,Time*10
trigger2 = EnemyNear,StateNo != [5100,5999]
value = 6300
ctrl = 0

;Crouch Fwd Medium Attack
[State Crouch Fwd Medium attack]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Parent,Command = "holddown"
triggerall = (Parent,Command="x")||(Parent,Var(8)=2)
trigger1 = ((Facing=Parent,Facing)&&(Parent,Command="holdfwd"))||((Facing!=Parent,Facing)&&(Parent,Command="holdback"))
trigger1 = Ctrl
value = 6311
ctrl = 0

;Crouch Medium Attack
[State Crouch Medium attack]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Parent,Command = "holddown"
triggerall = (Parent,Command="x")||(Parent,Var(8)=2)
trigger1 = Ctrl||((StateNo=6300)&&(AnimElem=3))
value = 6310
ctrl = 0

;Crouch Fwd Heavy Attack
[State Crouch Fwd Heavy attack]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Parent,Command = "holddown"
triggerall = (Parent,Command="y")||(Parent,Var(8)=3)
trigger1 = ((Facing=Parent,Facing)&&(Parent,Command="holdfwd"))||((Facing!=Parent,Facing)&&(Parent,Command="holdback"))
trigger1 = Ctrl
value = 6322
ctrl = 0

;Crouch Heavy Attack
[State Crouch Heavy attack]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = Parent,Command = "holddown"
triggerall = (Parent,Command="y")||(Parent,Var(8)=3)
trigger1 = Ctrl||((StateNo=6310)&&(AnimElem=3))
value = 6320
ctrl = 0

;Air Light Attack
[State Air Light Attack]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = Parent,Var(5)
triggerall = StateType = A
triggerall = (Parent,Command="a")||(Parent,Var(8)=1)
trigger1 = Ctrl
value = 6400
ctrl = 0

;Air Fwd Medium Attack
[State Air Medium Attack]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = Parent,Var(5)
triggerall = StateType = A
triggerall = (Parent,Command="x")||(Parent,Var(8)=2)
trigger1 = ((Facing=Parent,Facing)&&(Parent,Command="holdfwd"))||((Facing!=Parent,Facing)&&(Parent,Command="holdback"))
trigger1 = Ctrl
value = 6411
ctrl = 0

;Air Medium Attack
[State Air Medium Attack]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = Parent,Var(5)
triggerall = StateType = A
triggerall = (Parent,Command="x")||(Parent,Var(8)=2)
trigger1 = Ctrl
value = 6410
ctrl = 0

;Air Heavy Attack
[State Air Heavy Attack]
type = ChangeState
triggerall = !Parent,Var(59)
triggerall = Parent,Var(5)
triggerall = StateType = A
triggerall = (Parent,Command="y")||(Parent,Var(8)=3)
trigger1 = Ctrl
value = 6420
ctrl = 0

;--------------------------------------------------------------------------
;Stand On
[State Command "b" reset]
type = VarSet
trigger1 = Var(8) = 6
ignorehitpause = 1
var(8) = 0

[State Command "b"]
type = VarSet
triggerall = !IsHelper
trigger1 = !Var(59)
trigger1 = Command = "b"
trigger2 = Var(59)
trigger2 = !Var(5)
trigger2 = P2MoveType != A
trigger2 = Random <= 10
trigger2 = Random > (Helper(1000),P2Dist X*Helper(1000),Facing*EnemyNear,Facing-P2BodyDist X)
trigger3 = Var(59)
trigger3 = Var(5)
trigger3 = Random <= (Helper(1000),P2BodyDist X-P2BodyDist X)
ignorehitpause = 1
var(8) = 6

[State Dust]
type = Explod
trigger1 = !IsHelper
trigger1 = Var(8) = 6
trigger1 = StateType != A
trigger1 = !Var(5)
trigger1 = Var(1) > 0
trigger1 = Helper(1000),StateNo = 9110
trigger1 = Ctrl
anim = 4000
sprpriority = 10
ownpal = 1

[State Stand On]
type = ChangeState
triggerall = !IsHelper
triggerall = Var(8) = 6
;triggerall = StateType != A
trigger1 = Var(1) > 0
trigger1 = !Var(5)
trigger1 = Helper(1000),StateNo = 9110
trigger1 = Ctrl
value = 8000
ctrl = 0

[State Set Var]
type = VarSet
triggerall = !IsHelper
triggerall = Var(8) = 6
trigger1 = !Var(5)
trigger1 = Var(1) > 0
trigger1 = Helper(1000),StateNo = 9110
trigger1 = (StateNo=8000)||((StateType=A)&&Ctrl)
trrigger2 = Var(5)
trigger2 = Helper(1000),Ctrl
ignorehitpause = 1
var(5) = !Var(5)

[State Stand On State]
type = ChangeState
trigger1 = (RoundState=2)||((EnemyNear,StateNo!=5150)&&(EnemyNear,StateNo!=0))
trigger1 = !IsHelper
trigger1 = Var(5)
trigger1 = (StateNo=0)||(StateNo=20)
trigger1 = StateType != A
value = 8001

[State Wake Up]
type = ChangeState
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
trigger1 = StateNo = 9110
value = 8002
ctrl = 0

[State Snd Play]
type = PlaySnd
triggerall = IsHelper(1000)
triggerall = !Parent,Var(5)
trigger1 = Ctrl
trigger1 = StateNo != 9110
value = 9110,0
channel = 1
volume = 200

[State Sleep]
type = ChangeState
triggerall = IsHelper(1000)
triggerall = !Parent,Var(5)
trigger1 = Ctrl
trigger1 = StateNo != 9110
value = IfElse(Statetype=A,1005,8003)
ctrl = 0

;----------------------------------Command Buffer-------------------------------
[State Buffer Reset]
type = VarRangeSet
trigger1 = !IsHelper
trigger1 = !Ctrl
trigger1 = Time <= 1
trigger2 = Var(5)
trigger2 = !Helper(1000),Ctrl
trigger2 = Helper(1000),Time <= 2
ignorehitpause = 1
value = 0
first = 8
last = 9

[State Command "a"]
type = VarSet
triggerall = !Var(59)
trigger1 = !IsHelper
trigger1 = Command = "a"
ignorehitpause = 1
var(8) = 1

[State Command "x"]
type = VarSet
triggerall = !Var(59)
trigger1 = !IsHelper
trigger1 = Command = "x"
ignorehitpause = 1
var(8) = 2

[State Command "y"]
type = VarSet
triggerall = !Var(59)
trigger1 = !IsHelper
trigger1 = Command = "y"
ignorehitpause = 1
var(8) = 3

[State Command "recovery"]
type = VarSet
triggerall = !Var(59)
trigger1 = !IsHelper
trigger1 = Command = "recovery"
ignorehitpause = 1
var(8) = 5

[State Command "DFa"]
type = VarSet
triggerall = !Var(59)
trigger1 = !IsHelper
trigger1 = Command = "DFa"
ignorehitpause = 1
var(9) = 1

[State Command "DFx"]
type = VarSet
triggerall = !Var(59)
trigger1 = !IsHelper
trigger1 = Command = "DFx"
ignorehitpause = 1
var(9) = 2

[State Command "DFx"]
type = VarSet
triggerall = !Var(59)
trigger1 = !IsHelper
trigger1 = Command = "DFy"
ignorehitpause = 1
var(9) = 3

[State Command "DBa"]
type = VarSet
triggerall = !Var(59)
trigger1 = !IsHelper
trigger1 = Command = "DBa"
ignorehitpause = 1
var(9) = 4

[State Command "DBx"]
type = VarSet
triggerall = !Var(59)
trigger1 = !IsHelper
trigger1 = Command = "DBx"
ignorehitpause = 1
var(9) = 5

[State Command "DBy"]
type = VarSet
triggerall = !Var(59)
trigger1 = !IsHelper
trigger1 = Command = "DBy"
ignorehitpause = 1
var(9) = 6

[State Command "DDa"]
type = VarSet
triggerall = !Var(59)
trigger1 = !IsHelper
trigger1 = Command = "DDa"
ignorehitpause = 1
var(9) = 7

[State Command "DDx"]
type = VarSet
triggerall = !Var(59)
trigger1 = !IsHelper
trigger1 = Command = "DDx"
ignorehitpause = 1
var(9) = 8

[State Command "DDx"]
type = VarSet
triggerall = !Var(59)
trigger1 = !IsHelper
trigger1 = Command = "DDy"
ignorehitpause = 1
var(9) = 9

;-----------------------Doll AI----------------------------
;Stand Light Attack
[State Stand light attack]
type = ChangeState
triggerall = Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
;triggerall = Parent,Command != "holddown"
;triggerall = (Parent,Command="a")||(Parent,Var(8)=1)
triggerall = Ctrl
triggerall = P2BodyDist X+EnemyNear,Vel X*4 = [0,40]
trigger1 = (Parent,Var(57)-EnemyNear,Time)>4
trigger2 = PrevStateNo = [120,159]
trigger2 = (Parent,Var(58)-EnemyNear,Time)>=4
trigger3 = Parent,StateNo = [5000,5099]
value = 6200+(Var(7)=6200)*(Var(8)=6200)*(Var(9)=6200)*3
ctrl = 0

;Stand Light Attack
[State Stand light attack]
type = ChangeState
triggerall = Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = P2BodyDist X = [0,40]
trigger1 = MoveHit
trigger1 = (Var(7)!=6200)||(Var(8)!=6200)||(Var(9)!=6200)
trigger1 = PrevStateNo != [6100,6105]
trigger1 = StateNo = 6200
trigger1 = Anim = 6200
trigger1 = AnimElem = 3,>=0
value = 6200+(Var(7)=6200)*(Var(8)=6200)*(Var(9)=6200)*3
ctrl = 0

;Stand Heavy Attack
[State Stand Heavy attack]
type = ChangeState
triggerall = Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = P2BodyDist X = [0,70]
trigger1 = Ctrl
trigger1 = (Parent,Var(57)-EnemyNear,Time)>4
trigger2 = StateNo = 6210
trigger2 = AnimElem = 6,>=0
trigger2 = MoveHit||(P2BodyDist X=[0,70])
value = 6220
ctrl = 0

;Stand Medium Attack
[State Stand Medium attack]
type = ChangeState
triggerall = Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
;triggerall = Parent,Command != "holddown"
;triggerall = (Parent,Command="x")||(Parent,Var(8)=2)
trigger1 = StateNo = 6200
trigger1 = Anim = 6200
trigger1 = AnimElem = 3,>=0
value = 6210
ctrl = 0

;Crouch Medium Attack
[State Crouch Medium attack]
type = ChangeState
triggerall = Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
triggerall = MoveHit
trigger1 = (StateNo=6300)&&(AnimElem=3)
value = 6310
ctrl = 0

;Crouch Heavy Attack
[State Crouch Heavy attack]
type = ChangeState
triggerall = Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Parent,Var(5)
triggerall = StateType != A
trigger1 = Ctrl
trigger1 = P2BodyDist X+EnemyNear,Vel X*7 = [0,60]
trigger1 = P2Dist Y+EnemyNear,Vel Y*7+0.46*49 = [-100,0]
trigger1 = P2StateType = A
trigger2 = MoveHit
trigger2 = (StateNo=6310)&&(AnimElem=3)
value = 6320
ctrl = 0

;--------------------Auto Guard-----------------
[State Stand Guard]
type = ChangeState
triggerall = IsHelper(1000)
trigger1 = Parent,Var(59)
trigger1 = Parent,Var(5)
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 200
trigger1 = StateNo != 120
trigger1 = Ctrl
trigger1 = Parent,StateNo != [5000,5999]
trigger1 = P2BodyDist X <= Parent,P2BodyDist X
trigger1 = P2Dist X*Facing*EnemyNear,Facing < 0
value = 120

[State Stand Guard]
type = StateTypeSet
triggerall = IsHelper(1000)
trigger1 = Parent,Var(59)
trigger1 = P2MoveType = A
trigger1 = P2StateType = A
trigger1 = P2BodyDist X <= 200
trigger1 = StateType = C
trigger1 = StateNo=[120,159]
ignorehitpause = 1
value = S

[State Crouch Guard]
type = StateTypeSet
triggerall = IsHelper(1000)
trigger1 = Parent,Var(59)
trigger1 = P2MoveType = A
trigger1 = P2StateType = C
trigger1 = P2BodyDist X <= 200
trigger1 = StateType = S
trigger1 = StateNo=[120,159]
ignorehitpause = 1
value = C

;--------Auto Walk----------------
[State Auto Walk]
type = ChangeState
triggerall = Parent,Var(59)
triggerall = IsHelper(1000)
triggerall = Ctrl
triggerall = StateType != A
triggerall = Parent,Var(5)
triggerall = P2BodyDist X > 15
trigger1 = P2MoveType != A
trigger2 = Parent,StateNo = [5000,5999]
trigger3 = Facing = EnemyNear,Facing
trigger4 = P2BodyDist X > Parent,P2BodyDist X
value = 20