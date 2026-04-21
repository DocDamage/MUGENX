;===========================================================================
; CMD file for K9999
;===========================================================================

;-| Super Motions |---------------------------------------------------------

[Command]
name = "tuki_xy"
command = ~DB, F, D, B, DF, x+y
time = 35
[Command]
name = "tuki_xy"
command = ~DB, F, DF, B, DF, x+y
time = 35
[Command]
name = "tuki_xy"
command = ~DB, F, DB, B, DF, x+y
time = 35

[Command]
name = "tuki"
command = ~DB, F, D, B, DF, x
time = 35
[Command]
name = "tuki"
command = ~DB, F, DF, B, DF, x
time = 35
[Command]
name = "tuki"
command = ~DB, F, DB, B, DF, x
time = 35
[Command]
name = "tuki"
command = ~DB, F, D, B, DF, y
time = 35
[Command]
name = "tuki"
command = ~DB, F, DF, B, DF, y
time = 35
[Command]
name = "tuki"
command = ~DB, F, DB, B, DF, y
time = 35

[Command]
name = "ittimae_ab"
command = ~DB, F, D, B, DF, a+b
time = 35
[Command]
name = "ittimae_ab"
command = ~DB, F, DF, B, DF, a+b
time = 35
[Command]
name = "ittimae_ab"
command = ~DB, F, DB, B, DF, a+b
time = 35

[Command]
name = "ittimae"
command = ~DB, F, D, B, DF, a
time = 35
[Command]
name = "ittimae"
command = ~DB, F, DF, B, DF, a
time = 35
[Command]
name = "ittimae"
command = ~DB, F, DB, B, DF, a
time = 35
[Command]
name = "ittimae"
command = ~DB, F, D, B, DF, b
time = 35
[Command]
name = "ittimae"
command = ~DB, F, DF, B, DF, b
time = 35
[Command]
name = "ittimae"
command = ~DB, F, DB, B, DF, b
time = 35

[Command]
name = "tikaraga"
command = ~D, F, D, F, x+y
time = 20

;-| Special Motions |-------------------------------------------------------

[Command]
name = "atti_x"
command = ~D, DF, F, x

[Command]
name = "atti_y"
command = ~D, DF, F, y

[Command]
name = "warero_x"
command = ~F, D, DF, x

[Command]
name = "warero_y"
command = ~F, D, DF, y

;-| Button Combination |----------------------------------------------------

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "by"
command = b+y
time = 1

;-| Dir + Button |----------------------------------------------------------

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
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
name = "recovery"
command = a+x
time = 1

