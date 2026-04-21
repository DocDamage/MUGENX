; The CMD file.

;-| ボタン割付 |------------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| cpu検出 |------------------------------------------------------

[Command]
name = "cpu10"
command = a, a, a, a, a, a, a, a, a, a, a, a, a
Time = 1

[Command]
name = "cpu9"
command = a, a, a, a, a, a, a, a, a, a, a, a
Time = 1

[Command]
name = "cpu8"
command = a, a, a, a, a, a, a, a, a, a, a
Time = 1

[Command]
name = "cpu7"
command = a, a, a, a, a, a, a, a, a, a
Time = 1

[Command]
name = "cpu6"
command = a, a, a, a, a, a, a, a, a
Time = 1

[Command]
name = "cpu5"
command = a, a, a, a, a, a, a, a
Time = 1

[Command]
name = "cpu4"
command = a, a, a, a, a, a, a
Time = 1

[Command]
name = "cpu3"
command = a, a, a, a, a, a
Time = 1

[Command]
name = "cpu2"
command = a, a, a, a, a
Time = 1

[Command]
name = "cpu1"
command = a, a, a
Time = 1

;-| ゲージ消費技 |------------------------------------------------------

[Command]
name = "Mirror_z"
command = ~D, DF, F, D, DF, F, a+x
Time = 30

[Command]
name = "Mirror_x"
command = ~D, DF, F, D, DF, F, x
Time = 30

[Command]
name = "Mirror_a"
command = ~D, DF, F, D, DF, F, a
Time = 30

[Command]
name = "Mirror_z"
command = ~D, DF, F, D, DF, F, z
Time = 30

[Command]
name = "Mirror_y"
command = ~D, DF, F, D, DF, F, y
Time = 30

[Command]
name = "issen"
command = ~D, DB, B, b+y

[Command]
name = "issen"
command = ~D, DB, B, c

[Command]
name = "Kamui_Emussi"
command = ~D, DF, F, b+y

[Command]
name = "Kamui_Emussi"
command = ~D, DF, F, c

;-| 必殺技 |------------------------------------------------------
[Command]
name = "Nonno_z"
command = ~F, D, FD, a+x

[Command]
name = "Nonno_x"
command = ~F, D, FD, x

[Command]
name = "Nonno_a"
command = ~F, D, FD, a

[Command]
name = "Nonno_z"
command = ~F, D, FD, z

[Command]
name = "Qualle_z"
command = ~D, DF, F, a+x

[Command]
name = "Qualle_x"
command = ~D, DF, F, x

[Command]
name = "Qualle_a"
command = ~D, DF, F, a

[Command]
name = "Qualle_z"
command = ~D, DF, F, z

[Command]
name = "Memm_z"
command = ~D, BD, B, a+x

[Command]
name = "Memm_x"
command = ~D, DB, B, x

[Command]
name = "Memm_a"
command = ~D, DB, B, a

[Command]
name = "Opp_z"
command = z,z,z
Time = 40

[Command]
name = "Opp_x"
command = x,x,x
Time = 40

[Command]
name = "Opp_a"
command = a,a,a
Time = 40

[Command]
name = "Memm_z"
command = ~D, DB, B, z

[Command]
name = "GiveUp"
command = ~B, F, D, s

[Command]
name = "Step"
command = F, ~F, F
time = 10

[Command]
name = "BStep"
command = B, ~B, B
time = 10

;-| ２回押し |-----------------------------------------------------------
[Command]
name = "FF"     ;必須 (削除不可)
command = F, F
time = 10

[Command]
name = "BB"     ;必須 (削除不可)
command = B, B
time = 10

[Command]
name = "High_Jump"
command = $D, $U
time = 3

;-| 同時押し |-----------------------------------------------
[Command]
name = "burst"
command = a+x+y

[Command]
name = "burst"
command = y+z

[Command]
name = "recovery";必須 (削除不可)
command = x+y

[Command]
name = "c"
command = a+y

[Command]
name = "z"
command = a+x

;-| 方向キーとボタン |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン |---------------------------------------------------------
[Command]
name = "charge_b"
command = /b
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

;-| 方向キー |--------------------------------------------------------------
[Command]
name = "forward"
command = /F
time = 1

[Command]
name = "down"
command = /D
time = 1

[Command]
name = "holdfwd";必須 (削除不可)
command = /$F
time = 1

[Command]
name = "holdback";必須 (削除不可)
command = /$B
time = 1

[Command]
name = "holdup" ;必須 (削除不可)
command = /$U
time = 1

[Command]
name = "holddown";必須 (削除不可)
command = /$D
time = 1

[Command]
name = "rereaseU"
command = ~$U
time = 10

[Command]
name = "rereaseD"
command = ~$D
time = 10

[Command]
name = "rereaseF"
command = ~$F
time = 10

[Command]
name = "rereaseB"
command = ~$B
time = 10

;---------------------------------------------------------------------------
; 2. ステートエントリー
; --------------

[Statedef -1]

;===========================================================================
[State -1, CPU]
type = VarSet
triggerall = !var(20)
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
var(20) = 1
ignorehitpause = 1

