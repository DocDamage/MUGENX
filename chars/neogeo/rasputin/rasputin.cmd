;===========================================================================
; CMD file for Rasputin.
;===========================================================================

;-| Super Motions |---------------------------------------------------------
[Command]
name = "himitu_max"
command = ~D, DB, B, F, a+b
time = 20
[Command]
name = "himitu_max"
command = ~D, DB, B, F, b+c
time = 20
[Command]
name = "himitu_max"
command = ~D, DB, B, F, a+c
time = 20

[Command]
name = "himitu"
command = ~D, DB, B, F, a
time = 20
[Command]
name = "himitu"
command = ~D, DB, B, F, b
time = 20
[Command]
name = "himitu"
command = ~D, DB, B, F, c
time = 20

[Command]
name = "accel_ex"
command = ~D, DB, B, a+b
[Command]
name = "accel_ex"
command = ~D, DB, B, b+c
[Command]
name = "accel_ex"
command = ~D, DB, B, a+c


;-| Special Motions |-------------------------------------------------------

[Command]
name = "fire_x"
command = ~D, DF, F, x

[Command]
name = "fire_y"
command = ~D, DF, F, y

[Command]
name = "fire_z"
command = ~D, DF, F, z

[Command]
name = "thunder_x"
command = ~B, D, F, x

[Command]
name = "thunder_y"
command = ~B, D, F, y

[Command]
name = "thunder_z"
command = ~B, D, F, z

[Command]
name = "ice_x"
command = ~F, D, B, x

[Command]
name = "ice_y"
command = ~F, D, B, y

[Command]
name = "ice_z"
command = ~F, D, B, z

[Command]
name = "accel_a"
command = ~D, DB, B, a

[Command]
name = "accel_b"
command = ~D, DB, B, b

[Command]
name = "accel_c"
command = ~D, DB, B, c

[Command]
name = "cossack_a"
command = ~D, DF, F, a

[Command]
name = "cossack_b"
command = ~D, DF, F, b

[Command]
name = "cossack_c"
command = ~D, DF, F, c

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
name = "tukami"
command = F
time = 1
[Command]
name = "tukami"
command = B
time = 1
[Command]
name = "tukami"
command = D
time = 1
[Command]
name = "tukami"
command = U
time = 1

