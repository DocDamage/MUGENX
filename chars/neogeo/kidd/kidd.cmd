;===========================================================================
; CMD file for C.Kidd.
;===========================================================================

;-| Super Motions |---------------------------------------------------------

[Command]
name = "punish"
command = ~B, D, DB, a
[Command]
name = "punish"
command = ~B, D, DB, b
[Command]
name = "punish"
command = ~B, D, DB, c

[Command]
name = "punish_max"
command = ~B, D, DB, a+b
[Command]
name = "punish_max"
command = ~B, D, DB, b+c
[Command]
name = "punish_max"
command = ~B, D, DB, a+c

;-| Special Motions |-------------------------------------------------------

[Command]
name = "knuckle_x"
command = ~30$B, F, x

[Command]
name = "knuckle_y"
command = ~30$B, F, y

[Command]
name = "knuckle_z"
command = ~30$B, F, z

[Command]
name = "knuckle_ex"
command = ~30$B, F, x+y
[Command]
name = "knuckle_ex"
command = ~30$B, F, y+z
[Command]
name = "knuckle_ex"
command = ~30$B, F, x+z

[Command]
name = "upper_x"
command = ~30$D, $U, x

[Command]
name = "upper_y"
command = ~30$D, $U, y

[Command]
name = "upper_z"
command = ~30$D, $U, z

[Command]
name = "ship_x"
command = ~D, DF, F, x

[Command]
name = "ship_y"
command = ~D, DF, F, y

[Command]
name = "ship_z"
command = ~D, DF, F, z

[Command]
name = "yakuza_a"
command = ~F, D, B, a
Time = 20

[Command]
name = "yakuza_b"
command = ~F, D, B, b
Time = 20

[Command]
name = "yakuza_c"
command = ~F, D, B, c
Time = 20

[Command]
name = "spiral_a"
command = ~30$B, F, a

[Command]
name = "spiral_b"
command = ~30$B, F, b

[Command]
name = "spiral_c"
command = ~30$B, F, c

;-| Button Combination |----------------------------------------------------

[Command]
name = "extra"
command = a+b
time = 1
[Command]
name = "extra"
command = b+c
time = 1
[Command]
name = "extra"
command = a+c
time = 1

;-| Dir + Button |----------------------------------------------------------

[Command]
name = "fwd_z"
command = /F, z
time = 1

[Command]
name = "back_z"
command = /B, z
time = 1

[Command]
name = "downfwd_c"
command = /DF, c
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
name = "binta"
command = ~B, ~F
time = 8

[Command]
name = "binta"
command = ~F, ~B
time = 8

[Command]
name = "binta"
command = ~U, ~D
time = 8

[Command]
name = "binta"
command = ~D, ~U
time = 8

;-| Do not remove! |--------------------------------------------------------

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

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

;===========================================================================

