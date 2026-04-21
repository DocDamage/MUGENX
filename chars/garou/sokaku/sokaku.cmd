;もっちー
;-| 超必殺技 |-----------------------------------------------------
[Command]
name = "imo"
command = ~y, x, B, a, b
time = 45

[Command]
name = "i-mo"
command = ~D, F, DF, B, a+b
time = 30

[Command]
name = "i-mo"
command = ~D, F, DF, B, c
time = 30

[Command]
name = "muzan"
command = ~D, F, DF, B, y
time = 30

[Command]
name = "ika1"
command = ~F, B, D, F, x
time = 25

[Command]
name = "ika2"
command = ~F, B, D, F, y
time = 25

[Command]
name = "char_ex"
command = ~B, D, DB, x+y

[Command]
name = "char_ex"
command = ~B, D, DB, z

[Command]
name = "kazu_ex"
command = ~F, D, DF, x+y

[Command]
name = "kazu_ex"
command = ~F, D, DF, z

[Command]
name = "kill_ex"
command = ~D, DB, B, a+b

[Command]
name = "kill_ex"
command = ~D, DB, B, c

[Command]
name = "rimu_ex"
command = ~B, D, F, x+y

[Command]
name = "rimu_ex"
command = ~B, D, F, z

[Command]
name = "chin_ex"
command = ~B, D, F, a+b

[Command]
name = "chin_ex"
command = ~B, D, F, c

;-| 必殺技 |------------------------------------------------------

[Command]
name = "raizing"
command = ~F, D, DF, a

[Command]
name = "raizing"
command = ~F, D, DF, b

[Command]
name = "char_x"
command = ~B, D, DB, x

[Command]
name = "char_y"
command = ~B, D, DB, y

[Command]
name = "kazu_x"
command = ~F, D, DF, x

[Command]
name = "kazu_y"
command = ~F, D, DF, y

[Command]
name = "kimon"
command = ~F, D, B, y

[Command]
name = "katu_a"
command = ~F, D, B, a

[Command]
name = "katu_b"
command = ~F, D, B, b

[Command]
name = "rimu_x"
command = ~B, D, F, x

[Command]
name = "rimu_y"
command = ~B, D, F, y

[Command]
name = "chin_a"
command = ~B, D, F, a

[Command]
name = "chin_b"
command = ~B, D, F, b

[Command]
name = "hyoui"     
command = F, B, F, y
time = 20

[Command]
name = "makibisi_x"
command = ~D, DF, F, x

[Command]
name = "makibisi_y"
command = ~D, DF, F, y

[Command]
name = "kobitosan"
command = ~D, DB, B, x

[Command]
name = "kill_y"
command = ~D, DB, B, y

[Command]
name = "kaen_a"
command = ~D, DB, B, a

[Command]
name = "kaen_b"
command = ~D, DB, B, b

[Command]
name = "zigoku"
command = ~F, DF, D, y

[Command]
name = "zigoku"
command = ~B, DB, D, y

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "FBF"     
command = F, B, F
time = 10

[Command]
name = "BFB"     
command = B, F, B
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

[Command]
name = "konbu"     
command = x, x, x, x
time = 25

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "yoke"
command = a+x
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
name = "raigeki"
command = /D,y
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

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
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
name = "downfwd"
command = /DF
time = 1

[Command]
name = "upfwd"
command = /UF
time = 1

[Command]
name = "downback"
command = /DB
time = 1

[Command]
name = "Forward"
command = /F
time = 1

; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================
;無惨弾
[State -1]
type = ChangeState
value = 3200
triggerall = var(20) = 0
triggerall = command = "muzan"
triggerall = (power >= 3000) || (Life < 500) && (power >= 2000)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;===========================================================================
;いかずち Lv.2
[State -1]
type = ChangeState
value = 3100
triggerall = var(20) = 0
triggerall = command = "ika2"
triggerall = (power >= 2000) || (Life < 500) && (power >= 1000)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;===========================================================================
;いかずち Lv.1
[State -1]
type = ChangeState
value = 3000
triggerall = var(20) = 0
triggerall = command = "ika1"
triggerall = (power >= 1000) || (Life < 500)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;===========================================================================
;チェンジイモータル
[State -1]
type = ChangeState
value = 3400
triggerall = var(20) = 1
triggerall = command = "imo"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;===========================================================================
;チェンジ芋樽
[State -1]
type = ChangeState
value = 4000
triggerall = var(20) = 0
triggerall = var(21) = 0
triggerall = command = "i-mo"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;チェンジ雷神
[State -1]
type = ChangeState
value = 4100
triggerall = var(20) = 1
triggerall = command = "i-mo"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;ライトニングソード（ＥＸ）
[State -1]
type = ChangeState
value = 2370
triggerall = var(20) = 1
triggerall = command = "char_ex"
triggerall = NumHelper(2100) = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;===========================================================================
;イフリートソード（ＥＸ）
[State -1]
type = ChangeState
value = 2470
triggerall = var(20) = 1
triggerall = command = "kazu_ex"
triggerall = NumHelper(2100) = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;===========================================================================
;キルシュレッド（ＥＸ）
[State -1]
type = ChangeState
value = 2140
triggerall = var(20) = 1
triggerall = command = "kill_ex"
triggerall = NumHelper(2100) = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;===========================================================================
;プレス・オブ・デス（ＥＸ）
[State -1]
type = ChangeState
value = 3370
triggerall = var(20) = 1
triggerall = command = "chin_ex"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;===========================================================================
;プレス・オブ・デス（弱）
[State -1]
type = ChangeState
value = 3300
triggerall = var(20) = 1
triggerall = command = "chin_a"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;===========================================================================
;プレス・オブ・デス（強）
[State -1]
type = ChangeState
value = 3350
triggerall = var(20) = 1
triggerall = command = "chin_b"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;===========================================================================
;ブリザードソード（ＥＸ）
[State -1]
type = ChangeState
value = 2570
triggerall = var(20) = 1
triggerall = command = "rimu_ex"
triggerall = NumHelper(2100) = 0
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;---------------------------------------------------------------------------
;雷神愚
[State -1]
type = ChangeState
value = 1900
triggerall = var(20) = 0
triggerall = command = "raizing"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;---------------------------------------------------------------------------
;喝（弱）
[State -1]
type = ChangeState
value = 1400
triggerall = var(20) = 0
triggerall = command = "katu_a"
triggerall = NumHelper(1400) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;喝（弱・ガードキャンセル）
[State -1]
type = ChangeState
value = 1405
triggerall = var(20) = 0
triggerall = command = "katu_a"
triggerall = NumHelper(1400) = 0
triggerall = power >= 500
trigger1 = Var(14) = 1
trigger1 = (StateNo = 150) || (StateNo = 152)

;---------------------------------------------------------------------------
;喝（強）
[State -1]
type = ChangeState
value = 1500
triggerall = var(20) = 0
triggerall = command = "katu_b"
triggerall = NumHelper(1400) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;喝（強・ガードキャンセル）
[State -1]
type = ChangeState
value = 1505
triggerall = var(20) = 0
triggerall = command = "katu_b"
triggerall = NumHelper(1400) = 0
triggerall = power >= 500
trigger1 = Var(14) = 1
trigger1 = (StateNo = 150) || (StateNo = 152)

;喝（握る）
[State -1]
type = VarSet
var(3) = 1
triggerall = command = "kimon"
trigger1 = stateno = 1520

;---------------------------------------------------------------------------
;鬼門陣
[State -1]
type = ChangeState
value = 1300
triggerall = var(20) = 0
triggerall = command = "kimon"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 101
trigger1 = p2bodydist X < 24
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;憑依弾
[State -1]
type = ChangeState
value = 1250
triggerall = var(20) = 0
triggerall = command = "hyoui"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;---------------------------------------------------------------------------
;まきびし（弱）
[State -1]
type = ChangeState
value = 1000
triggerall = var(20) = 0
triggerall = command = "makibisi_x"
triggerall = NumHelper(1010) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;---------------------------------------------------------------------------
;まきびし（強）
[State -1]
type = ChangeState
value = 1050
triggerall = var(20) = 0
triggerall = command = "makibisi_y"
triggerall = NumHelper(1010) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;---------------------------------------------------------------------------
;野猿狩り
[State -1]
type = ChangeState
value = 1100
triggerall = var(20) = 0
triggerall = command = "kobitosan"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;---------------------------------------------------------------------------
;邪棍舞
[State -1]
type = ChangeState
value = 1600
triggerall = var(20) = 0
trigger1 = command = "konbu" || var(5) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "konbu"
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

