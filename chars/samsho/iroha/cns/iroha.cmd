;-| AI |--------------------------------------------------------
[Command]
name = "AI"
command = F, B, U, D, U, D
time = 0

[Command]
name = "AI0"
command = B, F, U, D, U, D
time = 0

[Command]
name = "AI1"
command = F, F, F, B, B, B
time = 0

[Command]
name = "AI2"
command = B, B, B, F, F, F
time = 0

[Command]
name = "AI3"
command = D, D, D, U, U, U
time = 0

[Command]
name = "AI4"
command = U, U, U, D, D, D
time = 0

[Command]
name = "AI5"
command = F, F, F, F, F, F
time = 0

[Command]
name = "AI6"
command = B, B, B, B, B, B
time = 0

[Command]
name = "AI7"
command = U, U, U, U, U, U
time = 0

[Command]
name = "AI8"
command = D, D, D, D, D, D
time = 0

[Command]
name = "AI9"
command = F, x, F, y, F, z
time = 0

[Command]
name = "AI10"
command = F, a, F, b, F, c
time = 0

[Command]
name = "AI11"
command = B, x, B, y, B, z
time = 0

[Command]
name = "AI12"
command = B, a, B, b, B, c
time = 0

[Command]
name = "AI13"
command = U, x, U, y, U, z
time = 0

[Command]
name = "AI14"
command = U, a, U, b, U, c
time = 0

[Command]
name = "AI15"
command = D, x, D, y, D, z
time = 0

[Command]
name = "AI16"
command = D, a, D, b, D, c
time = 0

[Command]
name = "AI17"
command = F, F, F, F, F, F, F
time = 0

[Command]
name = "AI18"
command = B, B, B, B, B, B, B
time = 0

[Command]
name = "AI19"
command = D, D, D, D, D, D, D
time = 0

[Command]
name = "AI20"
command = U, U, U, U, U, U, U
time = 0

[Command]
name = "AI21"
command = F, D, D, F, D, D, D
time = 0

[Command]
name = "AI22"
command = D, F, D, D, F, D, U
time = 0

[Command]
name = "AI23"
command = D, D, F, D, D, F, F
time = 0

[Command]
name = "AI24"
command = U, D, B, F, U, D, B, F
time = 0

[Command]
name = "AI25"
command = U, U, D, D, B, F, B, F
time = 0

[Command]
name = "AI26"
command = U, s, D, s, B, s, F, s, s, s
time = 0

[Command]
name = "AI27"
command = U, a, D, a, B, a, F, a, a, a
time = 0

[Command]
name = "AI28"
command = U, b, D, b, B, b, F, b, b, b
time = 0

[Command]
name = "AI29"
command = U, c, D, c, B, c, F, c, c, c
time = 0

[Command]
name = "AI30"
command = U, x, D, x, B, x, F, x, x, x
time = 0
;-| 必殺技 |------------------------------------------------------
;ぬいぐるみ
[Command]
name = "nuigurumi"
command = ~F,FD,D,DB,B,DB,B,DB,c
time = 100

;ぬいぐるみ
[Command]
name = "nuigurumi"
command = ~F,FD,D,DB,B,c
time = 40

;冬曙 雪月花
[Command]
name = "akebono2"
command = ~F,B,F,DF,D,DB,B,a+b
time = 40

;夕鶴の舞
[Command]
name = "yuduru"
command = ~D,DF,F,y+b

;はじき
[Command]
name = "haziki"
command = ~D,DF,F,c
time = 40

;自殺
[Command]
name = "zisatu"
command = ~B,F,DF,D,s
time = 40

;冬曙 雪月花
[Command]
name = "akebono"
command = ~D,DF,F,a+b

;露時雨強
[Command]
name = "tuyusigure3"
command = ~F,D,DF,a

;露時雨中
[Command]
name = "tuyusigure2"
command = ~F,D,DF,b

;露時雨弱
[Command]
name = "tuyusigure1"
command = ~F,D,DF,y

;風斬強
[Command]
name = "kazakiri3"
command = ~D,DF,F,a

