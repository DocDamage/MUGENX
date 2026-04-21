;-| 超必殺技 |--------------------------------------------------------
;ここには超必殺技を記述してください、同じ名前を「name =」欄に書けますが
;コマンドは絶対に違ったものにしてください。
;カンフーマンは弱パンチと強パンチで技が出せるように同じ名前のコマンドで
;内容が弱と強になっています。
;「time=20」と書くことで「コマンドを20フレーム以内に入力」と設定できます。


[Command]
name = "神塵"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, x+y
time = 30

[Command]
name = "無式2"
command = ~D, DF, F, D, DF, F, a+b
time = 20

[Command]
name = "都牟刈"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "都牟刈"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "無式"
command = ~D, DF, F, D, DF, F, x+y
time = 20

[Command]
name = "当て身"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, b
time = 30

[Command]
name = "当て身"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, a
time = 30



[Command]
name = "強紅蓮殺棍"
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "弱紅蓮殺棍"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "ライアー・エレメンタル"
command = ~D, DB, B, DB,D, DF, F, a+b
time = 25

[Command]
name = "旋空殺棍"
command = ~D, DF, F, D, DF, F, a+b
time = 20

[Command]
name = "MAX大旋風"
command = ~D, DF, F, D, DF, F, x+y
time = 20

[Command]
name = "札死舞"
command = ~D,DF,F,D,DF,F, a+b
time = 20

[Command]
name = "一閃"
command = ~D,DF,F,D,DF,F, x+y
time = 20


[Command]
name = "怒り爆発"
command = x+y+a
time = 1

[Command]
name = "怒り爆発"
command = z+c
time = 1

[Command]
name = "裏五光"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "五光斬"
command = ~D, DF, F, D, DF, F, x
time = 20

;-| 必殺技 |------------------------------------------------------
[Command]
name = "牙神突"
command = ~D,DB,B,b

[Command]
name = "牙神突"
command = ~D,DB,B,a

[Command]
name = "強月華斬"
command = ~F,D,DF,b

[Command]
name = "弱月華斬"
command = ~F,D,DF,a

[Command]
name = "強百鬼殺"
command = ~D,DB,B,F,y

[Command]
name = "弱百鬼殺"
command = ~D,DB,B,F,x

[Command]
name = "強桜華斬"
command = ~D,DB,B,y

[Command]
name = "弱桜華斬"
command = ~D,DB,B,x

[Command]
name = "強光翼刃"
command = ~F,D,DF,y

[Command]
name = "弱光翼刃"
command = ~F,D,DF,x

[Command]
name = "強三連殺"
command = ~D,DF,F,y

[Command]
name = "弱三連殺"
command = ~D,DF,F,x


[Command]
name = "緊急回避前"
command = x+a
time = 1

[Command]
name = "緊急回避後"
command = /$B,x+a
time = 1

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
command = x+y
time = 1

[Command]
name = "ふっ飛ばし"
command = y+b
time = 1

[Command]
name = "MAX"
command = a+y
time = 1

[Command]
name = "ストライカー"
command = a+y
time = 1

[Command]
name = "ゲージ溜め発動"
command = z+c
time = 1

[Command]
name = "おしっぱなしx"
command = /$x
time = 1

[Command]
name = "おしっぱなしy"
command = /$y
time = 1

[Command]
name = "おしっぱなしa"
command = /$a
time = 1

[Command]
name = "おしっぱなしb"
command = /$b
time = 1

[Command]
name = "おしっぱなしz"
command = /$z
time = 1

[Command]
name = "おしっぱなしc"
command = /$c
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "裾蹴り"
command = /$F,b
time = 1

[Command]
name = "逆風"
command = /$DF,y
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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


; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;・変数使用
;　1 = キャラクター変更
;　2 = 勝利ポーズ変更
;　3 = スロー処理
;　4 = 怒り発動時間
;　5 = 強弱ボタン判定
;　6 = 
;　7 = ?????
;　8 = MAX発動判定
;　9 = MAX発動時のパワーセット(仮)
; 10 = プレイヤーの向き設定
; 11 = MAX発動コマンド判定
;
;