;===========================================================================
;カムイ・シトゥキ(強)
[State -1, Mirror]
type = ChangeState
value = 3102
triggerall = Var(5) = 3102 || command = "Mirror_z"
triggerall = NumHelper(1000) < 10
triggerall = NumHelper(1100) < 10
triggerall = NumHelper(1200) < 10
triggerall = NumHelper(1300) < 10
triggerall = NumHelper(3000) < 10
triggerall = NumHelper(3100) < 10
triggerall = !Var(20)
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;カムイ・シトゥキ(弱)
[State -1, Mirror]
type = ChangeState
value = 3100
triggerall = Var(5) = 3100 || command = "Mirror_x"
triggerall = NumHelper(1000) < 10
triggerall = NumHelper(1100) < 10
triggerall = NumHelper(1200) < 10
triggerall = NumHelper(1300) < 10
triggerall = NumHelper(3000) < 10
triggerall = NumHelper(3100) < 10
triggerall = !Var(20)
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;カムイ・シトゥキ(中)
[State -1, Mirror]
type = ChangeState
value = 3101
triggerall = Var(5) = 3100 || command = "Mirror_a"
triggerall = NumHelper(1000) < 10
triggerall = NumHelper(1100) < 10
triggerall = NumHelper(1200) < 10
triggerall = NumHelper(1300) < 10
triggerall = NumHelper(3000) < 10
triggerall = NumHelper(3100) < 10
triggerall = !Var(20)
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;カムイ・シトゥキ(蹴り)
[State -1, Mirror]
type = ChangeState
value = 3103
triggerall = Var(5) = 3100 || command = "Mirror_y"
triggerall = NumHelper(1000) < 10
triggerall = NumHelper(1100) < 10
triggerall = NumHelper(1200) < 10
triggerall = NumHelper(1300) < 10
triggerall = NumHelper(3000) < 10
triggerall = NumHelper(3100) < 10
triggerall = !Var(20)
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;===========================================================================
;一閃
[State -1, issen]
type = ChangeState
value = 3500
triggerall = Var(5) = 3500 || command = "issen"
triggerall = NumHelper(1000) < 10
triggerall = NumHelper(1100) < 10
triggerall = NumHelper(1200) < 10
triggerall = NumHelper(1300) < 10
triggerall = NumHelper(3000) < 10
triggerall = NumHelper(3100) < 10
triggerall = !Var(20)
triggerall = Var(30) = [0,24]
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;===========================================================================
;ルプッ(シ)・カムイ・エムッ(シ)
[State -1, Rupssi Kamui Emussi]
type = ChangeState
value = 3000
triggerall = Var(5) = 3000 || command = "Kamui_Emussi"
triggerall = !NumHelper(3000)
triggerall = NumHelper(1000) < 10
triggerall = NumHelper(1100) < 10
triggerall = NumHelper(1200) < 10
triggerall = NumHelper(1300) < 10
triggerall = NumHelper(3100) < 10
triggerall = !Var(20)
triggerall = statetype != A
triggerall = Var(30) >= 24
trigger1 = ctrl
trigger2 = Var(16)

;===========================================================================
;怒り爆発
[State -1, Anger burst]
type = SelfState
value = 2000
triggerall = Var(5) = 2000 || command = "burst"
triggerall = !Var(20)
triggerall = Var(30) = [0, 24]
triggerall = statetype != A
triggerall = life <= 250
trigger1 = ctrl
trigger2 = Var(16)
trigger3 = StateNo = [130,132]
trigger4 = StateNo = [5000,5011]

;---------------------------------------------------------------------------
;投げ
[State -1, 投げ]
type = ChangeState
value = 800+(command = "holdback")
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl || StateNo = 100
triggerall = p2stateno != [5000, 5210]
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = command = "holdfwd"
trigger1 = ABS(p2bodydist X) < 11
trigger2 = command = "holdback"
trigger2 = ABS(p2bodydist X) < 15

;---------------------------------------------------------------------------
;コンルノンノ(強)
[State -1, Strong Conl Nonno]
type = ChangeState
value = 1120
triggerall = Var(9) <= 0
triggerall = Var(5) = 1120 || command = "Nonno_z"
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = !Var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;コンルノンノ(弱)
[State -1, Light Conl Nonno]
type = ChangeState
value = 1100
triggerall = Var(9) <= 0
triggerall = Var(5) = 1100 || command = "Nonno_x"
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = !Var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;コンルノンノ(中)
[State -1, Medium Conl Nonno]
type = ChangeState
value = 1110
triggerall = Var(9) <= 0
triggerall = Var(5) = 1110 || command = "Nonno_a"
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = !Var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;ルプッ(シ)・クアレ（強）
[State -1, Strong Rupusi Qualle]
type = ChangeState
value = 1020
triggerall = Var(9) <= 0
triggerall = Var(5) = 1020 || command = "Qualle_z"
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = !Var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;ルプッ(シ)・クアレ（弱）
[State -1, Light Rupusi Qualle]
type = ChangeState
value = 1000
triggerall = Var(9) <= 0
triggerall = Var(5) = 1000 || command = "Qualle_x"
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = !Var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;ルプッ(シ)・クアレ（中）
[State -1, Medium Rupusi Qualle]
type = ChangeState
value = 1010
triggerall = Var(9) <= 0
triggerall = Var(5) = 1010 || command = "Qualle_a"
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = !Var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;強コンルシラル
[State -1, Strong Conl Shiraru]
type = ChangeState
value = 1220
triggerall = command = "z" 
triggerall = command = "holddown" 
triggerall = !NumHelper(1200)
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = Abs(Vel Y) < 3
triggerall = statetype = A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;中コンルシラル
[State -1, Medium Conl Shiraru]
type = ChangeState
value = 1210
triggerall = command = "a" 
triggerall = command = "holddown" 
triggerall = !NumHelper(1200)
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = Abs(Vel Y) < 3
triggerall = statetype = A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;弱コンルシラル
[State -1, Light Conl Shiraru]
type = ChangeState
value = 1200
triggerall = command = "x" 
triggerall = command = "holddown" 
triggerall = !NumHelper(1200)
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = Abs(Vel Y) < 3
triggerall = statetype = A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;コンル・メッ(ム)（強）
[State -1, Strong Conl Memm]
type = ChangeState
value = 1320
triggerall = !NumHelper(1300)
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = Var(5) = 1320 || command = "Memm_z"
triggerall = !Var(20)+Var(20)*(P2BodyDist X=[40,120])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;コンル・メッ(ム)（弱）
[State -1, Light Conl Memm]
type = ChangeState
value = 1300
triggerall = !NumHelper(1300)
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = Var(5) = 1300 || command = "Memm_x"
triggerall = !Var(20)+Var(20)*(P2BodyDist X=[30,80])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;コンル・メッ(ム)（中）
[State -1, Medium Conl Memm]
type = ChangeState
value = 1310
triggerall = !NumHelper(1300)
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = Var(5) = 1310 || command = "Memm_a"
triggerall = !Var(20)+Var(20)*(P2BodyDist X=[40,120])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;ウプン・オッ(プ)（強）
[State -1, Strong Wpn Opp]
type = ChangeState
value = 1420
triggerall = command = "holdfwd"
triggerall = Var(5) = 1420 || command = "Opp_z"
triggerall = !Var(20)+Var(20)*(P2BodyDist X=[0,80])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)
trigger3 = !MoveContact
trigger3 = MoveType = A
trigger3 = StateNo < 600
trigger3 = Time < 10