;風斬中
[Command]
name = "kazakiri2"
command = ~D,DF,F,b

;風斬弱
[Command]
name = "kazakiri1"
command = ~D,DF,F,y

;風斬蹴り
[Command]
name = "kazakiri4"
command = ~D,DF,F,x

;風車強
[Command]
name = "kazaguruma3"
command = ~D,DB,B,a

;風車中
[Command]
name = "kazaguruma2"
command = ~D,DB,B,b

;風車弱
[Command]
name = "kazaguruma1"
command = ~D,DB,B,y

;葵
[Command]
name = "aoi"
command = ~F,B,F,x

;絶命奥義　臓腑抉り
[Command]
name = "zetumei"
command = ~D,DB,B,y+b

;斜め入力
[Command]
name = "mads"
command = /$DF
time = 20

;斜め入力
[Command]
name = "mads2"
command = /$BD
time = 20
;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10
;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = F, F, F, F, F, F, F,x+y+z
time = 0

;怒り爆発
[Command]
name = "bakuhatu"
command = y+a+b
time = 1

[Command];一閃
name = "issen"
command = y+a+b
time = 1

[Command];崩し
name = "kuzusi"
command = a+b
time = 1

[Command]
name = "yb2"
command = y+b
time = 1

[Command]
name = "yb3"
command = /y+b
time = 1
;-| 方向とボタンで出す技 |-----------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1
;-| ボタン設定（いじらない）|---------------------------------------------------------
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

;-| 押しっぱなし設定（いじらない）---------------------------------------------
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

[Command]
name = "bosi"
command = /b
time = 1

[Command]
name = "yosi"
command = /y
time = 1

[Command]
name = "yb"
command = /y
time = 1

[Command]
name = "up"
command = U
time = 3

[Command]
name = "down"
command = D
time = 3

[Command]
name = "migi"
command = F
time = 3

[Command]
name = "hidari"
command = B
time = 3

; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;===========================================================================
;絶命奥義
;===========================================================================
;===========================================================================
;必殺技↓
;===========================================================================
;夕鶴の舞
[State -1, Jump Light Punch]
type = ChangeState
value = 4000
triggerall = RoundState = 2
triggerall = var(35) = 1
triggerall = RoundState = 2
triggerall = command = "yuduru"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 230||Stateno = 231 && movehit
trigger3 = Stateno = 430 && movehit
trigger4 = Stateno = 260
trigger5 = Stateno = 271
trigger6 = Stateno = 280
trigger7 = Stateno = 630
trigger8 = Stateno = 900
trigger9 = Stateno = 290
trigger10 = Stateno = 291 && (animelemtime(1) > 6 )
trigger11 = Stateno = 292 && (animelemtime(1) > 8 )
trigger12 = Stateno = 870
trigger13 = Stateno = 3610
trigger14 = stateno = 53&& animelem >= 1
;===========================================================================
;ぬいぐるみ
[State -1, Jump Light Punch]
type = ChangeState
value = 900
triggerall = var(32) = 9294
triggerall = RoundState = 2
triggerall = command = "nuigurumi"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;露時雨強
[State -1, Jump Light Punch]
type = ChangeState
value = ifelse(statetype = A,3532,3520)
triggerall = RoundState = 2
triggerall = command = "tuyusigure3"
trigger1 = ctrl
trigger2 = Stateno = 230||Stateno = 231 && movehit
trigger3 = Stateno = 430 && movehit
trigger4 = Stateno = 260
trigger5 = Stateno = 271
trigger6 = Stateno = 280
trigger7 = Stateno = 630
trigger8 = Stateno = 900
trigger9 = Stateno = 290
trigger10 = Stateno = 291 && (animelemtime(1) > 6 )
trigger11 = Stateno = 292 && (animelemtime(1) > 8 )
trigger12 = Stateno = 870
trigger13 = Stateno = 3610
trigger14 = stateno = 53
trigger15 = stateno = 1132 && movehit
trigger16 = var(12) = 1

