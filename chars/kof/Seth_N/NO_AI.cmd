;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "moroM"
command = ~D, F, D, F, x+y
time = 20

[Command]
name = "moro1"
command = ~D, F, D, F, x
time = 20

[Command]
name = "moro2"
command = ~D, F, D, F, y
time = 20

[Command]
name = "irimiMAX"
command = ~D, F, D, F, a+b
time = 30

[Command]
name = "irimi1"
command = ~D, F, D, B, a
time = 20

[Command]
name = "irimi2"
command = ~D, F, D, B, b
time = 20

[Command]
name = "DSM"
command = ~D, F, D, B, x+y
time = 20

[Command]
name = "shigure"
command = ~F, B, D, F, x+y
time = 30

;-| 必殺技 |------------------------------------------------------
[Command]
name = "syo1"
command = ~D, DF, F, x
time = 10

[Command]
name = "syo2"
command = ~D, DF, F, y
time = 10

[Command]
name = "kyu1"
command = ~F, DF, D, DB, B, a
time = 14

[Command]
name = "kyu1"
command = ~F, D, B, a
time = 14

[Command]
name = "kyu2"
command = ~F, DF, D, DB, B, b
time = 14

[Command]
name = "kyu2"
command = ~F, D, B, b
time = 14

[Command]
name = "raku"
command = ~D, DF, F, a
time = 13

[Command]
name = "raku2"
command = ~D, DB, B, a
time = 13

[Command]
name = "an"
command = ~D, DF, F, b
time = 13

[Command]
name = "an2"
command = ~D, DB, B, b
time = 13

[Command]
name = "koh"
command = ~D, DF, F, x
time = 13

[Command]
name = "koh2"
command = ~D, DB, B, x
time = 13

[Command]
name = "ei"
command = ~D, DF, F, y
time = 13

[Command]
name = "ei2"
command = ~D, DB, B, y
time = 13

[Command]
name = "doh"
command = ~B, D, F, a
time = 15

[Command]
name = "doh2"
command = ~B, D, F, b
time = 15

[Command]
name = "ashi"
command =  D, D, x
time = 15

[Command]
name = "ashi"
command =  D, D, y
time = 15

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
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = y+b
time = 1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "a+x"
command = a+x
time = 1

[Command]
name = "a+y"
command = a+y
time = 1

[Command]
name = "x+b"
command = x+b
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[command]
name = "fwd_a"
command = /F, a
time = 1

[command]
name = "fwd_b"
command = /F, b
time = 1

[command]
name = "fwd_x"
command = /F, x
time = 1

[command]
name = "back_a"
command = /B, a
time = 1

[command]
name = "back_x"
command = /B, x
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[command]
name = "downfwd_a"
command = /DF, a
time = 1

[command]
name = "downfwd_y"
command = /DF, y
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "6s"
command = /F,s
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
name = "longjump"
command = D, $U

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;===========================================================================
;双掌昇陽ＭＡＸ
[State -1]
type = ChangeState
value = 3400
triggerall = (power >= 2000) && Var(9)=0 || (power >= 1000) && Var(9)=1
triggerall = command = "moroM"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 201
trigger4 = stateno = 211
trigger5 = stateno = 235
trigger6 = stateno = 241
trigger7 = stateno = 250
trigger8 = (StateNo = 431) && (Var(2) = 1)
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = movecontact && (stateno = 204)
trigger12 = movecontact && (stateno = 245)
trigger13 = movecontact && (stateno = 246)
trigger14 = movecontact && (stateno = 1001)
trigger15 = movecontact && (stateno = 1035)
trigger16 = StateNo = 3006
trigger17 = movecontact && (stateno = 1070)
trigger18 = movecontact && (stateno = 415) && (AnimElem = 4, <= 0 ) 

