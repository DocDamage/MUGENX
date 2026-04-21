;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
;ＣＰＵ専用
;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
[Command]
name = "com1"
command = D,F,DB,F,DF,U,D,DB,DF,U,
time = 1

[Command]
name = "com2"
command = D,B,F,DB,F,DF,U,D,DB,DF
time = 1

[Command]
name = "com3"
command = D,B,F,DB,F,DF,U,D,DB,DF
time = 1

[Command]
name = "com4"
command = D,B,F,DB,F,DF,U,D,DB,D,U
time = 1

[Command]
name = "com5"
command = D,B,F,D,F,DF,U,D,DB,D,DF,D
time = 1

[Command]
name = "com6"
command = D,B,D,D,F,DF,U,D,DB,D,DF,D
time = 1

[Command]
name = "com7"
command = D,B,F,D,D,DF,U,D,DB,D,DF,D
time = 1

[Command]
name = "com8"
command = D,B,F,D,F,DF,U,D,DB,DF,DB
time = 1

[Command]
name = "com9"
command = D,B,F,U,F,DF,U,D,DB,D,DB,D
time = 1

[Command]
name = "com10"
command = D,B,F,U,F,DF,U,D,DB,D,U,DF
time = 1

;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
;タンデムコマンド
;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
[Command]
name = "tandem_a"
command = a
time = 1

[Command]
name = "tandem_a"
command = /$F, a
time = 1

[Command]
name = "tandem_a"
command = /$B, a
time = 1

[Command]
name = "tandem_a"
command = /$U, a
time = 1

[Command]
name = "tandem_a"
command = /$D, a
time = 1

[Command]
name = "tandem_b"
command = ~b
time = 1

[Command]
name = "tandem_fwd_b"
command = /F, ~b
time = 1

[Command]
name = "tandem_down_b"
command = /$D, ~b
time = 1

[Command]
name = "tandem_x"
command = ~x
time = 1

[Command]
name = "tandem_fwd_x"
command = /F, ~x
time = 1

[Command]
name = "tandem_down_x"
command = /$D, ~x
time = 1

[Command]
name = "tandem_y"
command = ~y
time = 1

[Command]
name = "tandem_fwd_y"
command = /F, ~y
time = 1

[Command]
name = "tandem_down_y"
command = /$D, ~x
time = 1

[Command]
name = "tandem_darkL"
command = D,DF,F, ~x
time = 25

[Command]
name = "tandem_darkM"
command = D,DF,F, ~y
time = 25

[Command]
name = "tandem_darkH"
command = D,DF,F, ~b
time = 25

[Command]
name = "tandem_cream"
command = D,DB,B, ~x
time = 15

[Command]
name = "tandem_cream"
command = D,DB,B, ~y
time = 15

[Command]
name = "tandem_cream"
command = D,DB,B, ~b
time = 15

[Command]
name = "tandem_hutb"
command = ~$D, U, ~x

[Command]
name = "tandem_hutb"
command = ~$D, U, ~y

[Command]
name = "tandem_hutb"
command = ~$D, U, ~b
;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
;スーパーコンボ
;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
[command]
name = "tandem"
command = D, DB, B, a
time = 25

[command]
name = "nes1"
command = D, DB, B, x+y
time = 25

[command]
name = "nes2"
command = D, DB, B, x+b
time = 25

[command]
name = "nes3"
command = D, DB, B, y+b
time = 25

[command]
name = "omoisire"
command = F, D, DF, x+y
time = 40

[command]
name = "omoisire"
command = F, D, DF, x+b
time = 40

[command]
name = "omoisire"
command = F, D, DF, y+b
time = 40

[command]
name = "omoisire"
command = F, D, DF, z
time = 40

name = "dotiku"
command = D, DF, F, x+y
time = 40

[command]
name = "dotiku"
command = D, DF, F, x+b
time = 40

[command]
name = "dotiku"
command = D, DF, F, y+b
time = 40

[command]
name = "dotiku"
command = D, DF, F, z
time = 40

[command]
name = "Hdotiku"
command = /y+b

[command]
name = "Hdotiku"
command = /x+b

[command]
name = "Hdotiku"
command = /x+y

[command]
name = "Hdotiku"
command = /z

;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
;必殺系コマンド
;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
[Command]
name = "ATstand"
command = D,DF,F, a
time = 30

[Command]
name = "gcan"
command = D,DF,F, x
time = 30

[Command]
name = "gcan"
command = D,DF,F, y
time = 30

[Command]
name = "gcan"
command = D,DF,F, b
time = 30

[Command]
name = "gcan"
command = D,DF,F, x+y
time = 30

[Command]
name = "gcan"
command = D,DF,F, y+b
time = 30

[Command]
name = "gcan"
command = D,DF,F, x+b
time = 30

[Command]
name = "darkL"
command = D,DF,F, x
time = 25

[Command]
name = "darkM"
command = D,DF,F, y
time = 25

[Command]
name = "darkH"
command = D,DF,F, b
time = 25

[Command]
name = "cream"
command = D,DB,B, x
time = 25

[Command]
name = "cream"
command = D,DB,B, y
time = 25

[Command]
name = "cream"
command = D,DB,B, b
time = 25

[Command]
name = "baraA"
command = B,D,DB, x
time = 25

[Command]
name = "baraB"
command = B,D,DB, y
time = 25

[Command]
name = "baraC"
command = B,D,DB, b
time = 25

[Command]
name = "hutb"
command = ~30$D, U, x