;---------------------------------------------------------------------------
;冬曙 雪月花2
[State -1, Jump Light Punch]
type = ChangeState
value = ifelse(statetype = A,3710,3700)
triggerall = RoundState = 2
triggerall = var(25) = 0
triggerall = command = "akebono2"&& var(32) = 9294
trigger1 = ctrl
trigger2 = Stateno = 230||Stateno = 231 && movehit
trigger3 = Stateno = 430 && movehit
trigger4 = Stateno = 260
trigger5 = Stateno = 271
trigger6 = Stateno = 280
trigger7 = Stateno = 630
trigger8 = Stateno = 900
trigger9 = Stateno = 290
trigger10 = Stateno = 291 && (animelemtime(1) > 6 )
trigger11 = Stateno = 292 && (animelemtime(1) > 8 )
trigger12 = Stateno = 870
trigger13 = Stateno = 3610
trigger14 = stateno = 53
trigger15 = stateno = 1132 && movehit
trigger16 = var(12) = 1

;---------------------------------------------------------------------------
;冬曙 雪月花
[State -1, Jump Light Punch]
type = ChangeState
value = ifelse(statetype = A,3710,3700)
triggerall = Ceil(fvar(21)*2.1) >= life
triggerall = RoundState = 2
triggerall = command = "akebono"&& var(32) = 9290
trigger1 = ctrl
trigger2 = Stateno = 230||Stateno = 231 && movehit
trigger3 = Stateno = 430 && movehit
trigger4 = Stateno = 260
trigger5 = Stateno = 271
trigger6 = Stateno = 280
trigger7 = Stateno = 630
trigger8 = Stateno = 900
trigger9 = Stateno = 290
trigger10 = Stateno = 291 && (animelemtime(1) > 6 )
trigger11 = Stateno = 292 && (animelemtime(1) > 8 )
trigger12 = Stateno = 870
trigger13 = Stateno = 3610
trigger14 = stateno = 53
trigger15 = stateno = 1132 && movehit
trigger16 = var(12) = 1

;---------------------------------------------------------------------------
;露時雨中
[State -1, Jump Light Punch]
type = ChangeState
value = ifelse(statetype = A,3531,3510)
triggerall = RoundState = 2
triggerall = command = "tuyusigure2"
trigger1 = ctrl
trigger2 = Stateno = 230||Stateno = 231 && movehit
trigger3 = Stateno = 430 && movehit
trigger4 = Stateno = 260
trigger5 = Stateno = 271
trigger6 = Stateno = 280
trigger7 = Stateno = 630
trigger8 = Stateno = 900
trigger9 = Stateno = 290
trigger10 = Stateno = 291 && (animelemtime(1) > 6 )
trigger11 = Stateno = 292 && (animelemtime(1) > 8 )
trigger12 = Stateno = 870
trigger13 = Stateno = 3610
trigger14 = stateno = 53
trigger15 = stateno = 1132 && movehit
trigger16 = var(12) = 1

;---------------------------------------------------------------------------
;露時雨弱
[State -1, Jump Light Punch]
type = ChangeState
value = ifelse(statetype = A,3530,3500)
triggerall = RoundState = 2
triggerall = command = "tuyusigure1"
trigger1 = ctrl
trigger2 = Stateno = 230||Stateno = 231 && movehit
trigger3 = Stateno = 430 && movehit
trigger4 = Stateno = 260
trigger5 = Stateno = 271
trigger6 = Stateno = 280
trigger7 = Stateno = 630
trigger8 = Stateno = 900
trigger9 = Stateno = 290
trigger10 = Stateno = 291 && (animelemtime(1) > 6 )
trigger11 = Stateno = 292 && (animelemtime(1) > 8 )
trigger12 = Stateno = 870
trigger13 = Stateno = 3610
trigger14 = stateno = 53
trigger15 = stateno = 1132 && movehit
trigger16 = var(12) = 1

