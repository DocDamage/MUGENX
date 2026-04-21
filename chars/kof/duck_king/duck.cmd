;===========================================================================
; ダックキング (リアルバウトSP)
;Created by M@PPY
;http://izanai.cjb.net/

;===========================================================================

;-----------------------------------
;CPU only
[Command]
name = "cpu"
command = ~D,B,F,D,F,DF,B,DF,B,B,U,F, c
time = 1

[Command]
name = "cpu2"
command = ~D,B,F,D,F,DF,B,DF,B,B,F,B, c
time = 1

[Command]
name = "cpu3"
command = ~D,B,F,D,F,DF,B,DF,B,B,F,F, c
time = 1

[Command]
name = "cpu4"
command = ~D,B,F,D,B,DF,B,DF,B,B,U,B, c
time = 1

[Command]
name = "cpu5"
command = ~D,B,F,D,F,DF,B,DF,B,B,U,B, c
time = 1

[Command]
name = "cpu6"
command = ~D,B,F,D,F,DF,B,DF,B,B,D,F, c
time = 1

[Command]
name = "cpu7"
command = ~D,F,F,D,F,DF,B,DF,B,B,D,F, c
time = 1

[Command]
name = "cpu8"
command = ~D,F,F,D,F,DF,U,DF,B,B,D,F, c
time = 1

[Command]
name = "cpu9"
command = ~D,DF,B,BU,U,UF,F,DF,D,F, c
time = 1

[Command]
name = "cpu10"
command = ~D,DF,B,DB,U,UF,F,DF,D,F, c
time = 1

;-| Super Motions |--------------------------------------------------------

;超必殺技#1 ブレイクスパイラル オリジナルコマンド
[Command]
name = "spiral"
command = ~D, DF, F, B, x+y
time = 45

;超必殺技#1 ブレイクスパイラル 元のコマンド
[Command]
name = "spiral_origin"
command = ~B, DB, D, DF, F, UF, $D, x+y
time = 45

;超必殺技#2 ダックダンス
[Command]
name = "dance"
command = ~D, D, x+y
time = 45

;ローリングパニッシャー 簡易コマンド
[Command]
name = "dance_attack1"
command = ~F, B, F, x+y
time = 45

;ローリングパニッシャー 元のコマンド
[Command]
name = "dance_attacko"
command = ~30B, F, B, F, x+y
time = 45

;ダイビングパニッシャー
[Command]
name = "dance_attack2"
command = ~F, DF, D, x+y
time = 45

;ダンシングキャリバー
[Command]
name = "dance_attack3"
command = ~D, DB, B, DB, B, x+y
time = 45

;ブレイクハリケーン
[Command]
name = "dance_attack4"
command = ~D, DF, F, DF, F, x+y
time = 45


;-| Special Motions |------------------------------------------------------

;ダンシングダイブ1
[Command]
name = "dive_a"
command = ~D, DB, B, a
time = 15

;ダンシングダイブ2
[Command]
name = "dive_b"
command = ~D, DB, B, b
time = 15

;ブレイクストーム1
[Command]
name = "break_a"
command = ~F, D, DF, a
time = 15

;ブレイクストーム2
[Command]
name = "break_b"
command = ~F, D, DF, b
time = 15

;ヘッドスピンアタック弱
[Command]
name = "spin_x"
command = ~D, DF, F, x
time = 15

;ヘッドスピンアタック強
[Command]
name = "spin_y"
command = ~D, DF, F, y
time = 15

;F.スピンアタック1
[Command]
name = "fspin_x"
command = ~D, DB, B, x
time = 15

;F.スピンアタック2
[Command]
name = "fspin_y"
command = ~D, DB, B, y
time = 15

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

;-| Dir + Button |---------------------------------------------------------

[Command]
name = "4x"
command = /B,x
time = 1

[Command]
name = "6b"
command = /F,b
time = 1

[Command]
name = "6y"
command = /F,y
time = 1

[Command]
name = "fake"
command = /$DF,a
time = 1

[Command]
name = "reverse"
command = /$D,y
time = 1