;---------------------------------------------------------------------------
双掌昇陽ＭＡＸ２
[State -1]
type = ChangeState
value = 3405
triggerall =  stateno = 3400
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;双掌昇陽
[State -1]
type = ChangeState
value = 3000
triggerall = (power >= 1000 && Var(9)=0) || (power >= 0 && Var(9)=1) 
triggerall = command = "moro1"|| command = "moro2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 201
trigger4 = stateno = 211
trigger5 = stateno = 235
trigger6 = stateno = 241
trigger7 = stateno = 250
trigger8 = (StateNo = 431) && (Var(2) = 1)
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = movecontact && (stateno = 204)
trigger12 = movecontact && (stateno = 245)
trigger13 = movecontact && (stateno = 246)
trigger14 = movecontact && (stateno = 1001)
trigger15 = movecontact && (stateno = 1035)
trigger16 = StateNo = 3006
trigger17 = movecontact && (stateno = 1070)
trigger18 = movecontact && (stateno = 415) && (AnimElem = 4, <= 0 )

;---------------------------------------------------------------------------
双掌昇陽_２
[State -1]
type = ChangeState
value = 3005
triggerall =  stateno = 3000
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;入り身 灘月_弱
[State -1]
type = ChangeState
value = 3100
triggerall = (power >= 1000 && Var(9)=0) || (power >= 0 && Var(9)=1) 
triggerall = command = "irimi1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 201
trigger4 = stateno = 211
trigger5 = stateno = 235
trigger6 = stateno = 241
trigger7 = stateno = 250
trigger8 = (StateNo = 431) && (Var(2) = 1)
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = movecontact && (stateno = 204)
trigger12 = movecontact && (stateno = 245)
trigger13 = movecontact && (stateno = 246)
trigger14 = movecontact && (stateno = 1070)
trigger15 = movecontact && (stateno = 415) && (AnimElem = 4, <= 0 )

;入り身 灘月_スパキャン
[State -1]
type = ChangeState
value = 1022
triggerall = (power >= 2000) && Var(9)=0 || (power >= 1000) && Var(9)=1
triggerall = command = "irimi1"
triggerall = command = "holdback"
triggerall = (stateno = 1020) && (stateno = 1030)
triggerall = statetype = S
trigger1 = movecontact && (stateno = 1020) && (stateno = 1030)
trigger1 = ctrl

;---------------------------------------------------------------------------
;入り身 灘月_強
[State -1]
type = ChangeState
value = 3105
triggerall = (power >= 1000 && Var(9)=0) || (power >= 0 && Var(9)=1) 
triggerall = command = "irimi2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 201
trigger4 = stateno = 211
trigger5 = stateno = 235
trigger6 = stateno = 241
trigger7 = stateno = 250
trigger8 = (StateNo = 431) && (Var(2) = 1)
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = movecontact && (stateno = 204)
trigger12 = movecontact && (stateno = 245)
trigger13 = movecontact && (stateno = 246)
trigger14 = movecontact && (stateno = 1070)
trigger15 = movecontact && (stateno = 415) && (AnimElem = 4, <= 0 )

;入り身 灘月強_スパキャン
[State -1]
type = ChangeState
value = 1023
triggerall = (power >= 2000 && Var(9)=0) || (power >= 1000) && Var(9)=1
triggerall = command = "irimi2"
triggerall = command = "holdback"
triggerall = (stateno = 1020) && (stateno = 1030)
triggerall = statetype = S
trigger1 = movecontact && (stateno = 1020) && (stateno = 1030)
trigger1 = ctrl

;---------------------------------------------------------------------------
; 胴取り_七悶殺
[State -1]
type = ChangeState
value = 3200
triggerall = (power >= 2000 && Var(9)=0) || (power >= 1000 && Var(9)=1) 
triggerall = command = "DSM"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = 201
trigger4 = stateno = 211
trigger5 = stateno = 235
trigger6 = stateno = 241
trigger7 = stateno = 250
trigger8 = (StateNo = 431) && (Var(2) = 1)
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = movecontact && (stateno = 204)
trigger12 = movecontact && (stateno = 245)
trigger13 = movecontact && (stateno = 246)
trigger14 = movecontact && (stateno = 415)
trigger15 = stateno = 1043