;===========================================================================
;風斬強
[State -1, Jump Light Punch]
type = ChangeState
value = ifelse(statetype = A,3102,3020)
triggerall = NumProjID(3010) = 0
triggerall = RoundState = 2
triggerall = command = "kazakiri3"
trigger1 = ctrl
trigger2 = Stateno = 230||Stateno = 231 && movehit
trigger3 = Stateno = 430 && movehit
trigger4 = Stateno = 260
trigger5 = Stateno = 271
trigger6 = Stateno = 280
trigger7 = Stateno = 630
trigger8 = Stateno = 900
trigger9 = Stateno = 290
trigger10 = Stateno = 291 && (animelemtime(1) > 6 )
trigger11 = Stateno = 292 && (animelemtime(1) > 8 )
trigger12 = Stateno = 870
trigger13 = Stateno = 3610
trigger14 = stateno = 53
trigger15 = stateno = 1132 && movehit
trigger16 = var(12) = 1

;---------------------------------------------------------------------------
;風斬中
[State -1, Jump Light Punch]
type = ChangeState
value = ifelse(statetype = A,3101,3010)
triggerall = NumProjID(3010) = 0
triggerall = RoundState = 2
triggerall = command = "kazakiri2"
trigger1 = ctrl
trigger2 = Stateno = 230||Stateno = 231 && movehit
trigger3 = Stateno = 430 && movehit
trigger4 = Stateno = 260
trigger5 = Stateno = 271
trigger6 = Stateno = 280
trigger7 = Stateno = 630
trigger8 = Stateno = 900
trigger9 = Stateno = 290
trigger10 = Stateno = 291 && (animelemtime(1) > 6 )
trigger11 = Stateno = 292 && (animelemtime(1) > 8 )
trigger12 = Stateno = 870
trigger13 = Stateno = 3610
trigger14 = stateno = 53
trigger15 = stateno = 1132 && movehit
trigger16 = var(12) = 1

;---------------------------------------------------------------------------
;風斬弱
[State -1, Jump Light Punch]
type = ChangeState
value = ifelse(statetype = A,3100,3000)
triggerall = NumProjID(3010) = 0
triggerall = RoundState = 2
triggerall = command = "kazakiri1"
trigger1 = ctrl
trigger2 = Stateno = 230||Stateno = 231 && movehit
trigger3 = Stateno = 430 && movehit
trigger4 = Stateno = 260
trigger5 = Stateno = 271
trigger6 = Stateno = 280
trigger7 = Stateno = 630
trigger8 = Stateno = 900
trigger9 = Stateno = 290
trigger10 = Stateno = 291 && (animelemtime(1) > 6 )
trigger11 = Stateno = 292 && (animelemtime(1) > 8 )
trigger12 = Stateno = 870
trigger13 = Stateno = 3610
trigger14 = stateno = 53
trigger15 = stateno = 1132 && movehit
trigger16 = var(12) = 1

;---------------------------------------------------------------------------
;風斬蹴り
[State -1, Jump Light Punch]
type = ChangeState
value = ifelse(statetype = A,3103,3030)
triggerall = NumProjID(3010) = 0
triggerall = RoundState = 2
triggerall = command = "kazakiri4"
trigger1 = ctrl
trigger2 = Stateno = 230||Stateno = 231 && movehit
trigger3 = Stateno = 430 && movehit
trigger4 = Stateno = 260
trigger5 = Stateno = 271
trigger6 = Stateno = 280
trigger7 = Stateno = 630
trigger8 = Stateno = 900
trigger9 = Stateno = 290
trigger10 = Stateno = 291 && (animelemtime(1) > 6 )
trigger11 = Stateno = 292 && (animelemtime(1) > 8 )
trigger12 = Stateno = 870
trigger13 = Stateno = 3610
trigger14 = stateno = 53
trigger15 = stateno = 1132 && movehit
trigger16 = var(12) = 1

