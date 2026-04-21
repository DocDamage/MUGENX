
[Command]
name = "super_x"
command =  D,F,D,F,x
time = 45

[Command]
name = "super_y"
command = D,F,D,F,y
time = 45

[Command]
name = "super_z"
command =  D,F,D,F,z
time = 45


[Command]
name = "colk_c"
command =   D,F,D,F,c
time = 45





[Command]
name = "uppercut_x"
command = ~F, D, DF, x
time = 25

[Command]
name = "uppercut_y"
command = ~F, D, DF, y
time = 25

[Command]
name = "uppercut_z"
command = ~F, D, DF, z
time = 25


[Command]
name = "catch_after"
command = ~D, F, x
time = 25

[Command]
name = "catch_after"
command = ~D, F, y
time = 25

[Command]
name = "catch_after"
command = ~D, F, z
time = 25

[Command]
name = "final"
command = ~1900z
time = 20

[Command]
name = "turn9"
command = ~1300x
time = 20

[Command]
name = "turn8"
command = ~1150x
time = 20

[Command]
name = "turn7"
command = ~1000x
time = 20

[Command]
name = "turn6"
command = ~850x
time = 20

[Command]
name = "turn5"
command = ~700x
time = 20

[Command]
name = "turn4"
command = ~550x
time = 20

[Command]
name = "turn3"
command = ~400x
time = 20

[Command]
name = "turn2"
command = ~250x
time = 20

[Command]
name = "turn1"
command = ~150x
time = 20


[Command]
name = "final"
command = ~1900z
time = 20

[Command]
name = "turn9"
command = ~1300y
time = 20

[Command]
name = "turn8"
command = ~1150y
time = 20

[Command]
name = "turn7"
command = ~1000y
time = 20

[Command]
name = "turn6"
command = ~850y
time = 20

[Command]
name = "turn5"
command = ~700y
time = 20

[Command]
name = "turn4"
command = ~550y
time = 20

[Command]
name = "turn3"
command = ~400y
time = 20

[Command]
name = "turn2"
command = ~250y
time = 20

[Command]
name = "turn1"
command = ~150y
time = 20

[Command]
name = "final"
command = ~1900z
time = 20

[Command]
name = "turn9"
command = ~1300z
time = 20

[Command]
name = "turn8"
command = ~1150z
time = 20

[Command]
name = "turn7"
command = ~1000z
time = 20

[Command]
name = "turn6"
command = ~850z
time = 20

[Command]
name = "turn5"
command = ~700z
time = 20

[Command]
name = "turn4"
command = ~550z
time = 20

[Command]
name = "turn3"
command = ~400z
time = 20

[Command]
name = "turn2"
command = ~250z
time = 20

[Command]
name = "turn1"
command = ~150z
time = 20


;-| Special Motions |------------------------------------------------------
[Command]
name = "QCF_x"
command = ~40$B,F,x

[Command]
name = "QCF_y"
command = ~40$B,F,y

[Command]
name = "QCF_z"
command = ~40$B,F,z

[Command]
name = "QCF_a"
command = ~40$B,F,a

[Command]
name = "QCF_b"
command = ~40$B,F,b

[Command]
name = "QCF_c"
command = ~40$B,F,c


[Command]
name = "dash_x"
command =  ~60$DB,DF,x

[Command]
name = "dash_y"
command =  ~60$DB,DF,y

[Command]
name = "dash_z"
command =  ~60$DB,DF,z


[Command]
name = "f_ab"
command = /F,a+x
time = 1


[Command]
name = "b_ab"
command = /B,a+x
time = 1

;-------------------------------
;zero Counter 

[Command]
name = "zero_c3"
command = z+c
time = 45

[Command]
name = "zero_c2"
command = y+b
time = 45

[Command]
name = "zero_c1"
command = x+a
time = 45


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

[Command]
name = "recovery2"
command = a+b
time = 1


[Command]
name = "ab"
command = a+x
time = 1


[Command]
name = "HighJump"
command = D, $U
time = 18