;---------------------------------------------------------------------------
; 時雨乱菊
[State -1]
type = ChangeState
value = 3500
triggerall = power >= 1000 && Var(9)=1
triggerall = command = "shigure"
triggerall = p2bodydist X < 30
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = stateno = 200
trigger3 = stateno = 201
trigger4 = stateno = 211
trigger5 = stateno = 235
trigger6 = stateno = 241
trigger7 = stateno = 250
trigger8 = (StateNo = 431) && (Var(2) = 1)
trigger9 = stateno = 400
trigger10 = stateno = 410
trigger11 = movecontact && (stateno = 204)
trigger12 = movecontact && (stateno = 245)
trigger13 = movecontact && (stateno = 246)
trigger14 = movecontact && (stateno = 415)
trigger15 = stateno = 1043
trigger16 = P2stateno = 5080

;===========================================================================
; 緊急回避
[State -1]
type = ChangeState
value = 850
triggerall = command = "a+x" || command = "z"
triggerall = command != "holdback"
triggerall = stateno != 100
trigger1 = ctrl && statetype != A

; 緊急回避
[State -1]
type = ChangeState
value = 860
triggerall = command = "a+x"|| command = "z"
triggerall = command = "holdback"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100

; 緊急回避
[State -1]
type = ChangeState
value = 851
triggerall = command = "a+x" || command = "z"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100

;---------------------------------------------------------------------------
; ガードキャンセル緊急回避
[State -1]
type = ChangeState
value = ifelse(command != "holdback",830,835)
triggerall = command = "a+x" || command = "z"
triggerall = power >= 1000
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
; ガードキャンセルふっとばし攻撃
[State -1]
type = ChangeState
value = 840
triggerall = command = "b+y"|| command = "c"
triggerall = power >= 1000
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
; パワーＭＡＸモード発動
[State -1]
type = ChangeState
value = 3600
triggerall = command = "x+b" 
triggerall = power >= 1000 && var(9) = 0
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100

;------------------------ クイックMAX発動
[State -1]
type = ChangeState
value = 3610
triggerall = command = "x+b"
triggerall = power >= 1000 && var(9) = 0
trigger1 = statetype != A
trigger1 = MoveContact && StateNo = [200,799]

;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = Stateno != 100
trigger1 = Stateno != 101
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
;ストライカー
[State -1, Run Back]
type = ChangeState
value = 2100
triggerall = power > 500
triggerall=NumHelper(4000)=0
triggerall = command = "a+y"
triggerall = statetype = S
triggerall = movetype != a
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])|| (stateno = [1000,1070])
trigger2 = movecontact

;---------------------------------------------------------------------------
;空中ストライカー
[State 4100,1];←ヘルパーを呼び出す
type = Helper
triggerall = power > 500
triggerall=NumHelper(4000)=0
triggerall = command = "a+y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,640])
trigger2 = movecontact
id = 4000
name = "neo&geo"
sprpriority = 4
pos = -300,10
postype = p1
facing = 1
stateno = 2110;←呼び出されたヘルパーはこのステートから始まる
helpertype = normal
keyctrl = 0          
ownpal = 1

;---------------------------------------------------------------------------
;攻撃中ストライカー
[State -2];←ヘルパーを呼び出す
type = Helper
triggerall = power > 500
triggerall=NumHelper(4000)=0
triggerall = command = "a+y"
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])|| (stateno = [1000,1070])
trigger2 = movecontact
id = 4000
name = "neo&geo"
sprpriority = 4
pos = -300,-60
postype = p1
facing = 1
stateno = 2110;←呼び出されたヘルパーはこのステートから始まる
helpertype = normal
keyctrl = 0          
ownpal = 1

;---------------------------------------------------------------------------
;巴投げ後追い討ち
[State 4100,1];←ヘルパーを呼び出す
type = Helper
triggerall = power > 500
triggerall=NumHelper(4000)=0
triggerall = command = "a+y"
trigger1 = ctrl
trigger2 =  (stateno = [900,999])
id = 4000
name = "neo&geo"
sprpriority = 4
pos = 360,-77
postype = p2
facing = -1
stateno = 2150;←呼び出されたヘルパーはこのステートから始まる
helpertype = normal
keyctrl = 0          
ownpal = 1

