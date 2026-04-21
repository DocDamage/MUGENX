;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

[State -2,Rolling Ready]
type = VarSet
triggerall = Var(5) != 2
triggerall = stateno != [5070,5071]
trigger1 = (movetype = H) && (Statetype = A)
trigger2 = StateNo = 155
V = 5
value = 1

[State -2,Rolling NA]
type = VarSet
trigger1 = Statetype != A
trigger1 = Var(5) = 1
trigger2 = movetype = A
trigger3 = (stateno = 5040) || (stateno = [5200,5210])
trigger4 = stateno = [3120,3149]
V = 5
value = 0

;---------------------------------------
;Ｘ－ＩＳＭ用空中ガード可不可処理
;---------------------------------------
[State -2,Cannot AirGuard]
type = AssertSpecial
trigger1 = Var(59) = 1
trigger1 = Var(57) = 1
flag = NoAirGuard

;---------------------------------------
;Ｘ－ＩＳＭ用移動起き上がり不可処理
;---------------------------------------
[State -2,Cannot RollingGetup]
type = VarSet
trigger1 = Var(59) = 1
trigger1 = Var(53) = 0	;緊急回避
trigger1 = Var(52) = 0	;避け
v = 5
value = 0

;---------------------------------------
;ゲージリカバー処理
;---------------------------------------
[State -2,Gauge Recover]
type = PowerAdd
triggerall = Var(54) = 1
triggerall = roundstate = 2
triggerall = Var(7) = 0
trigger1 = time % 3 != 1
;trigger1 = time % 4 != 1
value = 1

;---------------------------------------
;オリコン用
;---------------------------------------
;After Image
;---------------------------------------
[State -2,AfterImageTime]
type = AfterImageTime
trigger1 = IsHelper = 0
trigger1 = Var(7) != 0
time = 2

[State -2,AfterImageTime]
type = AfterImage
triggerall = IsHelper = 0
trigger1 = movetype = H
trigger2 = (Var(7) != 0) && (Power <= 0)
trigger3 = win
time = 0
length = 1

;---------------------------------------
;OricomEnd
;---------------------------------------
[State -2,OricomEnd]
type = PowerAdd
triggerall = IsHelper = 0
trigger1 = Var(7) != 0
trigger1 = movetype = H
value = -1500

[State -2,OricomFinish]
type = VarSet
triggerall = IsHelper = 0
trigger1 = Var(7) != 0
trigger1 = Win
v = 50
value = 1

[State -2,OricomEnd]
type = VarSet
triggerall = IsHelper = 0
trigger1 = movetype = H
trigger2 = Power <= 0
trigger3 = win
v = 7
value = 0


[State -2,OricomFinish]
type = PowerSet
triggerall = IsHelper = 0
trigger1 = Var(50) != 0
trigger1 = RoundState = 1
trigger1 = Roundno != 1
value = 0

[State -2,OricomFinish]
type = VarSet
triggerall = IsHelper = 0
trigger1 = Var(50) != 0
trigger1 = RoundState = 1
trigger2 = Roundno = 1
trigger2 = RoundState = 1
v = 50
value = 0



;---------------------------------------
;カウンターヒット用
;---------------------------------------
;Iff
;---------------------------------------
[State -2,CounterHitReady]
type = VarSet
triggerall = IsHelper = 0
triggerall = Var(7) = 0
trigger1 = enemy,movetype = A
v = 20
value = 1
ignorehitpause = 1

[State -2,CounterHitSccess]
type = AllPalFX
triggerall = IsHelper = 0
triggerall = Var(7) = 0
triggerall = Var(20) = 1
triggerall = Stateno != [780,899]
triggerall = Stateno != [1100,1399]
triggerall = Stateno != [3070,3199]
triggerall = Stateno != [3350,3599]
trigger1 = enemy,movetype = H
add = 96,96,96
mul = 220,220,220
color = 0
time = 1
ignorehitpause = 1

[State -2,CounterHitFigure]
type = RemoveExplod
triggerall = IsHelper = 0
triggerall = Var(7) = 0
triggerall = Var(20) = 1
triggerall = Stateno != [780,899]
triggerall = Stateno != [1100,1399]
triggerall = Stateno != [3070,3199]
triggerall = Stateno != [3350,3599]
trigger1 = enemy,movetype = H
id = 7600
ignorehitpause = 1