;---------------------------------------------------------------------------
;ウプン・オッ(プ)（弱）
[State -1, Light Wpn Opp]
type = ChangeState
value = 1400
triggerall = command = "holdfwd"
triggerall = Var(5) = 1400 || command = "Opp_x"
triggerall = !Var(20)+Var(20)*(P2BodyDist X=[0,10])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)
trigger3 = !MoveContact
trigger3 = MoveType = A
trigger3 = StateNo < 600
trigger3 = Time < 10

;---------------------------------------------------------------------------
;ウプン・オッ(プ)（中）
[State -1, Medium Wpn Opp]
type = ChangeState
value = 1410
triggerall = command = "holdfwd"
triggerall = Var(5) = 1410 || command = "Opp_a"
triggerall = !Var(20)+Var(20)*(P2BodyDist X=[0,40])
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)
trigger3 = !MoveContact
trigger3 = MoveType = A
trigger3 = StateNo < 600
trigger3 = Time < 10

;===========================================================================
;---------------------------------------------------------------------------
;踏み込み
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "Step"
triggerall = command != "rereaseU" && command != "rereaseD" && command != "rereaseB"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;飛び退き
[State -1, Step Back]
type = ChangeState
value = 105
trigger1 = command = "BStep"
trigger1 = command != "rereaseU" && command != "rereaseD" && command != "rereaseF"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = !Var(20)

;---------------------------------------------------------------------------
;b行動
[State -1, bAction]
type = ChangeState
value = 110 + (command = "holdfwd") + (command = "holdback")*2 + (command = "holddown")*3
triggerall = command = "b"
triggerall = (command = "holdfwd") * (command = "holdback") = 0
triggerall = command = "holdfwd" || command = "holdback" || command = "holddown"
triggerall = statetype != A
triggerall = stateno != [110, 115]
triggerall = !Var(20)
trigger1 = ctrl
trigger2 = stateno = 100
trigger2 = Time > 5

;---------------------------------------------------------------------------
;瞑想
[State -1, meisou]
type = ChangeState
value = 110
triggerall = statetype = S
triggerall = !Var(20)
triggerall = stateno != [110, 115]
trigger1 = command = "b"
trigger1 = ctrl
trigger1 = Var(30) = 0
trigger1 = FVar(3) > 0

;===========================================================================
;---------------------------------------------------------------------------
;強ダウン追い討ち
[State -1, Additional Attack]
type = ChangeState
value = 296
triggerall = !Var(20)
triggerall = statetype != A
triggerall = ctrl || StateNo = 40
trigger1 = Var(5) = 296
trigger2 = command = "c"
trigger2 = command = "holdup"
trigger2 = P2statetype = L

;---------------------------------------------------------------------------
;ダウン追い討ち
[State -1, Additional Attack]
type = ChangeState
value = 295
triggerall = !Var(20)
trigger1 = command = "c"
trigger1 = command = "holddown"
trigger1 = command = "holdfwd"
trigger1 = Abs(P2BodyDist X) <= 72
trigger1 = statetype != A
trigger1 = P2statetype = L
trigger1 = ctrl

;---------------------------------------------------------------------------
;リープアタック
[State -1, Leap Attack]
type = ChangeState
value = 270
triggerall = !Var(20)
trigger1 = command = "c"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ダッシュ強斬り
[State -1, Dash Strong Slash]
type = ChangeState
value = 290
triggerall = !Var(20)
trigger1 = stateno = 100
trigger1 = Time > 3
trigger1 = command = "z"

;---------------------------------------------------------------------------
;ゴメンネー
[State -1, Dash palm]
type = ChangeState
value = 285
triggerall = !Var(20)
trigger1 = stateno = 100
trigger1 = Time > 3
trigger1 = command = "a"

;---------------------------------------------------------------------------
;ダッシュキック
[State -1, SlidingKick]
type = ChangeState
value = 280
triggerall = !Var(20)
trigger1 = stateno = 100
trigger1 = Time > 3
trigger1 = command = "y"