[Command]
name = "recovery"
command = z
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
; 力が・・・勝手に・・・うわあああ！！
[State -1]
type = ChangeState
value = 3020
triggerall = command = "tikaraga"
triggerall = power >= 2000
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = stateno = 205 || stateno = 215 || stateno = 225 || stateno = 300 || (stateno = 330 && AnimElem = 7,< 0)
trigger4 = movecontact
trigger4 = stateno = 400 || stateno = 420
trigger5 = movecontact && power >= 3000
trigger5 = ((stateno = [1000,1005]) && Time < 29) || ((stateno = [1010,1015]) && AnimElem = 9,< 0)
;---------------------------------------------------------------------------
; 月・・・！MAX
[State -1]
type = ChangeState
value = 3005
triggerall = command = "tuki_xy"
triggerall = power >= 2000
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = stateno = 205 || stateno = 215 || stateno = 225 || stateno = 300 || (stateno = 330 && AnimElem = 7,< 0)
trigger4 = movecontact
trigger4 = stateno = 400 || stateno = 420
trigger5 = movecontact && power >= 3000
trigger5 = ((stateno = [1000,1005]) && Time < 29) || ((stateno = [1010,1015]) && AnimElem = 9,< 0)
;---------------------------------------------------------------------------
; 月・・・！
[State -1]
type = ChangeState
value = 3000
triggerall = command = "tuki"
triggerall = power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = stateno = 205 || stateno = 215 || stateno = 225 || stateno = 300 || (stateno = 330 && AnimElem = 7,< 0)
trigger4 = movecontact
trigger4 = stateno = 400 || stateno = 420
trigger5 = movecontact && power >= 2000
trigger5 = ((stateno = [1000,1005]) && Time < 29) || ((stateno = [1010,1015]) && AnimElem = 9,< 0)
;---------------------------------------------------------------------------
; てめぇも往っちまえ！！MAX
[State -1]
type = ChangeState
value = 3015
triggerall = command = "ittimae_ab"
triggerall = power >= 2000
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = stateno = 205 || stateno = 215 || stateno = 225 || stateno = 300 || (stateno = 330 && AnimElem = 7,< 0)
trigger4 = movecontact
trigger4 = stateno = 400 || stateno = 420
trigger5 = movecontact && power >= 3000
trigger5 = ((stateno = [1000,1005]) && Time < 29) || ((stateno = [1010,1015]) && AnimElem = 9,< 0)
;---------------------------------------------------------------------------
; てめぇも往っちまえ！！
[State -1]
type = ChangeState
value = 3010
triggerall = command = "ittimae"
triggerall = power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = stateno = 205 || stateno = 215 || stateno = 225 || stateno = 300 || (stateno = 330 && AnimElem = 7,< 0)
trigger4 = movecontact
trigger4 = stateno = 400 || stateno = 420
trigger5 = movecontact && power >= 2000
trigger5 = ((stateno = [1000,1005]) && Time < 29) || ((stateno = [1010,1015]) && AnimElem = 9,< 0)
;---------------------------------------------------------------------------
; 割れろォ！弱
[State -1]
type = ChangeState
value = 1010
triggerall = command = "warero_x"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = stateno = 205 || stateno = 215 || stateno = 225 || stateno = 300
trigger4 = movecontact
trigger4 = stateno = 400 || stateno = 420
;---------------------------------------------------------------------------
; 割れろォ！強
[State -1]
type = ChangeState
value = 1015
triggerall = command = "warero_y"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = stateno = 205 || stateno = 215 || stateno = 225 || stateno = 300
trigger4 = movecontact
trigger4 = stateno = 400 || stateno = 420
;---------------------------------------------------------------------------
; あっちへいってろォ！弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "atti_x"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = stateno = 205 || stateno = 215 || stateno = 225 || stateno = 300
trigger4 = movecontact
trigger4 = stateno = 400 || stateno = 420
;---------------------------------------------------------------------------
; あっちへいってろォ！強
[State -1]
type = ChangeState
value = 1005
triggerall = command = "atti_y"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = stateno = 205 || stateno = 215 || stateno = 225 || stateno = 300
trigger4 = movecontact
trigger4 = stateno = 400 || stateno = 420
;---------------------------------------------------------------------------
; 緊急回避
[State -1]
type = ChangeState
value = ifelse(command = "holdback",815,810)
triggerall = command = "ax" || command = "z"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; ふっとばし攻撃
[State -1]
type = ChangeState
value = ifelse(statetype != A,300,310)
triggerall = command = "by" || command = "c"
trigger1 = ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; ガードキャンセル緊急回避
[State -1]
type = ChangeState
value = ifelse(command != "holdback",830,835)
triggerall = command = "ax" || command = "z"
triggerall = power >= 1000
trigger1 = stateno = [150,153]
;---------------------------------------------------------------------------
; ガードキャンセルふっとばし攻撃
[State -1]
type = ChangeState
value = 820
triggerall = command = "by" || command = "c"
triggerall = power >= 1000
trigger1 = stateno = [150,153]
;---------------------------------------------------------------------------
; 消えろぉ!
[State -1]
type = ChangeState
value = 900
trigger1 = command = "fwd_y" || command = "back_y"
trigger1 = enemynear,movetype != H
trigger1 = P2BodyDist X < 15
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; いつまで遊んでんだよォ！
[State -1]
type = ChangeState
value = 910
trigger1 = command = "fwd_b" || command = "back_b"
trigger1 = enemynear,movetype != H
trigger1 = P2BodyDist X < 15
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; うるせえー！
[State -1]
type = ChangeState
value = 330
triggerall = command = "fwd_x"
trigger1 = ctrl && statetype != A
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = stateno = 205 || stateno = 215 || stateno = 225 || stateno = 300
trigger4 = movecontact
trigger4 = stateno = 400 || stateno = 420
;---------------------------------------------------------------------------
; 立ち弱P
[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,200,205)
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,205]) && AnimElem = 4,> 0
trigger4 = (stateno = [220,225]) && AnimElem = 4,> 0
trigger5 = stateno = 400 && AnimElem = 4,> 0
trigger6 = stateno = 420 && AnimElem = 4,> 0
;---------------------------------------------------------------------------
; 立ち強P
[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 25,210,215)
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; 立ち弱K
[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,220,225)
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,205]) && AnimElem = 4,> 0
trigger4 = (stateno = [220,225]) && AnimElem = 4,> 0
trigger5 = stateno = 400 && AnimElem = 4,> 0
trigger6 = stateno = 420 && AnimElem = 4,> 0
;---------------------------------------------------------------------------
; 立ち強K
[State -1]
type = ChangeState
value = ifelse(P2BodyDist X > 20,230,235)
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; 屈み弱P
[State -1]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,205]) && AnimElem = 4,> 0
trigger4 = (stateno = [220,225]) && AnimElem = 4,> 0
trigger5 = stateno = 400 && AnimElem = 4,> 0
trigger6 = stateno = 420 && AnimElem = 4,> 0
;---------------------------------------------------------------------------
; 屈み強P
[State -1]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; 屈み弱K
[State -1]
type = ChangeState
value = 420
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = (stateno = [200,205]) && AnimElem = 4,> 0
trigger4 = (stateno = [220,225]) && AnimElem = 4,> 0
trigger5 = stateno = 400 && AnimElem = 4,> 0
trigger6 = stateno = 420 && AnimElem = 4,> 0
;---------------------------------------------------------------------------
; 屈み強K
[State -1]
type = ChangeState
value = 430
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = movecontact
trigger3 = stateno = 205 || stateno = 215 || stateno = 225 || stateno = 300
trigger4 = movecontact
trigger4 = stateno = 400 || stateno = 420
;---------------------------------------------------------------------------
; ジャンプ弱P
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ強P
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ弱K
[State -1]
type = ChangeState
value = 620
triggerall = command = "a"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ強K
[State -1]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A && ctrl
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
;---------------------------------------------------------------------------
; 挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 100
