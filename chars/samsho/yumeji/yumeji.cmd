; The CMD file.
;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15

command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
[Command];神夢想一刀流奥義
name = "ougi"
command = ~D, DF, F,y+b
time = 20

[Command];境地
name = "mu"
command = ~D, DB, B,y+b
time = 20

;-| Special Motions |------------------------------------------------------

[Command];ルプシ カムイ ウェイサンペコル（足）
name = "rimu_2"
command = ~F, DF, D, a

[Command];ルプシ カムイ ウェイサンペコル（頭）
name = "rimu_1"
command = ~F, DF, D, x

[Command];アンヌムツベ3
name = "nako_3"
command = ~B, DB, D, x+a

[Command];アンヌムツベ2
name = "nako_2"
command = ~B, DB, D, a

[Command];アンヌムツベ
name = "nako"
command = ~B, DB, D, x

[Command];秘剣　ツバメ返し
name = "ukyo"
command = ~DB, D, DF, F, b

[Command];四の太刀　椿
name = "tora"
command = ~B, D, DB, b

[Command];三連殺～猪鹿蝶～
name = "gen"
command = ~F, D, DF, b

[Command];柳生心眼刀・相破
name = "jyu"
command = ~D, DB, B, b

[Command];モズ落とし
name = "han"
command = ~F, D, DF, x+a

[Command];奥義　弧月斬
name = "hao"
command = ~F, D, DF, x

[Command];跳尾獅子
name = "kyo"
command = ~B, D, DB, x

[Command];バイオネットラージュ
name = "shal"
command = ~F, D, DF, a

[Command];陽炎（弱）
name = "kage_1"
command = ~D, DF, F, x

[Command];陽炎（中）
name = "kage_2"
command = ~D, DF, F, a

[Command];陽炎（強）
name = "kage_3"
command = ~D, DF, F, x+a

[Command];秘剣・ささめゆき閃（弱）
name = "ssm_1"
command = ~D, DB, B, x

[Command];秘剣・ささめゆき閃（中）
name = "ssm_2"
command = ~D, DB, B, a

[Command];秘剣・ささめゆき閃（強）
name = "ssm_3"
command = ~D, DB, B, x+a

[Command];雲雀
name = "hibari"
command =~B,F, x

[Command];秘剣　双殺ツバメ返し（弱）
name = "sousatu_1"
command = ~DB, D, DF, F, x
time = 25
[Command];秘剣　双殺ツバメ返し（中〉
name = "sousatu_2"
command = ~DB, D, DF, F, a
time = 25
[Command];秘剣　双殺ツバメ返し（強）
name = "sousatu_3"
command = ~DB, D, DF, F, x+a
time = 25

[Command];自決
name = "ketu"
command =~B,F,DF,D,s

[Command];弾き
name = "hajiki"
command =~D,B,F,y

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command];一閃
name = "issen"
command = a+b+y
time = 1

[Command];怒り爆発
name = "bakuhatu"
command = x+a+b
time = 1

[Command]
name = "x+a"
command = x+a
time = 1

[Command];小追い打ち
name = "oiuchi_1"
command = /$D,a+b
time = 5

[Command];大追い打ち
name = "oiuchi_2"
command =/$U,a+b
time = 5

[Command];大追い打ち
name = "holda"
command = /$a
time = 1

[Command];大追い打ち
name = "holdb"
command = /$b
time = 1

[Command];不意打ち
name = "fui"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "holdup2" ;Required (do not remove)
command = /U
time = 1

[Command];前転
name = "zen"
command = /$DF,y
time = 1

[Command];後転
name = "kou"
command = /$DB,y
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
name = "Fb"
command = /$F,b
time = 1

[Command]
name = "debug"
command = /$D,D,s
time = 15

[Command]
name = "cyouhatu"
command = s,s,s
time = 15

;-| Single Button |---------------------------------------------------------
[Command]; パワー溜め
name = "pow"
command = /$y
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1


;===========================================================================
[Statedef -1]
;===========================================================================