;===========================================================================
;---------------------------------------------------------------------------
;札死舞
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2300
triggerall = command = "札死舞"
triggerall = life<=250
triggerall = var(4) >= 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1 && animelem = 6,<=0
trigger4 = stateno = 235
trigger4 = movecontact = 1
trigger5 = stateno = 245
trigger5 = movecontact = 1 && animelem = 5,>=0 && animelem  = 8,<0
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 290
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 450
trigger9 = movecontact = 1

;---------------------------------------------------------------------------
;一閃
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2250
triggerall = command = "一閃"
triggerall = var(4) >= 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1 && animelem = 6,<=0
trigger4 = stateno = 235
trigger4 = movecontact = 1
trigger5 = stateno = 245
trigger5 = movecontact = 1 && animelem = 5,>=0 && animelem  = 8,<0
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 290
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 450
trigger9 = movecontact = 1
;---------------------------------------------------------------------------
;怒り爆発
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2200
triggerall = command = "怒り爆発"
triggerall = power >= 1000
triggerall = var(8) >= 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1 && animelem = 6,<=0
trigger4 = stateno = 235
trigger4 = movecontact = 1
trigger5 = stateno = 245
trigger5 = movecontact = 1 && animelem = 5,>=0 && animelem  = 8,<0
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 290
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 450
trigger9 = movecontact = 1
;---------------------------------------------------------------------------
;裏五光
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = (command = "裏五光")||(command = "五光斬")
triggerall = (power >= 1000)||(var(8) >= 1)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1 && animelem = 6,<=0
trigger4 = stateno = 235
trigger4 = movecontact = 1
trigger5 = stateno = 245
trigger5 = movecontact = 1 && animelem = 5,>=0 && animelem  = 8,<0
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 290
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 450
trigger9 = movecontact = 1

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;牙神突
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1400
triggerall = command = "牙神突"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1 && animelem = 6,<=0
trigger4 = stateno = 235
trigger4 = movecontact = 1
trigger5 = stateno = 245
trigger5 = movecontact = 1 && animelem = 5,>=0 && animelem  = 8,<0
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 290
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 450
trigger9 = movecontact = 1
;---------------------------------------------------------------------------
;強月華斬
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1301
triggerall = command = "強月華斬"
triggerall = p2stateno !=[120,159]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X <= 51
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1 && animelem = 6,<=0
trigger4 = stateno = 235
trigger4 = movecontact = 1
trigger5 = stateno = 245
trigger5 = movecontact = 1 && animelem = 5,>=0 && animelem  = 8,<0
trigger6 = stateno = 290
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 450
trigger8 = movecontact = 1
;---------------------------------------------------------------------------
;弱月華斬
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1300
triggerall = command = "弱月華斬"
triggerall = p2stateno !=[120,159]
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2bodydist X <= 51
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1 && animelem = 6,<=0
trigger4 = stateno = 235
trigger4 = movecontact = 1
trigger5 = stateno = 245
trigger5 = movecontact = 1 && animelem = 5,>=0 && animelem  = 8,<0
trigger6 = stateno = 290
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 450
trigger8 = movecontact = 1
;---------------------------------------------------------------------------
;強百鬼殺
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1201
triggerall = command = "強百鬼殺"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1 && animelem = 6,<=0
trigger4 = stateno = 235
trigger4 = movecontact = 1
trigger5 = stateno = 245
trigger5 = movecontact = 1 && animelem = 5,>=0 && animelem  = 8,<0
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 290
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 450
trigger9 = movecontact = 1
;---------------------------------------------------------------------------
;弱百鬼殺
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1200
triggerall = command = "弱百鬼殺"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1 && animelem = 6,<=0
trigger4 = stateno = 235
trigger4 = movecontact = 1
trigger5 = stateno = 245
trigger5 = movecontact = 1 && animelem = 5,>=0 && animelem  = 8,<0
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 290
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 450
trigger9 = movecontact = 1

