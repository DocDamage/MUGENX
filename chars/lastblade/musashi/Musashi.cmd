;===========================================================================
; コマンド設定ファイル
;===========================================================================
;-| 超必殺技 |--------------------------------------------------------------
;五輪連ね
[Command]
name = "Gorintsurane"
command = ~$F, D, $B, $F, D, $B, x+y 
time = 50

;二天無双剣
[Command]
name = "Nitenmusouken"
command = ~$F, D, $B, $F, D, $B, y 
time = 50

;乱舞奥義
[Command]
name = "ranbu"
command = ~D, D, x+y 
time = 15

;乱舞奥義2(上段)
[Command]
name = "ranbu_x"
command = ~D, D, x
time = 15

;乱舞奥義2(下段)
[Command]
name = "ranbu_y"
command = ~D, D, y 
time = 15

;最終奥義
[Command]
name = "saisyu"
command = ~x, x, $F, a, z
time = 50

;ガードキャンセル攻撃
[Command]
name = "gard_z"
command = ~$B, $D, z
time = 10

;ガードキャンセル弾き
[Command]
name = "gard_a"
command = ~$B, $D, a
time = 10

;-| 必殺技 |----------------------------------------------------------------
;脅かし
[Command]
name = "Obiyakashi"
command = ~$B, D, F, x 
time = 15

;十字構え
[Command]
name = "Jujigamae"
command = ~F, D, DF, y 
time = 25

;間欠泉
[Command]
name = "Kanketsusen"
command = ~D, F, y 
time = 15

;乱舞奥義2
[Command]
name = "df_z"
command = ~D, F, z
time = 15

;枕二連
[Command]
name = "Makuraniren"
command = ~F, D, B, y 
time = 30

;-| 2度押し |---------------------------------------------------------------
;フロントステップ
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

