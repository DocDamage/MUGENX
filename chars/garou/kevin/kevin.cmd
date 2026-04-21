;===========================================================================
; ケビン・ライアン (飢狼MOTW)
; Made by M@PPY
;http://izanai.cjb.net/

;===========================================================================

;-| Super Motions |--------------------------------------------------------

;ラッキーストライク
[Command]
name = "lucky1"
command = ~D,DF,F,D,DF,F, x
time = 30

;潜在ラッキーストライク
[Command]
name = "lucky2"
command = ~D,DF,F,D,DF,F, y
time = 30

;ガトリングフリーザー
[Command]
name = "freeze1"
command = ~D,DF,F,D,DF,F, a
time = 30

;潜在ガトリングフリーザー
[Command]
name = "freeze2"
command = ~D,DF,F,D,DF,F, b
time = 30


;-| Special Motions |------------------------------------------------------

;ヘルロースター1
[Command]
name = "roaster1"
command = ~D,DB,B, x
time = 30

;ヘルロースター2
[Command]
name = "roaster2"
command = ~D,DB,B, y
time = 30

;ヘルトラップ1
[Command]
name = "trap1"
command = ~D,DF,F, a
time = 30

;ヘルトラップ2
[Command]
name = "trap2"
command = ~D,DF,F, b
time = 30

;ヘルアレスト1
[Command]
name = "hella1"
command = ~B,DB,D,DF,F, x
time = 30

;ヘルアレスト2
[Command]
name = "hella2"
command = ~B,DB,D,DF,F, y
time = 30

;ヘルスナイプ1
[Command]
name = "snipe1"
command = ~F,D,DF, x
time = 30

;ヘルスナイプ2
[Command]
name = "snipe2"
command = ~F,D,DF, y
time = 30

;クリーパー
[Command]
name = "creeper"
command = ~D,DB,B, a
time = 30

;アヴォイドマイン
[Command]
name = "avoid"
command = ~D,DB,B, b
time = 30



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

;避け/BR
[Command]
name = "dodge"
command = a+b
time = 1

;TOPアタック
[Command]
name = "top"
command = x+y
time = 1


;-| Dir + Button |---------------------------------------------------------
[Command]
name = "6a"
command = /F,a
time = 1

[Command]
name = "4y"
command = /B,y
time = 1

[Command]
name = "6y"
command = /F,y
time = 1


;-| Single Button |---------------------------------------------------------
[Command]
name = "back"
command = B
time = 1

[Command]
name = "upback"
command = UB
time = 1

[Command]
name = "downback"
command = DB
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

;[Command]
;name = "z"
;command = z
;time = 1

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

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holddownforward"
command = /$DF
time = 1

