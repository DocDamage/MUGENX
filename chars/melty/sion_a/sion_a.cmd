;------------------------------------------------------------------------------
;      Sion_Tatari's Command
;------------------------------------------------------------------------------
;
; AI only
;


;------------------------------------------------------------------------------
; 特殊技
;------------------------------------------------------------------------------


[Command]
Name    = "B + b"
Command = /B, b


[Command]
Name    = "F + c"
Command = /F, c

[Command]
Name    = "エリアル"
Command = /DF, b

[Command]
Name    = "ハイジャンプ"
Command = ~DB, UF
Time = 12

[Command]
Name    = "シールドカウンター"
Command = ~D, DF, F, z
Time = 20

[Command]
Name    = "シールドバンカー"
Command = ~D, DB, B, z
Time = 20

[Command]
Name    = "カウンター"
Command = ~F,z+c
Time = 20

[Command]
Name    = "BLOOD HEAT"
Command = ~D, D, D, z
Time = 30

;------------------------------------------------------------------------------
; 必殺技
;------------------------------------------------------------------------------


[Command]
name = "623+a"
command = ~F, D, DF, a
time = 18

[Command]
name = "623+b"
command = ~F, D, DF, b
time = 18

[Command]
name = "623+c"
command = ~F, D, DF, c
time = 18

[Command]
name = "236+a"
command = ~D, DF, F, a
time = 15

[Command]
name = "236+b"
command = ~D, DF, F, b
time = 15

[Command]
name = "236+c"
command = ~D, DF, F, c
time = 15

[Command]
name = "エーテライト・グランド・弱"
command = ~D, DB, B, a
time = 15

[Command]
name = "エーテライト・グランド・中"
command = ~D, DB, B, b
time = 15

[Command]
name = "エーテライト・グランド・強"
command = ~D, DB, B, c
time = 15

[Command]
Name    = "22+a"
Command = ~D, D, a
time = 15

[Command]
Name    = "22+b"
Command = ~D, D, b
time = 15

[Command]
Name    = "22+c"
Command = ~D, D, c
time = 15

[Command]
Name    = "22+z"
Command = ~D, D, z
time = 15

[Command]
name = "カッティングシンク・弱"
command = ~B, D, DB, a
time = 18

[Command]
name = "カッティングシンク・中"
command = ~B, D, DB, b
time = 18

[Command]
name = "カッティングシンク・強"
command = ~B, D, DB, c
time = 18
;------------------------------------------------------------------------------
; アークドライブ
;------------------------------------------------------------------------------

[Command]
name = "41236+c"
command = ~B, DB, D, DF, F, c
time = 30

[Command]
Name    = "63214+c"
Command = ~F, DF, D, DB, B, c
Time = 30

[Command]
Name    = "222+c"
Command = ~D, D, D, c
Time = 30


;------------------------------------------------------------------------------
; ラストアーク
;------------------------------------------------------------------------------

; 現在未搭載


[Command]
Name    = "?"
Command = ~B, DB, D, DF, F, z
Time = 30


;------------------------------------------------------------------------------
; 基本システム
;------------------------------------------------------------------------------

[Command]
name = "FF"
command = F,F
time = 10

[Command]
name = "BB"
command = B,B
time = 10

[Command]
name = "recovery"
command = a
time = 1

[Command]
name = "recovery"
command = b
time = 1