;---------------------------------------------------------------------------
;ダッシュ弱斬り
[State -1, DashLightSlash]
type = ChangeState
value = 275
triggerall = !Var(20)
trigger1 = stateno = 100
trigger1 = Time > 3
trigger1 = command = "x"

;---------------------------------------------------------------------------
;６キック
[State -1, 6 Kick]
type = ChangeState
value = 250
triggerall = command = "holdfwd"
triggerall = command != "holdup"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
trigger1 = !Var(20)+Var(20)*(P2BodyDist X=[60,100])*(P2StateType!=L)
trigger1 = command = "y"

;---------------------------------------------------------------------------
;３キック
[State -1, 3 Kick]
type = ChangeState
value = 260
triggerall = statetype != A
triggerall = command = "y"
trigger1 = command = "holdfwd"
trigger1 = command = "holddown"
trigger1 = ctrl
trigger1 = !Var(20)

;---------------------------------------------------------------------------
;立ちキック
[State -1, Standing Kick]
type = ChangeState
value = 210
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
trigger1 = !Var(20)+Var(20)*(P2BodyDist X=[0,40])*(P2StateType!=L)
trigger1 = command = "y"

;---------------------------------------------------------------------------
;遠立ち強斬り
[State -1, Standing Strong Shoot]
type = ChangeState
value = 245
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = command = "z"
triggerall = ctrl
triggerall = Abs(P2BodyDist X) > 40
trigger1 = !Var(20)
trigger2 = Var(20)*(P2StateType!=L)
trigger2 = P2BodyDist X = [40,80]

;---------------------------------------------------------------------------
;遠立ち弱斬り
[State -1, Standing Light Shoot]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
trigger1 = !Var(20)
trigger1 = Abs(P2BodyDist X) > 32
trigger2 = Var(20)*(P2StateType!=L)
trigger2 = P2BodyDist X = [32,56]

;---------------------------------------------------------------------------
;遠立ち中斬り
[State -1, Standing Light Shoot]
type = ChangeState
value = 225
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
trigger1 = !Var(20)
trigger1 = Abs(P2BodyDist X) > 32
trigger2 = Var(20)*(P2StateType!=L)
trigger2 = P2BodyDist X = [32,48]

;---------------------------------------------------------------------------
;近立ち強斬り
[State -1, Standing Strong Slash]
type = ChangeState
value = 240
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl
triggerall = Abs(P2BodyDist X) <= 40
trigger1 = !Var(20)
trigger1 = command = "z"

;---------------------------------------------------------------------------
;近立ち中斬り
[State -1, Standing Medium Slash]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = Abs(P2BodyDist X) <= 32
triggerall = !Var(20)+Var(20)*(P2BodyDist X=[0,32])*(P2StateType!=L)
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;近立ち弱斬り
[State -1, Stand Light Slash]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = Abs(P2BodyDist X) <= 32
triggerall = statetype = S
triggerall = !Var(20)
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = Time > 11

;---------------------------------------------------------------------------
;試合放棄
[State -1, GiveUp]
type = null;ChangeState
value = 196
triggerall = command = "GiveUp"
triggerall = roundstate = 2
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = null;ChangeState
value = 181+(command = "holddown")+(command = "holdfwd")*2+(command = "holdback")*4
triggerall = command = "start"
triggerall = !Var(20)
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強斬り
[State -1, Crouching Strong Shoot]
type = ChangeState
value = 430
triggerall = command = "z" 
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = ctrl
trigger1 = !Var(20)
trigger2 = Var(20)
trigger2 = P2StateType = S
trigger2 = P2BodyDist X = [0,40]

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = !Var(20)+Var(20)*(P2BodyDist X=[0,20])*(P2StateType!=L)
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 410
trigger1 = ctrl
trigger1 = !Var(20)+Var(20)*(P2BodyDist X=[0,30])*(P2StateType!=L)
trigger1 = command = "y"
trigger1 = command = "holddown"
trigger1 = statetype = C

;---------------------------------------------------------------------------
;しゃがみ中斬り
[State -1, Crouching Medium Slash]
type = ChangeState
value = 420
triggerall = ctrl
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = !Var(20)+Var(20)*(P2BodyDist X=[0,30])*(P2StateType!=L)

;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl
trigger1 = !Var(20)

;---------------------------------------------------------------------------
;ジャンプ強斬り
[State -1, Jump Strong Slash]
type = ChangeState
value = 630
triggerall = command = "z" 
triggerall = statetype = A
triggerall = ctrl
trigger1 = !Var(20)

;---------------------------------------------------------------------------
;ジャンプ弱斬り
[State -1, Jump Light Slash]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
triggerall = ctrl
trigger1 = !Var(20)

;---------------------------------------------------------------------------
;ジャンプ中斬り
[State -1, Jump Medium Slash]
type = ChangeState
value = 620
triggerall = command = "a"
triggerall = statetype = A
triggerall = ctrl
trigger1 = !Var(20)

;---------------------------------------------------------------------------
CPU行動

;===========================================================================
;カムイ・シトゥキ(強)
[State -1, Mirror]
type = VarSet
var(21) = 3102
triggerall = Var(20)
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = !Var(49)
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = ctrl
trigger1 = P2BodyDist X = [24,60]
trigger1 = P2Dist Y = [-100,-40]
trigger1 = Random < 250