[State -2,CounterHitFigure]
type = Explod
triggerall = IsHelper = 0
triggerall = Var(7) = 0
triggerall = Var(20) = 1
triggerall = Stateno != [780,899]
triggerall = Stateno != [1100,1399]
triggerall = Stateno != [3070,3199]
triggerall = Stateno != [3350,3599]
trigger1 = enemy,movetype = H
trigger1 = NumExplod(7600) = 0
trigger1 = Var(45) = 1
anim = 7600
id = 7600
postype = Left
pos = 0, 74
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State -2,CounterHitFigure]
type = Explod
triggerall = IsHelper = 0
triggerall = Var(7) = 0
triggerall = Var(20) = 1
triggerall = Stateno != [780,899]
triggerall = Stateno != [1100,1399]
triggerall = Stateno != [3070,3199]
triggerall = Stateno != [3350,3599]
trigger1 = enemy,movetype = H
trigger1 = NumExplod(7600) = 0
trigger1 = Var(45) = -1
anim = 7610
id = 7600
postype = Right
pos = 0, 74
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State -2,CounterHitNA]
type = VarSet
triggerall = IsHelper = 0
triggerall = Var(7) = 0
trigger1 = enemy,movetype != A
v = 20
value = 0
ignorehitpause = 1

[State -2,IgnoreJuggle]
type = Assertspecial
triggerall = IsHelper = 0
triggerall = Var(7) = 0
trigger1 = enemy,movetype = A
flag = Nojugglecheck



;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