[Command]
name = "jump"
command = /F
time = 1



;-----------------------------------------------------------------------
;던지기
[Command]
name = "fwd_z"
command = /F,z
time = 3

[Command]
name = "fwd_y"
command = /F,y
time = 3

[Command]
name = "back_z"
command = /B,z
time = 3

[Command]
name = "back_y"
command = /B,y
time = 3

[Command]
name = "fwd_c"
command = /F,c
time = 3

[Command]
name = "fwd_b"
command = /F,b
time = 3

[Command]
name = "back_c"
command = /B,c
time = 3

[Command]
name = "back_b"
command = /B,b
time = 3



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




;-| dash |--------------------------------------------------------------

[Command]
name = "holdupfwd"
command = /UF
time = 1

[Command]
name = "holdupback"
command = /UB
time = 1





;---------------------------------------------------------------------------
; 2. State entry
;---------------------------------------------------------------------------
[Statedef -1]

;---------------------------------------------------------------------------


;zero Counter 
[State -1]
type = ChangeState
value = 1700
;triggerall = statetype = S
triggerall = command = "zero_c1"
triggerall = power >= 500
;trigger1 = stateno = [150,152]
trigger1 = stateno = 150
trigger1 = statetype = S
trigger1 = ctrl = 0
trigger2 = stateno = 151
trigger2 = statetype = S
trigger2 = ctrl = 0
trigger3 = stateno = 130
trigger3 = statetype = S
trigger3 = ctrl = 0
trigger4 = stateno = 140
trigger4 = statetype = S
trigger4 = ctrl = 0

;zero Counter 
[State -1]
type = ChangeState
value = 1700
;triggerall = statetype = S
triggerall = command = "zero_c2"
triggerall = power >= 500
;trigger1 = stateno = [150,152]
trigger1 = stateno = 150
trigger1 = statetype = S
trigger1 = ctrl = 0
trigger2 = stateno = 151
trigger2 = statetype = S
trigger2 = ctrl = 0
trigger3 = stateno = 130
trigger3 = statetype = S
trigger3 = ctrl = 0
trigger4 = stateno = 140
trigger4 = statetype = S
trigger4 = ctrl = 0

;zero Counter 
[State -1]
type = ChangeState
value = 1700
;triggerall = statetype = S
triggerall = command = "zero_c3"
triggerall = power >= 500
;trigger1 = stateno = [150,152]
trigger1 = stateno = 150
trigger1 = statetype = S
trigger1 = ctrl = 0
trigger2 = stateno = 151
trigger2 = statetype = S
trigger2 = ctrl = 0
trigger3 = stateno = 130
trigger3 = statetype = S
trigger3 = ctrl = 0
trigger4 = stateno = 140
trigger4 = statetype = S
trigger4 = ctrl = 0




;rolling
[State -1, 백 회전]
type = changestate
value = 222
triggerall = command = "b_ab"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100



rolling
[State -1, 구르기]
type = changestate
value = 222
triggerall = command = "ab"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100


;전방희피
[State -1]
type = ChangeState
value = 222
triggerall = command = "f_ab"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100






;---------------------------------------------------------------------------
;약  초필
[State -1, super_x]
type = ChangeState
value = 1999
triggerall = command = "super_x"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 405
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 435
trigger11 = movecontact = 1
trigger12 = stateno = 100
trigger13 = stateno = 225
trigger13 = movecontact = 1


;중  초필
[State -1, super_y]
type = ChangeState
value = 2000
triggerall = command = "super_y"
triggerall = power >= 2000 ;Level 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 405
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 435
trigger11 = movecontact = 1
trigger12 = stateno = 100
trigger13 = stateno = 225
trigger13 = movecontact = 1

;강 초필
[State -1, super_z]
type = ChangeState
value = 2100
triggerall = command = "super_z"
triggerall = power >= 3000 ;Level 3
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 405
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 435
trigger11 = movecontact = 1
trigger12 = stateno = 100
trigger13 = stateno = 225
trigger13 = movecontact = 1


