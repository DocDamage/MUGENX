;-| Super Motions |--------------------------------------------------------

[Command]
name = "ギガンティックプレッシャー・MAX"
command = ~D,DF,F,DF,D,DB,B,x+y
time = 28

[Command]
name = "ギガンティックプレッシャー・２"
command = ~D,DF,F,DF,D,DB,B,y
time = 28

[Command]
name = "ギガンティックプレッシャー・１"
command = ~D,DF,F,DF,D,DB,B,x
time = 28

[Command]
name = "スライディングジェノサイド・２"
command = ~D,DF,F,D,DF,F,b
time = 22

[Command]
name = "スライディングジェノサイド・１"
command = ~D,DF,F,D,DF,F,a
time = 22

;-| Special Motions |------------------------------------------------------

[Command]
name = "ゴッドプレス・強"
command = ~F,DF,D,DB,B,y
time = 22

[Command]
name = "ゴッドプレス・弱"
command = ~F,DF,D,DB,B,x
time = 22

[Command]
name = "ジェノサイドカッター・強"
command = ~F,D,DF,b
time = 15

[Command]
name = "ジェノサイドカッター・弱"
command = ~F,D,DF,a
time = 15

[Command]
name = "ダークバリヤー・強"
command = ~D,DF,F,y
time = 15

[Command]
name = "ダークバリヤー・弱"
command = ~D,DF,F,x
time = 15

[Command]
name = "烈風拳・強"
command = ~D,DF,F,b
time = 15

[Command]
name = "烈風拳・弱"
command = ~D,DF,F,a
time = 15

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "緊急回避"
command = x+a
time = 1

[Command]
name = "ガードキャンセル"
command = y+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
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

[Command]
name = "down"
command = D
time = 1

;-| Hold Dir |--------------------------------------------------------------
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

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
; MAXギガンティックプレッシャー
[State -1]
type = ChangeState
value = 2100
triggerall = power >= 2000
triggerall = command = "ギガンティックプレッシャー・MAX"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 300 && movecontact && animelemtime(4) < 0

; スパキャン用
[State -1]
type = ChangeState
value = 2100
triggerall = power >= 3000
triggerall = command = "ギガンティックプレッシャー・MAX"
trigger1 = stateno = 310 && var(0) != 0
trigger2 = stateno = 1050 && movecontact && animelemtime(5) < 1
trigger3 = stateno = 1100 && movecontact
trigger4 = stateno = 1150 && movecontact

;---------------------------------------------------------------------------
; ギガンティックプレッシャー・２
[State -1]
type = ChangeState
value = 2050
triggerall = power >= 1000
triggerall = command = "ギガンティックプレッシャー・２"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 300 && movecontact && animelemtime(4) < 0

; スパキャン用
[State -1]
type = ChangeState
value = 2050
triggerall = power >= 2000
triggerall = command = "ギガンティックプレッシャー・２"
trigger1 = stateno = 310 && var(0) != 0
trigger2 = stateno = 1050 && movecontact && animelemtime(5) < 1
trigger3 = stateno = 1100 && movecontact
trigger4 = stateno = 1150 && movecontact

;---------------------------------------------------------------------------
; ギガンティックプレッシャー・１
[State -1]
type = ChangeState
value = 2000
triggerall = power >= 1000
triggerall = command = "ギガンティックプレッシャー・１"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 300 && movecontact && animelemtime(4) < 0

; スパキャン用
[State -1]
type = ChangeState
value = 2000
triggerall = power >= 2000
triggerall = command = "ギガンティックプレッシャー・１"
trigger1 = stateno = 310 && var(0) != 0
trigger2 = stateno = 1050 && movecontact && animelemtime(5) < 1
trigger3 = stateno = 1100 && movecontact
trigger4 = stateno = 1150 && movecontact

;---------------------------------------------------------------------------
; スライディングジェノサイド・２
[State -1]
type = ChangeState
value = 1450
triggerall = power >= 1000
triggerall = command = "スライディングジェノサイド・２"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 300 && movecontact && animelemtime(4) < 0

; スパキャン用
[State -1]
type = ChangeState
value = 1450
triggerall = power >= 2000
triggerall = command = "スライディングジェノサイド・２"
trigger1 = stateno = 310 && var(0) != 0
trigger2 = stateno = 1050 && movecontact && animelemtime(5) < 1
trigger3 = stateno = 1100 && movecontact
trigger4 = stateno = 1150 && movecontact

;---------------------------------------------------------------------------
; スライディングジェノサイド・１
[State -1]
type = ChangeState
value = 1400
triggerall = power >= 1000
triggerall = command = "スライディングジェノサイド・１"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 300 && movecontact && animelemtime(4) < 0

; スパキャン用
[State -1]
type = ChangeState
value = 1400
triggerall = power >= 2000
triggerall = command = "スライディングジェノサイド・１"
trigger1 = stateno = 310 && var(0) != 0
trigger2 = stateno = 1050 && movecontact && animelemtime(5) < 1
trigger3 = stateno = 1100 && movecontact
trigger4 = stateno = 1150 && movecontact

;---------------------------------------------------------------------------
; ゴッドプレス・強
[State -1]
type = ChangeState
value = 1350
triggerall = command = "ゴッドプレス・強"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 300 && movecontact && animelemtime(4) < 0