;---------------------------------------------------------------------------
;デバック
;---------------------------------------------------------------------------
;使用後は境地MAX＆無の境地発動条件強制ON＆怒りゲージ多めに供給（MAXでは無い）ただしバグる可能性有り。
;コマンド開放はおまかせ致します、境地トレーニングには使えるかもしれません。
;[State -1, debug!!]
;type = ChangeState
;value = 11111
;triggerall = command = "debug"
;triggerall = numhelper(12100)= 0
;triggerall = statetype != A
;triggerall = var(35) = 1
;trigger1 = ctrl
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;一閃
[State -1, Stand Strong Punch]
type = ChangeState
value = 13000
triggerall = var(6) = 0
triggerall = command = "issen"
triggerall = numhelper(12100)= 1
triggerall = statetype != A
trigger1  = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;怒り爆発2
[State -1, Stand Strong Punch]
type = ChangeState
value = 12500
triggerall = var(6) = 0
triggerall = command = "c"
triggerall = numhelper(12100)= 0
triggerall = statetype != A
triggerall = var(35) = 0
trigger1 = ctrl
trigger2 = stateno =[5000,5011]
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;怒り爆発1
[State -1, Stand Strong Punch]
type = ChangeState
value = 12500
triggerall = var(6) = 0
triggerall = command = "bakuhatu"
triggerall = numhelper(12100)= 0
triggerall = statetype != A
triggerall = var(35) = 0
trigger1 = ctrl
trigger2 = stateno =[5000,5011]
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;無の境地
[State -1, Stand Strong Punch]
type = ChangeState
value = 12000
triggerall = command = "z"
triggerall = numhelper(12100)= 0
triggerall = NumExplod(22222)= 1
trigger1 = statetype != A
trigger1 = var(35) = 0
trigger1 = ctrl
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;無の境地
[State -1, Stand Strong Punch]
type = ChangeState
value = 12000
triggerall = command = "mu"
triggerall = numhelper(12100)= 0
triggerall = NumExplod(22222)= 1
trigger1 = statetype != A
trigger1 = var(35) = 0
trigger1 = ctrl
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;神夢想一刀流奥義　御神薙
[State -1, Stand Strong Punch]
type = ChangeState
value = 8100
triggerall = var(6) = 0
triggerall = var(30) = 0
triggerall = command = "ougi"
triggerall = statetype != A
Triggerall = var(16) >= 1
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;夢想・秘剣　ツバメ返し
[State -1, Stand Strong Punch]
type = ChangeState
value = 8070
triggerall = var(6) = 0
triggerall = command = "ukyo"
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;夢想・四の太刀　椿
[State -1, Stand Strong Punch]
type = ChangeState
value = 8060
triggerall = var(6) = 0
triggerall = command = "tora"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;夢想・三連殺～猪鹿蝶～
[State -1, Stand Strong Punch]
type = ChangeState
value = 8050
triggerall = var(6) = 0
triggerall = command = "gen"
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;夢想・柳生心眼刀・相破
[State -1, Stand Strong Punch]
type = ChangeState
value = 8040
triggerall = var(6) = 0
triggerall = command = "jyu"
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;夢想・モズ落とし
[State -1, Stand Strong Punch]
type = ChangeState
value = 8030
triggerall = var(6) = 0
triggerall = command = "han"
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;夢想・奥義　弧月斬
[State -1, Stand Strong Punch]
type = ChangeState
value = 8020
triggerall = var(6) = 0
triggerall = command = "hao"
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;夢想・跳尾獅子
[State -1, Stand Strong Punch]
type = ChangeState
value = 8010
triggerall = var(6) = 0
triggerall = command = "kyo"
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;夢想・バイオネットラージュ
[State -1, Stand Strong Punch]
type = ChangeState
value = 8000
triggerall = var(6) = 0
triggerall = command = "shal"
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;夢想・アンヌムツベ
[State -1, Stand Strong Punch]
type = ChangeState
value = 8080
triggerall = var(6) = 0
triggerall = command = "nako" || command = "nako_2" || command = "nako_3" 
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------
;夢想・ルプシ カムイ ウェイサンペコル　（足）
[State -1, Stand Strong Punch]
type = ChangeState
value = 8095
triggerall = var(6) = 0
triggerall = command = "rimu_2"
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;夢想・ルプシ カムイ ウェイサンペコル　（頭）
[State -1, Stand Strong Punch]
type = ChangeState
value = 8090
triggerall = var(6) = 0
triggerall = command = "rimu_1"
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;秘剣・ささめゆき閃 （強）
[State -1, Stand Strong Punch]
type = ChangeState
value = 1202
triggerall = var(6) = 0
triggerall = command = "ssm_3"
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------
;秘剣・ささめゆき閃（中）
[State -1, Stand Strong Punch]
type = ChangeState
value = 1201
triggerall = var(6) = 0
triggerall = command = "ssm_2"
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------
;秘剣・ささめゆき閃 （弱）
[State -1, Stand Strong Punch]
type = ChangeState
value = 1200
triggerall = var(6) = 0
triggerall = command = "ssm_1"
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]

