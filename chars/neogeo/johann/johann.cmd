;---------------------------------------------------------------------------
;CPU
;========================================================
[Command]
name = "cpu"
command = x,x,x,x,x,x,x,x,x
time = 0

[Command]
name = "cpu"
command = y,y,y,y,y,y,y,y,y
time = 0

;超必殺技
;========================================================
[Command]
name = "HY1_w"
command = ~D,DF,F,DF,D,DB,B,x
time = 25

[Command]
name = "HY1_s"
command = ~D,DF,F,DF,D,DB,B,y
time = 25

;--------------------------------------------------------
;必殺技
;========================================================
[Command]
name = "SP1"
command = ~D,DB,B,x
time = 15

[Command]
name = "SP2"
command = ~D,DB,B,y
time = 15

[Command]
name = "SP3"
command = ~D,DB,B,a
time = 15

[Command]
name = "SP4"
command = ~D,DB,B,b
time = 15

;----------------------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "avoid"
command = x+a
time = 1

[Command]
name = "GC"
command = y+b
time = 1

;-------------------------------------
[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

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

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Statedef -1]

[STate -1]
type=varSet
trigger1=roundstate!=2
var(2)=0

[State -1]
type = Helper
triggerall=(Stateno=[190,194]);||stateno=5900
trigger1=Var(1)=0
trigger1=NumHelper(5999)=0
trigger1=Var(2)=0
name="AI"
id=5999
helpertype=normal
pos=0,-9999
postype=p1
stateno=5999
keyctrl=1

;////////////////////////////////
;ドラゴンナイトメア
[State -1]
type = ChangeState
value = 3000
triggerall = Power >= 1000
triggerall = Command = "HY1_w"
triggerall = statetype = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 210 && MoveContact = 1
trigger4 = StateNo = 220 && MoveContact = 1
trigger5 = StateNo = 230 && MoveContact = 1 && Time < 20
trigger6 = StateNo = 400 && MoveContact = 1
trigger7 = StateNo = 100

[State -1]
type = ChangeState
value = 3100
triggerall = Power >= 2000
triggerall = Command = "HY1_s"
triggerall = statetype = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 210 && MoveContact = 1
trigger4 = StateNo = 220 && MoveContact = 1
trigger5 = StateNo = 230 && MoveContact = 1 && Time < 20
trigger6 = StateNo = 400 && MoveContact = 1
trigger7 = StateNo = 100

;シャドウドラゴン
[State -1]
type = ChangeState
value = 1000
triggerall = NumProjID(1000) = 0
triggerall = Command = "SP1"
triggerall = statetype = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 210 && MoveContact = 1
trigger4 = StateNo = 220 && MoveContact = 1
trigger5 = StateNo = 230 && MoveContact = 1 && Time < 20
trigger6 = StateNo = 400 && MoveContact = 1
trigger7 = StateNo = 100

;アースドラゴン
[State -1]
type = ChangeState
value = 1200
triggerall = Command = "SP2"
triggerall = statetype = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 210 && MoveContact = 1
trigger4 = StateNo = 220 && MoveContact = 1
trigger5 = StateNo = 230 && MoveContact = 1 && Time < 20
trigger6 = StateNo = 400 && MoveContact = 1
trigger7 = StateNo = 100

;ドラゴンスラッシュ
[State -1]
type = ChangeState
value = 1100
triggerall = Command = "SP3"
triggerall = statetype = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 210 && MoveContact = 1
trigger4 = StateNo = 220 && MoveContact = 1
trigger5 = StateNo = 230 && MoveContact = 1 && Time < 20
trigger6 = StateNo = 400 && MoveContact = 1
trigger7 = StateNo = 100

;必殺投げ
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "SP4"
triggerall = P2BodyDist X < 30
triggerall = statetype = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200 && MoveContact = 1
trigger3 = StateNo = 220 && MoveContact = 1
trigger4 = StateNo = 230 && MoveContact = 1 && Time < 20
trigger5 = StateNo = 400 && MoveContact = 1
trigger6 = StateNo = 100

;-----------------------------------------
;ガードキャンセル吹っ飛ばし
[State -1]
type = ChangeState
value = 700
triggerall = Power >= 1000
triggerall = Command = "GC"
trigger1 = StateNo = [150,153]

;-----------------------------------------
;ガードキャンセル吹っ飛ばし
[State -1]
type = ChangeState
value = 700
triggerall = Power >= 1000
triggerall = var(1) = 1 && var(3) = 1 && random <= 888
trigger1 = StateNo = [150,153]

;------------------------------------------
;前転
[State -1]
type = ChangeState
value = 2100
triggerall = command = "avoid" && command = "holdfwd"
triggerall = statetype = S || StateType = C
trigger1 = ctrl

;後転
[State -1]
type = ChangeState
value = 2110
triggerall = command = "avoid" && Command = "holdback"
triggerall = statetype = S || StateType = C
trigger1 = ctrl

;避け
[State -1]
type = ChangeState
value = 2000
triggerall = command = "avoid"
triggerall = statetype = S
trigger1 = ctrl

;-----------------------
;投げ
[State -1]
type = ChangeState
value = 800
triggerall = P2BodyDist X < 30
triggerall = command = "fwd_y"
triggerall = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 805
triggerall = P2BodyDist X < 30
triggerall = command = "back_y"
triggerall = statetype = S
trigger1 = ctrl

;-----------------------------------------------------------
;ダッシュ
[State -1]
type = ChangeState
value = 99
triggerall = command = "FF"
triggerall = statetype = S
trigger1 = ctrl && var(1) = 0

[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = command = "x" && var(1) = 0
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = StateNo = 100

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1]
type = ChangeState
value = 210
triggerall = command = "y" && var(1) = 0
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 100
 
;---------------------------------------------------------------------------
;立ち弱キック
[State -1]
type = ChangeState
value = 220
triggerall = command = "a" && var(1) = 0
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 100

;---------------------------------------------------------------------------
;立ち強キック
[State -1]
type = ChangeState
value = 230
triggerall = command = "b" && var(1) = 0
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 100

;---------------------------------------------------------------------------
;しゃがみパンチ
[State -1]
type = ChangeState
value = 400
triggerall = command = "x" || Command = "y"
triggerall = command = "holddown" && var(1) = 0
trigger1 = statetype = C
trigger1 = ctrl 
trigger2 = StateNo = 100

;---------------------------------------------------------------------------
;しゃがみキック
[State -1]
type = ChangeState
value = 410
triggerall = command = "a" || Command = "b"
triggerall = command = "holddown" && var(1) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 100

;---------------------------------------------------------------------------
;ジャンプキック
[State -1]
type = ChangeState
value = 600
triggerall = command = "a" || Command = "b" || command = "x" || Command = "y"
triggerall = statetype = A
trigger1 = ctrl
 