;콜크 스크류
[State -1, super_z]
type = ChangeState
value = 3000
triggerall = command = "colk_c"
triggerall = power >= 3000 ;Level 3
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 405
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 435
trigger11 = movecontact = 1
trigger12 = stateno = 100
trigger13 = stateno = 225
trigger13 = movecontact = 1

;---------------------------------------------------------------------------
; 헤드배트_X
[State -1]
type = ChangeState
value = 1300
triggerall = command = "uppercut_x"
triggerall = command != "holddown"
trigger1 = statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 405
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 435
trigger11 = movecontact = 1
trigger12 = stateno = 100
trigger13 = stateno = 222
trigger14 = stateno = 225
trigger14 = movecontact = 1

; 헤드배트_Y
[State -1]
type = ChangeState
value = 1310
triggerall = command = "uppercut_y"
triggerall = command != "holddown"
trigger1 = statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 405
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 435
trigger11 = movecontact = 1
trigger12 = stateno = 100
trigger13 = stateno = 222
trigger14 = stateno = 225
trigger14 = movecontact = 1

; 헤드배트_Z
[State -1]
type = ChangeState
value = 1320
triggerall = command = "uppercut_z"
triggerall = command != "holddown"
trigger1 = statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 405
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 435
trigger11 = movecontact = 1
trigger12 = stateno = 100
trigger13 = stateno = 222
trigger14 = stateno = 225
trigger14 = movecontact = 1


;턴펀치

[State -1, light dash straight]
type = ChangeState
value = 1290
triggerall = command = "final"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100

[State -1, light dash straight]
type = ChangeState
value = 1280
triggerall = command = "turn9"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100


[State -1, light dash straight]
type = ChangeState
value = 1270
triggerall = command = "turn8"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100


[State -1, light dash straight]
type = ChangeState
value = 1260
triggerall = command = "turn7"
trigger1 = statetype != A
trigger1 = ctrl



[State -1, light dash straight]
type = ChangeState
value = 1250
triggerall = command = "turn6"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, light dash straight]
type = ChangeState
value = 1240
triggerall = command = "turn5"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, light dash straight]
type = ChangeState
value = 1230
triggerall = command = "turn4"
trigger1 = statetype != A
trigger1 = ctrl



[State -1, light dash straight]
type = ChangeState
value = 1220
triggerall = command = "turn3"
trigger1 = statetype != A
trigger1 = ctrl



[State -1, light dash straight]
type = ChangeState
value = 1210
triggerall = command = "turn2"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, light dash straight]
type = ChangeState
value = 1200
triggerall = command = "turn1"
trigger1 = statetype != A
trigger1 = ctrl



;---------------------------------------------------------------------------
;약 대쉬 다리걸기
[State -1, light dash straight]
type = ChangeState
value = 1400
triggerall = command = "dash_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 405
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 435
trigger11 = movecontact = 1
trigger12 = stateno = 225
trigger12 = movecontact = 1


;중 대쉬 다리걸기
[State -1, light dash straight]
type = ChangeState
value = 1410
triggerall = command = "dash_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 405
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 435
trigger11 = movecontact = 1
trigger12 = stateno = 225
trigger12 = movecontact = 1

;강 대쉬 다리걸기
[State -1, light dash straight]
type = ChangeState
value = 1420
triggerall = command = "dash_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 405
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 435
trigger11 = movecontact = 1
trigger12 = stateno = 225
trigger12 = movecontact = 1


;---------------------------------------------------------------------------
;약 대쉬 스트레이트
[State -1, light dash straight]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
triggerall = stateno != 800
triggerall = stateno != 810
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 405
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 435
trigger11 = movecontact = 1
trigger12 = stateno = 225
trigger12 = movecontact = 1

;---------------------------------------------------------------------------
;중 대쉬 스트레이트
[State -1, middle dash straight]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
triggerall = stateno != 800
triggerall = stateno != 810
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 405
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 435
trigger11 = movecontact = 1
trigger12 = stateno = 225
trigger12 = movecontact = 1