[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "recovery"
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
name = "s"
command = s
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
name = "hold_s"
command = /s
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;==============================================================================
;消すと下の記述がパーになるので消さないこと

[Statedef -1]

;------------------------------------------------------------------------------
; BH時　ブラックバレル
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2502
triggerall = command = "41236+c"
triggerall = statetype != A
Triggerall = Var(33) <= -1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421 
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; ブラックバレル
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2500
triggerall = command = "41236+c"
Triggerall = Var(33) >= 1
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct
;------------------------------------------------------------------------------
; ?
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3100
triggerall = command = "?"
triggerall = power >= 3000
triggerall = statetype != A
Triggerall = Var(33) <= -1
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415 || StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; エーテライトエア・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1030
triggerall = command = "623+a"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; エーテライトエア・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1040
triggerall = command = "623+b"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; エーテライトエア・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1050
triggerall = command = "623+c"
triggerall = statetype != A
;triggerall = ((Power >= 1000) || (Var(33) != 0))
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
;　威嚇射撃・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1000
triggerall = command = "236+a"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
;　威嚇射撃・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1010
triggerall = command = "236+b"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
;　威嚇射撃・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1020
triggerall = command = "236+c"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; カッティングシンク・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1930
triggerall = command = "カッティングシンク・弱"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; カッティングシンク・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1940
triggerall = command = "カッティングシンク・中"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; カッティングシンク・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1950
triggerall = command = "カッティングシンク・強"
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 名称未定・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1140
triggerall = command = "22+a"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 名称未定・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1150
triggerall = command = "22+b"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 名称未定・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1160
triggerall = command = "22+c"
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; エーテライト・グランド・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1200
triggerall = command = "エーテライト・グランド・弱"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; エーテライト・グランド・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1210
triggerall = command = "エーテライト・グランド・中"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; エーテライト・グランド・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1220
triggerall = command = "エーテライト・グランド・強"
triggerall = ((Power >= 1000) || (Var(33) != 0))
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 220 || StateNo = 221|| StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 420 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; スライドエア・弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1500
triggerall = command = "エーテライト・グランド・弱"
triggerall = statetype = A
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; スライドエア・中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1510
triggerall = command = "エーテライト・グランド・中"
triggerall = statetype = A
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; スライドエア・強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1520
triggerall = command = "エーテライト・グランド・強"
triggerall = statetype = A
triggerall = ((Power >= 1000) || (Var(33) != 0))
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; シールドカウンター　立
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 700
triggerall = command = "シールドカウンター"
triggerall = statetype = S
Trigger1 = StateNo = 160
Trigger1 = MoveContAct

;------------------------------------------------------------------------------
; シールドカウンター　屈
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 710
triggerall = command = "シールドカウンター"
triggerall = statetype = C
Trigger1 = StateNo = 161
Trigger1 = MoveContAct

;------------------------------------------------------------------------------
; シールドカウンター　空
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 720
triggerall = command = "シールドカウンター"
triggerall = statetype = A
Trigger1 = StateNo = 162
Trigger1 = MoveContAct

;------------------------------------------------------------------------------
; シールドバンカー
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 730
triggerall = command = "シールドバンカー"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 221 || StateNo = 400 || StateNo = 410  || StateNo = 421
Trigger2 = MoveContAct

;------------------------------------------------------------------------------
; BLOOD HEAT
;------------------------------------------------------------------------------
[State -1]
Type = ChangeState
Value = 910
Trigger1 = Var(36) = 0
Trigger1 = Var(33) >= 1
TriggerAll = Command = "BLOOD HEAT"
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = StateNo = 160 || StateNo = 161
Trigger2 = MoveContAct

;------------------------------------------------------------------------------
; HEAT 強制開放
;------------------------------------------------------------------------------
[State -1]
Type = ChangeState
Value = 900
Trigger1 = Var(33) = 0
TriggerAll = Command = "BLOOD HEAT"
TriggerAll = Power >= 1000
TriggerAll = StateType != A
Trigger1 = Ctrl
Trigger2 = StateNo = 160 || StateNo = 161
Trigger2 = MoveContAct

;------------------------------------------------------------------------------
;　威嚇射撃・リロード
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1011
triggerall = command = "22+z"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 221 || StateNo = 225 || StateNo = 400 || StateNo = 410 || StateNo = 415|| StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 背負い投げ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;------------------------------------------------------------------------------
; 外又ふうの蹴り
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 810
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;------------------------------------------------------------------------------
; 空中投げ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 820
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger2 = ctrl
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger3 = StateNo = 600
trigger3 = ((command = "holdfwd") || (command = "holdback"))
trigger3 = MoveContact
trigger4 = StateNo = 610
trigger4 = ((command = "holdfwd") || (command = "holdback"))
trigger4 = MoveContact

;------------------------------------------------------------------------------
; 蹴り
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 215
triggerall = command = "B + b"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 400 || StateNo = 410 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContact

;------------------------------------------------------------------------------
; エーテライト攻撃
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 225
triggerall = command = "F + c"
triggerall = statetype != A
Triggerall = Var(31) != 2
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContact

;------------------------------------------------------------------------------
; エリアル
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 415
triggerall = command = "エリアル"
triggerall = statetype != A
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410 || StateNo = 421
Trigger2 = MoveContact
Trigger3 = StateNo = 160 || StateNo = 161
Trigger3 = MoveContact
;------------------------------------------------------------------------------
; 立ち　シールド
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 160
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,420]) && (MoveContact))

;------------------------------------------------------------------------------
; 屈　シールド
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 161
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((StateNo = [200,420]) && (MoveContact))

;------------------------------------------------------------------------------
; 空　シールド
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 162
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = [600,620]) && (MoveContact))

