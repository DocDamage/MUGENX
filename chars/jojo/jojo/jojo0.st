;============
;雑用処理関係
;============

;--------------------------
;しゃがみ攻撃終了（通常時）
;--------------------------
;しゃがみ攻撃終了後、下を押し続けると
;ちょっとしたフレームを追加する
[statedef 13]
anim = 13
type = C
ctrl = 0
velset = 0,0

[state 13,1]
type = changestate
trigger1 = command != "holddown"
value = 12
ctrl = 1

[state 13,2]
type = changestate
trigger1 = animtime = 0
value = 11
ctrl = 1

;----------------------
;小ジャンプのための処理
;----------------------
;state40は本来内部stateであり記入されることはないが
;ここではジャンプの種類を上を押す長さで認識するため
;追加してある
;vel30でダッシュか普通の移動かを認識する
[Statedef 40]
type    = S
physics = S
ctrl = 0
anim = 40

[State 40,1]
type = changeanim
trigger1 = time = 1
trigger1 = var(31) = 1
value = 20040

[State 40,1]
type = VarSet
trigger1 = Time = 0
v = 30
value = 0

[State 40,2]
type = VarSet
trigger1 = Time = [0,2]
trigger1 = command = "holdfwd"
v = 30
value = 2

[State 40,3]
type = VarSet
trigger1 = vel X > 3
trigger1 = Time = [0,2]
trigger1 = command = "holdfwd"
v = 30
value = 3

[State 40,4]
type = VarSet
trigger1 = Time = [0,2]
trigger1 = command = "holdback"
v = 30
value = -2

[State 40,5]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = command != "holdup"
value = 41

[State 40,5]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = var(31) = 1
value = 20041

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40,5]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;----------
;小ジャンプ
;----------
;先ほど与えられたvar(30)の値によって
;飛ぶ方向を認識し実行する
[Statedef 41]
type    = A
physics = A
velset = 0, -6.4
ctrl = 1
anim = 41

[State 41,4]
type = ChangeAnim
trigger1 = time = 0
trigger1 = var(31) = 1
value = 20041

[State 41,1]
type = VelSet
trigger1 = Time = 0
trigger1 = var(30) = 2
x = 3.5

[State 41,2]
type = VelSet
trigger1 = Time = 0
trigger1 = var(30) = 3
x = 5

[State 41,3]
type = VelSet
trigger1 = Time = 0
trigger1 = var(30) = -2
x = -3.5

[State 41,3]
type = changestate
trigger1 = var(31) = 1
trigger1 = var(28) = 2
trigger1 = command = "U"
trigger1 = time >= 8
value = 20042

[State 41,3]
type = varset
trigger1 = command = "holdup"
v = 28
value = 1

[State 41,3]
type = varset
trigger1 = command != "holdup"
v = 28
value = 2

[State 41,4]
type = ChangeAnim
trigger1 = Vel Y > 0
trigger1 = anim = 41
trigger1 = var(31) = 0
value = 44

[State 41,4]
type = ChangeAnim
trigger1 = Vel Y > 0
trigger1 = anim = 20041
trigger1 = var(31) = 1
value = 20045

;----------------------------
;ジャンプ（スタンドモード時）
;----------------------------
;このstateは本来のstate50,51と
;まったく同じ役割である
;つまり自前で作ったジャンプである
;上のと同じでvar(30)にて認識する
[Statedef 20041]
type    = A
physics = A
velset = 0, -9.6
ctrl = 1
anim = 20041

[State 41,1]
type = VelSet
trigger1 = Time = 0
trigger1 = var(30) = 2
x = 3

[State 41,2]
type = VelSet
trigger1 = Time = 0
trigger1 = var(30) = 3
x = 5

[State 41,3]
type = VelSet
trigger1 = Time = 0
trigger1 = var(30) = -2
x = -3

[State 41,3]
type = changestate
trigger1 = var(28) = 2
trigger1 = command = "U"
trigger1 = time >= 8
value = 20042

[State 41,3]
type = varset
trigger1 = command = "holdup"
v = 28
value = 1

[State 41,3]
type = varset
trigger1 = command != "holdup"
v = 28
value = 2

[State 41,4]
type = ChangeAnim
trigger1 = Vel Y > 0
trigger1 = anim = 20041
trigger1 = var(31) = 1
value = 20045

;----------------
;自前二段ジャンプ
;----------------
[Statedef 20042]
type    = A
physics = A
ctrl = 0
anim = 20040
velset = 0,0

[State 40,1]
type = VarSet
trigger1 = Time = 0
v = 30
value = 0

[State 40,2]
type = VarSet
trigger1 = Time = [0,2]
trigger1 = command = "holdfwd"
v = 30
value = 2

[State 40,4]
type = VarSet
trigger1 = Time = [0,2]
trigger1 = command = "holdback"
v = 30
value = -2

[State 40,5]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = command != "holdup"
value = 20043

[State 40,5]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = var(31) = 1
value = 20044