;---------------------------------------------------------------------------
;昇陽_弱
[State -1]
type = ChangeState
value = 1020
triggerall = command = "syo1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 201
trigger3 = stateno = 211
trigger4 = stateno = 235
trigger5 = stateno = 241
trigger6 = stateno = 250
trigger7 = (StateNo = 431) && (Var(2) = 1)
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = movecontact && (stateno = 200)
trigger11 = movecontact && (stateno = 204)
trigger12 = movecontact && (stateno = 245)
trigger13 = movecontact && (stateno = 246)
trigger14 = (stateno = 415) && MoveContact && (AnimElem = 4, <= 0 )

trigger15 = (stateno = 210) && Var(9) = 1
trigger16 = (stateno = 230) && Var(9) = 1
trigger17 = (stateno = 232) && Var(9) = 1
trigger18 = (stateno = 240) && Var(9) = 1
trigger19 = (stateno = 415) && Var(9) = 1
trigger20 = (stateno = 430) && Var(9) = 1
trigger21 = (stateno = 431) && Var(9) = 1
trigger22 = (stateno = 1001) && Var(12) = 1 && MoveContact
trigger22 = Var(9) = 1 

;---------------------------------------------------------------------------
;昇陽_強
[State -1]
type = ChangeState
value = 1030
triggerall = command = "syo2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 201
trigger3 = stateno = 211
trigger4 = stateno = 235
trigger5 = stateno = 241
trigger6 = stateno = 250
trigger7 = (StateNo = 431) && (Var(2) = 1)
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = movecontact && (stateno = 200)
trigger11 = movecontact && (stateno = 204)
trigger12 = movecontact && (stateno = 245)
trigger13 = movecontact && (stateno = 246)
trigger14 = (stateno = 415) && MoveContact && (AnimElem = 4, <= 0 )

trigger15 = (stateno = 210) && Var(9) = 1
trigger16 = (stateno = 230) && Var(9) = 1
trigger17 = (stateno = 232) && Var(9) = 1
trigger18 = (stateno = 240) && Var(9) = 1
trigger19 = (stateno = 415) && Var(9) = 1
trigger20 = (stateno = 430) && Var(9) = 1
trigger21 = (stateno = 431) && Var(9) = 1
trigger22 = (stateno = 1001) && Var(12) = 1 && MoveContact
trigger22 = Var(9) = 1 

;---------------------------------------------------------------------------
;昇陽_強_カウンター
;[State -1]
type = ChangeState
value = 1035
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;弓月_弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "kyu1"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 201
trigger3 = stateno = 211
trigger4 = stateno = 235
trigger5 = stateno = 241
trigger6 = stateno = 250
trigger7 = (StateNo = 431) && (Var(2) = 1)
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = movecontact && (stateno = 200)
trigger11 = moveguarded && (stateno = 202)  && Var(9) = 1
trigger12 = movecontact && (stateno = 204) 
trigger13 = movecontact && (stateno = 245)
trigger14 = movecontact && (stateno = 246)
trigger15 = (stateno = 415) && MoveContact && (AnimElem = 4, <= 0)
trigger16 = (stateno = 210) && Var(9) = 1
trigger17 = (stateno = 230) && Var(9) = 1
trigger18 = (stateno = 232) && Var(9) = 1
trigger19 = (stateno = 240) && Var(9) = 1
trigger20 = (stateno = 415) && Var(9) = 1
trigger21 = (stateno = 430) && Var(9) = 1
trigger22 = (stateno = 431) && Var(9) = 1
trigger23 = (stateno = 1020) && Var(13) = 1 && MoveContact
trigger23 = Var(9) = 1 
trigger24 = (stateno = 1030) && Var(14) = 1 && MoveContact
trigger24 = Var(9) = 1 