[Command]
name = "3b"
command = /$DF,b
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
name = "hold_x+y"
command = /x+y
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;超必殺技#1 ブレイクスパイラル
[State -1]
type = ChangeState
value = 1500
triggerall = (command = "spiral") || (command = "spiral_origin")
triggerall = power >= 1000
triggerall = p2BodyDist X <= 50
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 250) ||  (stateno = 260) ||  (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440) || (stateno = 425))
trigger3 = (hitcount <= 1) && (stateno = 410)


;---------------------------------------------------------------------------
;ローリングパニッシャー
[State -1]
type = ChangeState
value = 2001
triggerall = (command = "dance_attack1") || (command = "dance_attacko")
triggerall = var(15) >= 1;level1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 250) ||  (stateno = 260) ||  (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440) || (stateno = 425))
trigger3 = (hitcount <= 1) && (stateno = 410)


;---------------------------------------------------------------------------
;ダイビングパニッシャー
[State -1]
type = ChangeState
value = 2010
triggerall = command = "dance_attack2"
triggerall = var(15) >= 1;level1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640))


;---------------------------------------------------------------------------
;ダンシングキャリバー
[State -1]
type = ChangeState
value = 2020
triggerall = command = "dance_attack3"
;triggerall = command = "c"
triggerall = var(15) >= 2;level2
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 250) ||  (stateno = 260) ||  (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440) || (stateno = 425))
trigger3 = (hitcount <= 1) && (stateno = 410)


;---------------------------------------------------------------------------
;ブレイクハリケーン
[State -1]
type = ChangeState
value = 2030
triggerall = command = "dance_attack4"
;triggerall = command = "c"
triggerall = var(15) >= 3;level3
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 250) ||  (stateno = 260) ||  (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440) || (stateno = 425))
trigger3 = (hitcount <= 1) && (stateno = 410)


;---------------------------------------------------------------------------
;超必殺技#2 ダックダンス
[State -1]
type = ChangeState
value = 2000
triggerall = command = "dance"
triggerall = power >= 2000
triggerall = numexplod(2000) = 0;踊る前、点滅解除後
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ダンシングダイブ
[State -1]
type = ChangeState
value = 1100
triggerall = (command = "dive_a") || (command = "dive_b")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 250) ||  (stateno = 260) ||  (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440) || (stateno = 425))
trigger3 = (hitcount <= 1) && (stateno = 410)


;---------------------------------------------------------------------------
;ブレイクストーム
[State -1]
type = ChangeState
value = 1000
triggerall = (command = "break_a") || (command = "break_b")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 250) ||  (stateno = 260) ||  (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440) || (stateno = 425))
trigger3 = (hitcount <= 1) && (stateno = 410)


;---------------------------------------------------------------------------
;ヘッドスピンアタックx
[State -1]
type = ChangeState
value = 1010
triggerall = command = "spin_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 250) ||  (stateno = 260) ||  (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440) || (stateno = 425))
trigger3 = (hitcount <= 1) && (stateno = 410)


;---------------------------------------------------------------------------
;ヘッドスピンアタックy
[State -1]
type = ChangeState
value = 1020
triggerall = command = "spin_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 210) || (stateno = 230) || (stateno = 240) || (stateno = 250) ||  (stateno = 260) ||  (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440) || (stateno = 425))
trigger3 = (hitcount <= 1) && (stateno = 410)


;---------------------------------------------------------------------------
;F.スピンアタック
[State -1]
type = ChangeState
value = 1050
triggerall = (command = "fspin_x") || (command = "fspin_y")
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640))

;---------------------------------------------------------------------------
;F.ヘッドスピンアタックy
[State -1]
type = ChangeState
value = 1050
triggerall = command = "spin_y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ローリングネックスルー
[State -1]
type = ChangeState
value = 900
triggerall = command = "6y"
triggerall = command != "holddown"
triggerall = p2bodydist X < 25
triggerall = ctrl
trigger1 = statetype = S
trigger1 = p2statetype != A
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;リバースブリーカー
[State -1]
type = ChangeState
value = 950
triggerall = command = "reverse"
triggerall = p2bodydist X < 25
triggerall = ctrl
trigger1 = statetype = A
trigger1 = p2statetype = A
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;吹っ飛ばし
[State -1]
type = ChangeState
value = 290
triggerall = command = "6b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;4x 打ち下ろし
[State -1]
type = ChangeState
value = 270
triggerall = command = "4x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 230) || (stateno = 200) || (stateno = 400) || (stateno = 430))

