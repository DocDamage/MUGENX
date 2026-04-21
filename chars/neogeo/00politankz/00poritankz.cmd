;-| AI |--------------------------------------------------------
[Command]
name = "cpu"
command = F,F,F,F,F,F,F,F,F,F
time=0

[Command]
name = "cpu"
command = B,B,B,B,B,B,B,B,B,B
time=0

[Command]
name = "cpu"
command = U,U,U,U,U,U,U,U,U,U
time=0

[Command]
name = "cpu"
command = D,D,D,D,D,D,D,D,D,D
time=0

[Command]
name = "cpu"
command = DB,DB,DB,DB,DB,DB,DB,DB,DB,DB
time=0

[Command]
name = "cpu"
command = DF,DF,DF,DF,DF,DF,DF,DF,DF,DF
time=0

[Command]
name = "cpu"
command = D,D,D,s
time=0


[Command]
name = "cpu"
command = UB,UB,UB,UB,UB,UB,UB,UB,UB,UB
time=0

[Command]
name = "cpu"
command = UF,UF,UF,UF,UF,UF,UF,UF,UF,UF
time=0


[Command]
name = "cpu"
command = a,a,a,a,a,a,a,a,a,a
time=0

[Command]
name = "cpu"
command = b,b,b,b,b,b,b,b,b,b
time=0

[Command]
name = "cpu"
command = c,c,c,c,c,c,c,c,c,c
time=0

[Command]
name = "cpu"
command = x,x,x,x,x,x,x,x,x,x
time=0

[Command]
name = "cpu"
command = y,y,y,y,y,y,y,y,y,y
time=0

[Command]
name = "cpu"
command = z,z,z,z,z,z,z,z,z,z
time=0

[Command]
name = "cpu"
command = s,s,s,s,s,s,s,s,s,s
time=0

;-| EX必殺技 |--------------------------------------------------------

[Command]
name="大砲ES"
command=~F,DF,D,DB,B,a+b
time=25

;-| 必殺技 |--------------------------------------------------------
[Command]
name="taihou"
command=~F,DF,D,DB,B,b
time=25
;--------------------------
;--------------------------
[Command]
name="逆昇竜EX"
command=~B,D,DB,x+y
time=20

[Command]
name="moguru1"
command=~B,D,DB,a
time=20

[Command]
name="moguru2"
command=~B,D,DB,b
time=20

[Command]
name="Ztama+"
command=~D,DF,F,x+y

[Command]
name="Ztama"
command=~D,DF,F,x

[Command]
name="Ztama"
command=~D,DF,F,y

[Command]
name="doku+"
command=~D,DF,F,a+b

[Command]
name="doku"
command=~D,DF,F,a

[Command]
name="doku"
command=~D,DF,F,b
;-| ハラハラ |-----------------------------------------------------------
[Command]
name = "ハラハラ"     
command = ~D,D,a+b
time = 15

;-| ２回押し |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| 同時押し |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = a+b
time = 1


;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "F_y"
command = /$F,y
time = 1

[Command]
name = "F_b"
command = /$F,b
time = 1

;---------------------
[Command]
name = "tame1"
command = ~1$x

[Command]
name = "tame1"
command = ~1$y

[Command]
name = "tame2"
command = ~10$x

[Command]
name = "tame2"
command = ~10$y

[Command]
name = "tame3"
command = ~16$x

[Command]
name = "tame3"
command = ~16$y

[Command]
name = "tame4"
command = ~24$x

[Command]
name = "tame4"
command = ~24$y
;-| ボタン設定 |---------------------------------------------------------
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

;-| 押しっぱなし設定｜-------------------------------------------------------
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

;===========================================================================
;---------------------------------------------------------------------------
;ジャイロ爆撃
[State -1]
type = ChangeState
value =3000
triggerall = command = "逆昇竜EX"
triggerall=power>=1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2=Stateno=5120&&(Animtime=[-2,0])
;===========================================================================

;人間大砲ES
[State -1]
type = ChangeState
value =3100
triggerall = command = "大砲ES"
triggerall=power>=1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2=Stateno=5120&&(Animtime=[-2,0])
;---------------------------------------------------------------------------
;人間大砲
[State -1,taihou]
type = ChangeState
value =1400
triggerall = command = "taihou"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=Stateno=5120&&(Animtime=[-2,0])

;---------------------------------------------------------------------------
;どりるんもぐりん・弱
[State -1,DORI]
type = ChangeState
value =1200
triggerall = command = "moguru1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=Stateno=5120&&(Animtime=[-2,0])

;どりるんもぐりん・強
[State -1,DORI]
type = ChangeState
value =1250
triggerall = command = "moguru2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=Stateno=5120&&(Animtime=[-2,0])
;---------------------------------------------------------------------------
;Z弾ES
[State -1,Z]
type = ChangeState
value =1020
triggerall=Numhelper(7)=0
triggerall = command = "Ztama+"
triggerall=Power>=1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2=Stateno=5120&&(Animtime=[-2,0])

;---------------------------------------------------------------------------
;Z弾
[State -1,Z]
type = ChangeState
value =1000
triggerall=Numhelper(7)=0
triggerall = command = "Ztama"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=Stateno=5120&&(Animtime=[-2,0])
;---------------------------------------------------------------------------
;ドクドクスモークES
[State -1,毒]
type = ChangeState
value =1130
triggerall=NumHelper(4)=0&&P2stateno!=1120
triggerall = command = "doku+"
triggerall=Power>=1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2=Stateno=5120&&(Animtime=[-2,0])

;---------------------------------------------------------------------------
;ドクドクスモーク
[State -1,毒]
type = ChangeState
value =1100
triggerall=NumHelper(4)=0&&P2stateno!=1120
triggerall = command = "doku"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=Stateno=5120&&(Animtime=[-2,0])

;---------------------------------------------------------------------------
;スピンキック
[State -1, spin]
type = ChangeState
value = 110
triggerall=Stateno=100
trigger1 = command = "b"
trigger1 = statetype != A
;---------------------------------------------------------------------------
;ハラハラアタック
[State -1]
type = ChangeState
value =3200
triggerall = command = "ハラハラ"
triggerall=power>=1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2=Stateno=5120&&(Animtime=[-2,0])
;---------------------------------------------------------------------------
;前方ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 99
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;後方ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;投げ
[State -1,投げ]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;ドリルアーム
[State -1,]
type = ChangeState
value =220
trigger1 = command = "F_y"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;移動ドリルキック
[State -1,]
type = ChangeState
value =250
trigger1 = command = "F_b"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ミサイル投下
[State -1]
type = ChangeState
value = 650
triggerall = command = "down_b"
triggerall=Pos Y<=-50
trigger1 = statetype = A
trigger1 = ctrl
;===========================================================================

;---------------------------------------------------------------------------
;立ち弱P
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall=Stateno!=200
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;立ち強P
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall=Numhelper(3)=0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち弱K
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"&&Numhelper(4)=0
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち強K
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱P
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強P
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall=Numhelper(3)=0
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱K
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強K
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱P
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強P
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱K
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強K
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