;--------------
;自前小ジャンプ
;--------------
[Statedef 20043]
type    = A
physics = A
velset = 0, -6.4
ctrl = 1
anim = 20041

[State 41,4]
type = ChangeAnim
trigger1 = time = 0
trigger1 = var(31) = 1
value = 20041

[State 41,1]
type = VelSet
trigger1 = Time = 0
trigger1 = var(30) = 2
x = 3.5

[State 41,2]
type = VelSet
trigger1 = Time = 0
trigger1 = var(30) = 3
x = 5

[State 41,3]
type = VelSet
trigger1 = Time = 0
trigger1 = var(30) = -2
x = -3.5

[State 41,4]
type = ChangeAnim
trigger1 = Vel Y > 0
trigger1 = anim = 20041
trigger1 = var(31) = 1
value = 20045

;------------
;自前ジャンプ
;------------
[Statedef 20044]
type    = A
physics = A
velset = 0, -9.6
ctrl = 1
anim = 20041

[State 41,1]
type = VelSet
trigger1 = Time = 0
trigger1 = var(30) = 2
x = 3

[State 41,2]
type = VelSet
trigger1 = Time = 0
trigger1 = var(30) = 3
x = 5

[State 41,3]
type = VelSet
trigger1 = Time = 0
trigger1 = var(30) = -2
x = -3

[State 41,4]
type = ChangeAnim
trigger1 = Vel Y > 0
trigger1 = anim = 20041
trigger1 = var(31) = 1
value = 20045


;------------
;勝利
;------------
;[Statedef 180]
anim = 180

;文字の表示（１Ｐor３Ｐ）
[State 180,0]
type = explod
trigger1 = time = 0
trigger1 = var(20) = 1
anim = 182
facing = 1
pos = -160,100
postype = left
sprpriority = 30
bindtime = 50
ownpal = 1
supermove = 1
removetime = 91
scale = 1,1

;文字の表示（２Ｐor４Ｐ）
[State 180,1]
type = explod
trigger1 = time = 0
trigger1 = var(20) = 2
anim = 183
facing = 1
pos = 0,100
postype = right
sprpriority = 30
bindtime = 50
ownpal = 1
supermove = 1
removetime = 91
scale = 1,1

;----------------------------------
;スタンドがダメージを受けた時の処理
;----------------------------------
;スタンド（ヘルパー）がダメージを受けた時に
;var(0)にその値が格納されそれを参照してこのstateで
;その値を引き算する
[statedef 6010]
type = A
velset = 0,0
anim = 11004

[State 6010,1]
type = changeanim
trigger1 = time = 0
trigger1 = pos y < -0.1
value = 11005

[State 6010,1]
type = lifeadd
trigger1 = time = 0
value = -(var(0))+1

[State 6010,1]
type = varset
trigger1 = time = 0
v = 0
value = 0
ctrl = 1

[State 6010,1]
type = changestate
trigger1 = pos Y = 0
trigger1 = time = 12  
value = 0
ctrl = 1

[State 6010,1]
type = velset
trigger1 = time = 6
trigger1 = pos y < -0.1
x = -3
y = -3

[State 6010,1]
type = velset
trigger1 = time = 0
trigger1 = life <= 0
x = -3
y = -3

[State 6010,1]
type = changestate
trigger1 = time = 12
trigger1 = pos Y < 0
value = 5040

;============================
;雑用処理関係（ヘルパー関係）
;============================

;------------------------
;固定されたヘルパーを消す
;------------------------
[statedef 6020]
type = S
movetype = A

[State 6020, 1]
type = BindtoRoot
trigger1 = Time = 0
pos = 0,0
time = 0
facing = 1
persistent = 0

[State 6020,1]
type = DestroySelf
trigger1 = time = 0


;----------------------------------------------
;スタンドがダメージを受ける（通常時の必殺技等）
;----------------------------------------------
[Statedef 6000]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 11003

[State 6000,1]
type = parentvarset
trigger1 = time = 0
v = 0
value = 1

[State 6000, 2]
type = ChangeState
trigger1 = Time = 1
value = 6001

;--------------------------------
;スタンドが消える（その後の処理）
;--------------------------------
[statedef 6001]
type = S
anim = 11003
velset = 0,0

[State 6001,1]
type = parentvarset
trigger1 = time = 0
v = 0
value = 1001-(life)

[State 6001,1]
type = DestroySelf
trigger1 = animtime = 0

;==============
;戦闘中処理関係
;==============
[statedef -2]

;スタンドがダメージを受けた時に
;食らいstateに飛ばす
[state -2,1]
type = changestate
trigger1 = var(0) >= 1
trigger1 = stateno != 902
trigger1 = stateno != 912
value = 6010
ctrl = 0

;連続ＨＩＴのダメージ修正処理
;をリセットする
[state -2,2]
type = varset
triggerall = var(1) != 0
trigger1 = p2movetype != H
;trigger1 = p2stateno = 5100
;trigger2 = p2stateno = 5200
;trigger3 = p2stateno = 0
;trigger4 = p2stateno = 20
;trigger5 = p2stateno = 5040
v = 1
value = 0