;---------------------------------------------------------------------------
;ジャンプ
[State -1, Jump]
type = VarSet
var(21) = 41
triggerall = ctrl
triggerall = Var(20)
triggerall = Var(21) != 3102
triggerall = StateType != A
triggerall = NumEnemy
trigger1 = P2BodyDist X = [24,80]
trigger1 = P2Dist Y = [-100,-40]
trigger1 = P2MoveType != A
trigger1 = Random < 500
trigger1 = GameTime%3 = 0

;---------------------------------------------------------------------------
;ジャンプ
[State -1, Jump]
type = VarSet
var(21) = 41+(P2MoveType = A)*(Enemy,AnimTime>-30)*(969+(P2StateType =A)*120)
triggerall = ctrl
triggerall = Var(20)
triggerall = Var(21) != 3102
triggerall = StateType != A
triggerall = NumEnemy
triggerall = GameTime%2 = 0
triggerall = Random < 500
trigger1 = P2BodyDist X > 120
trigger1 = P2MoveType = A
trigger2 = NumHelper(1000)

;ジャンプ
[State -1, Jump]
type = ChangeState
value = 41
triggerall = P2StateType != L
triggerall = StateType != A
triggerall = Var(21) = 41
trigger1 = ctrl

[State -1, Jump Strong Slash]
type = ChangeState
value = 630
triggerall = P2StateType != L
triggerall = P2Life > 250
triggerall = ctrl
triggerall = Var(20)
triggerall = StateType = A
trigger1 = P2BodyDist X = [24,60]
trigger1 = P2Dist Y = [-100,-40]
trigger1 = P2MoveType != A
trigger2 = P2BodyDist X = [24,60]
trigger2 = Pos Y > -100
trigger2 = Vel Y > 0

;---------------------------------------------------------------------------
;カムイ・シトゥキ(弱)
[State -1, Mirror]
type = VarSet
var(21) = 3100*(Enemynear,NumProj>0)*(EnemyNear,AnimTime<-20)*(!EnemyNear,Ctrl)
triggerall = Var(20)
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = !Var(49)
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = NumEnemy
triggerall = Random < 500
trigger1 = ctrl
trigger1 = P2BodyDist X = [120,150]

;---------------------------------------------------------------------------
;カムイ・シトゥキ(中)
[State -1, Mirror]
type = VarSet
var(21) = 3101*(Enemynear,NumProj>0)*(EnemyNear,AnimTime<-20)*(!EnemyNear,Ctrl)
triggerall = Var(20)
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = !Var(49)
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = NumEnemy
triggerall = Random < 500
trigger1 = ctrl
trigger1 = P2BodyDist X = (150,200]

;===========================================================================
;ルプッ(シ)・カムイ・エムッ(シ)
[State -1, Rupssi Kamui Emussi]
type = VarSet
var(21) = 13000-10000*(EnemyNear,AnimTime<-30)
triggerall = Var(20)
triggerall = !NumHelper(3000)
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3100) < 3
triggerall = statetype != A
triggerall = Var(30) >= 24
triggerall = NumEnemy
triggerall = Random < 500
trigger1 = ctrl
trigger1 = P2BodyDist X > 160

;===========================================================================
;怒り爆発
[State -1, Anger burst]
type = VarSet
var(21) = 2000
triggerall = Var(20)
triggerall = ((var(39) = 0)+(TeamMode = turns))>0
triggerall = Var(30) = [0, 24]
triggerall = statetype != A
trigger1 = StateNo = [130,132]
trigger1 = life <= 50
trigger2 = StateNo = [5000,5011]
trigger2 = life <= 250

;---------------------------------------------------------------------------
;コンルノンノ(強)
[State -1, Strong Conl Nonno]
type = VarSet
var(21) = 1120+(((Enemy,Vel X<0)+(Random<200))>0)*10000
triggerall = Var(9) <= 0
triggerall = Var(20)
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = statetype != A
triggerall = (ctrl+Var(16))>0
triggerall = NumEnemy
trigger1 = P2BodyDist X = (60,80]
trigger1 = P2Dist Y = [-100,-40]
trigger1 = P2MoveType = A

;---------------------------------------------------------------------------
;コンルノンノ(弱)
[State -1, Light Conl Nonno]
type = VarSet
var(21) = 1100+(((Enemy,Vel X<0)+(Random<500))>0)*10000
triggerall = Var(9) <= 0
triggerall = Var(20)
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = statetype != A
triggerall = (ctrl+Var(16))>0
triggerall = NumEnemy
trigger1 = P2BodyDist X = [20,60]
trigger1 = P2Dist Y = [-100,-40]
trigger2 = P2BodyDist X = [0,80]
trigger2 = P2StateType = A

;---------------------------------------------------------------------------
;ルプッ(シ)・クアレ（強）
[State -1, Strong Rupusi Qualle]
type = VarSet
var(21) = 1020
triggerall = Var(9) <= 0
triggerall = Var(21) = 1020
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = statetype != A
triggerall = (ctrl+Var(16))>0
trigger1 = P2BodyDist X >= 200
trigger1 = P2MoveType = H

;---------------------------------------------------------------------------
;ルプッ(シ)・クアレ（弱）
[State -1, Light Rupusi Qualle]
type = VarSet
var(21) = 1000+10*(P2BodyDist X=[100,160])+20*(P2BodyDist X>180)
triggerall = Var(9) <= 0
triggerall = Var(20)
triggerall = Var(21) = 1000
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;ルプッ(シ)・クアレ（中）
[State -1, Medium Rupusi Qualle]
type = VarSet
var(21) = 1010
triggerall = Var(9) <= 0
triggerall = Var(20)
triggerall = Var(21) = 1010
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = statetype != A
triggerall = (ctrl+Var(16))>0
triggerall = Random < 500
trigger1 = P2BodyDist X = [120,180]
trigger1 = P2MoveType = H

