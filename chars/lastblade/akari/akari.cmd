;===========================================================================
;月華の剣士2 一条あかり
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

;式神・六合
[Command]
name = "rikugo"
command = ~D, DB, B, DB, F, x+y
time = 45


;-| Special Motions |------------------------------------------------------

;--------------------------------------------
;式神・天空1
[Command]
name = "tenku_x"
command = ~D, DF, F, x

;式神・天空2
[Command]
name = "tenku_y"
command = ~D, DF, F, y

;式神・天空3
[Command]
name = "tenku_a"
command = ~D, DF, F, a

;式神・天空4
[Command]
name = "tenku_b"
command = ~D, DF, F, b
time = 45

;天文・星の巡り
[Command]
name = "hoshinomeguri"
command = ~D, U, a
time = 20

;天文・転ずる北斗
[Command]
name = "hokuto"
command = ~D, U, y
time = 10

;劾鬼・清姫
[Command]
name = "kiyohime"
command = ~F, DF, D, DB, B, x
time = 45

;燕返し
[Command]
name = "tsubame_a"
command = ~B, F, a

[Command]
name = "tsubame_b"
command = ~B, F, b

[Command]
name = "tsubame_c"
command = ~B, F, c

[Command]
name = "tsubame_x"
command = ~B, F, x

[Command]
name = "tsubame_y"
command = ~B, F, y

[Command]
name = "tsubame_z"
command = ~B, F, z


;--------------------------------------------
;for debug
[Command]
name = "debug"
command = /F,c
time = 1

;debug2
[Command]
name = "debug2"
command = c
time = 1

[Command]
name = "debug3"
command = /$D,c
time = 1

[Command]
name = "debug4"
command = /B,c
time = 1

[Command]
name = "debug5"
command = /U,c
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"  ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"  ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = a+b
time = 1

[Command]
name = "reisen"
command = y+z
time = 1

;-| Dir + Button |---------------------------------------------------------
;天文・月の巡り
[Command]
name = "3a"
command = /DF,a
time = 1

;天文・災厄の帚星
[Command]
name = "6a"
command = /F,a
time = 1

;明流・薪割り
[Command]
name = "6y"
command = /F,y
time = 1

;明流・ツッコミはたき
[Command]
name = "4x"
command = /B,x
time = 1

;符呪・唱閃
[Command]
name = "4y"
command = /B,y
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
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

;挑発
[Command]
name = "omanju"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"  ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"  ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
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


[Statedef -1]
;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = 195
trigger1 = command = "omanju"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;===========================================================================
;超奥義 式神・六合
[State -1]
type = ChangeState
value = 4000
triggerall = power >= 2000
triggerall = command = "rikugo"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)


;===========================================================================
;式神・天空1
[State -1]
type = ChangeState
value = 1000
triggerall = command = "tenku_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

[State -1]
type = ChangeState
value = 1010
triggerall = command = "tenku_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;===========================================================================
;式神・天空2
[State -1]
type = ChangeState
value = 1200
triggerall = command = "tenku_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

[State -1]
type = ChangeState
value = 1250
triggerall = command = "tenku_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;===========================================================================
;天文・星の巡り
[State -1]
type = ChangeState
value = 1500
triggerall = command = "hoshinomeguri"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 40
trigger3 = stateno = 400
trigger4 = stateno >= 10
trigger4 = stateno <= 12

[State -1]
type = ChangeState
value = 1500
triggerall = command = "hoshinomeguri"
triggerall = movecontact
trigger1 = movecontact && (stateno = 200)
trigger2 = movecontact && (stateno = 230)
trigger3 = movecontact && (stateno = 235)
trigger4 = movecontact && (stateno = 240)
trigger5 = movecontact && (stateno = 250)
trigger6 = movecontact && (stateno = 400)
trigger7 = movecontact && (stateno = 430)
trigger8 = movecontact && (stateno = 440)


;===========================================================================
;劾鬼・清姫
[State -1]
type = ChangeState
value = 2000
triggerall = command = "kiyohime"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)


;===========================================================================
;符呪・零閃
[State -1]
type = ChangeState
value = 900
triggerall = command = "reisen"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;天文・災厄の帚星
[State -1]
type = ChangeState
value = 205
triggerall = command = "6a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;===========================================================================
;天文・月の巡り
[State -1]
type = ChangeState
value = 460
triggerall = command = "3a"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;明流・ツッコミはたき
[State -1]
type = ChangeState
value = 235
triggerall = command = "4x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (time < 8)

;---------------------------------------------------------------------------
;符呪・唱閃
[State -1]
type = ChangeState
value = 250
triggerall = command = "4y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger5 = movecontact && (stateno = 400)
trigger7 = movecontact && (stateno = 430)
trigger8 = movecontact && (stateno = 440)

;---------------------------------------------------------------------------
;明流・薪割り
[State -1]
type = ChangeState
value = 245
triggerall = command = "6y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 240)
trigger5 = movecontact && (stateno = 430)

;---------------------------------------------------------------------------
;ガードキャンセル
[State -1]
type = ChangeState
value = 2500
triggerall = power >= 500
triggerall = stateno >= 150
triggerall = stateno <= 153
trigger1 = (command = "tsubame_a") || (command = "tsubame_b") || (command = "tsubame_c") || (command = "tsubame_x") || (command = "tsubame_y") || (command = "tsubame_z")


;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 235)


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Stand_X
[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 235)

;---------------------------------------------------------------------------
;Stand_Y
[State -1]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 430)

;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 235)


;---------------------------------------------------------------------------
;Crouch_X
[State -1]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 235)

;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 430)

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump_X
[State -1]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;CPU only
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; 立ちガード
[State -1]
type = ChangeState
value = 120
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = random <= 500
triggerall = statetype != A
triggerall = var(9) = 1
triggerall = ctrl
trigger1 = p2statetype = S

; 立ちガード2
[State -1]
type = ChangeState
value = 130
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = random <= 500
triggerall = statetype != A
triggerall = var(9) = 1
triggerall = ctrl
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
; しゃがみガード
[State -1]
type = ChangeState
value = 121
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = statetype != A
triggerall = random <= 500
triggerall = var(9) = 1
triggerall = ctrl
trigger1 = p2statetype = C

;---------------------------------------------------------------------------
; 空中ガード
[State -1]
type = ChangeState
value = 122
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = statetype = A
triggerall = random <= 500
triggerall = var(9) = 1
triggerall = ctrl
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
; 敵ジャンプ時に星の巡り
[State -1]
type = ChangeState
value = 1500
triggerall = p2movetype != A
triggerall = random <= 400
triggerall = var(9) = 1
triggerall = statetype != A
triggerall = P2bodydist X <= 30
triggerall = ctrl
trigger1 = p2statetype = A
trigger1 = P2bodydist y > 30

;---------------------------------------------------------------------------
; 空中同士で640
[State -1]
type = ChangeState
value = 640
triggerall = var(9) = 1
triggerall = random < 700
triggerall = P2bodydist X <= 35
trigger1 = statetype = A
trigger1 = p2statetype != L
trigger1 = ctrl

;---------------------------------------------------------------------------
; 空中回復
[State -1]
type = ChangeState
value = 5200
triggerall = var(9) = 1
triggerall = random <= 700
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = alive
trigger1 = CanRecover
trigger1 = stateno = 5050

;---------------------------------------------------------------------------
; ダッシュ
[State -1]
type = ChangeState
value = 100
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = p2movetype != A
triggerall = P2bodydist X >= 60
triggerall = random < 100
trigger1 = stateno = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
; ガードキャンセル
[State -1]
type = ChangeState
value = 2500
triggerall = var(9) = 1
triggerall = power >= 500
triggerall = random < 50
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
; 六合を溜めない
[State -1]
type = ChangeState
value = 4001
triggerall = var(9) = 1
trigger1 = time = 10
trigger1 = stateno = 4000

;---------------------------------------------------------------------------
; キャンセル六合
[State -1]
type = ChangeState
value = 4000
triggerall = var(9) = 1
triggerall = random < 700
triggerall = power >= 2000
triggerall = stateno = 2000
trigger1 = movecontact && (stateno = 240)
trigger2 = movecontact && (stateno = 250)
trigger3 = movecontact && (stateno = 270)
trigger4 = movecontact && (stateno = 400)
trigger5 = movecontact && (stateno = 430)
trigger6 = movecontact && (stateno = 440)


;---------------------------------------------------------------------------
; 六合
[State -1]
type = ChangeState
value = 4000
triggerall = var(9) = 1
triggerall = power >= 2000
triggerall = winko != 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = random < 200
trigger1 = ctrl
trigger1 = P2bodydist X < 60

;---------------------------------------------------------------------------
; 星の巡り
[State -1]
type = ChangeState
value = 1500
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = random < 200
trigger1 = ctrl
trigger1 = P2bodydist X < 30
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 250)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;---------------------------------------------------------------------------
; 追加1
[State -1]
type = ChangeState
value = 1510
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = statetype = S
triggerall = random < 200
trigger1 = stateno = 1520
trigger1 = time = 12

;---------------------------------------------------------------------------
; 追加2
[State -1]
type = ChangeState
value = 1550
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = statetype = S
triggerall = random < 200
trigger1 = stateno = 1520
trigger1 = time = 12

;---------------------------------------------------------------------------
; 閉じ込め
[State -1]
type = ChangeState
value = 2000
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = random < 100
trigger1 = ctrl
trigger1 = P2bodydist X < 25

;---------------------------------------------------------------------------
; 天空1_1
[State -1]
type = ChangeState
value = 1000
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = random < 40
trigger1 = ctrl
trigger1 = P2bodydist X >= 80

;---------------------------------------------------------------------------
; 天空2_1
[State -1]
type = ChangeState
value = 1200
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = random < 40
trigger1 = ctrl
trigger1 = P2bodydist X >= 80