;---------------------------------------------------------------------------
;非剣・ささめゆき
[State -1, Stand Strong Punch]
type = ChangeState
value = 1199
triggerall = var(30) = 0
triggerall = var(6) != 0
triggerall = command = "ssm_1" || command = "ssm_2" || command = "ssm_3"
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------
;秘剣・陽炎 （強）
[State -1, Stand Strong Punch]
type = ChangeState
value = 1002
triggerall = var(6) = 0
triggerall = command = "kage_3"
triggerall = NumHelper(1100)= 0
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------
;秘剣・陽炎 （中）
[State -1, Stand Strong Punch]
type = ChangeState
value = 1001
triggerall = var(6) = 0
triggerall = command = "kage_2"
triggerall = NumHelper(1100)= 0
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------
;秘剣・陽炎 （弱）
[State -1, Stand Strong Punch]
type = ChangeState
value = 1000
triggerall = var(6) = 0
triggerall = command = "kage_1"
triggerall = NumHelper(1100)= 0
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;---------------------------------------------------------------------------
;雲雀
[State -1, Stand Strong Punch]
type = ChangeState
value = 1400
triggerall = var(6) = 0
triggerall = var(30) = 0
triggerall = command = "hibari"
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]

;===========================================================================
;秘剣・双殺ツバメ返し（強）
[State -1, Stand Strong Punch]
type = ChangeState
value = 1602
triggerall = var(6) = 0
triggerall = var(30) = 0
triggerall = command = "sousatu_3"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 105
;---------------------------------------------------------------------------
;秘剣・双殺ツバメ返し（中〉
[State -1, Stand Strong Punch]
type = ChangeState
value = 1601
triggerall = var(6) = 0
triggerall = var(30) = 0
triggerall = command = "sousatu_2"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 105
;---------------------------------------------------------------------------
;秘剣・双殺ツバメ返し（弱）
[State -1, Stand Strong Punch]
type = ChangeState
value = 1600
triggerall = var(6) = 0
triggerall = var(30) = 0
triggerall = command = "sousatu_1"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 105
;===========================================================================
;大追い打ち
[State -1, Sand Strong Punch]
type = ChangeState
value = 860+var(6)
triggerall = command = "fui"
triggerall = command = "holdup"
triggerall = statetype != A
triggerall = stateno != 860+var(6)
trigger1 = p2stateno =[5100,5110]
trigger2 = p2stateno = 5050
trigger3 = p2stateno = 5071
trigger1 = ctrl
;===========================================================================
;小追い打ち
[State -1, Sand Strong Punch]
type = ChangeState
value = 850+var(6)
triggerall = command = "oiuchi_1"
triggerall = statetype != A
triggerall = stateno != 850+var(6)
trigger1 = p2stateno =[5100,5110]
trigger2 = p2stateno = 5050
trigger3 = p2stateno = 5071
trigger1 = ctrl