[Statedef -1]
;---------------------------------------------------------------------------
; パニッシュオブパイレーツMAX
[State -1]
type = ChangeState
value = 3010
triggerall = command = "punish_max"
triggerall = power >= 3000
triggerall = p2BodyDist X < 30
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
;---------------------------------------------------------------------------
; パニッシュオブパイレーツ
[State -1]
type = ChangeState
value = 3000
triggerall = command = "punish"
triggerall = power >= 2000
triggerall = p2BodyDist X < 30
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
;---------------------------------------------------------------------------
; ABC特殊技
[State -1]
type = ChangeState
value = ifelse(command = "holdfwd",810,ifelse(command = "holdback",815,805))
triggerall = command = "extra"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
;---------------------------------------------------------------------------
; シャークナックルEX
[State -1]
type = ChangeState
value = 1100
triggerall = command = "knuckle_ex"
triggerall = power >= 2000
triggerall = !NumProj && !NumHelper(6106)
trigger1 = statetype != A && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 215 || (stateno = [225,230]) || (stateno = [245,260]) || stateno = 270)
trigger3 = movecontact && (stateno = 400 || stateno = 420 || (stateno = [430,450]))
trigger4 = stateno = 800
;---------------------------------------------------------------------------
; シャークナックル弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "knuckle_x"
triggerall = !NumProj && !NumHelper(6106)
trigger1 = statetype != A && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 215 || (stateno = [225,230]) || (stateno = [245,260]) || stateno = 270)
trigger3 = movecontact && (stateno = 400 || stateno = 420 || (stateno = [430,450]))
trigger4 = stateno = 800
;---------------------------------------------------------------------------
; シャークナックル中
[State -1]
type = ChangeState
value = 1005
triggerall = command = "knuckle_y"
triggerall = !NumProj && !NumHelper(6106)
trigger1 = statetype != A && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 215 || (stateno = [225,230]) || (stateno = [245,260]) || stateno = 270)
trigger3 = movecontact && (stateno = 400 || stateno = 420 || (stateno = [430,450]))
trigger4 = stateno = 800
;---------------------------------------------------------------------------
; シャークナックル強
[State -1]
type = ChangeState
value = 1010
triggerall = command = "knuckle_z"
triggerall = !NumProj && !NumHelper(6106)
trigger1 = statetype != A && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 215 || (stateno = [225,230]) || (stateno = [245,260]) || stateno = 270)
trigger3 = movecontact && (stateno = 400 || stateno = 420 || (stateno = [430,450]))
trigger4 = stateno = 800
;---------------------------------------------------------------------------
; パイレーツシップ弱
[State -1]
type = ChangeState
value = 1040
triggerall = command = "ship_x"
triggerall = !NumProj && !NumHelper(6106)
trigger1 = statetype != A && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 215 || (stateno = [225,230]) || (stateno = [245,260]) || stateno = 270)
trigger3 = movecontact && (stateno = 400 || stateno = 420 || (stateno = [430,450]))
trigger4 = stateno = 800
;---------------------------------------------------------------------------
; パイレーツシップ中
[State -1]
type = ChangeState
value = 1045
triggerall = command = "ship_y"
triggerall = !NumProj && !NumHelper(6106)
trigger1 = statetype != A && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 215 || (stateno = [225,230]) || (stateno = [245,260]) || stateno = 270)
trigger3 = movecontact && (stateno = 400 || stateno = 420 || (stateno = [430,450]))
trigger4 = stateno = 800
;---------------------------------------------------------------------------
; パイレーツシップ強
[State -1]
type = ChangeState
value = 1050
triggerall = command = "ship_z"
triggerall = !NumProj && !NumHelper(6106)
trigger1 = statetype != A && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 215 || (stateno = [225,230]) || (stateno = [245,260]) || stateno = 270)
trigger3 = movecontact && (stateno = 400 || stateno = 420 || (stateno = [430,450]))
trigger4 = stateno = 800
;---------------------------------------------------------------------------
; シャークアッパー弱
[State -1]
type = ChangeState
value = 1020
triggerall = command = "upper_x"
triggerall = !NumProj && !NumHelper(6106)
trigger1 = statetype != A && (ctrl || stateno = 40)
trigger2 = movecontact && (stateno = 200 || stateno = 215 || (stateno = [225,230]) || (stateno = [245,260]) || stateno = 270)
trigger3 = movecontact && (stateno = 400 || stateno = 420 || (stateno = [430,450]))
trigger4 = stateno = 800
;---------------------------------------------------------------------------
; シャークアッパー中
[State -1]
type = ChangeState
value = 1025
triggerall = command = "upper_y"
triggerall = !NumProj && !NumHelper(6106)
trigger1 = statetype != A && (ctrl || stateno = 40)
trigger2 = movecontact && (stateno = 200 || stateno = 215 || (stateno = [225,230]) || (stateno = [245,260]) || stateno = 270)
trigger3 = movecontact && (stateno = 400 || stateno = 420 || (stateno = [430,450]))
trigger4 = stateno = 800
;---------------------------------------------------------------------------
; シャークアッパー強
[State -1]
type = ChangeState
value = 1030
triggerall = command = "upper_z"
triggerall = !NumProj && !NumHelper(6106)
trigger1 = statetype != A && (ctrl || stateno = 40)
trigger2 = movecontact && (stateno = 200 || stateno = 215 || (stateno = [225,230]) || (stateno = [245,260]) || stateno = 270)
trigger3 = movecontact && (stateno = 400 || stateno = 420 || (stateno = [430,450]))
trigger4 = stateno = 800
;---------------------------------------------------------------------------
; ハイパーヤクザキック弱
[State -1]
type = ChangeState
value = 1060
triggerall = command = "yakuza_a"
trigger1 = statetype != A && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 215 || (stateno = [225,230]) || (stateno = [245,260]) || stateno = 270)
trigger3 = movecontact && (stateno = 400 || stateno = 420 || (stateno = [430,450]))
trigger4 = stateno = 800
;---------------------------------------------------------------------------
; ハイパーヤクザキック中
[State -1]
type = ChangeState
value = 1065
triggerall = command = "yakuza_b"
trigger1 = statetype != A && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 215 || (stateno = [225,230]) || (stateno = [245,260]) || stateno = 270)
trigger3 = movecontact && (stateno = 400 || stateno = 420 || (stateno = [430,450]))
trigger4 = stateno = 800
;---------------------------------------------------------------------------
; ハイパーヤクザキック強
[State -1]
type = ChangeState
value = 1070
triggerall = command = "yakuza_c"
trigger1 = statetype != A && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 215 || (stateno = [225,230]) || (stateno = [245,260]) || stateno = 270)
trigger3 = movecontact && (stateno = 400 || stateno = 420 || (stateno = [430,450]))
trigger4 = stateno = 800
;---------------------------------------------------------------------------
; スパイラルキック弱
[State -1]
type = ChangeState
value = 1080
triggerall = command = "spiral_a"
trigger1 = statetype != A && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 215 || (stateno = [225,230]) || (stateno = [245,260]) || stateno = 270)
trigger3 = movecontact && (stateno = 400 || stateno = 420 || (stateno = [430,450]))
trigger4 = stateno = 800
;---------------------------------------------------------------------------
; スパイラルキック中
[State -1]
type = ChangeState
value = 1085
triggerall = command = "spiral_b"
trigger1 = statetype != A && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 215 || (stateno = [225,230]) || (stateno = [245,260]) || stateno = 270)
trigger3 = movecontact && (stateno = 400 || stateno = 420 || (stateno = [430,450]))
trigger4 = stateno = 800
;---------------------------------------------------------------------------
; スパイラルキック強
[State -1]
type = ChangeState
value = 1090
triggerall = command = "spiral_c"
trigger1 = statetype != A && ctrl
trigger2 = movecontact && (stateno = 200 || stateno = 215 || (stateno = [225,230]) || (stateno = [245,260]) || stateno = 280)
trigger3 = movecontact && (stateno = 400 || stateno = 420 || (stateno = [430,450]))
trigger4 = stateno = 800
;---------------------------------------------------------------------------
; 往復ビンタ
[State -1]
type = ChangeState
value = 900
triggerall = command = "fwd_z"
trigger1 = p2BodyDist X < 15
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; 投げ飛ばし
[State -1]
type = ChangeState
value = 910
triggerall = command = "back_z"
trigger1 = p2BodyDist X < 15
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; シャークキック
[State -1]
type = ChangeState
value = 300
triggerall = command = "downfwd_c"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; 立ち弱P
[State -1]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 200 && AnimElem = 3,> 0
trigger4 = stateno = 400 && AnimElem = 3,> 0
trigger5 = stateno = 800
;---------------------------------------------------------------------------
; 立ち中P
[State -1]
type = ChangeState
value = ifelse(p2BodyDist X > 25 || (stateno = [100,101]),210,215)
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 200 && AnimElem = 3,> 0
trigger4 = stateno = 400 && AnimElem = 3,> 0
trigger5 = stateno = 800
;---------------------------------------------------------------------------
; 立ち強P
[State -1]
type = ChangeState
value = ifelse(p2BodyDist X < 25 || (stateno = [100,101]),225,ifelse(command="holdfwd",230,220))
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 800
;---------------------------------------------------------------------------
; 立ち弱K
[State -1]
type = ChangeState
value = ifelse(p2BodyDist X > 25 || (stateno = [100,101]),240,245)
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 800
;---------------------------------------------------------------------------
; 立ち中K
[State -1]
type = ChangeState
value = 250
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 800
;---------------------------------------------------------------------------
; 立ち強K
[State -1]
type = ChangeState
value = ifelse(command = "holdfwd" || command = "holdback",ifelse(p2BodyDist X > 25 || (stateno = [100,101]),265,270),260)
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 800
;---------------------------------------------------------------------------
; 屈み弱P
[State -1]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 200 && AnimElem = 3,> 0
trigger4 = stateno = 400 && AnimElem = 3,> 0
trigger5 = stateno = 800
;---------------------------------------------------------------------------
; 屈み中P
[State -1]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 200 && AnimElem = 3,> 0
trigger4 = stateno = 400 && AnimElem = 3,> 0
trigger5 = stateno = 800
;---------------------------------------------------------------------------
; 屈み強P
[State -1]
type = ChangeState
value = 420
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 800
;---------------------------------------------------------------------------
; 屈み弱K
[State -1]
type = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 800
;---------------------------------------------------------------------------
; 屈み中K
[State -1]
type = ChangeState
value = 440
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 800
;---------------------------------------------------------------------------
; 屈み強K
[State -1]
type = ChangeState
value = 450
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 800
;---------------------------------------------------------------------------
; ジャンプ弱P
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && Time > 12
;---------------------------------------------------------------------------
; ジャンプ中P
[State -1]
type = ChangeState
value = ifelse(vel x,610,615)
triggerall = command = "y"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ強P
[State -1]
type = ChangeState
value = ifelse(vel x,620,625)
triggerall = command = "z"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ弱K
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ中K
[State -1]
type = ChangeState
value = ifelse(vel x,640,645)
triggerall = command = "b"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ強K
[State -1]
type = ChangeState
value = ifelse(vel x,650,655)
triggerall = command = "c"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; ジャンプキャンセル
[State -1]
type = ChangeState
value = 40
triggerall = command = "holdup"
trigger1 = stateno = 200 || stateno = 215 || stateno = 225 || (stateno = 230 && AnimElem = 3,< 0)
trigger2 = (stateno = [245,260]) || stateno = 270
trigger3 = stateno = 400 || stateno = 420 || (stateno = [430,450])
;---------------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 800
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
;---------------------------------------------------------------------------
; ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
; バックステップ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl
