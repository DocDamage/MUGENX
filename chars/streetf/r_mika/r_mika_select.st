;===========================================================================
;---------------------------------------------------------------------------
; ‚h‚r‚lƒZƒŒƒNƒg
;---------------------------------------------------------------------------
; ƒIƒyƒŒ[ƒ^
;---------------------------------------------------------------------------
;Var(0-5)	:”Ä—p
;Var(45)	:ó‘Ô•Ï”		 0:CPU”»•Ê•ŽáŠ±‚ÌˆÃ“]
;					 1:BASE-ISM Select
;					 2:ISM-PLUS Yes/No
;					 3:ISM-PLUS Decide
;					 4:Pass2Root & END
;					10:Randomizer from "CPU"
;					13:Randomizer from "ISM-PLUS Decide"
;
;Var(46)	:‚h‚r‚l‚o‚k‚t‚rƒQ[ƒW‚l‚`‚w
;Var(47)	:‚h‚r‚l‚o‚k‚t‚rƒQ[ƒWŒ»Žg—p—Ê
;
;Var(52)	:”\—ÍEUŒ‚”ð‚¯		(0:NG 1:OK)		››	œœ
;Var(53)	:”\—ÍE‹Ù‹}‰ñ”ðˆÚ“®	(0:NG 1:OK)		››	œ
;Var(54)	:”\—ÍEƒQ[ƒWƒŠƒJƒo[	(0:NG 1:OK)		››	œœœ
;Var(55)	:”\—ÍEƒ[ƒƒJƒEƒ“ƒ^[{	(0:Normal 1:Plus)	›	œ
;Var(56)	:”\—ÍEƒXƒeƒbƒv•ƒ‰ƒ“	(0:NG 1:OK)		›	œ
;Var(57)	:”\—ÍE‹ó’†ƒK[ƒh	(0:OK 1:NG)		›	œ
;Var(58)	:”\—ÍEƒIƒŠƒRƒ“		(0:NG 1:OK)		››	œœœ
;Var(59)	:Šî–{‚h‚r‚l		(0:Z 1:X 2:V)			
;					X-››››
;					Z-›››
;					V-››››

[Statedef 30000]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 4001	;“§–¾
ctrl = 0
sprpriority = 0

[State 30045, 1]
type = Pause
trigger1 = 1
time = 2
movetime = 2

;[State 30000, CheckerVarSet]
;type = ParentVarSet
;trigger1 = 0
;v = 51
;value = 1

[State 30000, Darken]
type = Explod
trigger1 = 1
anim = 30001
postype = left
pos = 0, 0
facing = 1
bindtime = -1
removetime = 2
sprpriority = 9
shadow = 0
scale = 320,240
pausemovetime = 2

[State 30000, 5]
type = ChangeState
trigger1 = command = "start"
value = 30200	;Depends on Color

;[State 30000, OperationVarSet]
;type = VarSet
;trigger1 = time > 2
;trigger1 = root,command != command
;v = 45
;value = 13

[State 30000, OperationVarSet]
type = VarSet
trigger1 = time > 30
trigger1 = Var(45) = 0
trigger1 = root,matchno = 1
v = 45
value = 1

[State 30000, OperationVarSet]
type = VarSet
trigger1 = time > 30
trigger1 = Var(45) = 0
trigger1 = root,matchno != 1
v = 45
value = 10

[State 30000, CPU color]
type = VarSet
trigger1 = Var(45) = 0
trigger1 = root,matchno != 1
v = 59
value = ifelse(palno % 3 = 0,2,ifelse(palno % 3 = 1,1,0))

[State 30000, 5]
type = ChangeState
trigger1 = root,matchno = 1
trigger1 = Var(45) != 0
value = 30045	;Press a key

[State 30000, CPU]
type = ChangeState
trigger1 = root,matchno != 1
trigger1 = Var(45) != 0
value = 30050	;main


;---------------------------------------------------------------------------
;Press a key !
;---------------------------------------------------------------------------
[Statedef 30045]
type    = S
movetype= I
physics = N
juggle  = 0
ctrl = 0

[State 30045, 1]
type = Pause
trigger1 = 1
time = 2
movetime = 2

[State 30050, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2 = NoBarDisplay
flag3 = NoFG

[State 30050, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 30050, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 100,19

[State 30050, Darken]
type = Explod
trigger1 = 1
anim = 30001
postype = left
pos = 0, 0
facing = 1
bindtime = -1
removetime = 2
sprpriority = 9
shadow = 0
scale = 320.0,240.0
pausemovetime = 2

[State 30050, Pressakey]
type = Explod
trigger1 = 1
anim = 30002
postype = left
pos = ifelse(root,Var(45) = 1,80,240),120
facing = 1
bindtime = -1
removetime = 1
sprpriority = 12
ontop = 1
shadow = 0
pausemovetime = 2

[State 30000, 5]
type = ChangeState
trigger1 = (command = "a") || (command = "b") || (command = "c") || (command = "x") || (command = "y") || (command = "z")
value = 30050

[State 30000, 5]
type = ChangeState
trigger1 = command = "start"
value = 30200


[State 30000, TimeOver]
type = VarSet
trigger1 = time > 240
v = 45
value = 10

[State 30000, CPU color]
type = VarSet
trigger1 = time > 240
v = 59
value = ifelse(palno % 3 = 0,2,ifelse(palno % 3 = 1,1,0))

[State 30000, CPU]
type = ChangeState
trigger1 = Var(45) != 1
value = 30050	;main

;---------------------------------------------------------------------------
;ƒƒCƒ“ƒ‹[ƒ`ƒ“
;---------------------------------------------------------------------------
[Statedef 30050]
type    = S
movetype= I
physics = N
juggle  = 0
ctrl = 0

[State 30050, 1]
type = Pause
trigger1 = 1
time = 2
movetime = 2

[State 30050, PlaySnd]
type = PlaySnd
trigger1 = Var(45) != 10
value = 310,5
channel = 4
lowpriority = 1

[State 30050, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2 = NoBarDisplay
flag3 = NoFG

[State 30050, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 30050, Darken]
type = Explod
trigger1 = 1
anim = 30001
postype = left
pos = 0, 0
facing = 1
bindtime = -1
removetime = 2
sprpriority = 9
shadow = 0
scale = 320.0,240.0
pausemovetime = 2

[State 30050, SelectFace]
type = Explod
trigger1 = (Var(45) > 1) && (Var(45) != 10) && (Var(45) != 4)
trigger1 = root,matchno = 1
anim = 30000
postype = left
pos = ifelse(root,Var(45)=1, 50,270),2
facing = parent,Var(45)
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 2


[State 30050, CPU]
type = Helper
trigger1 = Var(45) = 10
trigger1 = NumHelper(31100) = 0
pos = floor(ScreenPos X),-30
postype = left
id = 31100
name = "Randomizer"
facing = 1
stateno = 31100
;keyctrl = 1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999
sprpriority = -2


[State 30050, BASE-ISM]
type = Helper
trigger1 = Var(45) = 1
trigger1 = NumHelper(31000) = 0
pos = floor(ScreenPos X),-30
postype = left
id = 31000
name = "BASE-ISM"
facing = 1
stateno = 31000
;keyctrl = 1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999
sprpriority = -2


[State 30050, ISM-PLUS YesNo]
type = Helper
trigger1 = Var(45) = 2
trigger1 = NumHelper(31000) = 0
trigger1 = NumHelper(31020) = 0
pos = floor(ScreenPos X),-20
postype = left
id = 31020
name = "ISM PLUS YesNo"
facing = 1
stateno = 31020
;keyctrl = 1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999
sprpriority = -2


[State 30050, ISM-PLUS Dedide]
type = Helper
trigger1 = Var(45) = 3
trigger1 = NumHelper(31020) = 0
trigger1 = NumHelper(31040) = 0
pos = floor(ScreenPos X),-10
postype = left
id = 31040
name = "ISM PLUS Decide"
facing = 1
stateno = 31040
ownpal = 1
supermovetime = 99999
pausemovetime = 99999
sprpriority = -2


[State 30050, Randomizer]
type = Helper
trigger1 = Var(45) = 13
trigger1 = NumHelper(31040) = 0
trigger1 = NumHelper(31130) = 0
pos = floor(ScreenPos X),10
postype = left
id = 31130
name = "Randomizer"
facing = 1
stateno = 31100
ownpal = 1
supermovetime = 99999
pausemovetime = 99999
sprpriority = -2






[State 30050, Last]
type = Pause
trigger1 = Var(45) = 4
time = 20

[State 30050, Last]
type = ChangeState
trigger1 = Var(45) = 4
value = 30180	;Pass2Root&End




[State 30050,debug]
type = displaytoclipboard
trigger1 = 1
text = "Var(45)=%d commandany = %d"
params = Var(45),(command="any")
ignorehitpause = 1







;---------------------------------------------------------------------------
;Pass 2 Root
;---------------------------------------------------------------------------
[Statedef 30180]
type    = S
movetype= I
physics = N
juggle  = 0
ctrl = 0

[State 30180, PlaySnd]
type = PlaySnd
trigger1 = 1
value = 50,4
channel = 4

[State 30180, VarPass]
type = ParentVarSet
trigger1 = Time = [1, 8]
v = 60 - time
value = Var(60 - time)

[State 30180, VarSet]
type = ParentVarSet
trigger1 = Time = 0
v = 51
value = 1

[State 30180, VarSet]
type = ParentVarSet
trigger1 = Time = 0
v = 49
value = Var(49)

[State 30050, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic

[State 30180, VarSet]
type = ParentVarSet
trigger1 = 1
v = 4
value = 1

;[State 30000, 1]
;type = Pause
;trigger1 = time = 9
;time = 60
;movetime = 0

[State 30180, DestroySelf]
type = DestroySelf
trigger1 = Time = 10



;---------------------------------------------------------------------------
;ƒJƒ‰[ˆË‘¶
;---------------------------------------------------------------------------
[Statedef 30200]
type    = S
movetype= I
physics = N
juggle  = 0
ctrl = 0

[State 30200, IsmVarSet]
type = VarSet
trigger1 = Time = 0
v = 59
value = 2 - (root,PalNo % 3)

[State 30200, VarSet]
type = VarSet
trigger1 = Time = 0
v = 52
value = 0
[State 30200, VarSet]
type = VarSet
trigger1 = Time = 0
v = 53
value = 0
[State 30200, VarSet]
type = VarSet
trigger1 = Time = 0
v = 54
value = 0
[State 30200, VarSet]
type = VarSet
trigger1 = Time = 0
v = 55
value = 0
[State 30200, VarSet]
type = VarSet
trigger1 = Time = 0
v = 56
value = 0

[State 30200, VarSet]
type = VarSet
trigger1 = time = 0
v = 57
value = ifelse(2-(root,PalNo % 3) = 1,1,0)

[State 30200, VarSet]
type = VarSet
trigger1 = Time = 0
v = 58
value = ifelse(2-(root,PalNo % 3) = 0,1,0)

[State 30200, VarSet]
type = VarSet
trigger1 = Time = 0
v = 49
value = 1500


[State 30200, OperationVarSet]
type = VarSet
trigger1 = Time = 0
v = 45
value = 4

[State 30200, 5]
type = ChangeState
trigger1 = time = 1
value = 30050	;Main Routine



;---------------------------------------------------------------------------
;BASE-ISM Select
;---------------------------------------------------------------------------
[Statedef 31000]
type    = S
movetype= I
physics = N
juggle  = 0
ctrl = 0
anim = 4001

[State 30050, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 300,0
channel = 5

[State 31000, SelectFace]
type = Explod
trigger1 = time = 10
anim = ifelse(root,Var(45)=1,30010,30011)
id = 30011
postype = left
pos = ifelse(root,Var(45)=1, 50,270),2
facing = 1
bindtime = -1
removetime = -1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 9999
ownpal = 1

[State 31000, X-ISM]
type = Explod
trigger1 = time > 10
anim = 31000
postype = left
pos = ifelse(root,Var(45)=1, 80,240) ,80
facing = 1
bindtime = -1
removetime = 1
sprpriority = 14
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = ifelse(parent,Var(59)=1 ,1.5 ,1.0),ifelse(parent,Var(59)=1 ,1.5 ,1.0)

[State 31000, X-ISM Mask]
type = Explod
trigger1 = time > 10 && (parent,Var(59) = 1)
anim = 31010
postype = left
pos = ifelse(root,Var(45)=1, 80,240) ,80
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = ifelse(parent,Var(59)=1 ,1.5 ,1.0),ifelse(parent,Var(59)=1 ,1.5 ,1.0)


[State 31000, Z-ISM]
type = Explod
trigger1 = time > 10
anim = 31001
postype = left
pos = ifelse(root,Var(45)=1, 80,240) ,130
facing = 1
bindtime = -1
removetime = 1
sprpriority = 14
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = ifelse(parent,Var(59)=0 ,1.5 ,1.0),ifelse(parent,Var(59)=0 ,1.5 ,1.0)

[State 31000, Z-ISM Mask]
type = Explod
trigger1 = time > 10 && (parent,Var(59) = 0)
anim = 31011
postype = left
pos = ifelse(root,Var(45)=1, 80,240) ,130
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = ifelse(parent,Var(59)=0 ,1.5 ,1.0),ifelse(parent,Var(59)=0 ,1.5 ,1.0)

[State 31000, V-ISM]
type = Explod
trigger1 = time > 10
anim = 31002
postype = left
pos = ifelse(root,Var(45)=1, 80,240) ,180
facing = 1
bindtime = -1
removetime = 1
sprpriority = 14
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = ifelse(parent,Var(59)=2 ,1.5 ,1.0),ifelse(parent,Var(59)=2 ,1.5 ,1.0)

[State 31000, V-ISM Mask]
type = Explod
trigger1 = time > 10 && (parent,Var(59) = 2)
anim = 31012
postype = left
pos = ifelse(root,Var(45)=1, 80,240) ,180
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = ifelse(parent,Var(59)=2 ,1.5 ,1.0),ifelse(parent,Var(59)=2 ,1.5 ,1.0)



[State 31000, PlaySnd]
type = PlaySnd
trigger1 = parent,command = "up"
trigger1 = parent,Var(59) != 1
trigger2 = parent,command = "down"
trigger2 = parent,Var(59) != 2
value = 310,0
channel = 3

[State 31000, IsmVarSet]
type = ParentVarSet
trigger1 = parent,command = "up"
trigger1 = parent,Var(59) = 0
v = 59
value = 1

[State 31000, IsmVarSet]
type = ParentVarSet
trigger1 = parent,command = "up"
trigger1 = parent,Var(59) = 2
v = 59
value = 0

[State 31000, IsmVarSet]
type = ParentVarSet
trigger1 = parent,command = "down"
trigger1 = parent,Var(59) = 0
v = 59
value = 2

[State 31000, IsmVarSet]
type = ParentVarSet
trigger1 = parent,command = "down"
trigger1 = parent,Var(59) = 1
v = 59
value = 0

[State 31000, BASESelectEND]
type = ParentVarSet
triggerall = time > 10
trigger1 = (parent,command = "a") || (parent,command = "b") || (parent,command = "c")
trigger2 = (parent,command = "x") || (parent,command = "y") || (parent,command = "z")
v = 45
value = 2

[State 31000, PlaySnd]
type = PlaySnd
trigger1 = parent,Var(45) != 1
value = 310,1
channel = 3

[State 31000, BASESelectEND]
type = RemoveExplod
trigger1 = parent,Var(45) != 1
id = 30011

[State 31000, BASESelectEND]
type = DestroySelf
trigger1 = parent,Var(45) != 1


;---------------------------------------------------------------------------
;ISM-PLUS Yes/No
;---------------------------------------------------------------------------
[Statedef 31020]
type    = S
movetype= I
physics = N
juggle  = 0
ctrl = 0
anim = 4001

[State 31020, YesNoVar]
type = VarSet
trigger1 = time = 0
v = 0
value = 1

[State 31020, X-ISM]
type = Explod
trigger1 = parent,Var(59) = 1
anim = 31000
postype = left
pos = ifelse(root,Var(45)=1, 38,198) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 14
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = 1.0,0.5

[State 31020, X-ISM Mask]
type = Explod
trigger1 = parent,Var(59) = 1
anim = 31010
postype = left
pos = ifelse(root,Var(45)=1, 38,198) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = 1.0,0.5


[State 31020, Z-ISM]
type = Explod
trigger1 = parent,Var(59) = 0
anim = 31001
postype = left
pos = ifelse(root,Var(45)=1, 38,198) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 14
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = 1.0,0.5

[State 31020, Z-ISM Mask]
type = Explod
trigger1 = parent,Var(59) = 0
anim = 31011
postype = left
pos = ifelse(root,Var(45)=1, 38,198) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = 1.0,0.5

[State 31020, V-ISM]
type = Explod
trigger1 = parent,Var(59) = 2
anim = 31002
postype = left
pos = ifelse(root,Var(45)=1, 38,198) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 14
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = 1.0,0.5

[State 31020, V-ISM Mask]
type = Explod
trigger1 = parent,Var(59) = 2
anim = 31012
postype = left
pos = ifelse(root,Var(45)=1, 38,198) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = 1.0,0.5

[State 31020, ISMPLUS]
type = Explod
trigger1 = 1
anim = 30003
postype = left
pos = ifelse(root,Var(45) = 1,80,240),100
facing = 1
bindtime = -1
removetime = 2
sprpriority = 12
ontop = 1
shadow = 0
pausemovetime = 2

[State 31020, YesNo]
type = Explod
trigger1 = 1
anim = 30004
postype = left
pos = ifelse(root,Var(45) = 1,80,240),120
facing = 1
bindtime = -1
removetime = 2
sprpriority = 12
shadow = 0
pausemovetime = 2


[State 31020, Point]
type = Explod
trigger1 = NumExplod(30005) = 0
anim = 30005
id = 30005
postype = left
pos = ifelse(root,Var(45) = 1,80,240) + ifelse(Var(0)=0,-13,17),120
facing = 1
bindtime = -1
removetime = 2
sprpriority = 13
ontop = 1
shadow = 0
pausemovetime = 2

[State 31020, YesNoVar]
type = VarSet
trigger1 = (root,Var(45) = 1) && (parent,command = "back")
trigger2 = (root,Var(45) =-1) && (parent,command = "forward")
v = 0
value = 0

[State 31020, YesNoVar]
type = VarSet
trigger1 = (root,Var(45) = 1) && (parent,command = "forward")
trigger2 = (root,Var(45) =-1) && (parent,command = "back")
v = 0
value = 1

[State 31000, YesNoSelectEND]
type = ParentVarSet
triggerall = time > 10
trigger1 = (parent,command = "a") || (parent,command = "b") || (parent,command = "c")
trigger2 = (parent,command = "x") || (parent,command = "y") || (parent,command = "z")
v = 45
value = ifelse(Var(0) = 0,3,4)

[State 30200, PlaySnd]
type = PlaySnd
trigger1 = Var(0) != Var(10)
trigger1 = time > 1
value = 310,0
channel = 3

[State 30200, VarSet]
type = VarSet
trigger1 = 1
v = 10
value = Var(0)

[State 30200, VarSet]
type = ParentVarSet
trigger1 = 1
v = 49
value = 1500

[State 31000, PlaySnd]
type = PlaySnd
trigger1 = parent,Var(45) != 2
value = 310,1
channel = 3

[State 31000, YesNoSelectEND]
type = DestroySelf
trigger1 = parent,Var(45) != 2





;---------------------------------------------------------------------------
;ISM-PLUS Decide
;---------------------------------------------------------------------------
[Statedef 31040]
type    = S
movetype= I
physics = N
juggle  = 0
ctrl = 0
anim = 4001

;init
[State 30200, VarSet]
type = ParentVarSet
trigger1 = Time = 0
trigger1 = parent,NumHelper(31130) = 0
v = 52
value = 0
[State 30200, VarSet]
type = ParentVarSet
trigger1 = Time = 0
trigger1 = parent,NumHelper(31130) = 0
v = 53
value = 0
[State 30200, VarSet]
type = ParentVarSet
trigger1 = Time = 0
trigger1 = parent,NumHelper(31130) = 0
v = 54
value = 0
[State 30200, VarSet]
type = ParentVarSet
trigger1 = Time = 0
trigger1 = parent,NumHelper(31130) = 0
v = 55
value = 0
[State 30200, VarSet]
type = ParentVarSet
trigger1 = Time = 0
trigger1 = parent,NumHelper(31130) = 0
v = 56
value = 0

[State 30200, VarSet]
type = ParentVarSet
trigger1 = time = 0
trigger1 = parent,NumHelper(31130) = 0
v = 57
value = ifelse(parent,Var(59) = 1,1,0)

[State 30200, VarSet]
type = ParentVarSet
trigger1 = Time = 0
trigger1 = parent,NumHelper(31130) = 0
v = 58
value = ifelse(parent,Var(59) = 2,1,0)

[State 31040, VarSet]
type = parentVarSet
trigger1 = Time = 0
v = 46
value = ifelse(parent,Var(59) = 0,3,4)

[State 30200, VarSet]
type = VarSet
trigger1 = Time = 0
trigger1 = parent,NumHelper(31130) = 1
v = 0
value = 7

[State 30200, VarSet]
type = VarSet
trigger1 = Time = 0
trigger1 = parent,NumHelper(31130) = 1
v = 1
value = 1

[State 30200, VarSet]
type = parentVarSet
trigger1 = Time = 0
trigger1 = parent,NumHelper(31130) = 0
v = 47
value = 0










[State 31040, X-ISM]
type = Explod
trigger1 = parent,Var(59) = 1
anim = 31000
postype = left
pos = ifelse(root,Var(45)=1, 38,198) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 14
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = 1.0,0.5

[State 31040, X-ISM Mask]
type = Explod
trigger1 = parent,Var(59) = 1
anim = 31010
postype = left
pos = ifelse(root,Var(45)=1, 38,198) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = 1.0,0.5


[State 31040, Z-ISM]
type = Explod
trigger1 = parent,Var(59) = 0
anim = 31001
postype = left
pos = ifelse(root,Var(45)=1, 38,198) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 14
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = 1.0,0.5

[State 31040, Z-ISM Mask]
type = Explod
trigger1 = parent,Var(59) = 0
anim = 31011
postype = left
pos = ifelse(root,Var(45)=1, 38,198) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = 1.0,0.5

[State 31040, V-ISM]
type = Explod
trigger1 = parent,Var(59) = 2
anim = 31002
postype = left
pos = ifelse(root,Var(45)=1, 38,198) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 14
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = 1.0,0.5

[State 31040, V-ISM Mask]
type = Explod
trigger1 = parent,Var(59) = 2
anim = 31012
postype = left
pos = ifelse(root,Var(45)=1, 38,198) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = 1.0,0.5

[State 31040, ISMPLUS GaugeMAX]
type = parentVarSet
trigger1 = time = 0
v = 46
value = ifelse(parent,Var(59) = 0,3,4)

[State 31040, ISMPLUS GaugeInit]
type = parentVarSet
trigger1 = time = 0
v = 47
value = 0




[State 31040, ISMPLUS Gauge]
type = Explod
trigger1 = 1
anim = 31040
postype = left
pos = ifelse(root,Var(45)=1,119,279) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 13
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1

[State 31040, ISMPLUS Blockfill]
type = Explod
trigger1 = parent,Var(59) = 0
anim = 31042
postype = left
pos = ifelse(root,Var(45)=1,119,279) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1


[State 31040, ISMPLUS Block]
type = Explod
trigger1 = parent,Var(47) >= 1
anim = 31041
postype = left
pos = ifelse(root,Var(45)=1,89,249) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1

[State 31040, ISMPLUS Block]
type = Explod
trigger1 = parent,Var(47) >= 2
anim = 31041
postype = left
pos = ifelse(root,Var(45)=1,104,264) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1

[State 31040, ISMPLUS Block]
type = Explod
trigger1 = parent,Var(47) >= 3
anim = 31041
postype = left
pos = ifelse(root,Var(45)=1,119,279) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1

[State 31040, ISMPLUS Block]
type = Explod
trigger1 = parent,Var(47) = 4
anim = 31041
postype = left
pos = ifelse(root,Var(45)=1,134,294) ,40
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1



[State 31040, ISMPLUS TABLE]
type = Explod
trigger1 = 1
anim = 31043
postype = left
pos = ifelse(root,Var(45)=1,2,162) ,68
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1


[State 31040, ISMPLUS YesNo]
type = Explod
trigger1 = 1
anim = 30004
postype = left
pos = ifelse(root,Var(45)=1,129,289) ,71
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1

[State 31040, PointStepAndRun]
type = Explod
trigger1 = time % 2 = 1
anim = 30005
postype = left
pos = ifelse(root,Var(45) = 1,129,289) + ifelse((parent,Var(56))=1,-13,17),71
facing = 1
bindtime = -1
removetime = 2
sprpriority = 13
ontop = 1
shadow = 0
pausemovetime = 2

[State 31040, ISMPLUS YesNo]
type = Explod
trigger1 = 1
anim = 30004
postype = left
pos = ifelse(root,Var(45)=1,129,289) ,81
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1

[State 31040, ZCPlus]
type = Explod
trigger1 = time % 2 = 1
anim = 30005
postype = left
pos = ifelse(root,Var(45) = 1,129,289) + ifelse((parent,Var(55))=1,-13,17),81
facing = 1
bindtime = -1
removetime = 2
sprpriority = 13
ontop = 1
shadow = 0
pausemovetime = 2

[State 31040, ISMPLUS YesNo]
type = Explod
trigger1 = 1
anim = 30004
postype = left
pos = ifelse(root,Var(45)=1,129,289) ,91
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1

[State 31040, AirGuard]
type = Explod
trigger1 = time % 2 = 1
anim = 30005
postype = left
pos = ifelse(root,Var(45) = 1,129,289) + ifelse((parent,Var(57))=0,-13,17),91
facing = 1
bindtime = -1
removetime = 2
sprpriority = 13
ontop = 1
shadow = 0
pausemovetime = 2

[State 31040, ISMPLUS YesNo]
type = Explod
trigger1 = 1
anim = 30004
postype = left
pos = ifelse(root,Var(45)=1,129,289) ,101
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1

[State 31040, Rolling]
type = Explod
trigger1 = time % 2 = 1
anim = 30005
postype = left
pos = ifelse(root,Var(45) = 1,129,289) + ifelse((parent,Var(53))=1,-13,17),101
facing = 1
bindtime = -1
removetime = 2
sprpriority = 13
ontop = 1
shadow = 0
pausemovetime = 2

[State 31040, ISMPLUS YesNo]
type = Explod
trigger1 = 1
anim = 30004
postype = left
pos = ifelse(root,Var(45)=1,129,289) ,111
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1

[State 31040, Dodge]
type = Explod
trigger1 = time % 2 = 1
anim = 30005
postype = left
pos = ifelse(root,Var(45) = 1,129,289) + ifelse((parent,Var(52))=1,-13,17),111
facing = 1
bindtime = -1
removetime = 2
sprpriority = 13
ontop = 1
shadow = 0
pausemovetime = 2

[State 31040, ISMPLUS YesNo]
type = Explod
trigger1 = 1
anim = 30004
postype = left
pos = ifelse(root,Var(45)=1,129,289) ,121
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1

[State 31040, OriCom]
type = Explod
trigger1 = time % 2 = 1
anim = 30005
postype = left
pos = ifelse(root,Var(45) = 1,129,289) + ifelse((parent,Var(58))=1,-13,17),121
facing = 1
bindtime = -1
removetime = 2
sprpriority = 13
ontop = 1
shadow = 0
pausemovetime = 2

[State 31040, ISMPLUS YesNo]
type = Explod
trigger1 = 1
anim = 30004
postype = left
pos = ifelse(root,Var(45)=1,129,289) ,131
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1

[State 31040, GaugeRecover]
type = Explod
trigger1 = time % 2 = 1
anim = 30005
postype = left
pos = ifelse(root,Var(45) = 1,129,289) + ifelse((parent,Var(54))=1,-13,17),131
facing = 1
bindtime = -1
removetime = 2
sprpriority = 13
ontop = 1
shadow = 0
pausemovetime = 2


[State 31040, ISMPLUS OK Random]
type = Explod
trigger1 = 1
anim = 31045
postype = left
pos = ifelse(root,Var(45)=1,80,240) ,160
facing = 1
bindtime = -1
removetime = 1
sprpriority = 14
shadow = 0
pausemovetime = 1
ownpal = 1

[State 31040, Ok Random]
type = Explod
trigger1 = Var(0) = 7
trigger1 = time % 2 = 0
anim = 31044
postype = left
pos = ifelse(root,Var(45)=1,ifelse(Var(1)=0,30,73),ifelse(Var(1)=0,190,233)) ,156
facing = 1
bindtime = -1
removetime = 1
sprpriority = 13
shadow = 0
pausemovetime = 1
ownpal = 1
scale = ifelse(Var(1) = 0,34,68),9

[State 31040, Ok Random]
type = Explod
trigger1 = Var(0) = 7
anim = 30005
postype = left
pos = ifelse(root,Var(45)=1,ifelse(Var(1)=0,47,108),ifelse(Var(1)=0,207,268)) ,160
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
shadow = 0
pausemovetime = 1
ownpal = 1
ontop = 1
scale = ifelse(Var(1) = 0,1.44,2.6),1


[State 31040, SelectBar]
type = Explod
trigger1 = time % 3 != 1
trigger1 = Var(0) < 7
anim = 31044
postype = left
pos = ifelse(root,Var(45)=1,2,162) ,76+((Var(0))*10)
facing = 1
bindtime = -1
removetime = 1
sprpriority = 15
ontop = 1
shadow = 0
pausemovetime = 1
ownpal = 1
scale = 158,1

[State 31040, SelectBarMove]
type = VarAdd
trigger1 = parent,command = "up"
trigger1 = Var(0) != 0
v = 0
value = -1

[State 31040, SelectBarMove]
type = VarAdd
trigger1 = parent,command = "down"
trigger1 = Var(0) != 7
v = 0
value = 1

[State 31040, To Yes Run]
type = parentVarSet
triggerall = parent,Var(46) - parent,Var(47) >= 1
triggerall = (parent,Var(56) = 0) && Var(0) = 0
trigger1 = (root,Var(45) = 1) && (parent,command = "back")
trigger2 = (root,Var(45) =-1) && (parent,command = "forward")
v = 56
value = 1

[State 31040, To No]
type = parentVarSet
triggerall = (parent,Var(56) = 1) && Var(0) = 0
trigger1 = (root,Var(45) = 1) && (parent,command = "forward")
trigger2 = (root,Var(45) =-1) && (parent,command = "back")
v = 56
value = 0


[State 31040, To Yes ZcPlus]
type = parentVarSet
triggerall = parent,Var(46) - parent,Var(47) >= 1
triggerall = (parent,Var(55) = 0) && Var(0) = 1
trigger1 = (root,Var(45) = 1) && (parent,command = "back")
trigger2 = (root,Var(45) =-1) && (parent,command = "forward")
v = 55
value = 1

[State 31040, To No]
type = parentVarSet
triggerall = (parent,Var(55) = 1) && Var(0) = 1
trigger1 = (root,Var(45) = 1) && (parent,command = "forward")
trigger2 = (root,Var(45) =-1) && (parent,command = "back")
v = 55
value = 0


[State 31040, To Yes AirGuard]
type = parentVarSet
triggerall = parent,Var(46) - parent,Var(47) >= 1
triggerall = (parent,Var(57) = 1) && Var(0) = 2
trigger1 = (root,Var(45) = 1) && (parent,command = "back")
trigger2 = (root,Var(45) =-1) && (parent,command = "forward")
v = 57
value = 0

[State 31040, To No]
type = parentVarSet
triggerall = (parent,Var(57) = 0) && Var(0) = 2
triggerall = parent,Var(59) = 1
trigger1 = (root,Var(45) = 1) && (parent,command = "forward")
trigger2 = (root,Var(45) =-1) && (parent,command = "back")
v = 57
value = 1


[State 31040, To No Dodge from Rolling]
type = parentVarSet
triggerall = parent,Var(46) - parent,Var(47) >= 1
triggerall = (parent,Var(53) = 0) && Var(0) = 3
trigger1 = (root,Var(45) = 1) && (parent,command = "back")
trigger2 = (root,Var(45) =-1) && (parent,command = "forward")
v = 52
value = 0

[State 31040, To Yes Rolling]
type = parentVarSet
triggerall = parent,Var(46) - parent,Var(47) >= 1
triggerall = (parent,Var(53) = 0) && Var(0) = 3
trigger1 = (root,Var(45) = 1) && (parent,command = "back")
trigger2 = (root,Var(45) =-1) && (parent,command = "forward")
v = 53
value = 1

[State 31040, To No Rolling]
type = parentVarSet
triggerall = (parent,Var(53) = 1) && Var(0) = 3
trigger1 = (root,Var(45) = 1) && (parent,command = "forward")
trigger2 = (root,Var(45) =-1) && (parent,command = "back")
v = 53
value = 0

[State 31040, To No Rolling from Dodge]
type = parentVarSet
triggerall = parent,Var(46) - parent,Var(47) >= 2
triggerall = (parent,Var(52) = 0) && Var(0) = 4
trigger1 = (root,Var(45) = 1) && (parent,command = "back")
trigger2 = (root,Var(45) =-1) && (parent,command = "forward")
v = 53
value = 0

[State 31040, To Yes Dodge]
type = parentVarSet
triggerall = parent,Var(46) - parent,Var(47) >= 2
triggerall = (parent,Var(52) = 0) && Var(0) = 4
trigger1 = (root,Var(45) = 1) && (parent,command = "back")
trigger2 = (root,Var(45) =-1) && (parent,command = "forward")
v = 52
value = 1

[State 31040, To No Dodge]
type = parentVarSet
triggerall = (parent,Var(52) = 1) && Var(0) = 4
trigger1 = (root,Var(45) = 1) && (parent,command = "forward")
trigger2 = (root,Var(45) =-1) && (parent,command = "back")
v = 52
value = 0


[State 31040, To Yes OriCom]
type = parentVarSet
triggerall = parent,Var(46) - parent,Var(47) >= 3
triggerall = (parent,Var(58) = 0) && Var(0) = 5
trigger1 = (root,Var(45) = 1) && (parent,command = "back")
trigger2 = (root,Var(45) =-1) && (parent,command = "forward")
v = 58
value = 1

[State 31040, To No]
type = parentVarSet
triggerall = (parent,Var(58) = 1) && Var(0) = 5
triggerall = parent,Var(59) != 2
trigger1 = (root,Var(45) = 1) && (parent,command = "forward")
trigger2 = (root,Var(45) =-1) && (parent,command = "back")
v = 58
value = 0


[State 31040, To Yes GaugeR]
type = parentVarSet
triggerall = parent,Var(46) - parent,Var(47) >= 3
triggerall = (parent,Var(54) = 0) && Var(0) = 6
trigger1 = (root,Var(45) = 1) && (parent,command = "back")
trigger2 = (root,Var(45) =-1) && (parent,command = "forward")
v = 54
value = 1

[State 31040, To No]
type = parentVarSet
triggerall = (parent,Var(54) = 1) && Var(0) = 6
trigger1 = (root,Var(45) = 1) && (parent,command = "forward")
trigger2 = (root,Var(45) =-1) && (parent,command = "back")
v = 54
value = 0



[State 31040, Calculate47]
type = parentVarSet
trigger1 = 1
v = 47
value =parent,Var(53)+parent,Var(55)+parent,Var(56)+(parent,Var(52) * 2)+(parent,Var(54)*3)+ifelse((parent,Var(59)=1) && (parent,Var(57)=0),1,0)+ifelse((parent,Var(59)!=2) && (parent,Var(58)=1),3,0)

[State 31040, Calculate49]
type = parentVarSet
trigger1 = parent,Var(46) - parent,Var(47) = 0
v = 49
value = 0
[State 31040, Calculate49]
type = parentVarSet
trigger1 = parent,Var(46) - parent,Var(47) = 1
v = 49
value = ifelse(parent,Var(59)=0,500,333)
[State 31040, Calculate49]
type = parentVarSet
trigger1 = parent,Var(46) - parent,Var(47) = 2
v = 49
value = ifelse(parent,Var(59)=0,1000,666)
[State 31040, Calculate49]
type = parentVarSet
trigger1 = parent,Var(46) - parent,Var(47) = 3
v = 49
value = ifelse(parent,Var(59)=0,1500,1000)
[State 31040, Calculate49]
type = parentVarSet
trigger1 = parent,Var(46) - parent,Var(47) = 4
v = 49
value = 1500


[State 31040, To OK]
type = VarSet
triggerall = Var(0) = 7
trigger1 = (root,Var(45) = 1) && (parent,command = "back")
trigger2 = (root,Var(45) =-1) && (parent,command = "forward")
v = 1
value = 0

[State 31040, To Random]
type = VarSet
triggerall = Var(0) = 7
trigger1 = (root,Var(45) = 1) && (parent,command = "forward")
trigger2 = (root,Var(45) =-1) && (parent,command = "back")
v = 1
value = 1

[State 30200, PlaySnd]
type = PlaySnd
trigger1 = Var(0) != Var(10)
trigger2 = Var(1) != Var(11)
trigger3 = (parent,Var(47)) != Var(12)
value = 310,0
channel = 3

[State 30200, VarSet]
type = VarSet
trigger1 = 1
v = 10
value = Var(0)
[State 30200, VarSet]
type = VarSet
trigger1 = 1
v = 11
value = Var(1)
[State 30200, VarSet]
type = VarSet
trigger1 = 1
v = 12
value = parent,Var(47)


[State 31040, SelectEND]
type = ParentVarSet
triggerall = time > 10
triggerall = Var(0) = 7
trigger1 = (parent,command = "a") || (parent,command = "b") || (parent,command = "c")
trigger2 = (parent,command = "x") || (parent,command = "y") || (parent,command = "z")
v = 45
value = ifelse(Var(1) = 0, 4, 13)

[State 31000, PlaySnd]
type = PlaySnd
trigger1 = parent,Var(45) != 3
trigger1 = parent,Var(45) != 13
value = 310,1
channel = 3

[State 31040, PLUSSelectEND]
type = DestroySelf
trigger1 = parent,Var(45) != 3






;---------------------------------------------------------------------------
;ISM-PLUS Randomizer
;---------------------------------------------------------------------------
[Statedef 31100]
type    = S
movetype= I
physics = N
juggle  = 0
ctrl = 0
anim = 4001

[State 31100, Randomize]
type = VarRandom
trigger1 = time = 0
v = 0
range = 0,ifelse((parent,Var(59)) = 0, 5, ifelse((parent,Var(59)) = 1, 13,7))

[State 31100, init]
type = parentVarSet
trigger1 = time = 0
v = 52
value = 0
[State 31100, init]
type = parentVarSet
trigger1 = time = 0
v = 53
value = 0
[State 31100, init]
type = parentVarSet
trigger1 = time = 0
v = 54
value = 0
[State 31100, init]
type = parentVarSet
trigger1 = time = 0
v = 55
value = 0
[State 31100, init]
type = parentVarSet
trigger1 = time = 0
v = 56
value = 0
[State 31100, init]
type = parentVarSet
trigger1 = time = 0
v = 57
value = 1
[State 31100, init]
type = parentVarSet
trigger1 = time = 0
v = 58
value = 0




[State 31100, v54]
type = parentVarSet
triggerall = time = 1
trigger1 = parent,Var(59) = 0
trigger1 = Var(0) = 0
trigger2 = parent,Var(59) != 0
trigger2 = Var(0) = [0 ,3]
v = 54
value = 1

[State 31100, v58]
type = parentVarSet
triggerall = time = 1
trigger1 = parent,Var(59) = 0
trigger1 = Var(0) = 1
trigger2 = parent,Var(59) = 1
trigger2 = Var(0) = [4 ,7]
trigger3 = parent,Var(59) = 2
v = 58
value = 1

[State 31100, v52]
type = parentVarSet
triggerall = time = 1
trigger1 = parent,Var(59) = 0
trigger1 = Var(0) = [2,3]
trigger2 = parent,Var(59) = 1
trigger2 = Var(0) = [8 ,10]
trigger3 = parent,Var(59) = 2
trigger3 = Var(0) = 4
v = 52
value = 1

[State 31100, v57]
type = parentVarSet
triggerall = time = 1
trigger1 = parent,Var(59) != 1
trigger2 = parent,Var(59) = 1
trigger2 = (Var(0) = 2) || (Var(0) = 6) || (Var(0) = [9, 11])
v = 57
value = 0

[State 31100, v56]
type = parentVarSet
triggerall = time = 1
trigger1 = parent,Var(59) = 0
trigger1 = Var(0) = [3,4]
trigger2 = parent,Var(59) = 1
trigger2 = (Var(0) = 1) || (Var(0) = 5) || (Var(0) = 8) || (Var(0) = [10,11])
trigger3 = parent,Var(59) = 2
trigger3 = (Var(0) = 1) || (Var(0) = [4,5])
v = 56
value = 1

[State 31100, v55]
type = parentVarSet
triggerall = time = 1
trigger1 = parent,Var(59) = 0
trigger1 = (Var(0) = 2) || (Var(0) = 4)
trigger2 = parent,Var(59) = 1
trigger2 = (Var(0) = 0) || (Var(0) = 4) || (Var(0) = [8,9]) || (Var(0) = 11)
trigger3 = parent,Var(59) = 2
trigger3 = (Var(0) = 0) || (Var(0) = [4,5])
v = 55
value = 1

[State 31100, v53]
type = parentVarSet
triggerall = time = 1
trigger1 = parent,Var(59) = 0
trigger1 = Var(0) = 4
trigger2 = parent,Var(59) = 1
trigger2 = (Var(0) = 3) || (Var(0) = 7) || (Var(0) = 11)
trigger3 = parent,Var(59) = 2
trigger3 = (Var(0) = 3) || (Var(0) = 5)
v = 53
value = 1


[State 31100, v53]
type = parentVarSet
trigger1 = time = 4
v = 45
value = ifelse((parent,Var(45)) = 13,3,4)

[State 31040, RandomizerEnd]
type = DestroySelf
;trigger1 = parent,Var(45) != 10
;trigger2 = parent,Var(45) != 13
trigger1 = time = 10




[State 31040, Calculate47]
type = parentVarSet
trigger1 = 1
v = 46
value =ifelse(parent,Var(59) = 0,3,4)


[State 31040, Calculate47]
type = parentVarSet
trigger1 = 1
v = 47
value =parent,Var(53)+parent,Var(55)+parent,Var(56)+(parent,Var(52) * 2)+(parent,Var(54)*3)+ifelse((parent,Var(59)=1) && (parent,Var(57)=0),1,0)+ifelse((parent,Var(59)!=2) && (parent,Var(58)=1),3,0)

[State 31040, Calculate49]
type = parentVarSet
trigger1 = parent,Var(46) - parent,Var(47) = 0
v = 49
value = 0
[State 31040, Calculate49]
type = parentVarSet
trigger1 = parent,Var(46) - parent,Var(47) = 1
v = 49
value = ifelse(parent,Var(59)=0,500,333)
[State 31040, Calculate49]
type = parentVarSet
trigger1 = parent,Var(46) - parent,Var(47) = 2
v = 49
value = ifelse(parent,Var(59)=0,1000,666)
[State 31040, Calculate49]
type = parentVarSet
trigger1 = parent,Var(46) - parent,Var(47) = 3
v = 49
value = ifelse(parent,Var(59)=0,1500,1000)
[State 31040, Calculate49]
type = parentVarSet
trigger1 = parent,Var(46) - parent,Var(47) = 4
v = 49
value = 1500