[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1


[Statedef -1]
;===========================================================================
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

;---------------------------------------------------------------------------
;挑発2
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = command = "start"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発3
[State -1, Taunt]
type = ChangeState
value = 197
triggerall = command = "start"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発1
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ラッキーストライク
[State -1]
type = ChangeState
value = 2000
triggerall = command = "lucky1"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 235 || stateno = 430 || stateno = 200 || stateno = 240 || stateno = 440
trigger3 = (moveguarded && stateno = 210) || (movehit && stateno = 1850)


;---------------------------------------------------------------------------
;潜在ラッキーストライク
[State -1]
type = ChangeState
value = 2500
triggerall = command = "lucky2"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 235 || stateno = 430 || stateno = 200 || stateno = 240 || stateno = 440
trigger3 = (moveguarded && stateno = 210) || (movehit && stateno = 1850)


;---------------------------------------------------------------------------
;ガトリングフリーザー
[State -1]
type = ChangeState
value = 3000
triggerall = command = "freeze1"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 235 || stateno = 430 || stateno = 200 || stateno = 240 || stateno = 440
trigger3 = (moveguarded && stateno = 210) || (movehit && stateno = 1850)


;---------------------------------------------------------------------------
;潜在ガトリングフリーザー
[State -1]
type = ChangeState
value = 3500
triggerall = command = "freeze2"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 235 || stateno = 430 || stateno = 200 || stateno = 240 || stateno = 440
trigger3 = (moveguarded && stateno = 210) || (movehit && stateno = 1850)


;---------------------------------------------------------------------------
;ヘルスナイプ弱
[State -1]
type = ChangeState
value = 1600
triggerall = command = "snipe1"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 235 || stateno = 430 || stateno = 200 || stateno = 240 || stateno = 440
trigger3 = (moveguarded && stateno = 210) || (movehit && stateno = 1850)


;---------------------------------------------------------------------------
;ヘルスナイプ強
[State -1]
type = ChangeState
value = 1700
triggerall = command = "snipe2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 235 || stateno = 430 || stateno = 200 || stateno = 240 || stateno = 440
trigger3 = (moveguarded && stateno = 210) || (movehit && stateno = 1850)


;---------------------------------------------------------------------------
;ヘルロースター弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "roaster1"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 235 || stateno = 430 || stateno = 200 || stateno = 240 || stateno = 440
trigger3 = (moveguarded && stateno = 210) || (movehit && stateno = 1850)


;---------------------------------------------------------------------------
;ヘルロースター強
[State -1]
type = ChangeState
value = 1100
triggerall = command = "roaster2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 235 || stateno = 430 || stateno = 200 || stateno = 240 || stateno = 440
trigger3 = (moveguarded && stateno = 210) || (movehit && stateno = 1850)


;---------------------------------------------------------------------------
;ヘルアレスト弱
[State -1]
type = ChangeState
value = 1200
triggerall = command = "hella1"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ヘルアレスト強
[State -1]
type = ChangeState
value = 1300
triggerall = command = "hella2"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;クリーパー
[State -1]
type = ChangeState
value = 1900
triggerall = command = "creeper"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;アヴォイドマイン
[State -1]
type = ChangeState
value = 1800
triggerall = command = "avoid"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 235 || stateno = 430 || stateno = 200 || stateno = 240 || stateno = 440
trigger3 = (moveguarded && stateno = 210) || (movehit && stateno = 1850)


;---------------------------------------------------------------------------
;ヘルトラップ弱
[State -1]
type = ChangeState
value = 1400
triggerall = command = "trap1"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 235 || stateno = 430 || stateno = 200 || stateno = 240 || stateno = 440
trigger3 = (moveguarded && stateno = 210) || (movehit && stateno = 1850)

;---------------------------------------------------------------------------
;ヘルトラップ強
[State -1]
type = ChangeState
value = 1500
triggerall = command = "trap2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 235 || stateno = 430 || stateno = 200 || stateno = 240 || stateno = 440
trigger3 = (moveguarded && stateno = 210) || (movehit && stateno = 1850)


;---------------------------------------------------------------------------
;ポリスルー
[State -1]
type = ChangeState
value = 900
triggerall = (command = "6y") || (command = "4y")
triggerall = command != "holddown"
triggerall = p2bodydist X <= 20
triggerall = p2statetype != L
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2statetype != A

;---------------------------------------------------------------------------
;ブラストチャージ
[State -1]
type = ChangeState
value = 1950
triggerall = command = "top"
triggerall = Var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 235 || stateno = 430 || stateno = 200 || stateno = 240 || stateno = 440
trigger3 = (moveguarded && stateno = 210) || (movehit && stateno = 1850)


;---------------------------------------------------------------------------
;上段避け
[State -1]
type = ChangeState
value = 1850
triggerall = command = "dodge"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;下段避け
[State -1]
type = ChangeState
value = 1860
triggerall = command = "dodge"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ポリキック
[State -1]
type = ChangeState
value = 215
triggerall = command = "6a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ちキック弱 近
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact

;---------------------------------------------------------------------------
;立ちキック弱 遠
[State -1]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X > 15
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ちキック強
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 235 || stateno = 430 || stateno = 200


;---------------------------------------------------------------------------
;立ちパンチ弱 近
[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && movecontact

;---------------------------------------------------------------------------
;立ちパンチ弱 遠
[State -1]
type = ChangeState
value = 235
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X > 15
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ちパンチ強 近
[State -1]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 235 || stateno = 430 || stateno = 200

;---------------------------------------------------------------------------
;立ちパンチ強 遠
[State -1]
type = ChangeState
value = 245
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X > 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 235 || stateno = 430 || stateno = 200

;---------------------------------------------------------------------------
;しゃがみキック弱
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
;しゃがみキック強
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 235 || stateno = 430 || stateno = 200

;---------------------------------------------------------------------------
;しゃがみパンチ弱
[State -1]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------
;しゃがみパンチ強
[State -1]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 235 || stateno = 430 || stateno = 200

;---------------------------------------------------------------------------
;ジャンプキック弱
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプキック強
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = 600 || stateno = 630

;---------------------------------------------------------------------------
;ジャンプパンチ弱
[State -1]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプパンチ強
[State -1]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = 600 || stateno = 630