;---------------------------------------------------------------------------
;弓月_強
[State -1]
type = ChangeState
value = 1010
triggerall = command = "kyu2"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 201
trigger3 = stateno = 211
trigger4 = stateno = 235
trigger5 = stateno = 241
trigger6 = stateno = 250
trigger7 = (StateNo = 431) && (Var(2) = 1)
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = movecontact && (stateno = 200)
trigger11 = moveguarded && (stateno = 202) && Var(9) = 1
trigger12 = movecontact && (stateno = 204) 
trigger13 = movecontact && (stateno = 245)
trigger14 = movecontact && (stateno = 246)
trigger15 = (stateno = 415) && MoveContact && (AnimElem = 4, <= 0 )
trigger16 = (stateno = 210) && Var(9) = 1
trigger17 = (stateno = 230) && Var(9) = 1
trigger18 = (stateno = 232) && Var(9) = 1
trigger19 = (stateno = 240) && Var(9) = 1
trigger20 = (stateno = 415) && Var(9) = 1
trigger21 = (stateno = 430) && Var(9) = 1
trigger22 = (stateno = 431) && Var(9) = 1
trigger23 = (stateno = 1020) && Var(13) = 2 && MoveContact
trigger23 = Var(9) = 1 
trigger24 = (stateno = 1030) && Var(14) = 2 && MoveContact
trigger24 = Var(9) = 1 

;---------------------------------------------------------------------------
;矢月
[State -1]
type = ChangeState
value = 1002
triggerall = command = "fwd_a" || command = "fwd_b"
triggerall = var(3) = 1
triggerall = movecontact
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;弦月
[State -1]
type = ChangeState
value = 1003
triggerall = command = "down_a" || command = "down_b"
triggerall = var(3) = 2
triggerall = movecontact
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;鷲月
[State -1]
type = ChangeState
value = 1090
triggerall = command = "up_a" || command = "up_b"
triggerall = var(3) = 3
triggerall = movecontact
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;落月
[State -1]
type = ChangeState
value = 1040
triggerall = Facing != enemynear,Facing
triggerall = command = "raku"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 600)
trigger3 = movecontact && (stateno = 610)
trigger4 = movecontact && (stateno = 650)
trigger5 = stateno = 1091

trigger6 = movecontact && (stateno = 631) && Var(9) = 1
trigger7 = movecontact && (stateno = 632) && Var(9) = 1
trigger8 = movecontact && (stateno = 640) && Var(9) = 1
trigger9 = movecontact && (stateno = 261) && Var(9) = 1

;落月２
[State -1]
type = ChangeState
value = 1045
triggerall = Facing = enemynear,Facing
triggerall = command = "raku2"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 600)
trigger3 = movecontact && (stateno = 610)
trigger4 = movecontact && (stateno = 650)
trigger5 = stateno = 1091

trigger6 = movecontact && (stateno = 631) && Var(9) = 1
trigger7 = movecontact && (stateno = 632) && Var(9) = 1
trigger8 = movecontact && (stateno = 640) && Var(9) = 1
trigger9 = movecontact && (stateno = 261) && Var(9) = 1

;---------------------------------------------------------------------------
;闇月
[State -1]
type = ChangeState
value = 1050
triggerall = Facing != enemynear,Facing
triggerall = command = "an"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 600)
trigger3 = movecontact && (stateno = 610)
trigger4 = movecontact && (stateno = 650)
trigger5 = stateno = 1091

trigger6 = movecontact && (stateno = 631) && Var(9) = 1
trigger7 = movecontact && (stateno = 632) && Var(9) = 1
trigger8 = movecontact && (stateno = 640) && Var(9) = 1
trigger9 = movecontact && (stateno = 261) && Var(9) = 1

;闇月2
[State -1]
type = ChangeState
value = 1055
triggerall = Facing = enemynear,Facing
triggerall = command = "an2"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 600)
trigger3 = movecontact && (stateno = 610)
trigger4 = movecontact && (stateno = 650)
trigger5 = stateno = 1091

trigger6 = movecontact && (stateno = 631) && Var(9) = 1
trigger7 = movecontact && (stateno = 632) && Var(9) = 1
trigger8 = movecontact && (stateno = 640) && Var(9) = 1
trigger9 = movecontact && (stateno = 261) && Var(9) = 1

;---------------------------------------------------------------------------
;降月
[State -1]
type = ChangeState
value = 1046
triggerall = Facing != enemynear,Facing
triggerall = command = "koh"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 600)
trigger3 = movecontact && (stateno = 610)
trigger4 = movecontact && (stateno = 650)
trigger5 = stateno = 1091