[Command]
name = "hutb"
command = ~30$D, U, y

[Command]
name = "hutb"
command = ~30$D, U, b

;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
;2度押し
;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
[Command]
name = "FF"       
command = F, F
time = 10

[Command]
name = "BB"       
command = B, B
time = 10

[Command]
name = "xx"       
command = x, x

[Command]
name = "yy"       
command = y, y
time = 14

[Command]
name = "bb"       
command = b, b
time = 15

;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
;ボタン同時押し
;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "recovery"
command = b+x
time = 1

[Command]
name = "recovery"
command = b+y
time = 1

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "kaihi"
command = x+y+b
time = 1

[Command]
name = "kaihi"
command = z
time = 1

[Command]
name = "kaihi2"
command = ~x+y+b
time = 1

[Command]
name = "kaihi2"
command = ~z
time = 1
;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
;方向キー＋ボタン
;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "downfwd_z"
command = /DF,z
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "downfwd_x"
command = /DF,x
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "Ddown_x"
command = /D,x
time = 1

[Command]
name = "Ddown_y"
command = /D,y
time = 1

[Command]
name = "Ddown_b"
command = /D,b
time = 1


[Command]
name = "downback_x"
command = /DB,x
time = 1

[Command]
name = "downback_y"
command = /DB,y
time = 1

[Command]
name = "downback_z"
command = /DB,z
time = 1

[Command]
name = "downback_a"
command = /DB,a
time = 1

[Command]
name = "downback_b"
command = /DB,b
time = 1

[Command]
name = "downback_c"
command = /DB,c
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "upback_x"
command = /UB,x
time = 1

[Command]
name = "upback_y"
command = /UB,y
time = 1

[Command]
name = "upback_b"
command = /UB,b
time = 1

[Command]
name = "up_x"
command = /U,x
time = 1

[Command]
name = "up_y"
command = /U,y
time = 1

[Command]
name = "up_b"
command = /U,b
time = 1

[Command]
name = "upfwd_x"
command = /UF,x
time = 1

[Command]
name = "upfwd_y"
command = /UF,y
time = 1

[Command]
name = "upfwd_b"
command = /UF,b
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
;ボタン
;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
[Command]
name = "a"
command = a
time = 1

[Command]
name = "hold_a"
command = /a
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
name = "c2"
command = ~c
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

;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
;方向キー
;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "one_up"
command = $U
time = 1

[Command]
name = "uf"
command = /$UF
time = 1

[Command]
name = "ub"
command = /$UB
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
[Statedef -1]
;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
;スタンドマッドネススォロウ（中：強）
[State -1]
type = ChangeState
value = 3316
triggerall = Win = 0
triggerall = numhelper(1250) = 0
triggerall = var(1)= 1
triggerall = power >= 2000 
triggerall = command = "nes3"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240
trigger2 = movecontact
trigger3 = stateno = 208
trigger3 = movecontact
trigger4 = stateno = 205
trigger4 = movecontact
trigger5 = stateno = 200
trigger5 = movecontact
trigger6 = stateno = 213
trigger6 = movecontact
trigger7 = stateno = 241
trigger7 = movecontact
trigger8 = stateno = 195
trigger9 = stateno = 400
trigger9 = movecontact

;スタンドマッドネススォロウ（弱：強）
[State -1]
type = ChangeState
value = 3313
triggerall = Win = 0
triggerall = numhelper(1250) = 0
triggerall = var(1)= 1
triggerall = power >= 2000 
triggerall = command = "nes2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240
trigger2 = movecontact
trigger3 = stateno = 208
trigger3 = movecontact
trigger4 = stateno = 205
trigger4 = movecontact
trigger5 = stateno = 200
trigger5 = movecontact
trigger6 = stateno = 213
trigger6 = movecontact
trigger7 = stateno = 241
trigger7 = movecontact
trigger8 = stateno = 195
trigger9 = stateno = 400
trigger9 = movecontact

;スタンドマッドネススォロウ（弱：中）
[State -1]
type = ChangeState
value = 3310
triggerall = Win = 0
triggerall = numhelper(1250) = 0
triggerall = var(1)= 1
triggerall = power >= 2000 
triggerall = command = "nes1"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240
trigger2 = movecontact
trigger3 = stateno = 208
trigger3 = movecontact
trigger4 = stateno = 205
trigger4 = movecontact
trigger5 = stateno = 200
trigger5 = movecontact
trigger6 = stateno = 213
trigger6 = movecontact
trigger7 = stateno = 241
trigger7 = movecontact
trigger8 = stateno = 195
trigger9 = stateno = 400
trigger9 = movecontact
;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
;本体マッドネススォロウ（中：強）
[State -1]
type = ChangeState
value = 3306
triggerall = Win = 0
triggerall = numhelper(1250) = 0
triggerall = var(1)= 0
triggerall = power >= 2000 
triggerall = command = "nes3"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240
trigger2 = movecontact
trigger3 = stateno = 208
trigger3 = movecontact
trigger4 = stateno = 205
trigger4 = movecontact
trigger5 = stateno = 200
trigger5 = movecontact
trigger6 = stateno = 213
trigger6 = movecontact
trigger7 = stateno = 241
trigger7 = movecontact
trigger8 = stateno = 195
trigger9 = stateno = 400
trigger9 = movecontact