;This controller plays a sound everytime KFM lands from a jump, or
;from his back-dash.
[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 106 ;Run-back land
value = 40, 0


;---------------------------------------
; 被攻撃音声関連
;---------------------------------------
[State -3, GetHitVoice]
type = PlaySnd
trigger1 = Random < 333
trigger1 = alive && time = 1
trigger1 = stateno = 5001 || stateno = 5011
trigger1 = (anim % 10) != 0
value = 10,ifelse(gethitvar(animtype) < 2,0,1)

;---------------------------------------
;オリコン用
;---------------------------------------
;StateNo監視
;---------------------------------------
[State -3,OriCom-StateNo]
type = VarSet
trigger1 = IsHelper = 0
trigger1 = (StateNo != var(9)-(floor(Var(9)/1000000)*1000000)) && (Movetype = A)
V = 10
Value = StateNo + (AnimElemNo(0) * 1000000)

[State -3,OriCom-StateNo]
type = VarSet
trigger1 = IsHelper = 0
trigger1 = StateNo = var(9)-(floor(Var(9)/1000000)*1000000)
V = 10
Value = (AnimElemNo(0) * 1000000)
;Value = 0

[State -3,OriCom-StateNo]
type = VarSet
trigger1 = IsHelper = 0
trigger1 = Movetype != A
V = 10
Value = 99999 + (AnimElemNo(0) * 1000000)

;---------------------------------------
;StateNoQueue
;---------------------------------------
[State -3,Oricom-StateNoQueue]
type = VarSet
trigger1 = IsHelper = 0
trigger1 = (StateNo != var(9)-(floor(Var(9)/1000000)*1000000)) && (Movetype = A)
V = 9
Value = StateNo + (AnimElemNo(0) * 1000000)

[State -3,OriCom-StateNoQueue]
type = VarSet
trigger1 = IsHelper = 0
trigger1 = Movetype != A
V = 9
Value = 99999+ (AnimElemNo(0) * 1000000)

;---------------------------------------
;Position
;---------------------------------------
[State -3,PositionDecider]
type = VarSet
trigger1 = IsHelper = 0
trigger1 = NumHelper(4100) != 0
V = 8
Value = ceil(Helper(4100),ScreenPos X)
;Value = ceil(Helper(4100),Pos X)

[State -3,Oricom-PosX]
type = VarSet
trigger1 = IsHelper = 0
trigger1 = NumHelper(4100) != 0
V = 11
Value = ceil(Pos X - Helper(4100),Pos X)

[State -3,Oricom-PosY-Facing]
type = VarSet
trigger1 = IsHelper = 0
V = 12
Value = (ceil(Pos Y) - 10) * facing

;---------------------------------------
;Animation
;---------------------------------------
[State -3,Oricom-Anim]
type = VarSet
trigger1 = IsHelper = 0
fV = 10
Value = floor(Anim)

;---------------------------------------
;Cannot Guard
;---------------------------------------
[State -3,Cannot-Guard]
type = AssertSpecial
trigger1 = IsHelper = 0
trigger1 = Var(7) != 0
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

;---------------------------------------
;SprPriority
;---------------------------------------
[State -3,SprPriority]
type = SprPriority
trigger1 = IsHelper = 0
trigger1 = Var(7) != 0
value = 2

;---------------------------------------
;Gauge Decrease
;---------------------------------------
[State -3,Gauge]
type = VarAdd
trigger1 = IsHelper = 0
trigger1 = Var(7) != 0
trigger1 = Var(13) != 0
v = 13
value = -1

[State -3,Gauge]
type = PowerAdd
trigger1 = IsHelper = 0
trigger1 = Var(7) != 0
trigger1 = Var(13) = 0
value = -6

[State -3,Gauge]
type = PowerAdd
trigger1 = IsHelper = 0
trigger1 = Var(7) != 0
trigger1 = Var(13) = 0
trigger1 = gametime %3 = 0
value = -1

;;---------------------------------------
;;Advanced Turning
;;---------------------------------------
;[State -3,Turn]
;type = turn
;triggerall = IsHelper = 0
;triggerall = Var(7) != 0
;triggerall = facing = (enemy,facing)
;triggerall = time = 0
;trigger1 =(stateno = 1201) || (stateno = 1231) || (stateno = 1241) || (stateno = 1300) || (stateno = 1302) || (stateno = 1304)
;trigger2 =(stateno = 1001) || (stateno = 1011) || (stateno = 1021) || (stateno = 1051) || (stateno = 1061) || (stateno = 1071)
;trigger3 = (stateno = [780,782])
;trigger4 = (stateno = 301) || (stateno = 311)
;trigger5 = (stateno = 201) || (stateno = 211) || (stateno = 221) || (stateno = 231) || (stateno = 241) || (stateno = 251)
;trigger6 = (stateno = 401) || (stateno = 416) || (stateno = 421) || (stateno = 431) || (stateno = 441) || (stateno = 451)


;---------------------------------------
;基本ＩＳＭ差
;---------------------------------------
[State -3,DefenceMul]
type = DefenceMulSet
trigger1 = IsHelper = 0
value = ifelse(Var(59) != 1,1.0,1.1)






















;---------------------------------------
;コンボ補正関連
;---------------------------------------
;base 						...2
;enemy,life / enemy,const(data.life) < 0.33 	...6
;enemy,life / enemy,const(data.life) < 0.125 	...8
;life - enemy,life > 125	... 0
;life - enemy,life > 230	... 1
;life - enemy,life > 355	... 2
;life - enemy,life > 480	... 3
;life - enemy,life > 605	... 4
;life - enemy,life > 730	... 5
;life - enemy,life > 855	... 6
;life - enemy,life > 980	... 7
;life - enemy,life > 999	... 8
;
;if HitCount>0 & OcN/A		... HitCount-1
;Oc				... HitCount*2

;1.0 - N-2/32


;value = ifelse(Var(59) = 0,1.0,ifelse(Var(59) = 1,1.2,0.8))
;-((
;ifelse(enemy,life / enemy,const(data.life) < 0.125,8,
;ifelse(enemy,life / enemy,const(data.life) < 0.33,6,2))
;+
;ifelse(life - enemy,life > 999, 8,
;ifelse(life - enemy,life > 980, 7,
;ifelse(life - enemy,life > 855, 6,
;ifelse(life - enemy,life > 730, 5,
;ifelse(life - enemy,life > 605, 4,
;ifelse(life - enemy,life > 480, 3,
;ifelse(life - enemy,life > 355, 2,
;ifelse(life - enemy,life > 230, 1,
;ifelse(life - enemy,life > 125, 0)))))))))
;+
;ifelse(Var(7)!=0,HitCount*2,HitCount-2)-2)
;/32)

;
;---------------------------------------
[State -3,Combo-Var1]
type = VarSet
trigger1 = 1
v = 21
value = 2
[State -3,Combo-Var1]
type = VarSet
trigger1 = (enemy,const(data.life))-(enemy,life) > floor((enemy,const(data.life))*2/3)
v = 21
value = 6
[State -3,Combo-Var1]
type = VarSet
trigger1 = (enemy,const(data.life))-(enemy,life) > floor((enemy,const(data.life))*7/8)
v = 21
value = 8

;---------------------------------------
[State -3,Combo-Var2]
type = VarSet
trigger1 = IsHelper = 0
v = 22
value = 0
[State -3,Combo-Var2]
type = VarAdd
trigger1 = IsHelper = 0
trigger1 = (life - enemy,life > 230)
v = 22
value = 1
[State -3,Combo-Var2]
type = VarAdd
trigger1 = IsHelper = 0
trigger1 = (life - enemy,life > 355)
v = 22
value = 1
[State -3,Combo-Var2]
type = VarAdd
trigger1 = IsHelper = 0
trigger1 = (life - enemy,life > 480)
v = 22
value = 1
[State -3,Combo-Var2]
type = VarAdd
trigger1 = IsHelper = 0
trigger1 = (life - enemy,life > 605)
v = 22
value = 1
[State -3,Combo-Var2]
type = VarAdd
trigger1 = IsHelper = 0
trigger1 = (life - enemy,life > 730)
v = 22
value = 1
[State -3,Combo-Var2]
type = VarAdd
trigger1 = IsHelper = 0
trigger1 = (life - enemy,life > 855)
v = 22
value = 1
[State -3,Combo-Var2]
type = VarAdd
trigger1 = IsHelper = 0
trigger1 = (life - enemy,life > 980)
v = 22
value = 1
[State -3,Combo-Var2]
type = VarAdd
trigger1 = IsHelper = 0
trigger1 = (life - enemy,life > 999)
v = 22
value = 1

;---------------------------------------
[State -3,Combo-Var3]
type = VarSet
triggerall = IsHelper = 0
trigger1 = ctrl
trigger1 = Var(7) = 0
trigger2 = enemy,movetype != H
v = 23
value = 0

[State -3,Combo-Var4]
type = VarSet
trigger1 = IsHelper = 0
trigger1 = movehit
trigger1 = Var(24) = 0
v = 24
value = 1

[State -3,Combo-Var3]
type = VarAdd
trigger1 = IsHelper = 0
trigger1 = Var(24) = 1
v = 23
value = 1

[State -3,Combo-Var4]
type = VarSet
trigger1 = IsHelper = 0
trigger1 = movehit
v = 24
value = StateNo
[State -3,Combo-Var4]
type = VarSet
triggerall = IsHelper = 0
trigger1 = ctrl
trigger2 = StateNo != Var(24)
v = 24
value = 0

;---------------------------------------
[State -3,Combo-AttackMul]
type = AttackMulSet
triggerall = IsHelper = 0
trigger1 = Stateno = [780,899]
trigger2 = Stateno = [1100,1399]
trigger3 = Stateno = [3070,3099]
trigger4 = Stateno = [3400,3599]
trigger5 = ((Var(21)+Var(22)+ifelse(Var(7)!=0,Var(23)*2,Var(23)-2)-1)/32.0) <= 0
value = ifelse(Var(59) = 0,1.0,ifelse(Var(59) = 1,1.2,0.8))

[State -3,Combo-AttackMul]
type = AttackMulSet
triggerall = IsHelper = 0
triggerall = ((Var(21)+Var(22)+ifelse(Var(7)!=0,Var(23)*2,Var(23)-2)-1)/32.0) > 0
triggerall=(ifelse(Var(59)=0,1.0,ifelse(Var(59)=1,1.2,0.8))-((Var(21)+Var(22)+ifelse(Var(7)!=0,Var(23)*2,Var(23)-2)-1)/32.0)) > 0.001
trigger1 = Stateno != [780,899]
trigger1 = Stateno != [1100,1399]
trigger1 = Stateno != [3070,3099]
trigger1 = Stateno != [3400,3599]
value =ifelse(Var(59)=0,1.0,ifelse(Var(59)=1,1.2,0.8))-((Var(21)+Var(22)+ifelse(Var(7)!=0,Var(23)*2,Var(23)-2)-1)/32.0)

[State -3,Combo-AttackMul]
type = AttackMulSet
triggerall = IsHelper = 0
triggerall=(ifelse(Var(59)=0,1.0,ifelse(Var(59)=1,1.2,0.8))-((Var(21)+Var(22)+ifelse(Var(7)!=0,Var(23)*2,Var(23)-2)-1)/32.0)) <=0.001
trigger1 = Stateno != [780,899]
trigger1 = Stateno != [1100,1399]
trigger1 = Stateno != [3070,3099]
trigger1 = Stateno != [3400,3599]
value = 0.001

;---------------------------------------











;---------------------------------------
;スーパーコンボフィニッシュ用
;---------------------------------------
;判定用ヘルパー置き
;---------------------------------------
[State -3,SuperFinish]
type = Helper
triggerall = IsHelper = 0
triggerall = NumHelper(8000) = 0
trigger1 = Stateno = [3000,3576]
trigger2 = Var(7) != 0
id = 8000
name = "Hypercombo Decider"
pos = 160,0
postype = left
stateno = 8000
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

