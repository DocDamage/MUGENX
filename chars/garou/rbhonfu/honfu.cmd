;-| 超必殺技 |--------------------------------------------------------
;爆発ジロー（超技）
[Command]
name = "ziro"
command = ~U,UF,F,DF,D,BD,B,BU,U,UF,F,DF,D,BD,B,BU,U,UF,F,DF,D,BD,B,BU,U,UF,F,DF,D,BD,B,BU,
time = 100

;よかトンハンマー（超技）
[Command]
name = "yokaton"
command = ~F,B,DB,D,DF,F,y
time = 15

;爆発ゴロー（超技）
[Command]
name = "gorou"
command = ~D,DB,B,DB,F,x+a
time = 50

;カデンツァの嵐（超技）
[Command]
name = "arashi"
command = ~D,DB,B,DB,F,y
time = 50

;爆発ジロー（超技）簡易コマンド
[Command]
name = "ziro2"
command = ~F,B,DB,D,DF,F
time = 15
;-| 必殺技 |------------------------------------------------------
;九龍の読み
[Command]
name = "kuryunoyomi"
command = ~B,DB,D,DF,F, y
time = 30

;電光石火の天
[Command]
name = "denkoten"
command = ~D,DB,B,a

;必勝逆襲脚
[Command]
name = "hissyo"
command = ~D,DB,B,y

;炎の種馬
[Command]
name = "hono"
command = ~D,DB,B,x

;制空烈火棍
[Command]
name = "seiku"
command = ~F,D,FD,x

;制空烈火棍
[Command]
name = "seikurekka"
command = ~F,D,FD,y

;電光石火の地
[Command]
name = "denkoti"
command = ~15$B,F, a

;電光パチキ
[Command]
name = "denkou"
command = ~a,a,a
time = 50

;炎の種馬
[Command]
name = "hono2"
command = ~x,x,x,x,x,x
time = 50

;フェイント
[Command]
name = "feint"
command = /B,a+x
;-| コンビネーション |----------------------------------------------------------;コンビネーション236C
[Command]
name = "236c"
command = ~D,DF,F, y
time = 30

;コンビネーション236C
[Command]
name = "cnby"
command = ~y
time = 10
;-| コンビネーション壱|--------------------------------------------------------
;近遠立ちしゃがみAB-B-3C
[Command]
name = "fdy"
command = ~FD,y

;近遠立ちしゃがみAB-2B
[Command]
name = "akarab"
command = ~D,a

;近遠立ちしゃがみAB-B-6C
[Command]
name = "maec"
command = ~F,y

;近遠立ちしゃがみAB-B-6C-4C
[Command]
name = "usiroc"
command = ~B,y

;近遠立ちしゃがみAB-B-1,2C
[Command]
name = "dy"
command = ~D,y

;近遠立ちしゃがみAB-B-C
[Command]
name = "bkarac"
command = y
time = 1

;近遠立ちしゃがみAB-B
[Command]
name = "akarab"
command = a

;-| コンビネーション弐|--------------------------------------------------------
;3A-6C
[Command]
name = "nanameakarac"
command = ~F,y

;3A-6C-4C
[Command]
name = "sonoatoc"
command = ~B,y
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

;避け攻撃
[Command]
name = "sake"
command = x+a
time = 1
;-| 方向とボタンで出す技 |-----------------------------------------------------
[Command]
name = "nage2"
command = /$B,y
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
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "nage1"
command = /$F,y
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
name = "holdup2" 
command = /$U
time = 10

[Command]
name = "holddown"
command = /$D
time = 1

;3A
[Command]
name = "nanamea"
command = /$DF
time = 1

; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;===========================================================================
;↓超必殺技↓
;===========================================================================
;爆発ゴロー（超技）
[State -1, 超火炎旋風昆2]
type = ChangeState
value = 4000
triggerall = command = "gorou"
triggerall = Power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 250 || stateno = 300 || stateno = 400 || stateno = 410 || stateno = 301 || stateno = 800 || stateno = 860 || stateno = 880
trigger2 = movecontact
;---------------------------------------------------------------------------
;カデンツァの嵐
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 4200
triggerall = Power >= 2000
triggerall = command = "arashi"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 250 || stateno = 300 || stateno = 400 || stateno = 410 || stateno = 301 || stateno = 800 || stateno = 860 || stateno = 880
trigger2 = movecontact
;---------------------------------------------------------------------------
;よかとんハンマー
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 4400
triggerall = command = "yokaton"
triggerall = statetype != A
triggerall = Power >= 2000
triggerall = life <= 300
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 250 || stateno = 300 || stateno = 400 || stateno = 410 || stateno = 301 || stateno = 800 || stateno = 860 || stateno = 880
trigger2 = movecontact
;===========================================================================
;↓必殺技↓
;===========================================================================
;必勝逆襲脚
[State -1, hissyou]
type = ChangeState
value = 3100
triggerall = command = "hissyo"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 250 || stateno = 300 || stateno = 400 || stateno = 410 || stateno = 301 || stateno = 800 || stateno = 860 || stateno = 880
trigger2 = movecontact
;---------------------------------------------------------------------------
;制空烈火棍
[State -1, seikurekkakon]
type = ChangeState
value = 3500
triggerall = command = "seiku"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 250 || stateno = 300 || stateno = 400 || stateno = 410 || stateno = 301 || stateno = 800 || stateno = 860 || stateno = 880
trigger2 = movecontact
;---------------------------------------------------------------------------
;制空烈火棍
[State -1, seikurekkakon]
type = ChangeState
value = 4030
triggerall = command = "seikurekka"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 250 || stateno = 300 || stateno = 400 || stateno = 410 || stateno = 301 || stateno = 800 || stateno = 860 || stateno = 880
trigger2 = movecontact
;---------------------------------------------------------------------------
;炎の種馬
[State -1, seikurekkakon]
type = ChangeState
value = 3000
triggerall = command = "hono"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 250 || stateno = 300 || stateno = 400 || stateno = 410 || stateno = 301 || stateno = 800 || stateno = 860 || stateno = 880
trigger2 = movecontact
;---------------------------------------------------------------------------
;炎の種馬2
[State -1, seikurekkakon]
type = ChangeState
value = 3000
triggerall = command = "hono2"
trigger1 = stateno = 3000
trigger1 = ctrl
;---------------------------------------------------------------------------
;電光石火の地
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 3300
triggerall = command = "denkoti"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 250 || stateno = 300 || stateno = 400 || stateno = 410 || stateno = 301 || stateno = 800 || stateno = 860 || stateno = 880
trigger2 = movecontact
;---------------------------------------------------------------------------
;九龍の読み
[State -1, syoryudan]
type = ChangeState
value = 3600
triggerall = command = "kuryunoyomi"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 250 || stateno = 300 || stateno = 400 || stateno = 410 || stateno = 301 || stateno = 800 || stateno = 860 || stateno = 880
trigger2 = movecontact
;---------------------------------------------------------------------------
;電光パチキ
[State -1, syoryudan]
type = ChangeState
value = 3400
triggerall = command = "denkou"
trigger1 = stateno = 3310
;---------------------------------------------------------------------------
;電光石火の天
[State -1, syoryudan]
type = ChangeState
value = 3200
triggerall = command = "denkoten"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 250 || stateno = 300 || stateno = 400 || stateno = 410 || stateno = 301 || stateno = 800 || stateno = 860 || stateno = 880
trigger2 = movecontact
;===========================================================================
;↓コンビネーション↓
;===========================================================================
;近遠立ちしゃがみAB-B
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 800
triggerall = command = "akarab"
trigger1 = stateno = 200
trigger1 = AnimElem = 2> 0
trigger2 = stateno = 210
trigger2 = AnimElem = 3> 0
trigger3 = stateno = 220
trigger3 = AnimElem = 4> 0
trigger4 = stateno = 230
trigger4 = AnimElem = 4> 0
trigger5 = stateno = 400
trigger5 = AnimElem = 2> 0
trigger6 = stateno = 410
trigger6 = AnimElem = 4> 0
;===========================================================================
;近遠立ちしゃがみAB-B-C
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 810
triggerall = command  = "y"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = stateno = 800
trigger1 = AnimElem = 4> 0
;===========================================================================
;近遠立ちしゃがみAB-B-1,2C
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 820
triggerall = command = "down_y"
triggerall = command != "fdy"
trigger1 = stateno = 800
trigger1 = AnimElem = 4> 0
;===========================================================================
;近遠立ちしゃがみAB-B-3C
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 830
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = stateno = 800
trigger1 = AnimElem = 4> 0
;===========================================================================
;近遠立ちしゃがみAB-B-3C
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 840
triggerall = command = "nage1"
trigger1 = stateno = 800
trigger1 = AnimElem = 4> 0
;===========================================================================
;近遠立ちしゃがみAB-B-3C
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 850
triggerall = command = "nage2"
trigger1 = stateno = 840
trigger1 = AnimElem = 4> 0
;===========================================================================
;しゃがみB-2C
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 860
triggerall = command = "down_y"
trigger1 = stateno = 410
trigger1 = AnimElem = 4> 0
;===========================================================================
;しゃがみB-2C-C
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 870
triggerall = command = "down_y"
trigger1 = stateno = 860
trigger1 = AnimElem = 4> 0
;===========================================================================
;3A
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 880
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = ctrl
trigger1 = command = "nanamea"
;===========================================================================
;3A-C
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 890
triggerall = command = "y"
trigger1 = stateno = 880
trigger1 = AnimElem = 3> 0
;===========================================================================
;3A-C-C
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 900
triggerall = command = "y"
trigger1 = stateno = 890
trigger1 = AnimElem = 6> 0
;===========================================================================
;↓その他↓
;===========================================================================
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 1600
triggerall = command = "nage2"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = P2bodydist X < 20
;===========================================================================
;===========================================================================
;フェイント
[State -1, syoryudan]
type = ChangeState
value = 3700
triggerall = command = "feint"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230 || stateno = 250 || stateno = 300 || stateno = 400 || stateno = 410 || stateno = 301 || stateno = 800 || stateno = 860 || stateno = 880
trigger2 = movecontact
;===========================================================================
;酒攻撃
[State -1, syoryudan]
type = ChangeState
value = 955
triggerall = command = "sake"
trigger1 = statetype != A
trigger1 = ctrl
;===========================================================================
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 1500
triggerall = command = "nage1"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = P2bodydist X < 20