;---------------------------------------------------------------------------
;6y1 張り手
[State -1]
type = ChangeState
value = 250
triggerall = command = "6y"
triggerall = p2bodydist x > 60
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 230) || (stateno = 200)  || (stateno = 270) || (stateno = 400) || (stateno = 430))

;---------------------------------------------------------------------------
;6y2 頭突き
[State -1]
type = ChangeState
value = 260
triggerall = command = "6y"
triggerall = p2bodydist x <= 60
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 230) || (stateno = 200)  || (stateno = 270) || (stateno = 400) || (stateno = 430))

;---------------------------------------------------------------------------
;ダックフェイク(不完全)
[State -1]
type = ChangeState
value = 110
triggerall = command = "fake"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;スライドキック
[State -1]
type = ChangeState
value = 425
triggerall = command = "3b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ちキック弱
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact

;---------------------------------------------------------------------------
;立ちキック強
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 230) || (stateno = 200)  || (stateno = 270) || (stateno = 400) || (stateno = 430))

;---------------------------------------------------------------------------
;立ちパンチ弱
[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && movecontact && (time >= 5)

;---------------------------------------------------------------------------
;立ちパンチ強
[State -1]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 230) || (stateno = 200)  || (stateno = 270) || (stateno = 400) || (stateno = 430))

;---------------------------------------------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

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
trigger2 = movecontact && ((stateno = 230) || (stateno = 200)  || (stateno = 270) || (stateno = 400) || (stateno = 430))

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
trigger2 = movecontact && ((stateno = 230) || (stateno = 200)  || (stateno = 270) || (stateno = 400) || (stateno = 430))

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
trigger2 = movecontact && ((stateno = 600) || (stateno = 630))

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
trigger2 = movecontact && ((stateno = 600) || (stateno = 630))



;---------------------------------------------------------------------------
;CPU
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; 立ちガード
[State -1]
type = ChangeState
value = 120
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = random <= 200
triggerall = statetype != A
triggerall = var(20) = 1
triggerall = ctrl
trigger1 = p2statetype = S

; 立ちガード2
[State -1]
type = ChangeState
value = 130
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = random <= 200
triggerall = statetype != A
triggerall = var(20) = 1
triggerall = ctrl
trigger1 = p2statetype = A

; しゃがみガード
[State -1]
type = ChangeState
value = 121
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = statetype != A
triggerall = random <= 200
triggerall = var(20) = 1
triggerall = ctrl
trigger1 = p2statetype = C

; 空中ガード
[State -1]
type = ChangeState
value = 122
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = statetype = A
triggerall = random <= 200
triggerall = var(20) = 1
triggerall = ctrl
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
; 壁際でダックフェイク
[State -1]
type = ChangeState
value = 110
triggerall = var(20) = 1
triggerall = statetype != A
triggerall = winko != 1
triggerall = (FrontEdgeBodyDist - p2BodyDist X) > 220
triggerall = BackEdgeBodyDist <= 20
triggerall = random < 600
trigger1 = ctrl

;---------------------------------------------------------------------------
; 至近距離で投げ
[State -1]
type = ChangeState
value = 900
triggerall = var(20) = 1
triggerall = statetype != A
triggerall = (p2statetype != L) && (p2statetype != A)
triggerall = p2BodyDist X < 20
triggerall = winko != 1
triggerall = random < 10
trigger1 = ctrl

;---------------------------------------------------------------------------
; ブレイクスパイラル
[State -1]
type = ChangeState
value = 1500
triggerall = var(20) = 1
triggerall = power >= 1000
triggerall = p2BodyDist X <= 50
triggerall = statetype != A
triggerall = winko != 1
triggerall = random < 40
triggerall = (p2statetype != L) && (p2statetype != A)
trigger1 = ctrl