[State -1]
type = VarSet
var(5) = 1
triggerall = command = "konbu"
trigger1 = stateno = 200

;---------------------------------------------------------------------------
;渦炎陣（弱）
[State -1]
type = ChangeState
value = 1700
triggerall = var(20) = 0
triggerall = command = "kaen_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])

;---------------------------------------------------------------------------
;渦炎陣（強）
[State -1]
type = ChangeState
value = 1750
triggerall = var(20) = 0
triggerall = command = "kaen_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact
trigger3 = Var(14) = 1
trigger3 = (StateNo = 150) || (StateNo = 152)

;---------------------------------------------------------------------------
;ソードグラップル
[State -1]
type = ChangeState
value = 2600
triggerall = var(20) = 1
triggerall = command = "kimon"
triggerall = NumHelper(2100) = 0
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 101
trigger1 = p2bodydist X < 24
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;ライトニングソード（弱）
[State -1]
type = ChangeState
value = 2300
triggerall = var(20) = 1
triggerall = command = "char_x"
triggerall = NumHelper(2100) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;ライトニングソード（弱・ガードキャンセル）
[State -1]
type = ChangeState
value = 2305
triggerall = var(20) = 1
triggerall = command = "char_x"
triggerall = NumHelper(2100) = 0
trigger1 = Var(14) = 1
trigger1 = (StateNo = 150) || (StateNo = 152)

;---------------------------------------------------------------------------
;ライトニングソード（強）
[State -1]
type = ChangeState
value = 2350
triggerall = var(20) = 1
triggerall = command = "char_y"
triggerall = NumHelper(2100) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;ライトニングソード（強・ガードキャンセル）
[State -1]
type = ChangeState
value = 2355
triggerall = var(20) = 1
triggerall = command = "char_y"
triggerall = NumHelper(2100) = 0
trigger1 = Var(14) = 1
trigger1 = (StateNo = 150) || (StateNo = 152)

;---------------------------------------------------------------------------
;イフリートソード（弱）
[State -1]
type = ChangeState
value = 2400
triggerall = var(20) = 1
triggerall = command = "kazu_x"
triggerall = NumHelper(2100) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;イフリートソード（弱・ガードキャンセル）
[State -1]
type = ChangeState
value = 2405
triggerall = var(20) = 1
triggerall = command = "kazu_x"
triggerall = NumHelper(2100) = 0
trigger1 = Var(14) = 1
trigger1 = (StateNo = 150) || (StateNo = 152)

;---------------------------------------------------------------------------
;イフリートソード（強）
[State -1]
type = ChangeState
value = 2450
triggerall = var(20) = 1
triggerall = command = "kazu_y"
triggerall = NumHelper(2100) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;イフリートソード（強・ガードキャンセル）
[State -1]
type = ChangeState
value = 2455
triggerall = var(20) = 1
triggerall = command = "kazu_y"
triggerall = NumHelper(2100) = 0
trigger1 = Var(14) = 1
trigger1 = (StateNo = 150) || (StateNo = 152)