[Command]
name = "tukami_2"
command = a
time = 1
[Command]
name = "tukami_2"
command = b
time = 1
[Command]
name = "tukami_2"
command = c
time = 1
[Command]
name = "tukami_2"
command = x
time = 1
[Command]
name = "tukami_2"
command = y
time = 1
[Command]
name = "tukami_2"
command = z
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
; 秘密の花園MAX
[State -1]
type = ChangeState
value = 3010
triggerall = command = "himitu_max" && power >= 1000 && var(41) = 100
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; 秘密の花園
[State -1]
type = ChangeState
value = 3000
triggerall = command = "himitu" && power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; アクセルスピンEX
[State -1]
type = ChangeState
value = 1140
triggerall = command = "accel_ex" && var(41) = 100
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; 空中アクセルスピンEX
[State -1]
type = ChangeState
value = 1145
triggerall = command = "accel_ex"&& var(41) = 100
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; サンダーボール弱
[State -1]
type = ChangeState
value = 1020
triggerall = command = "thunder_x" && !NumProj
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; サンダーボール中
[State -1]
type = ChangeState
value = 1025
triggerall = command = "thunder_y" && !NumProj
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; サンダーボール強
[State -1]
type = ChangeState
value = 1030
triggerall = command = "thunder_z" && !NumProj
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; ファイヤーボール弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "fire_x" && !NumProj
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; ファイヤーボール中
[State -1]
type = ChangeState
value = 1005
triggerall = command = "fire_y" && !NumProj
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; ファイヤーボール強
[State -1]
type = ChangeState
value = 1010
triggerall = command = "fire_z" && !NumProj
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; アイスボール弱
[State -1]
type = ChangeState
value = 1040
triggerall = command = "ice_x" && !NumProj
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; アイスボール中
[State -1]
type = ChangeState
value = 1045
triggerall = command = "ice_y" && !NumProj
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; アイスボール強
[State -1]
type = ChangeState
value = 1050
triggerall = command = "ice_z" && !NumProj
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; 愛のコサックダンス弱
[State -1]
type = ChangeState
value = 1120
triggerall = command = "cossack_a"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; 愛のコサックダンス中
[State -1]
type = ChangeState
value = 1125
triggerall = command = "cossack_b"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; 愛のコサックダンス強
[State -1]
type = ChangeState
value = 1130
triggerall = command = "cossack_c"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; アクセルスピン弱
[State -1]
type = ChangeState
value = 1060
triggerall = command = "accel_a"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; アクセルスピン中
[State -1]
type = ChangeState
value = 1065
triggerall = command = "accel_b"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; アクセルスピン強
[State -1]
type = ChangeState
value = 1070
triggerall = command = "accel_c"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
trigger3 = StateNo = 200 && var(52) = [1,18]
trigger4 = StateNo = 210 && var(52) = [1,18]
trigger5 = StateNo = 220 && var(52) = [1,18]
trigger6 = StateNo = 230 && var(52) = [1,18]
trigger7 = StateNo = 250 && var(52) = [1,18]
trigger8 = StateNo = 260 && var(52) = [1,18]
trigger9 = StateNo = 400 && var(52) = [1,18]
trigger10= StateNo = 410 && var(52) = [1,18]
trigger11= StateNo = 430 && var(52) = [1,18]
trigger12= StateNo = 440 && var(52) = [1,18]
;---------------------------------------------------------------------------
; 空中ファイヤーボール弱
[State -1]
type = ChangeState
value = 1100
triggerall = command = "fire_x"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; 空中ファイヤーボール中
[State -1]
type = ChangeState
value = 1105
triggerall = command = "fire_y"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; 空中ファイヤーボール強
[State -1]
type = ChangeState
value = 1110
triggerall = command = "fire_z"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; 空中アクセルスピン弱
[State -1]
type = ChangeState
value = 1080
triggerall = command = "accel_a"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; 空中アクセルスピン中
[State -1]
type = ChangeState
value = 1085
triggerall = command = "accel_b"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; 空中アクセルスピン強
[State -1]
type = ChangeState
value = 1090
triggerall = command = "accel_c"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; 愛の拷問
[State -1]
type = ChangeState
value = 810
triggerall = command = "extra"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 800
;---------------------------------------------------------------------------
; オーラ握り
[State -1]
type = ChangeState
value = 900
triggerall = command = "fwd_z"
triggerall = (p2stateno != [9020,9029]) && p2MoveType != H && p2stateno != [130,153]
trigger1 = p2BodyDist X < 15
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; せっかんストーム
[State -1]
type = ChangeState
value = 910
triggerall = command = "back_z"
triggerall = (p2stateno != [9020,9029]) && p2MoveType != H && p2stateno != [130,153]
trigger1 = p2BodyDist X < 15
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; 立ち弱P
[State -1]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 200 && AnimElem = 4,> 0
trigger4 = stateno = 400 && AnimElem = 4,> 0
trigger5 = stateno = 800
;---------------------------------------------------------------------------
; 立ち中P
[State -1]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 800
;---------------------------------------------------------------------------
; 立ち強P
[State -1]
type = ChangeState
;value = ifelse(command != "holdfwd",220,ifelse(p2BodyDist X < 25 || (StateNo = [100,101]),230,225))
value = ifelse(p2BodyDist X < 25 && command = "holdfwd" || (StateNo = [100,101]),230,ifelse(command != "holdfwd",220,225))
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 800
;---------------------------------------------------------------------------
; 立ち弱K
[State -1]
type = ChangeState
;value = ifelse(command != "holdfwd",240,ifelse(p2BodyDist X < 25 && (StateNo != [100,101]),250,245))
value = ifelse(p2BodyDist X >= 25 && command = "holdfwd" || (StateNo = [100,101]),245,ifelse(command != "holdfwd",240,250))
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 400 && AnimElem = 4,> 0
trigger4 = stateno = 800
;---------------------------------------------------------------------------
; 立ち中K
[State -1]
type = ChangeState
value = 260
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 800
;---------------------------------------------------------------------------
; 立ち強K
[State -1]
type = ChangeState
value = 270
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
trigger3 = stateno = 200 && AnimElem = 4,> 0
trigger4 = stateno = 400 && AnimElem = 4,> 0
trigger5 = stateno = 800
;---------------------------------------------------------------------------
; 屈み中P
[State -1]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = [100,101]
trigger3 = stateno = 400 && AnimElem = 4,> 0
trigger4 = stateno = 800
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
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ強P
[State -1]
type = ChangeState
value = 620
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
value = 640
triggerall = command = "b"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; ジャンプ強K
[State -1]
type = ChangeState
value = 650
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