;---------------------------------------------------------------------------
; ダックダンス
[State -1]
type = ChangeState
value = 2000
triggerall = var(20) = 1
triggerall = var(15) = 0;まだ踊っていない
triggerall = power >= 2000
triggerall = statetype != A
triggerall = winko != 1
triggerall = random < 50
trigger1 = ctrl

;---------------------------------------------------------------------------
; 技4
[State -1]
type = ChangeState
value = 2030
triggerall = var(20) = 1
triggerall = var(15) >= 3;level3
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = winko != 1
triggerall = p2BodyDist X < 40
triggerall = random < 50
trigger1 = ctrl

;---------------------------------------------------------------------------
; 技3
[State -1]
type = ChangeState
value = 2020
triggerall = var(20) = 1
triggerall = var(15) >= 2;level2
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = winko != 1
triggerall = p2BodyDist X < 40
triggerall = random < 50
trigger1 = ctrl

;---------------------------------------------------------------------------
; 技2
[State -1]
type = ChangeState
value = 2010
triggerall = var(20) = 1
triggerall = var(15) >= 1;level1
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = p2BodyDist X < 40
triggerall = winko != 1
triggerall = random < 10
trigger1 = ctrl

;---------------------------------------------------------------------------
; 技1
[State -1]
type = ChangeState
value = 2001
triggerall = var(20) = 1
triggerall = var(15) >= 1;level1
triggerall = statetype = S
triggerall = p2statetype = S
triggerall = winko != 1
triggerall = random < 10
trigger1 = ctrl

;---------------------------------------------------------------------------
;ブレイクストーム
[State -1]
type = ChangeState
value = 1000
triggerall = var(20) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = winko != 1
triggerall = p2BodyDist X < 20
triggerall = random < 10
trigger1 = ctrl

;---------------------------------------------------------------------------
;ダンシングダイブ
[State -1]
type = ChangeState
value = 1100
triggerall = var(20) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = winko != 1
triggerall = p2BodyDist X < 20
triggerall = random < 10
trigger1 = ctrl

;---------------------------------------------------------------------------
; 遠距離でダッシュ
[State -1]
type = ChangeState
value = 100
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = winko != 1
triggerall = p2BodyDist X > 70
triggerall = random < 50
trigger1 = ctrl

;---------------------------------------------------------------------------
; ヘッドスピン強
[State -1]
type = ChangeState
value = 1010
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = winko != 1
triggerall = p2BodyDist X >= 30
triggerall = random < 10
trigger1 = ctrl

;---------------------------------------------------------------------------
; ヘッドスピン 追加技
[State -1]
type = ChangeState
value = 1024
triggerall = var(20) = 1
triggerall = winko != 1
triggerall = stateno = 1021
triggerall = random < 100
trigger1 = (movehit) && (hitcount = 4)


;---------------------------------------------------------------------------
; ヘッドスピン弱
[State -1]
type = ChangeState
value = 1000
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = winko != 1
triggerall = p2BodyDist X < 30
triggerall = random < 10
trigger1 = ctrl

;---------------------------------------------------------------------------
; スライディング
[State -1]
type = ChangeState
value = 425
triggerall = var(20) = 1
triggerall = winko != 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = random < 10
trigger1 = ctrl
trigger1 = P2bodydist X > 60

;---------------------------------------------------------------------------
; 空中投げ
[State -1]
type = ChangeState
value = 950
triggerall = var(20) = 1
triggerall = winko != 1
triggerall = random <= 30
triggerall = P2bodydist X <= 35
triggerall = statetype = A
triggerall = p2statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; F.ヘッドスピンアタック
[State -1]
type = ChangeState
value = 1050
triggerall = var(20) = 1
triggerall = winko != 1
triggerall = random <= 30
triggerall = statetype = A
triggerall = pos y > -60
triggerall = P2bodydist X <= 10
triggerall = p2statetype != L
trigger1 = ctrl

;---------------------------------------------------------------------------
; 空中回復
[State -1]
type = ChangeState
value = 5200
triggerall = var(20) = 1
triggerall = random <= 300
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = alive
trigger1 = CanRecover
trigger1 = stateno = 5050