;本体マッドネススォロウ（弱：強）
[State -1]
type = ChangeState
value = 3303
triggerall = Win = 0
triggerall = numhelper(1250) = 0
triggerall = var(1)= 0
triggerall = power >= 2000 
triggerall = command = "nes2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240
trigger2 = movecontact
trigger3 = stateno = 208
trigger3 = movecontact
trigger4 = stateno = 205
trigger4 = movecontact
trigger5 = stateno = 200
trigger5 = movecontact
trigger6 = stateno = 213
trigger6 = movecontact
trigger7 = stateno = 241
trigger7 = movecontact
trigger8 = stateno = 195
trigger9 = stateno = 400
trigger9 = movecontact

;本体マッドネススォロウ（弱：中）
[State -1]
type = ChangeState
value = 3300
triggerall = Win = 0
triggerall = numhelper(1250) = 0
triggerall = var(1)= 0
triggerall = power >= 2000 
triggerall = command = "nes1"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240
trigger2 = movecontact
trigger3 = stateno = 208
trigger3 = movecontact
trigger4 = stateno = 205
trigger4 = movecontact
trigger5 = stateno = 200
trigger5 = movecontact
trigger6 = stateno = 213
trigger6 = movecontact
trigger7 = stateno = 241
trigger7 = movecontact
trigger8 = stateno = 195
trigger9 = stateno = 400
trigger9 = movecontact
;☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆
;本体タンデムアタック
[State -1]
type = ChangeState
value = 25000
triggerall = Win = 0
triggerall = numhelper(1250) = 0
triggerall = var(1)= 0
triggerall = power >= 1000 
triggerall = command = "tandem"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240
trigger2 = movecontact
trigger3 = stateno = 208
trigger3 = movecontact
trigger4 = stateno = 205
trigger4 = movecontact
trigger5 = stateno = 200
trigger5 = movecontact
trigger6 = stateno = 241
trigger6 = movecontact
trigger7 = stateno = 195
trigger8 = stateno = 400
trigger8 = movecontact

;スタンドタンデムアタック
[State -1]
type = ChangeState
value = 25000
triggerall = Win = 0
triggerall = numhelper(1250) = 0
triggerall = var(1) = 1
triggerall = power >= 1000 
triggerall = command = "tandem"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンド版サークルローカス
[State -1]
type = ChangeState
value = 3200
triggerall = Win = 0
triggerall = var(1)= 1
triggerall = power >= 1000 
triggerall = command = "omoisire"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 204
trigger2 = movecontact
trigger3 = stateno = 207
trigger3 = movecontact
trigger4 = stateno = 206
trigger4 = movecontact
trigger5 = stateno = 203
trigger5 = movecontact
trigger6 = stateno = 202
trigger6 = movecontact
trigger7 = stateno = 212
trigger7 = movecontact
trigger8 = stateno = 211
trigger8 = movecontact
trigger9 = stateno = 246
trigger9 = movecontact
trigger10 = stateno = 242
trigger10 = movecontact
trigger11 = stateno = 243
trigger11 = movecontact
trigger12 = stateno = 411
trigger12 = movecontact
trigger13 = stateno = 402
trigger13 = movecontact
trigger14 = stateno = 401
trigger14 = movecontact
trigger15 = stateno = 441
trigger15 = movecontact
trigger16 = stateno = 196

;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンド版ド畜生がッ！
[State -1]
type = ChangeState
value = 3100
triggerall = Win = 0
triggerall = var(1)= 1
triggerall = power >= 1000 
triggerall = command = "dotiku"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 204
trigger2 = movecontact
trigger3 = stateno = 207
trigger3 = movecontact
trigger4 = stateno = 206
trigger4 = movecontact
trigger5 = stateno = 203
trigger5 = movecontact
trigger6 = stateno = 202
trigger6 = movecontact
trigger7 = stateno = 212
trigger7 = movecontact
trigger8 = stateno = 211
trigger8 = movecontact
trigger9 = stateno = 246
trigger9 = movecontact
trigger10 = stateno = 242
trigger10 = movecontact
trigger11 = stateno = 243
trigger11 = movecontact
trigger12 = stateno = 196

;本体版ド畜生がッ！
[State -1]
type = ChangeState
value = 3000
triggerall = Win = 0
triggerall = var(1)= 0
triggerall = power >= 1000 
triggerall = command = "dotiku"
triggerall = command != "holddown"
triggerall = numhelper(1250) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240
trigger2 = movecontact
trigger3 = stateno = 208
trigger3 = movecontact
trigger4 = stateno = 205
trigger4 = movecontact
trigger5 = stateno = 200
trigger5 = movecontact
trigger6 = stateno = 213
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact
trigger8 = stateno = 245
trigger8 = movecontact
trigger9 = stateno = 241
trigger9 = movecontact
trigger10 = stateno = 195

;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;本体クリームッ！
[State -1]
type = ChangeState
value = 1250
triggerall = var(1)= 0
triggerall = command = "cream"
triggerall = command != "holddown"
triggerall = numhelper(1250) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 208
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 213
trigger7 = movecontact
trigger8 = stateno = 215
trigger8 = movecontact
trigger9 = stateno = 210
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 241
trigger11 = movecontact
trigger12 = stateno = 400
trigger12 = movecontact
trigger13 = stateno = 410
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 195

[State -1]
type = ChangeState
value = 1253
triggerall = var(1)= 0
triggerall = var(6) = 1
triggerall = command = "gcan"
triggerall = statetype != A
trigger1 = stateno = 150
trigger2 = stateno = 152

