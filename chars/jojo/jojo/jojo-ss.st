;======================
;スタンドモードシステム
;======================
;--------
;初期設定
;--------
[statedef 10000]
anim = 30001
movetype = A

[State -2, 12]
type = varset
trigger1 = var(2) = 0
trigger1 = facing = 1
v = 2
value = 1

[State -2, 12]
type = varset
trigger1 = var(2) = 0
trigger1 = facing = -1
v = 2
value = 2

;ゲージ枠表示
[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = NumExplod(30002) = 0
id = 30002
anim = 30002
facing = 1
pos = 57,18
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

;ゲージ初期表示
[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30010
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1


[State -2,1]
type = explod
trigger1 = var(2) = 3
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30010
facing = 1
pos = 59,39
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1



;ゲージ枠表示（２Ｐ）
[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = NumExplod(30002) = 0
id = 30002
anim = 30002
facing = -1
pos = -57,18
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

;ゲージ初期表示（２Ｐ）
[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30010
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

;ゲージ量設定ＭＡＸ５０
[State -2, 12]
type = varset
trigger1 = time = 0
v = 3
value = 50

;初期設定終了
[state 10000,1]
type = changestate
trigger1 = var(2) != 0
trigger1 = time >= 1
value = 10005




[statedef 10001]
movetype = A

[state 10000,1]
type = selfstate
trigger1 = time = 0
value = 190





;-------------
;ノーマルモード
;-------------
[statedef 10005]

[state 10010,1]
type = varset
trigger1 = time = 0
V = 5
value = 0

;スタンド表示削除
[State -2,1]
type = removeexplod
trigger1 = NumExplod(30001) = 1
id = 30001

;ゲージ回復
[State -2, 12]
type = varadd
trigger1 = Time = 2
trigger1 = var(3) < 50
v = 3
value = 1

;ゲージ表示ルーチンに移行
[state 10000,2]
type = changestate
trigger1 = time = 2
value = 10015

;スタンドモードに移行
[state 10000,2]
type = changestate
trigger1 = root,var(31) = 1
value = 10010



















[statedef 10010]

[State -2,1]
type = explod
trigger1 = NumExplod(30001) = 0
trigger1 = var(2) = 1
id = 30001
anim = 30001
facing = 1
pos = 90,25
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = NumExplod(30001) = 0
trigger1 = var(2) = 2
id = 30001
anim = 30001
facing = 1
pos = -113,25
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[state 10010,1]
type = changestate
triggerall = root,time = 1 
trigger1 = root,stateno = 150
trigger1 = root,anim != 20021
trigger2 = root,stateno = 152
trigger3 = root,stateno = 154
value = 10020

[state 10010,1]
type = changestate
trigger1 = root,stateno = [5000,5020]
trigger1 = root,stateno != 5001
trigger1 = root,stateno != 5011
trigger1 = root,time = 2
value = 10020

[state 10010,1]
type = varset
triggerall = root,movetype = H
trigger1 = root,stateno != 150
trigger1 = root,stateno != 151
trigger1 = root,stateno != 152
trigger1 = root,stateno != 153
trigger1 = root,stateno != 154
trigger1 = root,stateno != 155
trigger1 = root,stateno != 5000
trigger1 = root,stateno != 5001
trigger1 = root,stateno != 5010
trigger1 = root,stateno != 5011
trigger1 = root,stateno != 5020
trigger1 = root,stateno != 5021
trigger1 = root,stateno != 5030
trigger1 = root,stateno != 5035
trigger1 = root,stateno != 5040
trigger1 = root,stateno != 5050
V = 5
value = 1

[state 10010,1]
type = changestate
triggerall = root,movetype = H
trigger1 = root,stateno != 150
trigger1 = root,stateno != 151
trigger1 = root,stateno != 152
trigger1 = root,stateno != 153
trigger1 = root,stateno != 154
trigger1 = root,stateno != 155
trigger1 = root,stateno != 5000
trigger1 = root,stateno != 5001
trigger1 = root,stateno != 5010
trigger1 = root,stateno != 5011
trigger1 = root,stateno != 5020
trigger1 = root,stateno != 5021
trigger1 = root,stateno != 5030
trigger1 = root,stateno != 5035
trigger1 = root,stateno != 5040
trigger1 = root,stateno != 5050
value = 10040

[State -2, 12]
type = parentvarset
triggerall = root,stateno = 20000
trigger1 = Win = 1
trigger2 = lose = 1
v = 31
value = 0

[state 10010,1]
type = changestate
trigger1 = root,var(31) = 0
value = 10005









[statedef 10015]
[State -2,1]
type = removeexplod
trigger1 = time = 0
trigger1 = NumExplod(30010) = 1
id = 30010

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 50
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30010
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 49
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30011
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 48
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30012
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 47
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30013
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 46
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30014
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 45
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30015
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 44
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30016
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 43
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30017
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 42
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30018
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 41
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30019
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 40
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30020
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 39
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30021
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 38
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30022
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 37
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30023
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 36
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30024
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 35
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30025
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 34
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30026
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 33
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30027
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 32
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30028
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 31
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30029
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 30
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30030
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 29
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30031
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 28
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30032
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 27
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30033
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 26
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30034
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 25
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30035
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 24
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30036
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 23
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30037
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 22
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30038
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 21
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30039
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 20
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30040
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 19
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30041
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 18
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30042
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 17
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30043
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 16
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30044
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 15
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30045
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 14
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30046
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 13
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30047
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 12
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30048
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 11
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30049
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 10
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30050
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 9
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30051
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 8
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30052
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 7
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30053
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 6
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30054
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 5
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30055
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 4
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30056
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 3
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30057
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 2
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30058
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 1
trigger1 = var(3) = 1
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30059
facing = 1
pos = 59,19
postype = left
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1




[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 50
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30010
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 49
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30011
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 48
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30012
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 47
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30013
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 46
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30014
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 45
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30015
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 44
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30016
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 43
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30017
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 42
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30018
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 41
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30019
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 40
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30020
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 39
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30021
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 38
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30022
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 37
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30023
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 36
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30024
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 35
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30025
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 34
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30026
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 33
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30027
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 32
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30028
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 31
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30029
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 30
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30030
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 29
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30031
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 28
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30032
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 27
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30033
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 26
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30034
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 25
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30035
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 24
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30036
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 23
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30037
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 22
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30038
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 21
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30039
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 20
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30040
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 19
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30041
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 18
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30042
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 17
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30043
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 16
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30044
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 15
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30045
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 14
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30046
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 13
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30047
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 12
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30048
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 11
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30049
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 10
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30050
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 9
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30051
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 8
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30052
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 7
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30053
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 6
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30054
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 5
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30055
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 4
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30056
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 3
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30057
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 2
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30058
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[State -2,1]
type = explod
trigger1 = var(2) = 2
trigger1 = var(3) = 1
trigger1 = NumExplod(30010) = 0
id = 30010
anim = 30059
facing = -1
pos = -59,19
postype = right
sprpriority = -3
bindtime = -1
ownpal = 1
supermove = 1
removetime = -1
scale = 1

[state 10010,1]
type = changestate
trigger1 = root,var(31) = 1
value = 10010

[state 10010,1]
type = changestate
trigger1 = root,var(31) = 0
value = 10005














[statedef 10020]
[State -2, 12]
type = varadd
trigger1 = root,var(4) = 1
trigger1 = time = 0
v = 3
value = -5

[State -2, 12]
type = varadd
trigger1 = root,var(4) = 2
trigger1 = time = 0
v = 3
value = -9

[State -2, 12]
type = varadd
trigger1 = root,var(4) = 3
trigger1 = time = 0
v = 3
value = -15

[State -2, 12]
type = varadd
trigger1 = root,var(4) = 4
trigger1 = time = 0
v = 3
value = -3

[state 10010,1]
type = changestate
trigger1 = var(3) <= 0
value = 10030

[state 10010,1]
type = changestate
trigger1 = time = 1
value = 10015











;-----------------
;スタンドクラッシュ
;-----------------
[statedef 10030]
[State -2,1]
type = removeexplod
trigger1 = time = 0
trigger1 = NumExplod(30010) = 1
id = 30010

[state 10010,1]
type = varset
trigger1 = time = 0
V = 5
value = 2

[State -2,1]
type = removeexplod
trigger1 = time = 0
trigger1 = NumExplod(30001) = 1
id = 30001

[State -2, 12]
type = parentvarset
trigger1 = time = 0
v = 31
value = 0

[State -2,1]
type = explod
trigger1 = time = 2
id = 30100
anim = 30100
facing = 1
pos = 160,120
postype = left
sprpriority = 100
bindtime = 1
ownpal = 1
supermove = 1
removetime = 2
scale = 5,5

[State -2,1]
type = explod
trigger1 = time = 3
id = 30100
anim = 30100
facing = 1
pos = 160,120
postype = left
sprpriority = 100
bindtime = 1
ownpal = 1
supermove = 1
removetime = 1
scale = 4,4

[State -2,1]
type = explod
trigger1 = time = 4
id = 30100
anim = 30100
facing = 1
pos = 160,120
postype = left
sprpriority = 100
bindtime = 1
ownpal = 1
supermove = 1
removetime = 1
scale = 3,3

[State -2,1]
type = explod
trigger1 = time = 5
id = 30100
anim = 30100
facing = 1
pos = 160,120
postype = left
sprpriority = 100
bindtime = 1
ownpal = 1
supermove = 1
removetime = 1
scale = 2.5,2.5

[State -2,1]
type = explod
trigger1 = time = 6
id = 30100
anim = 30100
facing = 1
pos = 160,120
postype = left
sprpriority = 100
bindtime = 1
ownpal = 1
supermove = 1
removetime = 1
scale = 2,2

[State -2,1]
type = explod
trigger1 = time = 7
id = 30100
anim = 30100
facing = 1
pos = 160,120
postype = left
sprpriority = -3
bindtime = 1
ownpal = 1
supermove = 1
removetime = 1
scale = 1.75,1.75

[State -2,1]
type = explod
trigger1 = time = 8
id = 30100
anim = 30100
facing = 1
pos = 160,120
postype = left
sprpriority = -3
bindtime = 1
ownpal = 1
supermove = 1
removetime = 1
scale = 1.5,1.5

[State -2,1]
type = explod
trigger1 = time = 9
id = 30100
anim = 30100
facing = 1
pos = 160,120
postype = left
sprpriority = -3
bindtime = 1
ownpal = 1
supermove = 1
removetime = 1
scale = 1.25,1.25

[State -2,1]
type = explod
trigger1 = time = 10
id = 30100
anim = 30100
facing = 1
pos = 160,120
postype = left
sprpriority = -3
bindtime = 9
ownpal = 1
supermove = 1
removetime = 9
scale = 1

[State -2,1]
type = explod
trigger1 = time = 19
id = 30100
anim = 30101
facing = 1
pos = 160,120
postype = left
sprpriority = -3
bindtime = 9
ownpal = 1
supermove = 1
removetime = 2
scale = 1.25,1.25

[State -2,1]
type = explod
trigger1 = time = 20
id = 30100
anim = 30101
facing = 1
pos = 160,120
postype = left
sprpriority = -3
bindtime = 9
ownpal = 1
supermove = 1
removetime = 2
scale = 1.5,1.5

[State 10030,10]
type = EnvColor
trigger1 = Time = 0
value = 255, 255, 255
time = 2

[state 10030,11]
type = varset
trigger1 = root,stateno = 10041
v = 5
value = 0

[State -2, 12]
type = varset
trigger1 = time = 60
v = 3
value = 0

[State -2, 12]
type = changestate
trigger1 = time =60
value = 10005

































[statedef 10040]
type = A
[State -2,1]
type = removeexplod
trigger1 = time = 0
trigger1 = NumExplod(30001) = 1
id = 30001

[State -2, 12]
type = parentvarset
trigger1 = time > 0
v = 31
value = 0

[State -2, 12]
type = changestate
trigger1 = root,var(31) =0
value = 10005



[statedef 10041]
type = A
ctrl = 0

[State 5001, 3]
type = DefencemulSet
trigger1 = time >= 0
value = 1

[State -2, 12]
type = changeanim
trigger1 = anim =25000
trigger2 = anim =20150
trigger3 = anim =20152
value = 5003

[State -2, 12]
type = changeanim
trigger1 = anim =25010
value = 5013

[State -2, 12]
type = changeanim
trigger1 = anim =25020
trigger2 = anim =20151
value = 5023

[State -2, 12]
type = changeanim
trigger1 = anim =25030
value = 5031

[State -2,1]
type = explod
trigger1 = time = 0
id = 0
anim = 11006
facing = 1
pos = 45,5
postype = p1
sprpriority = -3
bindtime = 1
ownpal = 1
supermove = 1
removetime = 25
scale = 1,1

[State 5050, 5]
type = ChangeState
trigger1 = HitShakeOver = 1
trigger1 = pos Y <= -10
trigger2 = alive = 0
value = 10042

[State 5050, 5]
type = ChangeState
trigger1 = HitShakeOver = 1
trigger1 = pos Y >= -10
value = 10043

[statedef 10042]
type = A
ctrl = 0

[State 5050, 5]
type = ChangeState
trigger1 = time = 30
trigger2 = alive = 0
value = 5070

[statedef 10043]
type = S
ctrl = 0

[State 5050, 5]
type = posset
trigger1 = time = 0
y = 0

[State 5050, 5]
type = ChangeState
trigger1 = time = 30
trigger2 = alive = 0
value = 5070