;---------------------------------------------------------------------------
;コンルシラル
[State -1, Conl Shiraru]
type = VarSet
var(21) = 1200+Floor(Random/500)*10
triggerall = Var(20)
triggerall = !NumHelper(1200)
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = Abs(Vel Y) < 3
triggerall = statetype = A
triggerall = P2Statetype != A
triggerall = StateNo != 270
triggerall = (ctrl+Var(16)) > 0
trigger1 = Vel X >= 0
trigger1 = P2BodyDist X = [-80,40]
trigger2 = Vel X < 0

;---------------------------------------------------------------------------
;踏み込み
[State -1, Run Fwd]
type = VarSet
var(21) = 100
triggerall = Var(20)
triggerall = statetype != A
triggerall = ctrl
triggerall = Random < 200
trigger1 = P2BodyDist X > 160

[State -1, Run Fwd]
type = VarSet
var(21) = 100
triggerall = Var(20)
triggerall = statetype != A
triggerall = ctrl
triggerall = NumEnemy
trigger1 = PrevStateNo = 1020
trigger2 = PrevStateNo = [3100,3101]

;---------------------------------------------------------------------------
;伏せ
[State -1, bAction]
type = VarSet
var(21) = 10113-10000*(EnemyNear,AnimTime<-20)*(EnemyNear,StateType=S)*(EnemyNear,MoveType=A)*(Random<200)+(Random<500)
triggerall = Var(20)
triggerall = statetype != A
triggerall = stateno != [110, 115]
triggerall = NumEnemy
triggerall = P2BoDyDist X < 100
trigger1 = ctrl
trigger2 = stateno = 100
trigger2 = Time > 5

;---------------------------------------------------------------------------
;強ダウン追い討ち
[State -1, Additional Attack]
type = VarSet
var(21) = 296
triggerall = Var(20)
triggerall = statetype != A
triggerall = ctrl || StateNo = 40
trigger1 = P2statetype = L
trigger1 = P2StateNo = 1418

;---------------------------------------------------------------------------
;リープアタック
[State -1, Leap Attack]
type = VarSet
var(21) = 270
triggerall = Var(20)
trigger1 = statetype != A
trigger1 = P2BodyDist X < 60
trigger1 = ctrl
trigger1 = P2StateType = C

;---------------------------------------------------------------------------
;ダッシュ強斬り
[State -1, Dash Slash]
type = VarSet
var(21) = 290+(EnemyNear,GetHitVar(Hittime)=[10,20])*10000
triggerall = Var(20)
triggerall = NumEnemy
trigger1 = stateno = 100
trigger1 = Time > 3
trigger1 = P2BodyDist X < 80
trigger1 = P2MoveType = H

;---------------------------------------------------------------------------
;ゴメンネー
[State -1, Dash palm]
type = VarSet
var(21) = 285+(EnemyNear,GetHitVar(Hittime)>20)*10000
triggerall = Var(21) != 290
triggerall = Var(20)
triggerall = NumEnemy
trigger1 = stateno = 100
trigger1 = Time > 3
trigger1 = P2BodyDist X < 30
trigger1 = P2MoveType = H

;---------------------------------------------------------------------------
;ダッシュキック
[State -1, SlidingKick]
type = VarSet
var(21) = 280
triggerall = Var(21) != [285,290]
triggerall = Var(20)
trigger1 = stateno = 100
trigger1 = Time > 3
trigger1 = command = "y"

;---------------------------------------------------------------------------
;ダッシュ弱斬り
[State -1, DashLightSlash]
type = VarSet
var(21) = 275
triggerall = Var(21) != [280,290]
triggerall = Var(20)
trigger1 = stateno = 100
trigger1 = Time > 3
trigger1 = P2MoveType != H
trigger1 = P2BodyDist X = [80,120]
trigger1 = !NumHelper(1000)
trigger1 = !NumHelper(3000)

;---------------------------------------------------------------------------
;３キック
[State -1, 3 Kick]
type = VarSet
var(21) = 260
triggerall = Var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger1 = command = "y"
trigger1 = P2StateType = S
trigger1 = P2BodyDist X = [20,40]

;---------------------------------------------------------------------------
;遠立ち強斬り
[State -1, Standing Strong Shoot]
type = VarSet
var(21) = 10245-10000*(EnemyNear,AnimTime<-21)
triggerall = P2Life > 250
triggerall = Var(20)
triggerall = statetype != A
triggerall = Abs(P2BodyDist X) = (40,80]
triggerall = ctrl
triggerall = NumEnemy
trigger1 = StateNo = [140,153]
trigger2 = PrevStateNo = [140,153]

;---------------------------------------------------------------------------
;遠立ち強斬り
[State -1, Standing Strong Shoot]
type = VarSet
var(21) = 10245-10000*(EnemyNear,Vel Y > 0)*(EnemyNear,Pos Y/(EnemyNear,Vel Y+0.000001) = [-50,-30])
triggerall = P2Life > 250
triggerall = Var(20)
triggerall = statetype != A
triggerall = Abs(P2BodyDist X) = (40,80]
trigger1 = ctrl
trigger1 = NumEnemy

;---------------------------------------------------------------------------
;近立ち強斬り
[State -1, Standing Strong Slash]
type = VarSet
var(21) = 10240-10000*(EnemyNear,AnimTime<-18)+190*(random<500)
triggerall = P2Life > 250
triggerall = Var(20)
triggerall = Var(21) != 245
triggerall = statetype != A
triggerall = Abs(P2BodyDist X) <= 40
triggerall = ctrl
triggerall = NumEnemy
trigger1 = StateNo = [140,153]
trigger2 = PrevStateNo = [140,153]