;---------------------------------------------------------------------------
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
;===========================================================================
;立ち小遠距離
[State -1, Jump Light Punch]
type = ChangeState
value = 200
trigger1 = Command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X > 40
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち小近距離
[State -1, Jump Light Punch]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 40
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;立ち中遠距離
[State -1, Jump Light Punch]
type = ChangeState
value = 220
trigger1 = Command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X > 40
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち中近距離
[State -1, Jump Light Punch]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 40
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;立ち大遠距離
[State -1, Jump Light Punch]
type = ChangeState
value = 240
trigger1 = Command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X > 60
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち大近距離
[State -1, Jump Light Punch]
type = ChangeState
value = 250
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 60
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
;---------------------------------------------------------------------------
;しゃがみ小
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ中
[State -1, Crouching Light Punch]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ大
[State -1, Crouching Light Punch]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;空 小(前後)
[State -1, Jump Light Punch]
type = ChangeState
trigger1 = Command = "x"
trigger1 = statetype = A
trigger1 = ctrl
value = IFelse((Vel X = 0 && Vel Y <= 0),600, 640)
;---------------------------------------------------------------------------
;空 小(前後)
[State -1, Jump Light Punch]
type = ChangeState
trigger1 = Command = "a"
trigger1 = statetype = A
trigger1 = ctrl
value = IFelse((Vel X = 0 && Vel Y <= 0),610, 615)
;---------------------------------------------------------------------------
;空中 大(前後)
[State -1, Jump Light Punch]
type = ChangeState
trigger1 = Command = "y"
trigger1 = statetype = A
trigger1 = ctrl
value = IFelse((Vel X = 0 && Vel Y <= 0),620, 630)
;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;===========================================================================
;振り向き
[State -1, syoryudan]
type = ChangeState
value = 987
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;===========================================================================