;===========================================================================
;弾き
[State -1, Sand Strong Punch]
type = ChangeState
value = 395+var(6)
triggerall = command = "hajiki"
triggerall = statetype != A
trigger1 = ctrl
;立ち系
trigger2 = (stateno = [200,230])
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;しゃがみ系
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ダッシュ系
trigger4 = stateno = 1500
trigger4 = movecontact
;弾かれキャンセル系
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;===========================================================================
;不意打ち
[State -1, Sand Strong Punch]
type = ChangeState
value = 380+var(6)
triggerall = command = "fui"
triggerall = command != "holdup"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;前転
[State -1, Stand Strong Punch]
type = ChangeState
value = 310
triggerall = command = "zen"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;後転
[State -1, Stand Strong Punch]
type = ChangeState
value = 320
triggerall = command = "kou"
trigger1 = statetype != A
trigger1 = ctrl
;===========================================================================
;伏せ
[State -1, Run Back]
type = ChangeState
value = 300
trigger1 = command = "y"
trigger1 = statetype = C
trigger1 = ctrl

;===========================================================================
; 小ジャンプ避け（垂直）
[State -1, Run Back]
type = ChangeState
value = 330
trigger1 = command = "y"
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
; 小ジャンプ避け（前）
[State -1, Run Back]
type = ChangeState
value = 335
trigger1 = command = "y"
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;瞑想
[State -1, Stand Strong Punch]
type = ChangeState
value = 360
triggerall = command = "y"
Triggerall = var(15) > 0
triggerall = var(35) = 0
trigger1 = stateno = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;自決
[State -1, Taunt]
type = ChangeState
value = 9500
triggerall = var(6) = 0
triggerall = command = "ketu"
trigger1 = statetype != A
trigger1 = ctrl
;===========================================================================
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(6) = 0
triggerall = command = "cyouhatu"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;突き飛ばし
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 12
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = ctrl
trigger2 = stateno = 101
trigger2 = command = "holdfwd"
trigger2 = p2bodydist X < 12
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;引っ張り
[State -1, Kung Fu Throw]
type = ChangeState
value = 801
triggerall = command = "b"
triggerall = statetype = S
trigger1 = command = "holdback"
trigger1 = p2bodydist X < 12
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = ctrl
trigger2 = stateno = 101
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 12
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; 刀入手
[State -1, Taunt]
type = ChangeState
value = 197
triggerall = command = "x"
triggerall = numhelper(11000) = 1
triggerall = numhelper(2351) = 1
triggerall = stateno != 1199
triggerall = ctrl
trigger1 = statetype != A
trigger2 = stateno = 811 || stateno = 821
trigger2 = statetype != A
;---------------------------------------------------------------------------

;----------------------------------------------------------------------------------------------------------
;遠距離斬り
;----------------------------------------------------------------------------------------------------------
; 遠距離大斬り
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(6) = 0
triggerall = p2bodydist X >= 40
triggerall = command = "x+a"
triggerall = command != "holddown"
triggerall = StateNo != 100
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;遠距離中斬り
[State -1, Stand Light Kick]
type = ChangeState
value = 205
triggerall = var(6) = 0
triggerall = p2bodydist X >= 40
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = StateNo != 100
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; 遠距離小斬り
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(6) = 0
triggerall = p2bodydist X >= 40
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = StateNo != 100
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------------------------------------------
;近距離斬り
;----------------------------------------------------------------------------------------------------------
; 近距離大斬り
[State -1, Stand Strong Punch]
type = ChangeState
value = 230
triggerall = var(6) = 0
triggerall = p2bodydist X < 40
triggerall = command = "x+a"
triggerall = command != "holddown"
triggerall = StateNo != 100
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;近距離中斬り
[State -1, Stand Light Kick]
type = ChangeState
value = 225
triggerall = var(6) = 0
triggerall = p2bodydist X < 40
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = StateNo != 100
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; 近距離小斬り
[State -1, Stand Light Punch]
type = ChangeState
value = 220
triggerall = var(6) = 0
triggerall = p2bodydist X < 40
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = StateNo != 100
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------------------------------------------
; 立ちキック
;----------------------------------------------------------------------------------------------------------
;レバー入れキック
[State -1, Standing Strong Kick]
type = ChangeState
value = 280
triggerall = command = "Fb"
triggerall = command != "holddown"
triggerall = StateNo != 100
trigger1 = statetype = S
trigger1 = ctrl

;通常
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = StateNo != 100
trigger1 = statetype = S
trigger1 = ctrl