;---------------------------------------------------------------------------
;近立ち強斬り
[State -1, Standing Strong Slash]
type = VarSet
var(21) = 10240-10000*(EnemyNear,Vel Y > 0)*(EnemyNear,Pos Y/(Enemy,Vel Y+0.000001) = [-50,-30])+190*(random<500)
triggerall = P2Life > 250
triggerall = Var(20)
triggerall = Var(21) != 245
triggerall = statetype != A
triggerall = Abs(P2BodyDist X) <= 40
trigger1 = ctrl
trigger1 = NumEnemy

;---------------------------------------------------------------------------
;遠立ち中斬り
[State -1, Standing Light Shoot]
type = VarSet
var(21) = 10225-10000*(EnemyNear,MoveContact)*(EnemyNear,AnimTime=[-21,-18])
triggerall = Var(20)
triggerall = Var(21) != [240,245]
triggerall = statetype != A
trigger1 = Abs(P2BodyDist X) = (32,64]
trigger1 = ctrl
trigger1 = NumEnemy

;---------------------------------------------------------------------------
;遠立ち中斬り
[State -1, Standing Light Shoot]
type = VarSet
var(21) = 10225-10000*(EnemyNear,Vel Y > 0)*(EnemyNear,Pos Y/(EnemyNear,Vel Y+0.000001) = [-30,-4])
triggerall = Var(20)
triggerall = Var(21) != [240,245]
triggerall = statetype != A
trigger1 = Abs(P2BodyDist X) = (32,64]
trigger1 = ctrl
trigger1 = NumEnemy

;---------------------------------------------------------------------------
;近立ち中斬り
[State -1, Standing Medium Slash]
type = VarSet
var(21) = 10220-10000*(EnemyNear,MoveContact)*(EnemyNear,AnimTime=[-18,-8])
triggerall = Var(20)
triggerall = Var(21) != [225,245]
triggerall = Abs(P2BodyDist X) <= 32
trigger1 = ctrl
trigger1 = NumEnemy

;---------------------------------------------------------------------------
;近立ち中斬り
[State -1, Standing Medium Slash]
type = VarSet
var(21) = 10220-10000*(EnemyNear,Vel Y > 0)*(EnemyNear,Pos Y/(EnemyNear,Vel Y+0.000001) = [-30,-4])
triggerall = Var(20)
triggerall = Var(21) != [225,245]
triggerall = Abs(P2BodyDist X) <= 32
trigger1 = ctrl
trigger1 = NumEnemy

;---------------------------------------------------------------------------
;近立ち弱斬り
[State -1, Stand Light Slash]
type = VarSet
var(21) = 200
triggerall = Var(20)
triggerall = P2BodyDist X = [0,32]
triggerall = Var(21) != [205,245]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = command = "x"
trigger2 = StateNo = 200
trigger2 = Time > 11
trigger2 = Random < 500

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = VarSet
var(21) = 181
triggerall = Var(20)
triggerall = Var(21) = 181
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1, Jump Light Kick]
type = VarSet
var(21) = 610
triggerall = Var(20)
triggerall = Var(21) = 610
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ弱斬り
[State -1, Jump Light Slash]
type = VarSet
var(21) = 600
triggerall = Var(20)
triggerall = Var(21) = 600
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ中斬り
[State -1, Jump Medium Slash]
type = VarSet
var(21) = 620
triggerall = Var(20)
triggerall = Var(21) = 620
triggerall = statetype = A
trigger1 = ctrl



;===========================================================================
;---------------------------------------------------------------------------
;カムイ・シトゥキ
[State -1, Mirror]
type = ChangeState
value = Var(21)
triggerall = P2StateType != L
triggerall = Var(21) = [3100,3102]
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = !Var(49)
triggerall = Power >= 1000
triggerall = statetype != A
triggerall = Random < 750
trigger1 = ctrl
trigger2 = Var(16)

;===========================================================================
;ルプッ(シ)・カムイ・エムッ(シ)
[State -1, Rupssi Kamui Emussi]
type = ChangeState
value = 3000
triggerall = P2StateType != L
triggerall = Var(21) = 3000
triggerall = !NumHelper(3000)
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3100) < 3
triggerall = statetype != A
triggerall = Var(30) >= 24
triggerall = Random < 500
trigger1 = ctrl
trigger2 = Var(16)

;===========================================================================
;怒り爆発
[State -1, Anger burst]
type = SelfState
value = 2000
triggerall = P2StateType != L
triggerall = Var(21) = 2000
triggerall = Var(30) = [0, 24]
triggerall = statetype != A
triggerall = life <= 250
triggerall = Random < 500
trigger1 = ctrl
trigger2 = Var(16)
trigger3 = StateNo = [130,132]
trigger4 = StateNo = [5000,5011]

;---------------------------------------------------------------------------
;投げ
[State -1, 投げ]
type = ChangeState
value = 800+(BackEdgeBodyDist<100)
triggerall = Var(20)
triggerall = statetype != A
triggerall = p2stateno != [5000, 5210]
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = ctrl || StateNo = 100
trigger1 = ABS(p2bodydist X) < 6
trigger1 = (Random < 500)*(GameTime%10=0)