;---------------------------------------------------------------------------
;강 대쉬 스트레이트
[State -1, hard dash straight]
type = ChangeState
value = 1020
triggerall = command = "QCF_z"
triggerall = stateno != 800
triggerall = stateno != 810
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 405
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 435
trigger11 = movecontact = 1
trigger12 = stateno = 225
trigger12 = movecontact = 1

;=========================================================================

;약 대쉬 어퍼컷
[State -1, light dash straight]
type = ChangeState
value = 1100
triggerall = command = "QCF_a"
triggerall = stateno != 800
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 405
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 435
trigger11 = movecontact = 1
trigger12 = stateno = 225
trigger12 = movecontact = 1


;중 대쉬 어퍼컷
[State -1, middle dash straight]
type = ChangeState
value = 1110
triggerall = command = "QCF_b"
triggerall = stateno != 800
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 405
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 435
trigger11 = movecontact = 1
trigger12 = stateno = 225
trigger12 = movecontact = 1


;강 대쉬 어퍼컷
[State -1, hard dash straight]
type = ChangeState
value = 1120
triggerall = command = "QCF_c"
triggerall = stateno != 800
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 405
trigger8 = movecontact = 1
trigger9 = stateno = 410
trigger9 = movecontact = 1
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = stateno = 435
trigger11 = movecontact = 1
trigger12 = stateno = 225
trigger12 = movecontact = 1


;===========================================================================
[State -1, Run Fwd]
type = ChangeState
value = 225
trigger1 = command = "x" 
trigger1 = stateno = 222
trigger1 = time > 6
trigger2 = command = "y" 
trigger2 = stateno = 222
trigger2 = time > 6
trigger3 = command = "z" 
trigger3 = stateno = 222
trigger3 = time > 6


;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;Run Back
;뚣뫿?긞긘깄
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl



; Throw
[State -1]
type = ChangeState
value = 800
triggerall = p2statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = p2bodydist X <= 10
trigger1 = p2movetype != H
trigger1 = command = "fwd_z"
trigger2 = statetype = S
trigger2 = ctrl = 1
trigger2 = p2bodydist X <= 13
trigger2 = p2movetype != H
trigger2 = command = "back_z"

; Throw 2
[State -1]
type = ChangeState
value = 830
triggerall = p2statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = p2bodydist X <= 10
trigger1 = p2movetype != H
trigger1 = command = "fwd_y"
trigger2 = statetype = S
trigger2 = ctrl = 1
trigger2 = p2bodydist X <= 13
trigger2 = p2movetype != H
trigger2 = command = "back_y"


; Throw
[State -1]
type = ChangeState
value = 850
triggerall = p2statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = p2bodydist X <= 10
trigger1 = p2movetype != H
trigger1 = command = "fwd_c"
trigger2 = statetype = S
trigger2 = ctrl = 1
trigger2 = p2bodydist X <= 13
trigger2 = p2movetype != H
trigger2 = command = "back_c"

; Throw 2
[State -1]
type = ChangeState
value = 850
triggerall = p2statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = p2bodydist X <= 10
trigger1 = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = statetype = S
trigger2 = ctrl = 1
trigger2 = p2bodydist X <= 13
trigger2 = p2movetype != H
trigger2 = command = "back_b"




;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;뿧궭롢긬깛?
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger3 = stateno = 100
trigger4 = stateno = 222

;---------------------------------------------------------------------------
;Stand middle Punch
;뿧궭롢긬깛?
[State -1, Stand middle Punch]
type = ChangeState
value = 205
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 100
trigger4 = stateno = 222

;---------------------------------------------------------------------------
;Stand Strong Punch
;뿧궭떗긬깛?
[State -1, Stand Strong Punch]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 35
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger4 = stateno = 100
trigger5 = stateno = 222

;---------------------------------------------------------------------------
;멀리 Stand Strong Punch
;뿧궭떗긬깛?
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = p2bodydist x >= 35
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger4 = stateno = 100
trigger5 = stateno = 222