;==================
;スタンドモード関係
;==================

;スタンド必殺技発生時に
;ガード不能状態にする
[State -2, 0]
type = AssertSpecial 
trigger1 = numhelper(10000) = 1  
flag = noairguard
flag2 = nostandguard
flag3 = nocrouchguard

;ガード構えを通常時とスタンドモード時にわけるために
;expladでごまかすchanganimがきかないため
[State -2,1]
type = explod
triggerall = var(31) = 1
trigger1 = anim = 130
trigger2 = anim = 140
trigger3 = anim = 120
anim = 20121
facing = 1
pos = 0,0
postype = p1
sprpriority = 2
bindtime = 1
ownpal = 1
supermove = 0
removetime = 1
scale = 1,1

;ガード構えを通常時とスタンドモード時にわけるために
;expladでごまかすchanganimがきかないため
[State -2,4]
type = explod
triggerall = var(31) = 0
triggerall = time > 0
trigger1 = anim = 130
trigger2 = anim = 140
trigger3 = anim = 120
anim = 20120
facing = 1
pos = 0,0
postype = p1
sprpriority = 2
bindtime = 1
ownpal = 1
supermove = 0
removetime = 1
scale = 1,1

;ガード構えを通常時とスタンドモード時にわけるために
;expladでごまかすchanganimがきかないため
[State -2,1]
type = explod
triggerall = var(31) = 1
triggerall = time >= 0
trigger1 = anim = 131
trigger2 = anim = 141
trigger3 = anim = 121
anim = 20123
facing = 1
pos = 0,0
postype = p1
sprpriority = 2
bindtime = 1
ownpal = 1
supermove = 0
removetime = 1
scale = 1,1

;ガード構えを通常時とスタンドモード時にわけるために
;expladでごまかすchanganimがきかないため
[State -2,1]
type = explod
triggerall = var(31) = 0
triggerall = time >= 0
trigger1 = anim = 131
trigger2 = anim = 141
trigger3 = anim = 121
anim = 20122
facing = 1
pos = 0,0
postype = p1
sprpriority = 2
bindtime = 1
ownpal = 1
supermove = 0
removetime = 1
scale = 1,1

;ガード構えを通常時とスタンドモード時にわけるために
;expladでごまかすchanganimがきかないため
[State -2,1]
type = explod
triggerall = var(31) = 1
triggerall = time >= 0
trigger1 = anim = 132
trigger2 = anim = 142
trigger3 = anim = 122
anim = 20125
facing = 1
pos = 0,0
postype = p1
sprpriority = 2
bindtime = 1
ownpal = 1
supermove = 0
removetime = 1
scale = 1,1

;ガード構えを通常時とスタンドモード時にわけるために
;expladでごまかすchanganimがきかないため
[State -2,1]
type = explod
triggerall = var(31) = 0
triggerall = time >= 0
trigger1 = anim = 132
trigger2 = anim = 142
trigger3 = anim = 122
anim = 20124
facing = 1
pos = 0,0
postype = p1
sprpriority = 2
bindtime = 1
ownpal = 1
supermove = 0
removetime = 1
scale = 1,1

;state150（ガードＨＩＴstate※このstateのみガード関係で修正可能）を
;強引にスタンドモード時の後退stateにするためhitshakeoverで強引に認識
;※この認識方法の弱点はＨＩＴ硬直が０だと認識できず
[State -2, 1]
type = null;varset
trigger1 = var(29) != 0
trigger1 = Time >= 0
trigger1 = stateno != 130
trigger1 = stateno != 140
trigger1 = stateno != 150
trigger1 = stateno != 151
v = 29
value = 0

;スタンドモードシステム発生
[State -2,2]
type = Helper
triggerall = numhelper(30000) = 0
trigger1 = IsHelper = 0
trigger1 = stateno != 902
trigger1 = stateno != 912
id = 30000    
name = "s-system"
pos = 0,-10000
postype = p1  
stateno = 10000
helpertype = normal
keyctrl = 0          
ownpal = 0

;スタンドモード強制解除
;※tripを食らうと強引に解除
;　理由として下段方向への叩きつけ等に対応可能なフレームが存在しないため
[State -2, 12]
type = varset
trigger1 = movetype = H
trigger1 = stateno = [5070,5150]
trigger2 = alive = 0
;trigger2 = helper30000,var(5) = 1
v = 31
value = 0

;スタンドクラッシュ
[state -2,11]
type = changestate
trigger1 = helper(30000),var(5) = 2
trigger1 = stateno != 10030
trigger1 = alive = 1
trigger1 = stateno != 10041
trigger1 = stateno != 10042
trigger1 = stateno != 10043
value = 10041

;スタンド時に幅を追加設定
[State -2, 1]
type = Width
trigger1 = var(31) = 1
value = 15

[state 211,1]
type = varset
trigger1 = movehit = 0
trigger1 = movetype = A
v = 6
value = (var(1)+1)

[state 211,1]
type = varset
trigger1 = movehit = 1
v = 1
value = (var(6))