;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンド吹っ飛ばしてやる
[State -1]
type = ChangeState
value = 1300
triggerall = var(1)= 1
triggerall = command = "hutb"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 204
trigger3 = movecontact
trigger4 = stateno = 207
trigger4 = movecontact
trigger5 = stateno = 206
trigger5 = movecontact
trigger6 = stateno = 203
trigger6 = movecontact
trigger7 = stateno = 202
trigger7 = movecontact
trigger8 = stateno = 212
trigger8 = movecontact
trigger9 = stateno = 211
trigger9 = movecontact
trigger10 = stateno = 246
trigger10 = movecontact
trigger11 = stateno = 242
trigger11 = movecontact
trigger12 = stateno = 243
trigger12 = movecontact
trigger13 = stateno = 411
trigger13 = movecontact
trigger14 = stateno = 402
trigger14 = movecontact
trigger15 = stateno = 401
trigger15 = movecontact
trigger16 = stateno = 441
trigger16 = movecontact
trigger17 = stateno = 196
trigger18 = stateno = 40

;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドバラまいてやる
[State -1]
type = ChangeState
value = 1400
triggerall = var(1)= 1
triggerall = command = "baraB"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 204
trigger2 = movecontact
trigger3 = stateno = 207
trigger3 = movecontact
trigger4 = stateno = 206
trigger4 = movecontact
trigger5 = stateno = 203
trigger5 = movecontact
trigger6 = stateno = 202
trigger6 = movecontact
trigger7 = stateno = 212
trigger7 = movecontact
trigger8 = stateno = 211
trigger8 = movecontact
trigger9 = stateno = 246
trigger9 = movecontact
trigger10 = stateno = 242
trigger10 = movecontact
trigger11 = stateno = 243
trigger11 = movecontact
trigger12 = stateno = 196

;スタンドバラまいてやる
[State -1]
type = ChangeState
value = 1410
triggerall = var(1)= 1
triggerall = command = "baraA"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 204
trigger2 = movecontact
trigger3 = stateno = 207
trigger3 = movecontact
trigger4 = stateno = 206
trigger4 = movecontact
trigger5 = stateno = 203
trigger5 = movecontact
trigger6 = stateno = 202
trigger6 = movecontact
trigger7 = stateno = 212
trigger7 = movecontact
trigger8 = stateno = 211
trigger8 = movecontact
trigger9 = stateno = 246
trigger9 = movecontact
trigger10 = stateno = 242
trigger10 = movecontact
trigger11 = stateno = 243
trigger11 = movecontact
trigger12 = stateno = 196

;スタンドバラまいてやる
[State -1]
type = ChangeState
value = 1420
triggerall = var(1)= 1
triggerall = command = "baraC"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 204
trigger2 = movecontact
trigger3 = stateno = 207
trigger3 = movecontact
trigger4 = stateno = 206
trigger4 = movecontact
trigger5 = stateno = 203
trigger5 = movecontact
trigger6 = stateno = 202
trigger6 = movecontact
trigger7 = stateno = 212
trigger7 = movecontact
trigger8 = stateno = 211
trigger8 = movecontact
trigger9 = stateno = 246
trigger9 = movecontact
trigger10 = stateno = 242
trigger10 = movecontact
trigger11 = stateno = 243
trigger11 = movecontact
trigger12 = stateno = 196

;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドクリームッ！
[State -1]
type = ChangeState
value = 1200
triggerall = var(1)= 1
triggerall = command = "cream"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 204
trigger3 = movecontact
trigger4 = stateno = 207
trigger4 = movecontact
trigger5 = stateno = 206
trigger5 = movecontact
trigger6 = stateno = 203
trigger6 = movecontact
trigger7 = stateno = 202
trigger7 = movecontact
trigger8 = stateno = 212
trigger8 = movecontact
trigger9 = stateno = 211
trigger9 = movecontact
trigger10 = stateno = 246
trigger10 = movecontact
trigger11 = stateno = 242
trigger11 = movecontact
trigger12 = stateno = 243
trigger12 = movecontact
trigger13 = stateno = 411
trigger13 = movecontact
trigger14 = stateno = 402
trigger14 = movecontact
trigger15 = stateno = 401
trigger15 = movecontact
trigger16 = stateno = 441
trigger16 = movecontact
trigger17 = stateno = 196

[State -1]
type = ChangeState
value = 1200
triggerall = var(1)= 1
triggerall = var(6) = 1
triggerall = command = "gcan"
triggerall = statetype != A
trigger1 = stateno = 150
trigger2 = stateno = 152

;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドダークスペース（強:地上）
[State -1]
type = ChangeState
value = 1122
triggerall = var(1)= 1
triggerall = command = "darkH"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 204
trigger3 = movecontact
trigger4 = stateno = 207
trigger4 = movecontact
trigger5 = stateno = 206
trigger5 = movecontact
trigger6 = stateno = 203
trigger6 = movecontact
trigger7 = stateno = 202
trigger7 = movecontact
trigger8 = stateno = 212
trigger8 = movecontact
trigger9 = stateno = 211
trigger9 = movecontact
trigger10 = stateno = 246
trigger10 = movecontact
trigger11 = stateno = 242
trigger11 = movecontact
trigger12 = stateno = 243
trigger12 = movecontact
trigger13 = stateno = 411
trigger13 = movecontact
trigger14 = stateno = 402
trigger14 = movecontact
trigger15 = stateno = 401
trigger15 = movecontact
trigger16 = stateno = 441
trigger16 = movecontact
trigger17 = stateno = 196