;---------------------------------------------------------------------------
;コンルノンノ
[State -1, Conl Nonno]
type = ChangeState
value = Var(21)
triggerall = P2StateType != L
triggerall = Var(9) <= 0
triggerall = Var(21) = [1100,1120]
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;ルプッ(シ)・クアレ
[State -1, Rupusi Qualle]
type = ChangeState
value = Var(21)
triggerall = RoundState = 2
triggerall = Var(9) <= 0
triggerall = Var(21) = [1000,1020]
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1200) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Var(16)

;---------------------------------------------------------------------------
;コンルシラル
[State -1, Conl Shiraru]
type = ChangeState
value = Var(21)
triggerall = RoundState = 2
triggerall = Var(21) = [1200,1220]
triggerall = !NumHelper(1200)
triggerall = NumHelper(1000) < 3
triggerall = NumHelper(1100) < 3
triggerall = NumHelper(1300) < 3
triggerall = NumHelper(3000) < 3
triggerall = NumHelper(3100) < 3
triggerall = Abs(Vel Y) < 3
triggerall = statetype = A
triggerall = Random < 500
trigger1 = ctrl
trigger2 = Var(16)

;===========================================================================
;---------------------------------------------------------------------------
;踏み込み
[State -1, Run Fwd]
type = ChangeState
value = Var(21)
triggerall = P2StateType != L
triggerall = Var(21) = [100,105]
triggerall = statetype != A
triggerall = Random < 500
trigger1 = ctrl

;---------------------------------------------------------------------------
;b行動
[State -1, bAction]
type = ChangeState
value = Var(21)
triggerall = P2StateType != L
triggerall = Var(21) = [111,115]
triggerall = statetype != A
triggerall = stateno != [110, 115]
trigger1 = ctrl
trigger2 = stateno = 100
trigger2 = Time > 5

;===========================================================================
;---------------------------------------------------------------------------
;強ダウン追い討ち
[State -1, Additional Attack]
type = ChangeState
value = 296
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = ctrl || StateNo = 40
trigger1 = Var(21) = 296
trigger1 = P2statetype = L
trigger1 = P2stateNo = 1417
trigger1 = P2Life > 100

;---------------------------------------------------------------------------
;リープアタック
[State -1, Leap Attack]
type = ChangeState
value = 270
triggerall = P2StateType != L
triggerall = Var(21) = 270
triggerall = Random < 500
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ダッシュ斬り
[State -1, Dash Strong Slash]
type = ChangeState
value = Var(21)
triggerall = Var(21) = [275,290]
trigger1 = stateno = 100
trigger1 = Time > 3

;---------------------------------------------------------------------------
;３キック
[State -1, 3 Kick]
type = ChangeState
value = 260
triggerall = P2StateType != L
triggerall = statetype != A
triggerall = Var(21) = 260
triggerall = Random < 500
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠立ち強斬り
[State -1, Standing Strong Shoot]
type = ChangeState
value = 245
triggerall = P2StateType != L
triggerall = Var(21) = 245
triggerall = statetype != A
triggerall = Abs(P2BodyDist X) > 40
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠立ち弱斬り
[State -1, Standing Light Shoot]
type = ChangeState
value = 205
triggerall = P2StateType != L
triggerall = Var(21) = 205
triggerall = statetype != A
trigger1 = Abs(P2BodyDist X) > 32
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠立ち中斬り
[State -1, Standing Light Shoot]
type = ChangeState
value = 225
triggerall = P2StateType != L
triggerall = Var(21) = 225
triggerall = statetype != A
triggerall = Random < 500
trigger1 = Abs(P2BodyDist X) > 32
trigger1 = ctrl

;---------------------------------------------------------------------------
;近立ち強斬り
[State -1, Standing Strong Slash]
type = ChangeState
value = 240
triggerall = P2StateType != L
triggerall = Var(21) = 240
triggerall = statetype != A
triggerall = Abs(P2BodyDist X) <= 40
trigger1 = ctrl

;---------------------------------------------------------------------------
;近立ち中斬り
[State -1, Standing Medium Slash]
type = ChangeState
value = 220
triggerall = P2StateType != L
triggerall = Var(21) = 220
triggerall = Abs(P2BodyDist X) <= 32
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近立ち弱斬り
[State -1, Stand Light Slash]
type = ChangeState
value = 200
triggerall = P2StateType != L
triggerall = Var(21) = 200
triggerall = Abs(P2BodyDist X) <= 32
triggerall = statetype != A
triggerall = Random < 500
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = Time > 11

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = null;ChangeState
value = 181+(command = "holddown")+(command = "holdfwd")*2+(command = "holdback")*4
triggerall = RoundState = 2
triggerall = Var(21) = 181
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強斬り
[State -1, Crouching Strong Shoot]
type = ChangeState
value = 430
triggerall = P2StateType != L
triggerall = Var(21) = 430
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 610
triggerall = P2StateType != L
triggerall = Var(21) = 610
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ強斬り
[State -1, Jump Strong Slash]
type = ChangeState
value = 630
triggerall = P2StateType != L
triggerall = Var(21) = 630
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ弱斬り
[State -1, Jump Light Slash]
type = ChangeState
value = 600
triggerall = P2StateType != L
triggerall = Var(21) = 600
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ中斬り
[State -1, Jump Medium Slash]
type = ChangeState
value = 620
triggerall = P2StateType != L
triggerall = Var(21) = 620
triggerall = statetype = A
trigger1 = ctrl

;===========================================================================
[State -1, Var Reset]
type = VarAdd
var(21) = 5000
trigger1 = Var(21) > 40

;===========================================================================
[State -1, Var Reset2]
type = VarSet
var(21) = 0
trigger1 = Var(21) > 50000