;----------------------------------------------------------------------------------------------------------
;しゃがみ近距離斬り
;----------------------------------------------------------------------------------------------------------
; 近距離大斬り
[State -1, Stand Strong Punch]
type = ChangeState
value = 410
triggerall = var(6) = 0
triggerall = p2bodydist X < 40
triggerall = command = "x+a"
triggerall = command = "holddown"
triggerall = StateNo != 100
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;近距離中斬り
[State -1, Stand Light Kick]
type = ChangeState
value = 405
triggerall = var(6) = 0
triggerall = p2bodydist X < 40
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = StateNo != 100
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; 近距離小斬り
[State -1, Stand Light Punch]
type = ChangeState
value = 400
triggerall = var(6) = 0
triggerall = p2bodydist X < 40
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = StateNo != 100
trigger1 = statetype = C
trigger1 = ctrl

;----------------------------------------------------------------------------------------------------------
;しゃがみ遠距離斬り
;----------------------------------------------------------------------------------------------------------
; 遠距離大斬り
[State -1, Stand Strong Punch]
type = ChangeState
value = 430
triggerall = var(6) = 0
triggerall = p2bodydist X >= 40
triggerall = command = "x+a"
triggerall = command = "holddown"
triggerall = StateNo != 100
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;遠距離中斬り
[State -1, Stand Light Kick]
type = ChangeState
value = 425
triggerall = var(6) = 0
triggerall = p2bodydist X >= 40
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = StateNo != 100
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; 遠距離小斬り
[State -1, Stand Light Punch]
type = ChangeState
value = 420
triggerall = var(6) = 0
triggerall = p2bodydist X >= 40
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = StateNo != 100
trigger1 = statetype = C
trigger1 = ctrl

;----------------------------------------------------------------------------------------------------------
;しゃがみキック
;----------------------------------------------------------------------------------------------------------
;レバー入れキック
[State -1, Standing Strong Kick]
type = ChangeState
value = 260
triggerall = command = "Fb"
triggerall = command = "holddown"
triggerall = StateNo != 100
trigger1 = statetype = C
trigger1 = ctrl

;通常キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 450
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = StateNo != 100
trigger1 = statetype = C
trigger1 = ctrl
;----------------------------------------------------------------------------------------------------------
;ジャンプ斬り
;----------------------------------------------------------------------------------------------------------
; 垂直大斬り
[State -1, Jump Light Punch]
type = ChangeState
value = 610
triggerall = var(6) = 0
triggerall = Vel X = 0
triggerall = command = "x+a"
trigger1 = statetype = A
trigger1 = ctrl

; 斜め大斬り
[State -1, Jump Light Punch]
type = ChangeState
value = 620
triggerall = var(6) = 0
triggerall = Vel X != 0
triggerall = command = "x+a"
trigger1 = statetype = A
trigger1 = ctrl

;垂直・斜め共用ジャンプ中斬り
[State -1, Jump Light Punch]
type = ChangeState
value = 605
triggerall = var(6) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;垂直・斜め共用ジャンプ小斬り
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(6) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;----------------------------------------------------------------------------------------------------------
;ジャンプキック
;----------------------------------------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 650
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl


;----------------------------------------------------------------------------------------------------------
;素手
;----------------------------------------------------------------------------------------------------------
;立ち
[State -1, Stand Strong Punch]
type = ChangeState
value = 10200
triggerall = var(6) = 10000
triggerall = command != "holddown"
triggerall = StateNo != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "x+a"
trigger2 = command = "x"
trigger3 = command = "a"
;-------------------------------------------
;しゃがみ
[State -1, Stand Strong Punch]
type = ChangeState
value = 10400
triggerall = var(6) = 10000
triggerall = command = "holddown"
triggerall = StateNo != 100
triggerall = statetype = C
triggerall = ctrl
trigger1 = command = "x+a"
trigger2 = command = "x"
trigger3 = command = "a"
;-------------------------------------------
;ジャンプ
[State -1, Standing Strong Kick]
type = ChangeState
value = 10600
triggerall = var(6) = 10000
triggerall = command != "holddown"
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "x+a"
trigger2 = command = "x"
trigger3 = command = "a"
;-------------------------------------------