;------------------------------------------------------------------------------
; ダッシュ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl =1
;Trigger2 = StateNo = 160
;Trigger2 = MoveContact

;------------------------------------------------------------------------------
; バックステップ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410 || StateNo = 421
Trigger2 = MoveContAct
Trigger2 = StateNo = 160 || StateNo = 161
Trigger2 = MoveContact

;------------------------------------------------------------------------------
; ハイジャンプ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 920
trigger1 = command = "ハイジャンプ"
trigger1 = statetype = S
trigger1 = ctrl = 1
;Trigger2 = StateNo = 160
;Trigger2 = MoveContact

;------------------------------------------------------------------------------
; 空中ダッシュ
;------------------------------------------------------------------------------
[State -1, Air Dash]
type = ChangeState
value = 110
triggerall = command = "FF"
triggerall = statetype = A
Triggerall = Var(23) = 0 
trigger1 = ctrl =1
trigger1 = stateno != 110
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 空中バックダッシュ
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 115
triggerall = command = "BB"
triggerall = statetype = A
Triggerall = Var(23) = 0 
trigger1 = stateno != 115
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610 || StateNo = 620 
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 立ち　弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(4) > 0))
trigger3 = ((StateNo = 200) && (MoveContact))
Trigger4 =  StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410 || StateNo = 421
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || StateNo = 1221
Trigger5 = MoveContAct

;------------------------------------------------------------------------------
; 立ち　中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 215 || StateNo = 400 || StateNo = 410  || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || StateNo = 1221
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 立ち　強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 221
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410  || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || StateNo = 1221
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 屈　弱
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((StateNo = 400) && (!MoveContact) && (AnimElemTime(4) > 0))
trigger3 = ((StateNo = 400) && (MoveContact))
Trigger4 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 410 || StateNo = 421
Trigger4 = MoveContAct
Trigger5 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || StateNo = 1221
Trigger5 = MoveContAct

;------------------------------------------------------------------------------
; 屈　中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 421
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || StateNo = 1221
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 屈　強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 421
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
Trigger2 = StateNo = 200 || StateNo = 210 || StateNo = 215 || StateNo = 400 || StateNo = 410 
Trigger2 = MoveContAct
Trigger3 = StateNo = 160 || StateNo = 161 || StateNo = 1211 || StateNo = 1221
Trigger3 = MoveContAct

;------------------------------------------------------------------------------
; 空　弱　上昇時
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 600
triggerall = ((command = "a") && (Vel Y <= 0))
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
Trigger4 = StateNo = 610 || StateNo = 620
Trigger4 = MoveContAct
Trigger5 = StateNo = 162
Trigger5 = MoveContAct

;------------------------------------------------------------------------------
; 空　弱　下降時
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 605
triggerall = ((command = "a") && (Vel Y > 0))
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
trigger4 = ((StateNo = 605) && (!MoveContact) && (AnimElemTime(3) > 0))
trigger5 = ((StateNo = 605) && (MoveContact))
Trigger6 = StateNo = 610 || StateNo = 620
Trigger6 = MoveContAct
Trigger7 = StateNo = 162
Trigger7 = MoveContAct
Trigger4 = StateNo = 110 || StateNo = 115

;------------------------------------------------------------------------------
; 空　中
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
Triggerall = Var(21) = 0 
trigger1 = statetype = A
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 620
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct
Trigger4 = StateNo = 110 || StateNo = 115


;------------------------------------------------------------------------------
; タメ空　強
;------------------------------------------------------------------------------
;[State -1]
;type = ChangeState
;value = 625
;triggerall = command = "hold_c"
;Triggerall = Var(21) = 0 
;trigger1 = statetype = A
;trigger1 = ctrl = 1
;Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610
;Trigger2 = MoveContAct
;Trigger3 = StateNo = 162
;Trigger3 = MoveContAct
;Trigger4 = StateNo = 110 || StateNo = 115

;------------------------------------------------------------------------------
; 空　強
;------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 620
triggerall = command = "c"
Triggerall = Var(21) = 0 
trigger1 = statetype = A
trigger1 = ctrl = 1
Trigger2 = StateNo = 600 || StateNo = 605 || StateNo = 610
Trigger2 = MoveContAct
Trigger3 = StateNo = 162
Trigger3 = MoveContAct
Trigger4 = StateNo = 110 || StateNo = 115


;------------------------------------------------------------------------------
; 挑発
;------------------------------------------------------------------------------
[State -1]
type = Null
value = 940
triggerall = command = "s"
triggerall = statetype = S
trigger1 = ctrl = 1

;------------------------------------------------------------------------------