;---------------------------------------------------------------------------
;蹴りキャンセル風車
[State -1, Jump Light Punch]
type = ChangeState
value = 3480
triggerall = RoundState = 2
triggerall = command = "kazaguruma3"||command = "kazaguruma2"||command = "kazaguruma1"
trigger1 = Stateno = 260
;---------------------------------------------------------------------------
;風車強
[State -1, Jump Light Punch]
type = ChangeState
value = ifelse(statetype = A,3450,3430)
triggerall = RoundState = 2
triggerall = command = "kazaguruma3"
trigger1 = ctrl
trigger2 = Stateno = 230||Stateno = 231 && movehit
trigger3 = Stateno = 430 && movehit
trigger4 = Stateno = 3610
trigger5 = Stateno = 271
trigger6 = Stateno = 280
trigger7 = Stateno = 630
trigger8 = Stateno = 900
trigger9 = Stateno = 290
trigger10 = Stateno = 291 && (animelemtime(1) > 6 )
trigger11 = Stateno = 292 && (animelemtime(1) > 8 )
trigger12 = Stateno = 870
trigger13 = stateno = 53
trigger14 = stateno = 1132 && movehit
trigger15 = var(12) = 1

;---------------------------------------------------------------------------
;風車中
[State -1, Jump Light Punch]
type = ChangeState
value = ifelse(statetype = A,3450,3420)
triggerall = RoundState = 2
triggerall = command = "kazaguruma2"
trigger1 = ctrl
trigger2 = Stateno = 230||Stateno = 231 && movehit
trigger3 = Stateno = 430 && movehit
trigger4 = Stateno = 3610
trigger5 = Stateno = 271
trigger6 = Stateno = 280
trigger7 = Stateno = 630
trigger8 = Stateno = 900
trigger9 = Stateno = 290
trigger10 = Stateno = 291 && (animelemtime(1) > 6 )
trigger11 = Stateno = 292 && (animelemtime(1) > 8 )
trigger12 = Stateno = 870
trigger13 = stateno = 53
trigger14 = stateno = 1132 && movehit
trigger15 = var(12) = 1

;---------------------------------------------------------------------------
;風車弱
[State -1, Jump Light Punch]
type = ChangeState
value = ifelse(statetype = A,3450,3400)
triggerall = RoundState = 2
triggerall = command = "kazaguruma1"
trigger1 = ctrl
trigger2 = Stateno = 230||Stateno = 231 && movehit
trigger3 = Stateno = 430 && movehit
trigger4 = Stateno = 3610
trigger5 = Stateno = 271
trigger6 = Stateno = 280
trigger7 = Stateno = 630
trigger8 = Stateno = 900
trigger9 = Stateno = 290
trigger10 = Stateno = 291 && (animelemtime(1) > 6 )
trigger11 = Stateno = 292 && (animelemtime(1) > 8 )
trigger12 = Stateno = 870
trigger13 = stateno = 53
trigger14 = stateno = 1132 && movehit
trigger15 = var(12) = 1

;---------------------------------------------------------------------------
;雨葵
[State -1, Jump Light Punch]
type = ChangeState
value = 3600
triggerall = statetype = S
triggerall = RoundState = 2
triggerall = command = "aoi"
trigger1 = ctrl
trigger2 = Stateno = 230||Stateno = 231 && movehit
trigger3 = Stateno = 430 && movehit
trigger4 = Stateno = 260
trigger5 = Stateno = 271
trigger6 = Stateno = 280
trigger7 = Stateno = 630
trigger8 = Stateno = 900
trigger9 = Stateno = 290
trigger10 = Stateno = 291 && (animelemtime(1) > 6 )
trigger11 = Stateno = 292 && (animelemtime(1) > 8 )
trigger12 = Stateno = 870
trigger13 = Stateno = 3610
trigger14 = var(12) = 1