;バックステップ
[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| ボタン同時押し |--------------------------------------------------------
;姿勢回復
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1

;斬り上げ
[Command]
name = "yz"
command = y+z
time = 1

;-| 方向キー＋ボタン |-------------------------------------------------------
[Command]
;胴払い2
name = "back_x"
command = /B,x
time = 1

;飛刀剣
[Command]
name = "fwd_y"
command = /F,y
time = 1

;飛刀二連
[Command]
name = "downfwd_y"
command = /DF,y
time = 1

;劫炎剣
[Command]
name = "back_y"
command = /B,y
time = 1

;蹴り
[Command]
name = "fwd_z"
command = /F,z
time = 1

;乱舞奥義2
[Command]
name = "fwd_yz"
command = /F,y+z
time = 1

;足払い
[Command]
name = "downfwd_z"
command = /DF,z
time = 1

;踝穿ち
[Command]
name = "down_x"
command = /$D,x
time = 1

;頭砕き
[Command]
name = "down_y"
command = /$D,y
time = 1

;臑打ち
[Command]
name = "down_z"
command = /$D,z
time = 1

;変形陰鉄
[Command]
name = "down_a"
command = /$D,a
time = 1

;-| ボタン |-----------------------------------------------------------------
;胴払い1
[Command]
name = "x"
command = x
time = 1

;貫き
[Command]
name = "y"
command = y
time = 1

;踝打ち
[Command]
name = "z"
command = z
time = 1

;変形陽鉄
[Command]
name = "a"
command = a
time = 1

;未使用
[Command]
name = "b"
command = b
time = 1

;未使用
[Command]
name = "c"
command = c
time = 1

;挑発
[Command]
name = "s"
command = s
time = 1

;-| ボタン押しっぱなし |-------------------------------------------------------
;集中
[Command]
name = "hold_x"
command = /x
time = 10

;溜め(十字構え)
[Command]
name = "hold_y"
command = /y
time = 10

;-| 方向キー |------------------------------------------------------------------
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

;===========================================================================
; コマンド設定ファイル
;===========================================================================
[Statedef -1]
;===========================================================================
; CPUのルーチン
;===========================================================================
;---------------------------------------------------------------------------
;遠距離(必殺技)
[State -1]
type = ChangeState
triggerall = Var(5) != 1
triggerall = Var(6) != 1
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2BodyDist X > 100
trigger1 = ctrl = 1
value = 6000

;中距離
[State -1]
type = ChangeState
triggerall = Var(5) != 1
triggerall = Var(6) != 1
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2BodyDist X = [32,100]
triggerall = P2Movetype != A
triggerall = P2StateType != L
triggerall = P2StateNo != 4000
triggerall = P2StateNo != 4700
triggerall = P2StateNo != 4900
triggerall = P2StateNo != 5050
triggerall = P2StateNo != 5070
triggerall = P2StateNo != 5100
triggerall = P2StateNo != 5110
triggerall = P2StateNo != 5120
triggerall = P2StateNo != 5160
triggerall = P2StateNo != 5170
trigger1 = ctrl = 1
value = 6100

;近距離
[State -1]
type = ChangeState
triggerall = Var(5) != 1
triggerall = Var(6) != 1
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2BodyDist X < 32
riggerall = P2Movetype != A
triggerall = P2StateType != L
triggerall = P2StateNo != 4000
triggerall = P2StateNo != 4700
triggerall = P2StateNo != 4900
triggerall = P2StateNo != 5050
triggerall = P2StateNo != 5070
triggerall = P2StateNo != 5100
triggerall = P2StateNo != 5110
triggerall = P2StateNo != 5120
triggerall = P2StateNo != 5160
triggerall = P2StateNo != 5170
trigger1 = ctrl = 1
value = 6200

;ガード時
[State -1]
type = ChangeState
triggerall = Var(30) = 1
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153
value = 6300

;乱舞奥義中
[State -1]
type = ChangeState
triggerall = Var(6) != 1
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = Var(5) = 1
value = 6400

;追い打ち(遠距離)
[State -1]
type = ChangeState
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = P2BodyDist X = [30,80]
triggerall = ctrl = 1
trigger1 = P2StateNo = 5100
trigger2 = P2StateNo = 5170
value = 350

;追い打ち(近距離)
[State -1]
type = ChangeState
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = P2BodyDist X < 30
triggerall = ctrl = 1
trigger1 = P2StateNo = 5100
trigger2 = P2StateNo = 5170
value = 220

;相手攻撃時(立ち)
[State -1]
type = ChangeState
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
triggerall = Facing = 1
triggerall = prevStateNo != 100
trigger1 = ctrl = 1
value = 130

;相手攻撃時(しゃがみ)
[State -1]
type = ChangeState
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Facing = 1
triggerall = prevStateNo != 100
trigger1 = ctrl = 1
value = 131

;相手攻撃時(空中)
[State -1]
type = ChangeState
triggerall = Var(30) = 1
triggerall = StateType = A
triggerall = P2Movetype = A
triggerall = Facing = 1
triggerall = prevStateNo != 100
trigger1 = ctrl = 1
value = 132

;===========================================================================
; 基本･移動系
;===========================================================================
;---------------------------------------------------------------------------
;フロントステップ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;バックステップ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;前転起き上がり
[State -1]
type = ChangeState
triggerall = command = "holdfwd"
trigger1 = stateno = 5110 && Life != 0
value = 5130

;---------------------------------------------------------------------------
;後転起き上がり
[State -1]
type = ChangeState
triggerall = command = "holdback"
trigger1 = stateno = 5110 && Life != 0
value = 5135

;===========================================================================
; 超必殺技系
;===========================================================================
;---------------------------------------------------------------------------
;五輪連ね
[State -1,1]
type = ChangeState
value = 3000
triggerall = command = "Gorintsurane" 
triggerall = Var(5) != 1 
triggerall = (power >= 1000 && life > 300) || life <= 300
trigger1 = statetype = S && ctrl = 1
trigger2 = Var(7) != 1
trigger2 = Stateno = [1010,1020]

[State -1,2]
type = ChangeState
value = 3000
triggerall = command = "Gorintsurane" 
triggerall = Var(5) != 1 
triggerall = (Var(7) = 0 && movehit) || (Var(7) != 0 && movecontact)
triggerall = (power >= 1000 && life > 300) || life <= 300
trigger1 = Stateno = [200,220]
trigger2 = Stateno = 300
trigger3 = Stateno = 330
trigger4 = Stateno = 370
trigger5 = Stateno = [400,420]
trigger6 = Stateno = 500
trigger7 = Stateno = 850


;---------------------------------------------------------------------------
;二天無双剣
[State -1,3]
type = ChangeState
value = 3500
triggerall = command = "Nitenmusouken"
triggerall = command != "Gorintsurane" && Var(5) != 1 && Var(7) != 1
triggerall = (power >= 3000 && life > 300) || (power >= 1000 && life <= 300)
trigger1 = statetype = S && ctrl = 1
trigger2 = Var(7)= 2
trigger2 = Stateno = [1010,1020]

[State -1,4]
type = ChangeState
value = 3500
triggerall = command = "Nitenmusouken"
triggerall = command != "Gorintsurane" && Var(5) != 1 
triggerall = (Var(7) = 0 && movehit) || (Var(7) != 0 && movecontact)
triggerall = (power >= 3000 && life > 300) || (power >= 1000 && life <= 300)
trigger1 = Stateno = [200,220]
trigger2 = Stateno = 300
trigger3 = Stateno = 330
trigger4 = Stateno = 370
trigger5 = Stateno = [400,420]
trigger6 = Stateno = 500
trigger7 = Stateno = 850

;---------------------------------------------------------------------------
;乱舞奥義
[State -1]
type = ChangeState
value = 4000
triggerall = command = "ranbu" && command != "Nitenmusouken" && command != "Gorintsurane"
triggerall = Var(5) != 1 && Var(7) != 0 && statetype != A 
triggerall = (power >= 1000 && life > 300) || (life <= 300)
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 4000
triggerall = command = "ranbu" && command != "Nitenmusouken" && command != "Gorintsurane"
triggerall = Var(5) != 1 && Var(7) != 0 && statetype != A  && movecontact
triggerall = (power >= 1000 && life > 300) || (life <= 300)
trigger1 = Stateno = [200,220]
trigger2 = Stateno = 300
trigger3 = Stateno = 330
trigger4 = Stateno = 370
trigger5 = Stateno = [400,420]
trigger6 = Stateno = 500
trigger7 = Stateno = 850

;---------------------------------------------------------------------------
;最終奥義
[State -1]
type = ChangeState
value = 4500
triggerall = command = "saisyu"
triggerall = Power >= 3000
triggerall = Life <= 300
triggerall = p2life <=500
triggerall = Var(7)= 2
triggerall = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;乱舞奥義2(上段)
[State -1]
type = ChangeState
value = 4700
triggerall = command = "ranbu_x"
triggerall = command != "Nitenmusouken"
triggerall = command != "Gorintsurane"
triggerall = Var(7) = 2 && statetype != A
triggerall = (power >= 3000 && life > 300) || (power >= 1000 && life <= 300)
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 4700
triggerall = command = "ranbu_x" && movecontact
triggerall = command != "Nitenmusouken"
triggerall = command != "Gorintsurane"
triggerall = Var(7) = 2 && statetype != A
triggerall = (power >= 3000 && life > 300) || (power >= 1000 && life <= 300)
trigger1 = Stateno = [200,220]
trigger2 = Stateno = 300
trigger3 = Stateno = 330
trigger4 = Stateno = 370
trigger5 = Stateno = [400,420]
trigger6 = Stateno = 500
trigger7 = Stateno = 850


;乱舞奥義2-1
[State -1]
type = ChangeState
value = 4720
triggerall = command = "x"
trigger1 = Stateno = 4710
trigger1 =  movecontact
trigger1 =  Time < 21
trigger2 = Stateno = 4910
trigger2 =  movecontact
trigger2 =  Time < 19

;乱舞奥義2-2
[State -1]
type = ChangeState
value = 4730
triggerall = command = "y"
trigger1 = Stateno = 4720
trigger1 =  movecontact
trigger1 =  Time < 15

;乱舞奥義2-3
[State -1]
type = ChangeState
value = 4740
triggerall = command = "z"
trigger1 = Stateno = 4730
trigger1 =  movecontact
trigger1 =  Time < 15

;乱舞奥義2-4
[State -1]
type = ChangeState
value = 4750
triggerall = command = "x"
trigger1 = Stateno = 4740
trigger1 =  movecontact
trigger1 =  Time < 15

;乱舞奥義2-5
[State -1]
type = ChangeState
value = 4760
triggerall = command = "y"
trigger1 = Stateno = 4750
trigger1 =  movecontact
trigger1 =  Time < 20

;乱舞奥義2-6
[State -1]
type = ChangeState
value = 4770
triggerall = command = "z"
trigger1 = Stateno = 4760
trigger1 =  movecontact
trigger1 =  Time < 22

;乱舞奥義2(通常ルート1)
[State -1]
type = ChangeState
value = 4800
triggerall = command = "x"
trigger1 = Stateno = 4770
trigger1 =  movecontact
trigger1 =  Time < 19

;乱舞奥義2(通常ルート2)
[State -1]
type = ChangeState
value = 4810
triggerall = command = "y"
trigger1 = Stateno = 4800
trigger1 =  movecontact
trigger1 =  Time < 15

;乱舞奥義2(通常ルートEND)
[State -1]
type = ChangeState
value = 4820
triggerall = command = "df_z"
trigger1 = Stateno = 4810
trigger1 =  movecontact
trigger1 =  Time < 18

;乱舞奥義2(下段ルート1)
[State -1]
type = ChangeState
value = 4830
triggerall = command = "z"
trigger1 = Stateno = 4770
trigger1 =  movecontact
trigger1 =  Time < 24

;乱舞奥義2(下段ルートEND)
[State -1]
type = ChangeState
value = 4840
triggerall = command = "Kanketsusen"
trigger1 = Stateno = 4830
trigger1 =  movecontact
trigger1 =  Time < 18

;---------------------------------------------------------------------------
;乱舞奥義2(下段)
[State -1]
type = ChangeState
value = 4900
triggerall = command = "ranbu_y"
triggerall = command != "Nitenmusouken"
triggerall = command != "Gorintsurane"
triggerall = Var(7) = 2 && statetype != A
triggerall = (power >= 3000 && life > 300) || (power >= 1000 && life <= 300)
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 4900
triggerall = command = "ranbu_y" && movecontact
triggerall = command != "Nitenmusouken"
triggerall = command != "Gorintsurane"
triggerall = Var(7) = 2 && statetype != A
triggerall = (power >= 3000 && life > 300) || (power >= 1000 && life <= 300)
trigger1 = Stateno = [200,220]
trigger2 = Stateno = 300
trigger3 = Stateno = 330
trigger4 = Stateno = 370
trigger5 = Stateno = [400,420]
trigger6 = Stateno = 500
trigger7 = Stateno = 850

;乱舞奥義2-4'
[State -1]
type = ChangeState
value = 4920
triggerall = command = "down_z"
trigger1 = Stateno = 4740
trigger1 =  movecontact
trigger1 =  Time < 15

;打ち上げルート1
[State -1]
type = ChangeState
value = 4930
triggerall = command = "down_z"
trigger1 = Stateno = 4920
trigger1 =  movecontact
trigger1 =  Time < 19

;打ち上げルートEND
[State -1]
type = ChangeState
value = 4940
triggerall = command = "fwd_yz"
trigger1 = Stateno = 4930
trigger1 =  movecontact
trigger1 =  Time < 20

;特殊ルート1
[State -1]
type = ChangeState
value = 4950
triggerall = command = "fwd_yz"
trigger1 = Stateno = 4920
trigger1 =  movecontact
trigger1 =  Time < 19

;特殊ルートEND
[State -1]
type = ChangeState
value = 4960
triggerall = command = "Kanketsusen"
trigger1 = Stateno = 4950
trigger1 =  movecontact
trigger1 =  Time < 18

;===========================================================================
; 必殺技系
;===========================================================================
;---------------------------------------------------------------------------
;脅かし
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Obiyakashi"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1000
triggerall = command = "Obiyakashi"
triggerall = (Var(7) = 0 && movehit) || (Var(7) != 0 && movecontact)
trigger1 = Stateno = [200,220]
trigger2 = Stateno = 300
trigger3 = Stateno = 330
trigger4 = Stateno = 370
trigger5 = Stateno = [400,420]
trigger6 = Stateno = 500
trigger7 = Stateno = 850

;十字構え
[State -1]
type = ChangeState
value = 1200
triggerall = command = "Jujigamae"
triggerall = statetype != A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1200
triggerall = command = "Jujigamae"
triggerall = statetype != A
triggerall = (Var(7) = 0 && movehit) || (Var(7) != 0 && movecontact)
trigger1 = Stateno = [200,220]
trigger2 = Stateno = 300
trigger3 = Stateno = 330
trigger4 = Stateno = 370
trigger5 = Stateno = [400,420]
trigger6 = Stateno = 500
trigger7 = Stateno = 850


;間欠泉
[State -1]
type = ChangeState
value = 1100
triggerall = command = "Kanketsusen"
triggerall = command != "Jujigamae"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1100
triggerall = command = "Kanketsusen"
triggerall = command != "Jujigamae"
triggerall = (Var(7) = 0 && movehit) || (Var(7) != 0 && movecontact)
trigger1 = Stateno = [200,220]
trigger2 = Stateno = 300
trigger3 = Stateno = 330
trigger4 = Stateno = 370
trigger5 = Stateno = [400,420]
trigger6 = Stateno = 500
trigger7 = Stateno = 850

;枕二連
[State -1]
type = ChangeState
value = 1300
triggerall = statetype = S && Var(5) != 1 
triggerall = ctrl = 1
triggerall = command != "Nitenmusouken"
triggerall = command != "Gorintsurane"
trigger1 = command = "Makuraniren"

;===========================================================================
; 特殊技系
;===========================================================================
;---------------------------------------------------------------------------
;変形陽鉄
[State -1]
type = ChangeState
value = 810
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = s
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;変形陰鉄
[State -1]
type = ChangeState
value = 830
triggerall = command = "down_a"
triggerall = statetype = c
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;集中
[State -1]
type = ChangeState
value = 850
triggerall = power < 3000
triggerall = statetype != A
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = command = "hold_x" && Time =16
trigger1 = Stateno = [200,220]
trigger2 = Stateno = 300
trigger3 = Stateno = 330
trigger4 = Stateno = 370
trigger5 = Stateno = [400,420]
trigger6 = Stateno = 500
trigger7 = ctrl = 1

;---------------------------------------------------------------------------
;ガードキャンセル弾き
[State -1]
type = ChangeState
value = 860
triggerall = command = "gard_a"
trigger1 = stateno = [150,152]

;---------------------------------------------------------------------------
;ガードキャンセル攻撃
[State -1]
type = ChangeState
value = 870
triggerall = command = "gard_z"
triggerall = Power >= 500
triggerall = var(7) = 2
trigger1 = stateno = [150,152]

;===========================================================================
; 投げ攻撃系
;===========================================================================
;---------------------------------------------------------------------------
;枕押さえ
[State -1]
type = ChangeState
value = 800
triggerall = statetype = S && Var(5) != 1 
triggerall = ctrl = 1
triggerall = command != "Makuraniren"
triggerall = p2bodydist X < 32
triggerall = p2bodydist y = 0
triggerall = p2statetype = S
trigger1 = command = "fwd_y"
trigger2 = command = "back_y"

;===========================================================================
; 基本攻撃系
;===========================================================================
;---------------------------------------------------------------------------
;胴払い1
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 200
triggerall = Var(7) != 0 && movecontact
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = Stateno = 300

;---------------------------------------------------------------------------
;貫き
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "z"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 210
triggerall = Var(7) != 0 && movecontact
triggerall = command = "y"
triggerall = command != "z"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = Stateno = 200
trigger2 = Stateno = [300,310]
trigger3 = Stateno = 400

;---------------------------------------------------------------------------
;踝打ち
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "y"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = statetype = S
trigger1 = ctrl = 1

;===========================================================================
; 追加攻撃系
;===========================================================================
;---------------------------------------------------------------------------
;胴払い2
[State -1]
type = ChangeState
value = 300
triggerall = command = "back_x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;胴払い(返し）
[State -1]
type = ChangeState
value = 310
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 200
trigger2 = movecontact && Var(7) != 0

;---------------------------------------------------------------------------
;飛刀剣
[State -1]
type = ChangeState
value = 320
triggerall = command = "fwd_y"
triggerall = command != "holddown" && command != "Kanketsusen"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 320
triggerall = Var(7) != 0 && movecontact
triggerall = command = "fwd_y"
triggerall = command != "holddown" && command != "Kanketsusen"
trigger1 = Stateno = [200,210]
trigger2 = Stateno = [300,310]
trigger3 = Stateno = [400,410]

;---------------------------------------------------------------------------
;劫炎剣
[State -1]
type = ChangeState
value = 330
triggerall = command = "back_y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 330
triggerall = Var(7) != 0 && movecontact
triggerall = command = "back_y"
triggerall = command != "holddown"
trigger1 = Stateno = [200,210]
trigger2 = Stateno = [300,310]
trigger3 = Stateno = [400,410]

;---------------------------------------------------------------------------
;飛刀ニ連
[State -1]
type = ChangeState
value = 340
triggerall = command = "downfwd_y"
triggerall = command != "Jujigamae"
triggerall = StateType != A
triggerall = P2StateNo != 5050
triggerall = P2StateNo != 5070
triggerall = P2StateNo != 5100
triggerall = P2StateNo != 5110
triggerall = P2StateNo != 5160
triggerall = P2StateNo != 5170
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 340
triggerall = Var(7) != 0 && movecontact
triggerall = command = "downfwd_y"
triggerall = command != "Jujigamae"
triggerall = StateType != A
triggerall = P2StateNo != 5050
triggerall = P2StateNo != 5070
triggerall = P2StateNo != 5100
triggerall = P2StateNo != 5110
triggerall = P2StateNo != 5160
triggerall = P2StateNo != 5170
trigger1 = Stateno = [200,210]
trigger2 = Stateno = [300,310]
trigger3 = Stateno = [400,410]

;---------------------------------------------------------------------------
;底抜き
[State -1]
type = ChangeState
value = 350
triggerall = command = "downfwd_y"
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = P2Statetype = L

;---------------------------------------------------------------------------
;蹴り
[State -1]
type = ChangeState
value = 360
triggerall = command = "fwd_z"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;斬り上げ
[State -1]
type = ChangeState
value = 370
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = statetype != A
trigger1 = command = "yz"
trigger1 = ctrl = 1
trigger2 = StateNo = 820
trigger2 = command = "a"
trigger2 = Time < 18
trigger3 = StateNo = 840
trigger3 = command = "a"
trigger3 = Time < 18

[State -1]
type = ChangeState
value = 370
triggerall = Var(7) != 0 && movecontact
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = statetype != A
triggerall = command = "yz"
trigger1 = Stateno = [200,210]
trigger2 = Stateno = [300,310]
trigger3 = Stateno = [400,410]

;===========================================================================
; しゃがみ攻撃系
;===========================================================================
;---------------------------------------------------------------------------
;踝穿ち
[State -1]
type = ChangeState
value = 400
triggerall = command = "down_x"
triggerall = statetype = c
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 400
triggerall = Var(7) != 0 && movecontact
triggerall = command = "down_x"
trigger1 = Stateno = 300

;---------------------------------------------------------------------------
;頭砕き
[State -1]
type = ChangeState
value = 410
triggerall = command = "down_y"
triggerall = command != "downfwd_y"
triggerall = statetype = C
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 410
triggerall = Var(7) != 0 && movecontact
triggerall = command = "down_y"
triggerall = command != "downfwd_y"
trigger1 = Stateno = 200
trigger2 = Stateno = [300,310]
trigger3 = Stateno = 400

;---------------------------------------------------------------------------
;臑打ち
[State -1]
type = ChangeState
value = 420
triggerall = command = "down_z"
triggerall = command != "downfwd_z"
triggerall = statetype = c
trigger1 = ctrl = 1

;===========================================================================
; 追加しゃがみ攻撃系
;===========================================================================
;---------------------------------------------------------------------------
;足払い
[State -1]
type = ChangeState
value = 500
triggerall = command = "downfwd_z"
triggerall = statetype = c
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 500
triggerall = Var(7) != 0 && movecontact
triggerall = command = "downfwd_z"
trigger1 = Stateno = [200,210]
trigger2 = Stateno = [300,310]
trigger3 = Stateno = [400,410]

;===========================================================================
; ジャンプ攻撃系
;===========================================================================
;---------------------------------------------------------------------------
;飛び飛刀
[State -1]
type = ChangeState
value = 600
triggerall = statetype = a
triggerall = command = "x" ||  command = "y"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;飛び蹴り
[State -1]
type = ChangeState
value = 610
triggerall = command = "z"
triggerall = statetype = a
trigger1 = ctrl = 1


