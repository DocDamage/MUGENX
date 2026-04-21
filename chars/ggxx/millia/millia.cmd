;-| Super Motions |------------------------------------------------
[Command];ウィンガー
name = "qcbhcf_b"
command = ~D, B, D, F, b
time = 25

[Command];エメラルドレイン
name = "2qcf_y"
command = ~D, F, D, F, y
time = 20

[Command];アイアンメイデン
name = "2qcf_b"
command = ~D, F, D, F, b
time = 20

[Command]
name = "AI"
command = ~x, y, z, a, b, c, s
time = 0

;-| Special Motions |----------------------------------------------
[Command];タンデムトップ＆リヴィングランサー
name = "qcf_y"
command = ~D, DF, F, y
[Command]
name = "qcf_b"
command = ~D, DF, F, b

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command];バッドムーン
name = "qcf_x"
command = ~D, DF, F, x

[Command];高速落下
name = "qcf_a"
command = ~D, DF, F, a

[Command];アイアンセイバー
name = "qcb_x"
command = ~D, DB, B, x

[Command];前転
name = "qcb_a"
command = ~D, DB, B, a

[Command];シークレットガーデン
name = "qcb_b"
command = ~D, DB, B, b

[Command];サイレントフォース＆リヴィングランサー(上)
name = "qcb_y"
command = ~D, DB, B, y

[Command];ラストシェイカー
name = "yyy"
command = y, y, y
time = 20

;-| Valiable |-----------------------------------------------------
[Command]
name = "qcf_s"
command = ~D, DF, F, s
[Command]
name = "qcb_s"
command = ~D, DB, B, s
[Command]
name = "rqcb_s"
command = ~B, DB, D, s