;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドダークスペース（中:地上）
[State -1]
type = ChangeState
value = 1112
triggerall = var(1)= 1
triggerall = command = "darkM"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 204
trigger3 = movecontact
trigger4 = stateno = 207
trigger4 = movecontact
trigger5 = stateno = 206
trigger5 = movecontact
trigger6 = stateno = 203
trigger6 = movecontact
trigger7 = stateno = 202
trigger7 = movecontact
trigger8 = stateno = 212
trigger8 = movecontact
trigger9 = stateno = 211
trigger9 = movecontact
trigger10 = stateno = 246
trigger10 = movecontact
trigger11 = stateno = 242
trigger11 = movecontact
trigger12 = stateno = 243
trigger12 = movecontact
trigger13 = stateno = 411
trigger13 = movecontact
trigger14 = stateno = 402
trigger14 = movecontact
trigger15 = stateno = 401
trigger15 = movecontact
trigger16 = stateno = 441
trigger16 = movecontact
trigger17 = stateno = 196

;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドダークスペース（強）
[State -1]
type = ChangeState
value = 1120
triggerall = var(1)= 1
triggerall = command = "darkH"
triggerall = command != "holddown"
triggerall = stateno != 317
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 601
trigger2 = movecontact
trigger3 = stateno = 615
trigger3 = movecontact
trigger4 = stateno = 611
trigger4 = movecontact
trigger5 = stateno = 645
trigger5 = movecontact
trigger6 = stateno = 641
trigger6 = movecontact
trigger7 = stateno = 50 && 315

;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドダークスペース（中）
[State -1]
type = ChangeState
value = 1110
triggerall = var(1)= 1
triggerall = command = "darkM"
triggerall = command != "holddown"
triggerall = stateno != 317
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 601
trigger2 = movecontact
trigger3 = stateno = 615
trigger3 = movecontact
trigger4 = stateno = 611
trigger4 = movecontact
trigger5 = stateno = 645
trigger5 = movecontact
trigger6 = stateno = 641
trigger6 = movecontact
trigger7 = stateno = 50 && 315

;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドダークスペース（弱）
[State -1]
type = ChangeState
value = 1100
triggerall = var(1)= 1
triggerall = command = "darkL"
triggerall = command != "holddown"
triggerall = stateno != 317
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = statetype = A
trigger3 = ctrl = 1
trigger4 = stateno = 204
trigger4 = movecontact
trigger5 = stateno = 207
trigger5 = movecontact
trigger6 = stateno = 206
trigger6 = movecontact
trigger7 = stateno = 203
trigger7 = movecontact
trigger8 = stateno = 202
trigger8 = movecontact
trigger9 = stateno = 212
trigger9 = movecontact
trigger10 = stateno = 211
trigger10 = movecontact
trigger11 = stateno = 246
trigger11 = movecontact
trigger12 = stateno = 242
trigger12 = movecontact
trigger13 = stateno = 243
trigger13 = movecontact
trigger14 = stateno = 402
trigger14 = movecontact
trigger15 = stateno = 401
trigger15 = movecontact
trigger16 = stateno = 411
trigger16 = movecontact
trigger17 = stateno = 441
trigger17 = movecontact
trigger18 = stateno = 601
trigger18 = movecontact
trigger19 = stateno = 615
trigger19 = movecontact
trigger20 = stateno = 611
trigger20 = movecontact
trigger21 = stateno = 645
trigger21 = movecontact
trigger22 = stateno = 641
trigger22 = movecontact
trigger23 = stateno = 50 && 315
trigger24 = stateno = 196

;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;本体ダークスペース（強・地上）
[State -1]
type = ChangeState
value = 1020
triggerall = var(1)= 0
triggerall = command = "darkH"
triggerall = command != "holddown"
triggerall = numhelper(1250) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 208
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 213
trigger7 = movecontact
trigger8 = stateno = 215
trigger8 = movecontact
trigger9 = stateno = 210
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 241
trigger11 = movecontact
trigger12 = stateno = 400
trigger12 = movecontact
trigger13 = stateno = 410
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 195

;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;本体ダークスペース（強・空中）
[State -1]
type = ChangeState
value = 1021
triggerall = var(1)= 0
triggerall = command = "darkH"
triggerall = command != "holddown"
triggerall = numhelper(1250) = 0
triggerall = stateno != 317
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 640
trigger4 = movecontact
trigger5 = stateno = 50 && 315

;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;本体ダークスペース（中・地上）
[State -1]
type = ChangeState
value = 1010
triggerall = var(1)= 0
triggerall = command = "darkM"
triggerall = command != "holddown"
triggerall = numhelper(1250) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 208
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 213
trigger7 = movecontact
trigger8 = stateno = 215
trigger8 = movecontact
trigger9 = stateno = 210
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 241
trigger11 = movecontact
trigger12 = stateno = 400
trigger12 = movecontact
trigger13 = stateno = 410
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 195

;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;本体ダークスペース（中・空中）
[State -1]
type = ChangeState
value = 1011
triggerall = var(1)= 0
triggerall = command = "darkM"
triggerall = command != "holddown"
triggerall = numhelper(1250) = 0
triggerall = stateno != 317
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 640
trigger4 = movecontact
trigger5 = stateno = 50 && 315