;---------------------------------------------------------------------------
;怒り爆発
[State -1, Jump Light Punch]
type = ChangeState
value = 940
triggerall = var(11) = 0
triggerall = var(32) = 9291||var(32) = 9292
triggerall = var(36) = 0
triggerall = var(40) = 0
triggerall = RoundState = 2
triggerall = command = "bakuhatu"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = [5000,5029]
;---------------------------------------------------------------------------
;無の境地
[State -1, Jump Light Punch]
type = ChangeState
value = 910
triggerall = var(32) = 9291
triggerall = var(11) = 0
triggerall = numhelper(9400) = 0
triggerall = var(36) = 0;怒りゲージ有
triggerall = var(39) = 1;負け回数
triggerall = fvar(21) != 0;無の境地ゲージが1以上
triggerall = RoundState = 2
triggerall = Ceil(fvar(21)*2.1) >= life
triggerall = command = "x"&&command = "c"||command = "z"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;一閃（サムライスピリッツ零）
[State -1, Jump Light Punch]
type = ChangeState
value = 1300
triggerall = var(32) = 9291&&var(11) =1 && fvar(21) != 0|| var(32) = 9292 && var(40) = 1 && fvar(22) >= 1
triggerall = RoundState = 2
triggerall = command = "z"||command = "issen"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = root,MoveType = H
trigger3 = ctrl
trigger4 = root,MoveType = H
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;後ろ崩し
[State -1, Jump Light Punch]
type = ChangeState
value = 1530
triggerall = command = "holdback"
triggerall = command = "kuzusi"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;前崩し
[State -1, Jump Light Punch]
type = ChangeState
value = 1500
triggerall = command = "kuzusi"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = command = "holdfwd"
trigger2 = ctrl
;===========================================================================
;連斬発動
[State -1]
type = ChangeState
triggerall = var(32) = 9292
triggerall = command = "b"
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
value = 1100
;---------------------------------------------------------------------------
;連斬→弱
[State -1]
type = ChangeState
triggerall = command = "y"
triggerall = Stateno = 1100
trigger1 = movehit
value = 1110
;---------------------------------------------------------------------------
;連斬→弱→弱
[State -1]
type = ChangeState
triggerall = command = "y"
triggerall = Stateno = 1110 
trigger1 = time = [10,20]
value = 1111
;---------------------------------------------------------------------------
;連斬→弱→弱→弱
[State -1]
type = ChangeState
triggerall = command = "y"
triggerall = Stateno = 1111
trigger1 = time >= 10
value = 1112
;---------------------------------------------------------------------------
;連斬→弱→弱→中
[State -1]
type = ChangeState
triggerall = command = "b"
triggerall = Stateno = 1111
trigger1 = time >= 10
value = 1120
;---------------------------------------------------------------------------
;連斬→弱→弱→中→中
[State -1]
type = ChangeState
triggerall = command = "b"
triggerall = Stateno = 1120
trigger1 = time = [6,13]
value = 1121
;---------------------------------------------------------------------------
;連斬→弱→弱→中→中→大
[State -1]
type = ChangeState
triggerall = command = "a"
triggerall = Stateno = 1121
trigger1 = time = [6,13]
value = 1122
;---------------------------------------------------------------------------
;連斬→弱→弱→中→中→大→大
[State -1]
type = ChangeState
triggerall = command = "a"
triggerall = Stateno = 1122
trigger1 = time = [6,12]
value = 1123
;---------------------------------------------------------------------------
;連斬→弱→弱→中→中→大→大→大
[State -1]
type = ChangeState
triggerall = command = "a"
triggerall = Stateno = 1123
trigger1 = time >= 9
value = 1124
;---------------------------------------------------------------------------
;連斬→中
[State -1]
type = ChangeState
triggerall = command = "b"
triggerall = Stateno = 1100
trigger1 = movehit
value = 1130
;---------------------------------------------------------------------------
;連斬→中→中
[State -1]
type = ChangeState
triggerall = command = "b"
triggerall = Stateno = 1130
trigger1 = time = [12,18]
value = 1131
;---------------------------------------------------------------------------
;連斬→中→中→強
[State -1]
type = ChangeState
triggerall = command = "a"
triggerall = Stateno = 1131
trigger1 = time = [8,12]
value = 1132
;---------------------------------------------------------------------------
;連斬→強
[State -1]
type = ChangeState
triggerall = command = "a"
triggerall = Stateno = 1100
trigger1 = movehit
value = 1135
;---------------------------------------------------------------------------
;連斬→強→強
[State -1]
type = ChangeState
triggerall = command = "a"
triggerall = Stateno = 1135
trigger1 = time = [10,20]
value = 1136
;---------------------------------------------------------------------------
;連斬→強→強→蹴
[State -1]
type = ChangeState
triggerall = command = "x"
triggerall = Stateno = 1136
trigger1 = time = [12,18]
value = 1137
;===========================================================================
;完全ガード
[State -1]
type = ChangeState
triggerall = fvar(22) > 21
triggerall = var(32) = 9290
triggerall = command = "b"
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
value = 2100
;===========================================================================
;超斬り
[State -1]
type = ChangeState
triggerall = var(32) = 9295
triggerall = command = "b"
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
value = 1600
;---------------------------------------------------------------------------
;怒りため
[State -1]
type = ChangeState
triggerall = var(32) = 9293
triggerall = var(35) = 0
triggerall = RoundState = 2
triggerall = fvar(22) < 94
triggerall = Command = "bosi"
triggerall = Command = "yosi"
trigger1 = statetype != A
trigger1 = ctrl
value = 880
;===========================================================================
;↓その他↓
;===========================================================================
;ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;後退ダッシュ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;追い討ち大
[State -1, Jump Light Punch]
type = ChangeState
value = 500
triggerall = P2bodydist X <= 20
triggerall = p2statetype = L
triggerall = command = "holdfwd"
triggerall = command = "a"&&command = "y"
triggerall = statetype != A
trigger1 = command = "mads"
trigger1 = ctrl
;---------------------------------------------------------------------------
;冥想
[State -1]
value = 890
type = ChangeState
triggerall = var(35) = 0
triggerall = var(32) = 9291
triggerall = var(36) = 0
triggerall = RoundState = 2
triggerall = numhelper(920) = 0
triggerall = fvar(22) >= 1
triggerall = Command = "bosi"
triggerall = Command = "yosi"
triggerall = command != "holddown" && command != "holdfwd" && command != "holdback"
trigger1 = statetype != A
trigger1 = ctrl
;===========================================================================
;立ち強パンチ遠距離
[State -1]
type = ChangeState
triggerall = command = "a"
triggerall = P2bodydist X >= 50
triggerall = stateno != 100
triggerall = stateno != [1200,1299]
trigger1 = statetype = S
trigger1 = ctrl
value = 240
;===========================================================================
;立ち強パンチ近距離
[State -1]
type = ChangeState
triggerall = command = "a"
triggerall = P2bodydist X <= 50
triggerall = stateno != 100
triggerall = stateno != [1200,1299]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
value = 250