;-| Double Tap |---------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10
[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |---------------------------------------
[Command]
name = "recovery"
command = x
time = 1
[Command]
name = "recovery"
command = a
time = 1
[Command]
name = "recovery"
command = y
time = 1
[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "roman"
command = x+a+y
time = 1
[Command]
name = "roman"
command = x+a+b
time = 1
[Command]
name = "roman"
command = x+y+b
time = 1
[Command]
name = "roman"
command = a+y+b
time = 1

;-| Single Button |------------------------------------------------
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
name = "s"
command = s
time = 1

[Command]
name = "hold_x"
command = /x
time = 1
[Command]
name = "hold_y"
command = /y
time = 1
[Command]
name = "hold_z"
command = /z
time = 1
[Command]
name = "hold_a"
command = /a
time = 1
[Command]
name = "hold_b"
command = /b
time = 1
[Command]
name = "hold_c"
command = /c
time = 1
[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |-----------------------------------------------------
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

;------------------------------------------------------------------
[Statedef -1]

;------------------------------------------------------------------
[State アイアンメイデン]
type = ChangeState
value = 2500
triggerall = var(10) = 1 || fvar(0) = 0 && power>= 2000
triggerall = command = "2qcf_b"
triggerall = roundstate = 2
trigger1 = statetype!= A && ctrl

[State エメラルドレイン]
type = ChangeState
value = 2000
triggerall = command = "2qcf_y"
triggerall = power>= 1000 && roundstate = 2
trigger1 = statetype!= A && ctrl
trigger2 =(stateno = [200,480])&& movecontact

[State ウィンガー]
type = ChangeState
value = 2050
triggerall = command = "qcbhcf_b"
triggerall = power>= 1000 && roundstate = 2
trigger1 = statetype!= A && ctrl
trigger2 =(stateno = [200,480])&& movecontact

;------------------------------------------------------------------
[State タンデムトップ]
type = ChangeState
value = 1000
triggerall = numhelper(1040) = 0
triggerall = fvar(0) = 0 && command="upper_y" || fvar(0) = 1 &&(command="qcf_y"||command="qcf_b")
trigger1 = statetype!= A && ctrl
trigger2 =(stateno = [200,480])&& movecontact
trigger3 = fvar(0) = 0 && power>= 1000 && stateno = [150,153]
[State プリティメイズ]
type = ChangeState
value = 1020
triggerall = numhelper(1040) = 0
triggerall = fvar(0) = 0 && command="upper_y" || fvar(0) = 2 &&(command="qcf_y"||command="qcf_b")
trigger1 = ctrl
trigger2 =(stateno = [200,680])&& movecontact
trigger3 = fvar(0) = 0 && power>= 1000 && stateno = [154,155]

[State リヴィングランサー]
type = ChangeState
value = 1250
triggerall = numhelper(1290) = 0
triggerall = fvar(0) = 0 && command = "qcf_y"
trigger1 = statetype!= A && ctrl
trigger2 =(stateno = [200,480])&& movecontact
[State リヴィングランサー(上)]
type = ChangeState
value = 1260
triggerall = numhelper(1291) = 0
triggerall = fvar(0) = 0 && command = "qcb_y"
trigger1 = statetype!= A && ctrl
trigger2 =(stateno = [200,480])&& movecontact

[State サイレントフォース]
type = ChangeState
value = 1300
triggerall = numhelper(1340) = 0
triggerall = fvar(0)>= 1 && command = "qcb_y"
trigger1 = statetype = A && ctrl
trigger2 =(stateno = [600,680])&& movecontact

[State バッドムーン]
type = ChangeState
value = 1170
triggerall = fvar(0)>= 1 && command = "qcf_x"
trigger1 = statetype = A && ctrl
trigger2 =(stateno = [600,680])&& movecontact

[State 高速落下]
type = ChangeState
value = 1120
triggerall = command = "qcf_a"
trigger1 = statetype = A && ctrl
trigger2 =(stateno = [600,680])&& movecontact

[State アイアンセイバー]
type = ChangeState
value = 1150
triggerall = fvar(0)>= 1 && command = "qcb_x"
trigger1 = statetype!= A && ctrl
trigger2 =(stateno = [200,480])&& movecontact

[State 前転]
type = ChangeState
value = 1100
triggerall = command = "qcb_a"
trigger1 = statetype!= A && ctrl
trigger2 =(stateno = [200,480])&& movecontact

[State シークレットガーデン]
type = ChangeState
value = 1200
triggerall = numhelper(1240) = 0
triggerall = command = "qcb_b"
trigger1 = statetype!= A && ctrl
trigger2 =(stateno = [200,480])&& movecontact

[State ラストシェイカー]
type = ChangeState
value = 1050
triggerall = command = "yyy" || fvar(0) = 2 && command = "qcb_y"
trigger1 = statetype!= A && ctrl || stateno = [240,250]
trigger2 =(stateno = [240,480])&& movecontact

;------------------------------------------------------------------
[State Charge Attack]
type = ChangeState
value = 900
triggerall = fvar(3) < 2 && fvar(0) = 0
triggerall = command = "qcf_s"
triggerall = roundstate = 2
trigger1 = statetype!= A && ctrl

[State Dead Angle Attack]
type = ChangeState
value = 910
triggerall = fvar(0)>= 1 && command = "holdfwd"
triggerall = power>= 1000 && roundstate = 2
triggerall = stateno = [150,153]
trigger1 = command="x" &&(command="a"||command="y"||command="b")
trigger2 = command="a" &&(command="y"||command="b")
trigger3 = command="y" && command="b"

[State (Force)Roman Cancell]
type = ChangeState
triggerall = fvar(0)>= 1 && command = "roman"
triggerall = power>= 500 && roundstate = 2
trigger1 = power>= 1000 && hitdefattr = SCA,AA
trigger1 =(stateno!= [800,999])&& movehit
trigger2 = var(3) = 1 && stateno = 1000 && animelem = 4,[5,9]
trigger3 = stateno = 1300 && animelem = 3,[5,9]
value = 960

[State Psych Burst]
type = ChangeState
triggerall = fvar(10) = 1500
triggerall = command = "z" &&(command="x"||command="a"||command="y"||command="b")
triggerall = roundstate = 2
trigger1 = ctrl
trigger2 =(stateno = [150,155])|| stateno = [5000,5109]
value = 970

[State Instant Kill]
type = ChangeState
value = 990
triggerall = var(10) < 2 && fvar(0)>= 1
triggerall =(command="x"&&command="a"&&command="y"&&command="b")||(command="z"&&command="c")
triggerall = roundstate = 2
trigger1 = statetype!= A && ctrl

[State Faultless Defense]
type = ChangeState
triggerall = fvar(4) = 1
triggerall = power > 0 && roundstate = 2
trigger1 = ctrl && stateno!= 40 && stateno!= 42 && stateno!= 102
value = 120

[State 接触技]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = p2bodydist x < 5
trigger1 = p2statetype = S && p2movetype!= H
trigger1 = stateno!= 100
trigger1 = statetype = S && ctrl

[State 空中接触技]
type = ChangeState
value = 820
triggerall = command = "b"
triggerall = command = "holdfwd"
triggerall = p2bodydist x < 20 && p2bodydist y = [-40,40]
triggerall = p2statetype = A
trigger1 = statetype = A && ctrl
;trigger2 =(stateno = [600,620])&& movehit

;------------------------------------------------------------------
[State ダストアタック]
type = ChangeState
value = 280
triggerall = command = "z" ||(command = "y" && command = "b")
triggerall = command!= "holddown"
trigger1 = statetype = S && ctrl
trigger2 =(stateno = [200,460])&& stateno!= 280
trigger2 = movecontact

[State 足払い]
type = ChangeState
value = 480
triggerall = command = "z" ||(command = "y" && command = "b")
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 =(stateno = [200,460])&& stateno!= 280
trigger2 = movecontact

[State 空中ダストアタック]
type = ChangeState
value = 680
triggerall = command = "z" ||(command = "y" && command = "b")
trigger1 = statetype = A && ctrl
trigger2 =(stateno = [600,660])&& movecontact

;------------------------------------------------------------------
[State 立ちパンチ(近距離)]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command!= "holddown" && command!= "holdfwd"
trigger1 = statetype = S && ctrl || stateno = 101
trigger2 =(stateno = 200 || stateno = 400)&& movecontact

[State 立ちパンチ(遠距離)]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command!= "holddown" && command = "holdfwd"
trigger1 = statetype = S && ctrl || stateno = 101
trigger2 =(stateno = 200 || stateno = 220 || stateno = 240)&& movecontact
trigger3 =(stateno = [400,420])&& movecontact

[State 立ちキック(近距離)]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command!= "holddown" && command!= "holdfwd"
trigger1 = statetype = S && ctrl || stateno = 101
trigger2 =(stateno = 200 || stateno = 220)&& movecontact
trigger3 =(stateno = [400,420])&& movecontact

[State 立ちキック(遠距離)]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command!= "holddown" && command = "holdfwd"
trigger1 = statetype = S && ctrl || stateno = 101
trigger2 =(stateno = 200 || stateno = 220)&& movecontact

[State 立ち斬り・弱(近距離)]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command!= "holddown"
triggerall = p2bodydist x < 20
trigger1 = statetype = S && ctrl || stateno = 101
trigger2 =(stateno = [200,220])&& movecontact
trigger3 =(stateno = [400,420])&& movecontact

[State 立ち斬り・弱(遠距離)]
type = ChangeState
value = 250
triggerall = command = "y"
triggerall = command!= "holddown"
trigger1 = statetype = S && ctrl || stateno = 101
trigger2 =(stateno = [200,240])&& stateno!= 230 && movecontact

[State 立ち斬り・強(近距離)]
type = ChangeState
value = 260
triggerall = command = "b"
triggerall = command!= "holddown" && command!= "holdfwd"
trigger1 = statetype = S && ctrl || stateno = 101
trigger2 =(stateno = [200,250])&& stateno!= 230 && movecontact
trigger3 =(stateno = [400,440])&& movecontact

[State 立ち斬り・強(遠距離)]
type = ChangeState
value = 270
triggerall = command = "b"
triggerall = command!= "holddown" && command = "holdfwd"
trigger1 = statetype = S && ctrl || stateno = 101
trigger2 =(stateno = [200,250])&& stateno!= 230 && movecontact
trigger3 =(stateno = [400,440])&& movecontact

;------------------------------------------------------------------
[State しゃがみパンチ]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl || stateno = 101
trigger2 =(stateno = 200 || stateno = 400)&& movecontact

[State しゃがみキック]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl || stateno = 101
trigger2 =(stateno = 200 || stateno = 220)&& movecontact
trigger3 =(stateno = [400,420])&& movecontact

[State しゃがみ斬り・弱]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl || stateno = 101
trigger2 =(stateno = [200,250])&& movecontact
trigger3 =(stateno = [400,420])&& movecontact

[State しゃがみ斬り・強]
type = ChangeState
value = 460
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl || stateno = 101
trigger2 =(stateno = [200,250])&& movecontact
trigger3 =(stateno = [400,440])&& movecontact

;------------------------------------------------------------------
[State ジャンプパンチ]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl
trigger2 =(stateno = 600 || stateno = 620)&& movecontact

[State ジャンプキック]
type = ChangeState
value = 620
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 =(stateno = [600,620])&& movecontact

[State ジャンプ斬り・弱]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 =(stateno = [600,630])&& movecontact

[State ジャンプ斬り・強]
type = ChangeState
value = 660
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 =(stateno = [600,650])&& movecontact

;------------------------------------------------------------------
[State Dash Cancell]
type = ChangeState
value = 950
triggerall = fvar(0) = 0 && var(14) = 0
triggerall = command = "FF"
triggerall = command!= "holddown"
triggerall = statetype!= A
trigger1 =(stateno = [200,599])&& movecontact

[State Chase Jump]
type = ChangeState
value = 952
triggerall = fvar(14) = 0
triggerall = command = "holdup"
triggerall = enemynear,gethitvar(animtype) = 5
triggerall = movehit
trigger1 = stateno = 280 && animelem = 4,[0,9]

[State Jump Cancell]
type = ChangeState
value = 951
triggerall = var(14) < 2
triggerall = command = "holdup"
trigger1 =(stateno = [200,799])&& movehit

[State Hi Jump]
type = ChangeState
value = 42
trigger1 = command = "holdup"
trigger1 = stateno = 10

[State Air Dash]
type = ChangeState
value = 102
triggerall = var(14) < 2
triggerall = command = "FF" || command = "BB"
triggerall = stateno!= 45 && stateno!= 102 && pos y < -40
trigger1 = prevstateno!= 45
trigger1 = statetype = A && ctrl
trigger2 = prevstateno = 45 && stateno = 50 && time>= 10
trigger3 = stateno = 161 && time>= 5
trigger4 =(stateno = [600,799])&& movehit

[State Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = command!= "holddown"
trigger1 = statetype = S && ctrl

[State Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = command!= "holddown"
trigger1 = statetype = S && ctrl

[State Respect]
type = ChangeState
value = 197
trigger1 = command = "s"
trigger1 = command = "holdfwd"
trigger1 = statetype = S && ctrl

[State Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype = S && ctrl
trigger2 =(stateno = [200,480])&& movecontact