;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;本体ダークスペース（弱・地上）
[State -1]
type = ChangeState
value = 1000
triggerall = var(1)= 0
triggerall = command = "darkL"
triggerall = command != "holddown"
triggerall = numhelper(1250) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 208
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 213
trigger7 = movecontact
trigger8 = stateno = 215
trigger8 = movecontact
trigger9 = stateno = 210
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 241
trigger11 = movecontact
trigger12 = stateno = 400
trigger12 = movecontact
trigger13 = stateno = 410
trigger13 = movecontact
trigger14 = stateno = 440
trigger14 = movecontact
trigger15 = stateno = 195

;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;本体ダークスペース（弱・空中）
[State -1]
type = ChangeState
value = 1001
triggerall = var(1)= 0
triggerall = command = "darkL"
triggerall = command != "holddown"
triggerall = numhelper(1250) = 0
triggerall = stateno != 317
trigger1 = statetype = A && ctrl = 1
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 640 && movecontact
trigger5 = stateno = 50 && 315
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
; スタンド版投げ
[State -1]
type = ChangeState
value = 950
triggerall = StateNo != 100
triggerall = statetype = S
triggerall = var(1) = 1
triggerall = ctrl = 1
triggerall = p2movetype != H
trigger1 = p2statetype = S && command = "fwd_b" && p2bodydist X < 7
trigger2 = p2statetype = C && command = "fwd_b" && p2bodydist X < 7
trigger3 = p2statetype = S && command = "back_b" && p2bodydist X < 21
trigger4 = p2statetype = C && command = "back_b" && p2bodydist X < 21
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
; 本体版投げ
[State -1]
type = ChangeState
value = 900
triggerall = StateNo != 100
triggerall = statetype = S
triggerall = p2movetype != H
triggerall = numhelper(1250) = 0
triggerall = var(1) = 0
triggerall = ctrl = 1
trigger1 = p2statetype = S && command = "fwd_b" && p2bodydist X < 9
trigger2 = p2statetype = C && command = "fwd_b" && p2bodydist X < 9
trigger3 = p2statetype = S && command = "back_b" && p2bodydist X < 22
trigger4 = p2statetype = C && command = "back_b" && p2bodydist X < 22
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;回避行動
[State -1]
type = ChangeState
value = 316
triggerall = command = "kaihi"
triggerall = var(1)= 0
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = stateno != 100
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;攻撃スタンド変身
[State -1]
type = ChangeState
value = 310
triggerall = command = "ATstand"
triggerall = numhelper(1250) = 0
triggerall = var(1)= 0
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = movetype != H
trigger1 = stateno != 100
;trigger2 = stateno != 20
trigger2 = stateno = 3 && time > 7
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドで空中ジャンプ
;[state -1]
;type = changestate
;value = 315
;triggerall = var(1) = 1
;triggerall = var(5) = 0
;triggerall = statetype = A
;triggerall = ctrl = 1
;trigger1 = stateno = 50
;trigger1 = time >= 15
;trigger1 = command = "one_up"
;trigger1 = command != "holdback"
;trigger1 = command != "holdfwd"
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;空中スタンド変身
[State -1]
type = ChangeState
value = 304
triggerall = command = "a"
triggerall = numhelper(1250) = 0
triggerall = var(1)= 0
triggerall = !var(4)= 1
triggerall = statetype = A
triggerall = movetype != H
trigger1 = ctrl = 1
trigger2 = stateno = 57 && time > 7
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;空中スタンド戻り
[State -1]
type = ChangeState
value = 305
triggerall = command = "a"
triggerall = var(1)= 1
triggerall = !var(4)= 1
triggerall = statetype = A
triggerall = movetype != H
trigger1 = ctrl = 1
trigger2 = stateno = 56 && time > 7
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;後ろ歩きスタンド変身
[State -1]
type = ChangeState
value = 309
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = numhelper(1250) = 0
triggerall = var(1)= 0
triggerall = ctrl = 1
triggerall = movetype != H
trigger1 = stateno = 105
trigger2 = stateno = 307 && time > 7
trigger3 = stateno = 20
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;後ろ歩きスタンド戻り
[State -1]
type = ChangeState
value = 307
triggerall = command = "a"
triggerall = command = "holdback"
triggerall = var(1)= 1
triggerall = ctrl = 1
triggerall = movetype != H
trigger1 = stateno = 309 && time > 7
trigger2 = stateno = 20
trigger3 = stateno = 105
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;前歩きスタンド変身
[State -1]
type = ChangeState
value = 308
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = movetype != H
triggerall = numhelper(1250) = 0
triggerall = var(1)= 0
triggerall = ctrl = 1
trigger1 = stateno = 306 && time > 7
trigger2 = stateno = 20
trigger3 = stateno = 100
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;前歩きスタンド戻り
[State -1]
type = ChangeState
value = 306
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = var(1)= 1
triggerall = movetype != H
;triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = stateno = 308 && time > 7
trigger2 = stateno = 20
trigger3 = stateno = 100
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンド変身
[State -1]
type = ChangeState
value = 302
triggerall = command = "a"
triggerall = movetype != H
triggerall = var(1)= 0
triggerall = numhelper(1250) = 0
triggerall = stateno != 100
triggerall = stateno != 20
trigger1 = statetype = S && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンド戻り
[State -1]
type = ChangeState
value = 303
triggerall = command = "a"
triggerall = movetype != H
triggerall = var(1)= 1
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = stateno != 100
trigger2 = stateno = 2 && time > 7
trigger3 = stateno != 20
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;屈スタンド変身
[State -1]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = movetype != H
triggerall = var(1)= 0
triggerall = numhelper(1250) = 0
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 301 && time > 7
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;屈スタンド戻り
[State -1]
type = ChangeState
value = 301
triggerall = command = "a"
triggerall = movetype != H
triggerall = var(1)= 1
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 300 && time > 7
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF" && statetype = S && ctrl = 1 && stateno != 100
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドで空中前ダッシュ
[State -1]
type = ChangeState
value = 101
triggerall = stateno != 101
triggerall = var(1) = 1
trigger1 = command = "FF" && statetype = A && ctrl = 1 && p2bodydist X> 0
trigger2 = command = "BB" && statetype = A && ctrl = 1 && p2bodydist X< -1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;バックダッシュ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB" && statetype = S && ctrl = 1 && stateno != 105
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドで空中バックダッシュ
[State -1]
type = ChangeState
value = 106
triggerall = stateno != 106
;triggerall = var(2) = 0
triggerall = var(1) = 1
trigger1 = command = "BB" && statetype = A && ctrl = 1 && p2bodydist X> 0
trigger2 = command = "FF" && statetype = A && ctrl = 1 && p2bodydist X< -1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;ダッシュ中にスタンド弱攻撃
[State -1]
type = ChangeState
value = 204
triggerall = var(1)= 1
triggerall = command = "fwd_x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = stateno = 100
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンド前弱攻撃追加
[State -1]
type = ChangeState
value = 207
triggerall = var(1)= 1
triggerall = command = "fwd_x"
triggerall = command != "holddown"
trigger1 = stateno = 206 && movecontact
trigger2 = stateno = 206 && movecontact = 0
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドで前弱攻撃
[State -1]
type = ChangeState
value = 206
triggerall = var(1)= 1
triggerall = command = "fwd_x"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;ダッシュ中に弱攻撃
[State -1]
type = ChangeState
value = 208
triggerall = var(1)= 0
triggerall = command = "fwd_x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = stateno = 100
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;前弱攻撃
[State -1]
type = ChangeState
value = 205
triggerall = command = "fwd_x"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンド弱攻撃追加
[State -1]
type = ChangeState
value = 203
triggerall = var(1)= 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = stateno = 202 && movecontact
trigger2 = stateno = 202 && movecontact = 0
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンド弱攻撃
[State -1]
type = ChangeState
value = 202
triggerall = var(1)= 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;弱攻撃
[State -1]
type = ChangeState
value = 200
triggerall = var(1)= 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 200 && animelem = 4
trigger3 = stateno = 201 && animelem = 4
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;ダッシュ中にスタンドで中攻撃
[State -1]
type = ChangeState
value = 212
triggerall = var(1)= 1
triggerall = command = "fwd_y"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = stateno = 100
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドで前中攻撃
[State -1]
type = ChangeState
value = 216
triggerall = var(1)= 1
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;前中攻撃（中からの派生）
[State -1]
type = ChangeState
value = 216
triggerall = var(1)= 1
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(11) = 1
trigger1 = stateno = 214 && movecontact
trigger2 = stateno = 211 && movecontact
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;ダッシュ中に中攻撃
[State -1]
type = ChangeState
value = 213
triggerall = var(1)= 0
triggerall = command = "fwd_y"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = stateno = 100
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;前中攻撃
[State -1]
type = ChangeState
value = 215
triggerall = var(1)= 0
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;中攻撃
[State -1]
type = ChangeState
value = 210
triggerall = var(1)= 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドで前強攻撃
[State -1]
type = ChangeState
value = 246
triggerall = var(1)= 1
triggerall = command = "fwd_b"
triggerall = command != "holddown"
triggerall = stateno !=100
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 211 && movecontact
trigger3 = stateno = 211 && animelem = 3 && movecontact = 0
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドでキャンセル中攻撃
[State -1]
type = ChangeState
value = 214
triggerall = var(1)= 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = stateno = 206 && movecontact
trigger2 = stateno = 207 && movecontact
trigger3 = stateno = 203 && movecontact
trigger4 = stateno = 202 && movecontact
trigger5 = stateno = 402 && movecontact
trigger6 = stateno = 401 && movecontact
trigger7 = stateno = 202 && movecontact = 0 && time >= 9 && time <= 15
trigger8 = stateno = 203 && movecontact = 0 && time >= 8 && time <= 14
trigger9 = stateno = 206 && movecontact = 0 && time >= 8 && time <= 14
trigger10 = stateno = 207 && movecontact = 0 && time >= 7 && time <= 14
trigger11 = stateno = 401 && movecontact = 0 && time >= 9 && time <= 14
trigger12 = stateno = 402 && movecontact = 0 && time >= 10 && time <= 19
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドで中攻撃
[State -1]
type = ChangeState
value = 211
triggerall = var(1)= 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;前強攻撃
[State -1]
type = ChangeState
value = 245
triggerall = var(1)= 0
triggerall = command = "fwd_b"
triggerall = command != "holddown"
triggerall = stateno !=100
trigger1 = statetype = S && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;強攻撃
[State -1]
type = ChangeState
value = 240
triggerall = var(1)= 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = stateno !=100
trigger1 = statetype = S && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドで強攻撃
[State -1]
type = ChangeState
value = 242
triggerall = var(1)= 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = stateno !=100
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 211 && movecontact
trigger3 = stateno = 411 && movecontact
trigger4 = stateno = 441 && animelem = 5 && movecontact = 0
trigger5 = stateno = 211 && movecontact = 0 && time >= 12 && time <= 18
trigger6 = stateno = 411 && movecontact = 0 && time >= 12 && time <= 18
trigger7 = stateno = 214 && movecontact = 0 && time >= 12 && time <= 18
trigger8 = stateno = 214 && movecontact
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;ダッシュ中にスタンドで強攻撃
[State -1]
type = ChangeState
value = 243
triggerall = var(1)= 1
triggerall = command = "fwd_b"
triggerall = command != "holddown"
trigger1 = stateno =100 && statetype = S && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;ダッシュ中に強攻撃
[State -1]
type = ChangeState
value = 241
triggerall = var(1)= 0
triggerall = command = "fwd_b"
triggerall = command != "holddown"
triggerall = stateno != 0
triggerall = stateno != 20
trigger1 = stateno = 100 && statetype = S && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;しゃがみ弱攻撃
[State -1]
type = ChangeState
value = 400
triggerall = var(1)= 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl = 1
trigger2 = stateno = 200 && time > 7 && movecontact
trigger3 = stateno = 400 && time > 8 && movecontact = 0
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンド弱攻撃追加
[State -1]
type = ChangeState
value = 402
triggerall = var(1)= 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = stateno = 401 && movecontact
trigger2 = stateno = 401 && movecontact = 0
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドでしゃがみ弱攻撃
[State -1]
type = ChangeState
value = 401
triggerall = var(1)= 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;しゃがみ中攻撃
[State -1]
type = ChangeState
value = 410
triggerall = var(1)= 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドでしゃがみ中攻撃
[State -1]
type = ChangeState
value = 411
triggerall = var(1)= 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl = 1
trigger2 = stateno = 402 && movecontact
trigger3 = stateno = 401 && movecontact
trigger4 = stateno = 203 && movecontact
trigger5 = stateno = 202 && movecontact
trigger6 = stateno = 207 && movecontact
trigger7 = stateno = 206 && movecontact
trigger8 = stateno = 202 && movecontact = 0 && time >= 9 && time <= 15
trigger9 = stateno = 203 && movecontact = 0 && time >= 8 && time <= 14
trigger10 = stateno = 206 && movecontact = 0 && time >= 8 && time <= 14
trigger11 = stateno = 207 && movecontact = 0 && time >= 7 && time <= 14
trigger12 = stateno = 401 && movecontact = 0 && time >= 9 && time <= 14
trigger13 = stateno = 402 && movecontact = 0 && time >= 10 && time <= 19
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドでしゃがみ強攻撃
[State -1]
type = ChangeState
value = 441
triggerall = var(1)= 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl = 1
trigger2 = stateno = 411 && movecontact
trigger3 = stateno = 441 && animelem = 5 && movecontact = 0
trigger4 = stateno = 214 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 411 && movecontact = 0 && time >= 12 && time <= 18
trigger7 = stateno = 214 && movecontact = 0 && time >= 12 && time <= 18
trigger8 = stateno = 211 && movecontact = 0 && time >= 12 && time <= 18
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;しゃがみ強攻撃
[State -1]
type = ChangeState
value = 440
triggerall = var(1)= 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;ジャンプ弱攻撃
[State -1]
type = ChangeState
value = 600
trigger1 = var(1) = 0
trigger1 = command = "x"
trigger1 = statetype = A && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドでジャンプ前弱攻撃
[State -1]
type = ChangeState
value = 602
trigger1 = var(1) = 1
trigger1 = command = "fwd_x"
trigger1 = statetype = A && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドでジャンプ弱攻撃
[State -1]
type = ChangeState
value = 601
trigger1 = var(1) = 1
trigger1 = command = "x"
trigger1 = statetype = A && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドでジャンプ前中攻撃
[State -1]
type = ChangeState
value = 615
trigger1 = var(1) = 1
trigger1 = command = "fwd_y"
trigger1 = statetype = A && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドでジャンプ中攻撃
[State -1]
type = ChangeState
value = 611
trigger1 = var(1) = 1
trigger1 = command = "y"
trigger1 = statetype = A && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;ジャンプ中攻撃
[State -1]
type = ChangeState
value = 610
triggerall = var(1)= 0
triggerall = command = "y"
trigger1 = statetype = A && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;ジャンプ強攻撃
[State -1]
type = ChangeState
value = 640
triggerall = var(1)= 0
triggerall = command = "b"
trigger1 = statetype = A && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドでジャンプ前強攻撃
[State -1]
type = ChangeState
value = 645
triggerall = var(1)= 1
triggerall = command = "fwd_b"
trigger1 = statetype = A && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドでジャンプ強攻撃
[State -1]
type = ChangeState
value = 641
triggerall = var(1)= 1
triggerall = command = "b"
trigger1 = statetype = A && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドでリカバリー
[State -1]
type = changestate
value = 312
triggerall = var(1) = 1
triggerall = var(2) = 1
triggerall = command = "recovery"
trigger1 = stateno = 50 && ctrl = 0
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;挑発
[State -1]
type = ChangeState
value = 195
trigger1 = var(1) = 0
trigger1 = command = "s"
trigger1 = statetype = S && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
;スタンドで挑発
[State -1]
type = ChangeState
value = 196
trigger1 = var(1) = 1
trigger1 = command = "s"
trigger1 = statetype = S && ctrl = 1
;▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△▽△