;---------------------------------------------------------------------------
;ブリザードソード（弱）
[State -1]
type = ChangeState
value = 2500
triggerall = var(20) = 1
triggerall = command = "rimu_x"
triggerall = NumHelper(2100) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;---------------------------------------------------------------------------
;ブリザードソード（強）
[State -1]
type = ChangeState
value = 2550
triggerall = var(20) = 1
triggerall = command = "rimu_y"
triggerall = NumHelper(2100) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;---------------------------------------------------------------------------
;キルシュレッド（弱）
[State -1]
type = ChangeState
value = 2100
triggerall = var(20) = 1
triggerall = command = "kaen_a"
triggerall = NumHelper(2100) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;---------------------------------------------------------------------------
;キルシュレッド（強）
[State -1]
type = ChangeState
value = 2120
triggerall = var(20) = 1
triggerall = command = "kaen_b"
triggerall = NumHelper(2100) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;---------------------------------------------------------------------------
;キルシュレッド（戻り弱）
[State -1]
type = ChangeState
value = 2150
triggerall = var(20) = 1
triggerall = command = "kaen_a"
triggerall = NumHelper(2100) = 1
triggerall = var(8) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;---------------------------------------------------------------------------
;キルシュレッド（戻り強）
[State -1]
type = ChangeState
value = 2155
triggerall = var(20) = 1
triggerall = command = "kaen_b"
triggerall = NumHelper(2100) = 1
triggerall = var(8) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;---------------------------------------------------------------------------
;キルシュレッド（戻り空中弱）
[State -1]
type = ChangeState
value = 2180
triggerall = var(20) = 1
triggerall = command = "kaen_a"
triggerall = NumHelper(2100) = 1
triggerall = var(8) = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;キルシュレッド（戻り空中強）
[State -1]
type = ChangeState
value = 2190
triggerall = var(20) = 1
triggerall = command = "kaen_b"
triggerall = NumHelper(2100) = 1
triggerall = var(8) = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;キルシュレッド（豆弱）
[State -1]
type = ChangeState
value = 2200
triggerall = var(20) = 1
triggerall = command = "kobitosan"
triggerall = NumHelper(2100) = 1
triggerall = var(8) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;---------------------------------------------------------------------------
;キルシュレッド（豆強）
[State -1]
type = ChangeState
value = 2250
triggerall = var(20) = 1
triggerall = command = "kill_y"
triggerall = NumHelper(2100) = 1
triggerall = var(8) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [240,300]) || (stateno = [400,430])
trigger2 = movecontact

;---------------------------------------------------------------------------
;雷撃棍
[State -1]
type = ChangeState
value = 1800
triggerall = var(20) = 0
triggerall = command = "raigeki"
triggerall = NumHelper(1800) = 0
triggerall = (p2statetype = L)||(p2stateno = [5100,5120])
triggerall = p2stateno!= 5120
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = command != "FBF"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 101

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = command != "BFB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;無道縛り投げ
[State -1]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 101
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 12
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;地獄門
[State -1]
type = VarSet
var(6) = 1
triggerall = command = "zigoku"
trigger1 = AnimElem = 6 < 0
trigger1 = stateno = 810

;---------------------------------------------------------------------------
;昇天殺
[State -1]
type = ChangeState
value = 900
triggerall = command = "y"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 9040
trigger1 = command = "holddown"
trigger1 = p2bodydist X < 10
trigger1 = p2statetype = A
;trigger1 = Pos Y < -300

;---------------------------------------------------------------------------
;錫杖上段打ち
[State -1]
type = ChangeState
value = 440
trigger1 = command = "downfwd"
trigger1 = command = "x"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;避けパンチ
[State -1, yokePunch]
type = ChangeState
value = 300
triggerall = command = "yoke"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;近立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 240
triggerall = command = "x"
triggerall = P2bodydist X < 20
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;近立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 250
triggerall = command = "y"
triggerall = P2bodydist X < 24
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240 || stateno = 260 || stateno = 400 || stateno = 420
trigger2 = movecontact

;---------------------------------------------------------------------------
;近立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 260
triggerall = command = "a"
triggerall = P2bodydist X < 20
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240 || stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
;近立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 270
triggerall = command = "b"
triggerall = P2bodydist X < 24
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [240,260]) || stateno = 400 || stateno = 420
trigger2 = movecontact

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240 || stateno = 260 || stateno = 400 || stateno = 420
trigger2 = movecontact

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240 || stateno = 400

;---------------------------------------------------------------------------
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [240,260]) || stateno = 400 || stateno = 420
trigger2 = movecontact

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ歩き
[State -1]
type = ChangeState
value = 22
trigger1 = command = "downfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger1 = (stateno != 22) && (stateno = 11)

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 240 || stateno = 260 || stateno = [400,430]
trigger2 = stateno!= 410
trigger2 = movecontact

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 240 || stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [240,260]) || stateno = 400 || stateno = 420
trigger2 = movecontact

;---------------------------------------------------------------------------
;空中弱パンチ（垂直）
[State -1, Jump Light Punch]
type = ChangeState
value = 640
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0

;---------------------------------------------------------------------------
;空中強パンチ（小ジャンプ）
[State -1, Jump Strong Punch]
type = ChangeState
value = 650
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno = 9040
trigger2 = stateno = 600 || stateno = 620 || stateno = 640
trigger2 = movecontact

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 620 || stateno = 640
trigger2 = movecontact

;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 620
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 640
trigger2 = movecontact

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650])
trigger2 = stateno != 630
trigger2 = movecontact