trigger6 = movecontact && (stateno = 631) && Var(9) = 1
trigger7 = movecontact && (stateno = 632) && Var(9) = 1
trigger8 = movecontact && (stateno = 640) && Var(9) = 1
trigger9 = movecontact && (stateno = 261) && Var(9) = 1

;降月２
[State -1]
type = ChangeState
value = 1049
triggerall = Facing = enemynear,Facing
triggerall = command = "koh2"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 600)
trigger3 = movecontact && (stateno = 610)
trigger4 = movecontact && (stateno = 650)
trigger5 = stateno = 1091

trigger6 = movecontact && (stateno = 631) && Var(9) = 1
trigger7 = movecontact && (stateno = 632) && Var(9) = 1
trigger8 = movecontact && (stateno = 640) && Var(9) = 1
trigger9 = movecontact && (stateno = 261) && Var(9) = 1

;---------------------------------------------------------------------------
;泳月
[State -1]
type = ChangeState
value = 1056
triggerall = Facing != enemynear,Facing
triggerall = command = "ei"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 600)
trigger3 = movecontact && (stateno = 610)
trigger4 = movecontact && (stateno = 650)
trigger5 = stateno = 1091

trigger6 = movecontact && (stateno = 631) && Var(9) = 1
trigger7 = movecontact && (stateno = 632) && Var(9) = 1
trigger8 = movecontact && (stateno = 640) && Var(9) = 1
trigger9 = movecontact && (stateno = 261) && Var(9) = 1

;泳月２
[State -1]
type = ChangeState
value = 1059
triggerall = Facing = enemynear,Facing
triggerall = command = "ei2"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 600)
trigger3 = movecontact && (stateno = 610)
trigger4 = movecontact && (stateno = 650)
trigger5 = stateno = 1091

trigger6 = movecontact && (stateno = 631) && Var(9) = 1
trigger7 = movecontact && (stateno = 632) && Var(9) = 1
trigger8 = movecontact && (stateno = 640) && Var(9) = 1
trigger9 = movecontact && (stateno = 261) && Var(9) = 1

;---------------------------------------------------------------------------
;胴崩し_弱
[State -1]
type = ChangeState
value = 1060
triggerall = command = "doh"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = stateno = 201
trigger3 = stateno = 211
trigger4 = stateno = 235
trigger5 = stateno = 241
trigger6 = stateno = 250
trigger7 = (StateNo = 431) && (Var(2) = 1)
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = movecontact && (stateno = 200)
trigger11 = movecontact && (stateno = 204)
trigger12 = movecontact && (stateno = 245)
trigger13 = movecontact && (stateno = 246)
trigger14 = (stateno = 415) && MoveContact && (AnimElem = 4, <= 0 )

;---------------------------------------------------------------------------
;胴崩し_強
[State -1]
type = ChangeState
value = 1070
triggerall = command = "doh2"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = stateno = 201
trigger3 = stateno = 211
trigger4 = stateno = 235
trigger5 = stateno = 241
trigger6 = stateno = 250
trigger7 = (StateNo = 431) && (Var(2) = 1)
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = movecontact && (stateno = 200)
trigger11 = movecontact && (stateno = 204)
trigger12 = movecontact && (stateno = 245)
trigger13 = movecontact && (stateno = 246)
trigger14 = (stateno = 415) && MoveContact && (AnimElem = 4, <= 0 )

;---------------------------------------------------------------------------
;脚取り
[State -1]
type = ChangeState
value = 1080
triggerall = command = "ashi"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = stateno = 201
trigger3 = stateno = 211
trigger4 = stateno = 235
trigger5 = stateno = 241
trigger6 = stateno = 250
trigger7 = (StateNo = 431) && (Var(2) = 1)
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = movecontact && (stateno = 200)
trigger11 = movecontact && (stateno = 204)
trigger12 = movecontact && (stateno = 245)
trigger13 = movecontact && (stateno = 246)
trigger14 = (stateno = 415) && MoveContact && (AnimElem = 4, <= 0 )