;---------------------------------------------------------------------------
;Stand Light Kick
;뿧궭롢긌긞긏
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
trigger4 = stateno = 100
trigger5 = stateno = 222

;---------------------------------------------------------------------------
;Stand middle Kick
;뿧궭롢긌긞긏
[State -1, Stand middle Kick]
type = ChangeState
value = 235
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 100
trigger6 = stateno = 222

;---------------------------------------------------------------------------
;Standing Strong Kick
;뿧궭떗긌긞긏
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 235
trigger5 = movecontact = 1
trigger6 = stateno = 100
trigger7 = stateno = 222

;---------------------------------------------------------------------------
;Taunt
;뮛뵯
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 222

;---------------------------------------------------------------------------
;Crouching Light Punch
;궢귗궕귒롢긬깛?
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 222

;---------------------------------------------------------------------------
;Crouching middle Punch
;궢귗궕귒롢긬깛?
[State -1, Crouching middle Punch]
type = ChangeState
value = 405
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 222

;---------------------------------------------------------------------------
;Crouching Strong Punch
;궢귗궕귒떗긬깛?
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 405
trigger2 = movecontact = 1
trigger3 = stateno = 100
trigger4 = stateno = 222

;---------------------------------------------------------------------------
;Crouching Light Kick
;궢귗궕귒롢긌긞긏
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;trigger2 = stateno = 430
;trigger2 = movecontact = 1
trigger2 = stateno = 100
trigger3 = stateno = 222


;---------------------------------------------------------------------------
;Crouching middle Kick
;궢귗궕귒롢긌긞긏
[State -1, Crouching middle Kick]
type = ChangeState
value = 435
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact = 1
trigger3 = stateno = 100
trigger4 = stateno = 222

;---------------------------------------------------------------------------
;Crouching Strong Kick
;궢귗궕귒떗긌긞긏
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact = 1
trigger3 = stateno = 435
trigger3 = movecontact = 1
trigger4 = stateno = 100
trigger5 = stateno = 222

;---------------------------------------------------------------------------
;Jump Light Punch
;뗴뭷롢긬깛?
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 100

;---------------------------------------------------------------------------
;Jump middle Punch
;뗴뭷롢긬깛?
[State -1, Jump middle Punch]
type = ChangeState
value = 605
triggerall = command = "y"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 100

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "z"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 605
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 100


;========================================================================
;foward Jump Light Punch
;뗴뭷롢긬깛?
[State -1, Jump Light Punch]
type = ChangeState
value = 650
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 100


;---------------------------------------------------------------------------
;foward Jump middle Punch
;뗴뭷롢긬깛?
[State -1, Jump middle Punch]
type = ChangeState
value = 655
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 650
trigger2 = movecontact = 1
trigger3 = stateno = 100

;---------------------------------------------------------------------------
;foward Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 660
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 650
trigger2 = movecontact = 1
trigger3 = stateno = 655
trigger3 = movecontact = 1
trigger4 = stateno = 100






;========================================================================

;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 100

;---------------------------------------------------------------------------
;Jump middle Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 635
triggerall = command = "b"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = movecontact = 1
trigger3 = stateno = 100

;---------------------------------------------------------------------------
;Jump Strong Kick
;뗴뭷떗긌긞긏
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "c"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = movecontact = 1
trigger3 = stateno = 635
trigger3 = movecontact = 1
trigger4 = stateno = 100

=======================================================================
;foward Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 670
triggerall = command = "a"
;triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 100

;---------------------------------------------------------------------------
;foward Jump middle Kick
[State -1, Jump middle Kick]
type = ChangeState
value = 675
triggerall = command = "b"
;triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 670
trigger2 = movecontact = 1
trigger3 = stateno = 100

;---------------------------------------------------------------------------
;foward Jump Strong Kick
;뗴뭷떗긌긞긏
[State -1, Jump Strong Kick]
type = ChangeState
value = 680
triggerall = command = "c"
;triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 670
trigger2 = movecontact = 1
trigger2 = stateno = 675
trigger2 = movecontact = 1
trigger3 = stateno = 100