;---------------------------------------------------------------------------
; ゴッドプレス・弱
[State -1]
type = ChangeState
value = 1300
triggerall = command = "ゴッドプレス・弱"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 300 && movecontact && animelemtime(4) < 0

;---------------------------------------------------------------------------
; ダークバリヤー・強
[State -1]
type = ChangeState
value = 1250
triggerall = command = "ダークバリヤー・強"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 300 && movecontact && animelemtime(4) < 0

;---------------------------------------------------------------------------
; ダークバリヤー・弱
[State -1]
type = ChangeState
value = 1200
triggerall = command = "ダークバリヤー・弱"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 300 && movecontact && animelemtime(4) < 0

;---------------------------------------------------------------------------
; ジェノサイドカッター・強
[State -1]
type = ChangeState
value = 1150
triggerall = command = "ジェノサイドカッター・強"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 300 && movecontact && animelemtime(4) < 0

;---------------------------------------------------------------------------
; ジェノサイドカッター・弱
[State -1]
type = ChangeState
value = 1100
triggerall = command = "ジェノサイドカッター・弱"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 300 && movecontact && animelemtime(4) < 0

;---------------------------------------------------------------------------
; 烈風拳・強
[State -1]
type = ChangeState
value = 1060
triggerall = numproj = 0
triggerall = command = "烈風拳・強"
trigger1 = stateno = 205 && movecontact
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = stateno = 440 && movecontact
trigger9 = stateno = 300 && movecontact && animelemtime(4) < 0

[State -1]
type = ChangeState
value = 1005
triggerall = numproj = 0
triggerall = command = "烈風拳・強"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]

;---------------------------------------------------------------------------
; 烈風拳・弱
[State -1]
type = ChangeState
value = 1050
triggerall = numproj = 0
triggerall = command = "烈風拳・弱"
trigger1 = stateno = 205 && movecontact
trigger2 = stateno = 215 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 245 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = stateno = 440 && movecontact
trigger9 = stateno = 300 && movecontact && animelemtime(4) < 0

[State -1]
type = ChangeState
value = 1000
triggerall = numproj = 0
triggerall = command = "烈風拳・弱"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]

;===========================================================================
;---------------------------------------------------------------------------
;ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;バックステップ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
;投げ
[State -1]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S && ctrl
triggerall = stateno != [100,102]
trigger1 = command = "holdfwd" && p2bodydist X < 5
trigger1 = p2statetype != A && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 5
trigger2 = p2statetype != A && p2movetype != H

[State -1]
type = ChangeState
value = 850
triggerall = command = "b"
triggerall = statetype = S && ctrl
triggerall = stateno != [100,102]
trigger1 = command = "holdfwd" && p2bodydist X < 5
trigger1 = p2statetype != A && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 5
trigger2 = p2statetype != A && p2movetype != H

;---------------------------------------------------------------------------
; 緊急回避・後
[State -1]
type = ChangeState
value = 710
triggerall = command = "緊急回避" && command = "holdback"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 150|stateno = 152
trigger2 = power >= 1000
trigger3 = stateno = [100,102]

; 緊急回避・前
[State -1]
type = ChangeState
value = 700
triggerall = command = "緊急回避"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 150|stateno = 152
trigger2 = power >= 1000
trigger3 = stateno = [100,102]

; ガードキャンセル
[State -1]
type = ChangeState
value = 720
trigger1 = stateno = 150|stateno = 152
trigger1 = command = "ガードキャンセル"
trigger1 = power >= 1000

;---------------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A && ctrl

;===========================================================================
;---------------------------------------------------------------------------
; ダブルトマホーク
[State -1]
type = ChangeState
value = 300
triggerall = command = "a" && command != "holddown" && command = "holdfwd"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; レバー3入れ強キック
[State -1]
type = ChangeState
value = 310
triggerall = command = "b" && command = "holddown" && command = "holdfwd"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 245 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
; レバー3入れ強パンチ
[State -1]
type = ChangeState
value = 320
triggerall = command = "y" && command = "holddown" && command = "holdfwd"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,102]

;---------------------------------------------------------------------------
; 立ち弱パンチ
[State -1]
type = ChangeState
value = ifelse(P2bodydist x < 20,205,200)
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,102]

;---------------------------------------------------------------------------
; 立ち強パンチ
[State -1]
type = ChangeState
value = ifelse(P2bodydist x < 30,215,210)
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,102]

;---------------------------------------------------------------------------
; 立ち弱キック
[State -1]
type = ChangeState
value = ifelse(P2bodydist x < 20,235,230)
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,102]

;---------------------------------------------------------------------------
; 立ち強キック
[State -1]
type = ChangeState
value = ifelse(P2bodydist x < 30,245,240)
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,102]

;---------------------------------------------------------------------------
; しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = [100,102]

;---------------------------------------------------------------------------
; しゃがみ強パンチ
[State -1]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = [100,102]

;---------------------------------------------------------------------------
; しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 430 && animelemtime(2) > 1 && movecontact!

;---------------------------------------------------------------------------
; しゃがみ強キック
[State -1]
type = ChangeState
value = 440
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = [100,102]

;---------------------------------------------------------------------------
; 空中弱パンチ
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; 空中強パンチ
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; 空中弱キック
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; 空中強キック
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A && ctrl