;===========================================================================
;立ち中パンチ遠距離
[State -1]
type = ChangeState
triggerall = command = "b"
triggerall = P2bodydist X >= 20
triggerall = stateno != 100
triggerall = stateno != [1200,1299]
trigger1 = statetype = S
trigger1 = ctrl
value = 220
;===========================================================================
;立ち中パンチ近距離
[State -1]
type = ChangeState
triggerall = command = "b"
triggerall = P2bodydist X <= 20
triggerall = stateno != 100
triggerall = stateno != [1200,1299]
trigger1 = statetype = S
trigger1 = ctrl
value = 230
;---------------------------------------------------------------------------
;立ち小パンチ遠距離
[State -1]
type = ChangeState
triggerall = command = "y"
triggerall = P2bodydist X >= 20
triggerall = command != "holddown"
triggerall = stateno != 100
triggerall = stateno != [1200,1299]
trigger1 = statetype = S
trigger1 = ctrl
value = 200
;===========================================================================
;立ち小パンチ近距離
[State -1]
type = ChangeState
triggerall = command = "y"
triggerall = P2bodydist X <= 20
triggerall = stateno != 100
triggerall = stateno != [1200,1299]
trigger1 = statetype = S
trigger1 = ctrl
value = 210
;---------------------------------------------------------------------------
;しゃがみキック2
[State -1]
type = ChangeState
value = 450
triggerall = command = "x"
triggerall = command = "mads"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみキック
[State -1]
type = ChangeState
value = 440
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;後ろいれキック
[State -1, Jump Light Punch]
type = ChangeState
value = 280
triggerall = command = "holdback"
triggerall = command = "x"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;前いれキック
[State -1, Jump Light Punch]
type = ChangeState
value = 270
triggerall = command = "holdfwd"
triggerall = command = "x"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ちキック
[State -1]
type = ChangeState
triggerall = command = "x"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl
value = 260
;---------------------------------------------------------------------------
;しゃがみ大パンチ
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = stateno != [1200,1299]
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ中パンチ
[State -1]
type = ChangeState
value = 420
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = stateno != [1200,1299]
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ小パンチ
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = P2bodydist X >= 30
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ小パンチ近距離
[State -1]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = P2bodydist X <= 30
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中 大パンチ(前後)
[State -1]
type = ChangeState
triggerall = stateno != [100,110]
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 53
value = 620
;---------------------------------------------------------------------------
;空 小パンチ(前後)
[State -1]
type = ChangeState
triggerall = stateno != [100,110]
triggerall = Command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 53
value = 600
;---------------------------------------------------------------------------
;空中 中パンチ(前後)
[State -1]
type = ChangeState
triggerall = stateno != [100,110]
triggerall = Command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 53
value = 610
;---------------------------------------------------------------------------
;空中 小キック
[State -1]
value = 630
type = ChangeState
triggerall = stateno != [100,110]
triggerall = Command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 53
;---------------------------------------------------------------------------
;はじき
[State -1]
type = ChangeState
value = 1400
triggerall = command = "haziki"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 290
trigger3 = Stateno = 291 && (animelemtime(1) > 6 )
trigger4 = Stateno = 292 && (animelemtime(1) > 8 )
;---------------------------------------------------------------------------
;後転
[State -1]
type = ChangeState
value = 980
triggerall = var(32) = 9291||var(32) = 9294
triggerall = command = "holddown"
triggerall = command = "c"
triggerall = statetype != A
trigger1 = command = "mads2"
trigger1 = ctrl
;---------------------------------------------------------------------------
;前転
[State -1]
type = ChangeState
value = 970
triggerall = var(32) = 9291||var(32) = 9294
triggerall = command = "holddown"
triggerall = command = "c"
triggerall = statetype != A
trigger1 = command = "mads"
trigger1 = ctrl
;---------------------------------------------------------------------------
;下避け
[State -1]
type = ChangeState
value = 820
triggerall = var(32) = 9291
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;前ジャンプ
[State -1]
type = ChangeState
value = 960
triggerall = var(32) = 9291
triggerall = command = "c"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;小ジャンプ
[State -1]
type = ChangeState
value = 950
triggerall = var(32) = 9291||var(32) = 9294
triggerall = command = "c"
triggerall = command != "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;回り込み
[State -1]
type = ChangeState
value = 860
triggerall = P2bodydist X <= 15
triggerall = var(32) = 9292||var(32) = 9293
triggerall = command = "c"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ミキリスライド下避け
[State -1]
type = ChangeState
value = 2010
triggerall = var(32) = 9290
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ミキリスライド小ジャンプ
[State -1]
type = ChangeState
value = 2020
triggerall = var(32) = 9290
triggerall = command = "c"
triggerall = command = "holdfwd"||command = "holdback"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ミキリスライド
[State -1]
type = ChangeState
value = 2000
triggerall = var(32) = 9290
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = ctrl
;===========================================================================
;自決
[State -1, Jump Light Punch]
type = ChangeState
value = 2500
triggerall = RoundState = 2
triggerall = command = "zisatu"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = RoundState = 2
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;避け
[State -1, Taunt]
type = ChangeState
value = 850
triggerall = var(32) = 9292||var(32) = 9293
triggerall = RoundState = 2
triggerall = command = "c"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ダウン回避
[State -1, Taunt]
type = ChangeState
value = 2210
triggerall = command = "holdback"
triggerall = command = "c"
trigger1 = stateno = 5050
trigger1 = pos y >=-5
;---------------------------------------------------------------------------
;ダウン回避
[State -1, Taunt]
type = ChangeState
value = 2200
triggerall = command = "c"
trigger1 = stateno = 5050
trigger1 = pos y >=-5