;---------------------------------------------------------------------------
;強桜華斬
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1101
triggerall = command = "強桜華斬"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1 && animelem = 6,<=0
trigger4 = stateno = 235
trigger4 = movecontact = 1
trigger5 = stateno = 245
trigger5 = movecontact = 1 && animelem = 5,>=0 && animelem  = 8,<0
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 290
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 450
trigger9 = movecontact = 1

;---------------------------------------------------------------------------
;弱桜華斬
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1100
triggerall = command = "弱桜華斬"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1 && animelem = 6,<=0
trigger4 = stateno = 235
trigger4 = movecontact = 1
trigger5 = stateno = 245
trigger5 = movecontact = 1 && animelem = 5,>=0 && animelem  = 8,<0
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 290
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 450
trigger9 = movecontact = 1

;---------------------------------------------------------------------------
;強桐覇　光翼刃
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1001
triggerall = command = "強光翼刃"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1 && animelem = 6,<=0
trigger4 = stateno = 235
trigger4 = movecontact = 1
trigger5 = stateno = 245
trigger5 = movecontact = 1 && animelem = 5,>=0 && animelem  = 8,<0
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 290
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 450
trigger9 = movecontact = 1
;---------------------------------------------------------------------------
;弱桐覇　光翼刃
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "弱光翼刃"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1 && animelem = 6,<=0
trigger4 = stateno = 235
trigger4 = movecontact = 1
trigger5 = stateno = 245
trigger5 = movecontact = 1 && animelem = 5,>=0 && animelem  = 8,<0
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 290
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 450
trigger9 = movecontact = 1

;---------------------------------------------------------------------------
;強三連殺
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1510
triggerall = command = "強三連殺"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1 && animelem = 6,<=0
trigger4 = stateno = 235
trigger4 = movecontact = 1
trigger5 = stateno = 245
trigger5 = movecontact = 1 && animelem = 5,>=0 && animelem  = 8,<0
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 290
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 450
trigger9 = movecontact = 1
;---------------------------------------------------------------------------
;弱三連殺
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1500
triggerall = command = "弱三連殺"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = movecontact = 1 && animelem = 6,<=0
trigger4 = stateno = 235
trigger4 = movecontact = 1
trigger5 = stateno = 245
trigger5 = movecontact = 1 && animelem = 5,>=0 && animelem  = 8,<0
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 290
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 450
trigger9 = movecontact = 1

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ふっ飛ばし攻撃
[State -1, Stand Light Punch]
type = ChangeState
value = 290
triggerall = command = "ふっ飛ばし"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;空中ふっ飛ばし攻撃
[State -1, Stand Light Punch]
type = ChangeState
value = 690
triggerall = command = "ふっ飛ばし"
trigger1 = statetype = A
trigger1 = ctrl



;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;MAX発動
[State -1, Stand Light Punch]
type = ChangeState
value = 199
triggerall = command = "MAX"
triggerall = power >= 1000 
triggerall = var(4) = 0
trigger1 = statetype = S
trigger1 = var(8) <= 0
trigger1 = ctrl
;---------------------------------------------------------------------------
;緊急回避後
[State -1, Taunt]
type = ChangeState
value = 701
triggerall = command = "緊急回避後"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;緊急回避前
[State -1, Taunt]
type = ChangeState
value = 700
triggerall = command = "緊急回避前"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;突き飛ばし
[State -1, Kung Fu Throw]
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
;脚蹴り
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = command = "b"
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
;裾蹴り
[State -1, Taunt]
type = ChangeState
value = 250
triggerall = command = "裾蹴り"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;逆風
[State -1, Taunt]
type = ChangeState
value = 450
triggerall = command = "逆風"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;遠距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X >23
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;近距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 23
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X > 23
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 23
trigger1 = statetype != A
trigger1 = ctrl


;---------------------------------------------------------------------------
;遠距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X > 23
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 23
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち強キック1
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X > 23
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;近距離立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 23
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl


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

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = vel x = 0
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;斜め空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 615
triggerall = command = "y"
trigger1 = vel x != 0
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

;---------------------------------------------------------------------------
;ゲージ溜め
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = command = "ゲージ溜め発動"
triggerall = var(1) = 0
triggerall = var(3) = 0
trigger1 = statetype != A
trigger1 = ctrl