;---------------------------------------------------------------------------
;タックル
[State -1]
type = ChangeState
value = 202
triggerall = command = "fwd_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 201
trigger3 = stateno = 211
trigger4 = stateno = 235
trigger5 = stateno = 241
trigger6 = stateno = 250
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = movecontact && (stateno = 200)
trigger10 = (stateno = 415) && MoveContact && (AnimElem = 4, <= 0 )

;タックル(キャンセル)
[State -1]
type = ChangeState
value = 204
triggerall = command = "fwd_x"
triggerall = command != "holddown"
trigger1 = (StateNo = 232) && Time > 8
trigger1 = (StateNo = 232) && Time < 14

;ソバット
[State -1]
type = ChangeState
value = 260
triggerall = command = "back_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 400
trigger3 = stateno = 410
trigger4 = stateno = 250

;ソバット(キャンセル)
[State -1]
type = ChangeState
value = 263
triggerall = command = "back_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 201
trigger3 = stateno = 211
trigger4 = stateno = 235
trigger5 = stateno = 241
trigger6 = movecontact && (stateno = 200)
trigger7 = (stateno = 415) && MoveContact && (AnimElem = 4, <= 0 )
trigger8 = (stateno = 232) && Var(9) = 1

;前揚げ蹴り
[State -1]
type = ChangeState
value = 232
triggerall = command = "fwd_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 241)
trigger6 = movecontact && (stateno = 211)
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = (stateno = 415) && MoveContact && (AnimElem = 4, <= 0 )
trigger11 = movecontact && (stateno = 232)

;バックブロー
[State -1]
type = ChangeState
value = 245
triggerall = command = "back_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 241)
trigger6 = movecontact && (stateno = 211)
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = (stateno = 415) && MoveContact && (AnimElem = 4, <= 0 )

;バックブローB
[State -1]
type = ChangeState
value = 246
triggerall = command = "back_x"
triggerall = command != "holddown"
trigger1 = (StateNo = 232) && Time > 8
trigger1 = (StateNo = 232) && Time < 14

;スライディングキック
[State -1]
type = ChangeState
value = 431
triggerall = command = "downfwd_a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 201)
trigger4 = movecontact && (stateno = 211)
trigger5 = movecontact && (stateno = 235)
trigger6 = movecontact && (stateno = 241)
trigger7 = stateno = 250
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = (stateno = 415) && MoveContact && (AnimElem = 4, <= 0 )
trigger11 = (stateno = 232) && Var(9) = 1

;---------------------------------------------------------------------------
;ふっとばし
[State -1]
type = ChangeState
value = 250
triggerall = command = "b+y"|| command = "c"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;肘当てからの波動打ち
[State -1,Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = stateno = 1092

;---------------------------------------------------------------------------
;巴投げ
[State -1,Throw]
type = ChangeState
value = 900
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = stateno = 1092

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 18
trigger1 = statetype = S
trigger1 = ctrl

;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 400

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 18
trigger1 = statetype = S
trigger1 = ctrl

;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 235
;value = 231
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 18
trigger1 = statetype = S
trigger1 = ctrl

;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 241
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 18
trigger1 = statetype = S
trigger1 = ctrl

;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "6s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 196
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
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;しゃがみ強Ｐ2002
[State -1]
type = ChangeState
value = 415
triggerall = command = "downfwd_y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

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
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

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
;空中ふっとばし
[State -1]
type = ChangeState
value = 650
triggerall = command = "b+y"|| command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 1091) && Var(9) = 1

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" && statetype = A
trigger1 = ctrl
trigger2 = (stateno = 1091) && Var(9) = 1

;---------------------------------------------------------------------------
;空中強パンチ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y" && statetype = A
trigger1 = ctrl
trigger2 = (stateno = 1091) && Var(9) = 1

;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 632
triggerall = command = "a" && vel x  && statetype = A 
trigger1 = ctrl
trigger2 = (stateno = 1091) && Var(9) = 1

;空中弱キック↑
[State -1, Jump Light Kick]
type = ChangeState
value = 631
triggerall = command = "a" && statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b" && statetype = A
trigger1 = ctrl
trigger2 = (stateno = 1091) && Var(9) = 1


