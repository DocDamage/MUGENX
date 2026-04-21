
[Command]
name = "catch"     ;Required (do not remove)
command = ~D, B, b
time = 30


[Command]
name = "mamahaha_a"     ;Required (do not remove)
command = ~D, F, a
time = 15

[Command]
name = "mamahaha_b"     ;Required (do not remove)
command = ~D, F, b
time = 15

[Command]
name = "mamahaha_1"     ;Required (do not remove)
command = ~DF, D, B, x
time = 10

[Command]
name = "mamahaha_2"     ;Required (do not remove)
command = ~DF, D, B, y
time = 10

[Command]
name = "kamui_1"     ;Required (do not remove)
command = ~B, D, DB, x
time = 15

[Command]
name = "kamui_2"     ;Required (do not remove)
command = ~B, D, DB, y
time = 15

[Command]
name = "kamui_mutsu_x"     ;Required (do not remove)
command = ~D, B, x
time = 15

[Command]
name = "kamui_mutsu_y"     ;Required (do not remove)
command = ~D, B, y
time = 15

[Command]
name = "rera_1"     ;Required (do not remove)
command = ~D, F, x
;command = ~F, D, DF, x
time = 15

[Command]
name = "rera_2"     ;Required (do not remove)
command = ~D, F, y
;command = ~F, D, DF, y
time = 15

[Command]
name = "annu_1"     ;Required (do not remove)
;command = ~D, F, x
command = ~B, D, x
time = 10

[Command]
name = "annu_2"     ;Required (do not remove)
;command = ~D, F, y
command = ~B, D, y
time = 10

[Command]
name = "heal_1"     ;Required (do not remove)
command = ~D, F, D, F, a
time = 20

[Command]
name = "heal_2"     ;Required (do not remove)
command = ~D, F, D, F, b
time = 20

[Command]
name = "mamahaha_strike_x"     ;Required (do not remove)
command = ~DF,B,DF,B, x
time = 50

[Command]
name = "mamahaha_strike_y"     ;Required (do not remove)
command = ~DF,B,DF,B, y
time = 50

[Command]
name = "strike"     ;Required (do not remove)
command = ~D, B, D, B, a
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "groggyrecover"
command = F,B
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F, a
time = 1

[Command]
name = "fwd_b"
command = /F, b
time = 1

[Command]
name = "fwd_x"
command = /F, x
time = 1

[Command]
name = "fwd_y"
command = /F, y
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
name = "dfwd_y"
Command = /DF, y
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

[Command]
name = "charge1"
command = /b
time = 1

[Command]
name = "charge2"
command = /y
time = 1

[Statedef -1]
;===========================================================================

;마마하하 특공
[State -1, Mamahaha]
type = ChangeState
value = 1900
triggerall = power >= 1000
triggerall = command = "mamahaha_strike_x"
triggerall = var(22) = 0
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 205 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 215 && movecontact = 1
trigger6 = stateno = 220 && movecontact = 1
trigger7 = stateno = 225 && movecontact = 1 && time < 12
trigger8 = stateno = 400 && movecontact = 1
trigger9 = stateno = 410 && movecontact = 1
trigger10 = stateno = 420 && movecontact = 1
trigger11 = stateno = 430 && movecontact = 1
trigger12 = stateno = 2008 && time = [0,8]
trigger13 = stateno = 2008 && time = [9,12]
trigger14 = stateno = 2009
trigger15 = stateno = 1250 && movecontact = 1

;마마하하 특공
[State -1, Mamahaha]
type = ChangeState
value = 1902
triggerall = power >= 1000
triggerall = command = "mamahaha_strike_y"
triggerall = var(22) = 0
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 205 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 215 && movecontact = 1
trigger6 = stateno = 220 && movecontact = 1
trigger7 = stateno = 225 && movecontact = 1 && time < 12
trigger8 = stateno = 400 && movecontact = 1
trigger9 = stateno = 410 && movecontact = 1
trigger10 = stateno = 420 && movecontact = 1
trigger11 = stateno = 430 && movecontact = 1
trigger12 = stateno = 2008 && time = [0,8]
trigger13 = stateno = 2008 && time = [9,12]
trigger14 = stateno = 2009
trigger15 = stateno = 1250 && movecontact = 1

;Heal
[State -1, Heal]
type = ChangeState
value = 1700
triggerall = power >= 1000
triggerall = command = "heal_1" || command = "heal_2"
trigger1 = StateType = S && Ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 205 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 215 && movecontact = 1
trigger6 = stateno = 220 && movecontact = 1
trigger7 = stateno = 225 && movecontact = 1 && time < 12
trigger8 = stateno = 400 && movecontact = 1
trigger9 = stateno = 410 && movecontact = 1
trigger10 = stateno = 420 && movecontact = 1
trigger11 = stateno = 430 && movecontact = 1

;난무
[State -1, Mamahaha]
type = ChangeState
value = 2000
triggerall = power >= 1000
triggerall = command = "strike"
triggerall = var(22) = 0
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 205 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 215 && movecontact = 1
trigger6 = stateno = 220 && movecontact = 1
trigger7 = stateno = 225 && movecontact = 1 && time < 12
trigger8 = stateno = 400 && movecontact = 1
trigger9 = stateno = 410 && movecontact = 1
trigger10 = stateno = 420 && movecontact = 1
trigger11 = stateno = 430 && movecontact = 1

;마마하하 잡은후 난무
[State -1, Mamahaha]
type = ChangeState
value = 2013
triggerall = power >= 1000
triggerall = command = "strike"
triggerall = var(22) = 0
triggerall = statetype = A
trigger1 = stateno = 1503
trigger1 = ctrl = 1
trigger2 = stateno = 1520
trigger2 = movecontact = 1
trigger3 = stateno = 1510
trigger3 = movecontact = 1
trigger4 = stateno = 1530
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
[State -1, Roll]
type = ChangeState
value = 500
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "a" && command = "x"
trigger2 = command = "z"

;---------------------------------------------------------------------------

;기 저축
[State -1]
type = ChangeState
value = 3100
triggerall = Power < 3000 && (command = "charge1" && command = "charge2")
trigger1 = StateType = S && Ctrl


;마마하하 매달려서 카무이 무쯔베
[State -1, Kamui Mutsbae]
type = ChangeState
value = 1600
triggerall = command = "kamui_mutsu_x" || command = "kamui_mutsu_y"
triggerall = statetype = A
trigger1 = stateno = 1503
trigger1 = ctrl = 1
trigger2 = stateno = 1520
trigger2 = movecontact = 1
trigger3 = stateno = 1510
trigger3 = movecontact = 1
trigger4 = stateno = 1530
trigger4 = movecontact = 1

;마마하하 매달려서 새보내기
[State -1, Jump middle Slash]
type = ChangeState
value = 1610
triggerall = command = "rera_1"
triggerall = statetype = A
trigger1 = stateno = 1503
trigger1 = ctrl = 1
trigger2 = stateno = 1520
trigger2 = movecontact = 1
trigger3 = stateno = 1510
trigger3 = movecontact = 1
trigger4 = stateno = 1530
trigger4 = movecontact = 1

;마마하하 매달려서 새보내기
[State -1, Jump middle Slash]
type = ChangeState
value = 1611
triggerall = command = "rera_2"
triggerall = statetype = A
trigger1 = stateno = 1503
trigger1 = ctrl = 1
trigger2 = stateno = 1520
trigger2 = movecontact = 1
trigger3 = stateno = 1510
trigger3 = movecontact = 1
trigger4 = stateno = 1530
trigger4 = movecontact = 1

;마마하하 잡기
[State -1, catch]
type = ChangeState
value = 1500
triggerall = command = "catch"
triggerall = var(22) = 0
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 205 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 215 && movecontact = 1
trigger6 = stateno = 220 && movecontact = 1
trigger7 = stateno = 225 && movecontact = 1 && time < 12
trigger8 = stateno = 400 && movecontact = 1
trigger9 = stateno = 410 && movecontact = 1
trigger10 = stateno = 420 && movecontact = 1
trigger11 = stateno = 430 && movecontact = 1

;마마하하 발톱찍기(약)
[State -1, Mamahaha]
type = ChangeState
value = 1800
triggerall = command = "mamahaha_a"
triggerall = var(22) = 0
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 205 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 215 && movecontact = 1
trigger6 = stateno = 220 && movecontact = 1
trigger7 = stateno = 225 && movecontact = 1 && time < 12
trigger8 = stateno = 400 && movecontact = 1
trigger9 = stateno = 410 && movecontact = 1
trigger10 = stateno = 420 && movecontact = 1
trigger11 = stateno = 430 && movecontact = 1

;마마하하 발톱찍기(강)
[State -1, Mamahaha]
type = ChangeState
value = 1810
triggerall = command = "mamahaha_b"
triggerall = var(22) = 0
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 205 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 215 && movecontact = 1
trigger6 = stateno = 220 && movecontact = 1
trigger7 = stateno = 225 && movecontact = 1 && time < 12
trigger8 = stateno = 400 && movecontact = 1
trigger9 = stateno = 410 && movecontact = 1
trigger10 = stateno = 420 && movecontact = 1
trigger11 = stateno = 430 && movecontact = 1

;마마하하 돌진(약)
[State -1, Mamahaha]
type = ChangeState
value = 1300
triggerall = command = "mamahaha_1"
triggerall = var(22) = 0
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 205 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 215 && movecontact = 1
trigger6 = stateno = 220 && movecontact = 1
trigger7 = stateno = 225 && movecontact = 1 && time < 12
trigger8 = stateno = 400 && movecontact = 1
trigger9 = stateno = 410 && movecontact = 1
trigger10 = stateno = 420 && movecontact = 1
trigger11 = stateno = 430 && movecontact = 1

;마마하하 돌진(강)
[State -1, Mamahaha]
type = ChangeState
value = 1310
triggerall = command = "mamahaha_2"
triggerall = var(22) = 0
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 205 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 215 && movecontact = 1
trigger6 = stateno = 220 && movecontact = 1
trigger7 = stateno = 225 && movecontact = 1 && time < 12
trigger8 = stateno = 400 && movecontact = 1
trigger9 = stateno = 410 && movecontact = 1
trigger10 = stateno = 420 && movecontact = 1
trigger11 = stateno = 430 && movecontact = 1

;카무이 림세(약)
[State -1, Kamui Rimse]
type = ChangeState
value = 1200
triggerall = command = "kamui_1"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 205 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 215 && movecontact = 1
trigger6 = stateno = 220 && movecontact = 1
trigger7 = stateno = 225 && movecontact = 1 && time < 12
trigger8 = stateno = 400 && movecontact = 1
trigger9 = stateno = 410 && movecontact = 1
trigger10 = stateno = 420 && movecontact = 1
trigger11 = stateno = 430 && movecontact = 1

;카무이 림세(강)
[State -1, Kamui Rimse2]
type = ChangeState
value = 1210
triggerall = command = "kamui_2"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 205 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 215 && movecontact = 1
trigger6 = stateno = 220 && movecontact = 1
trigger7 = stateno = 225 && movecontact = 1 && time < 12
trigger8 = stateno = 400 && movecontact = 1
trigger9 = stateno = 410 && movecontact = 1
trigger10 = stateno = 420 && movecontact = 1
trigger11 = stateno = 430 && movecontact = 1

;레라무쯔베 약
[State -1, Rera Mutsbae]
type = ChangeState
value = 1100
triggerall = command = "rera_1"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 205 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 215 && movecontact = 1
trigger6 = stateno = 220 && movecontact = 1
trigger7 = stateno = 225 && movecontact = 1 && time < 12
trigger8 = stateno = 400 && movecontact = 1
trigger9 = stateno = 410 && movecontact = 1
trigger10 = stateno = 420 && movecontact = 1
trigger11 = stateno = 430 && movecontact = 1

;레라무쯔베 강
[State -1, Rera Mutsbae]
type = ChangeState
value = 1110
triggerall = command = "rera_2"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 205 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 215 && movecontact = 1
trigger6 = stateno = 220 && movecontact = 1
trigger7 = stateno = 225 && movecontact = 1 && time < 12
trigger8 = stateno = 400 && movecontact = 1
trigger9 = stateno = 410 && movecontact = 1
trigger10 = stateno = 420 && movecontact = 1
trigger11 = stateno = 430 && movecontact = 1

;안누무쯔베 약
[State -1, Annu Mutsbae]
type = ChangeState
value = 1000
triggerall = command = "annu_1"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 205 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 215 && movecontact = 1
trigger6 = stateno = 220 && movecontact = 1
trigger7 = stateno = 225 && movecontact = 1 && time < 12
trigger8 = stateno = 400 && movecontact = 1
trigger9 = stateno = 410 && movecontact = 1
trigger10 = stateno = 420 && movecontact = 1
trigger11 = stateno = 430 && movecontact = 1

;안누무쯔베 강
[State -1, Annu Mutsbae1]
type = ChangeState
value = 1010
triggerall = command = "annu_2"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 205 && movecontact = 1
trigger4 = stateno = 210 && movecontact = 1
trigger5 = stateno = 215 && movecontact = 1
trigger6 = stateno = 220 && movecontact = 1
trigger7 = stateno = 225 && movecontact = 1 && time < 12
trigger8 = stateno = 400 && movecontact = 1
trigger9 = stateno = 410 && movecontact = 1
trigger10 = stateno = 420 && movecontact = 1
trigger11 = stateno = 430 && movecontact = 1

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------

; 잡기 (펀치)
[State -1]
type = ChangeState
value = 4000
triggerall = statetype = S && Ctrl
triggerall = stateno != 100
triggerall = p2bodydist x < 10 && p2movetype != H && p2statetype != A
trigger1 = command = "fwd_y"

; 잡기 (킥)
[State -1]
type = ChangeState
value = 4100
triggerall = statetype = S && Ctrl
triggerall = stateno != 100
triggerall = p2bodydist x < 10 && p2movetype != H && p2statetype != A
trigger1 = command = "fwd_b"

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Slash close
[State -1, Stand Light Slash]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x < 10
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand Light Slash
[State -1, Stand Light Slash]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand Light kick close 
[State -1, Stand Light Slash]
type = ChangeState
value = 215
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x < 10
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand Hard Slash close
[State -1, Hard Slash]
type = ChangeState
value = 225
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x < 20
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand Hard Slash
[State -1, Hard Slash]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Standing Strong Kick close
[State -1, Standing Strong Kick]
type = ChangeState
value = 235
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x < 20
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Standing Hard Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;도발
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Slash
[State -1, Crouching Light Slash]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Crouching Strong Forward Punch
[State -1, Crouching Forward Punch]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown" && (command ="holdfwd" || command ="holdback")
triggerall = StateType != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouching Hard Slash
[State -1, Crouching Hard Slash]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;마마하하 매달려서 약베기
[State -1, Jump Light Slash]
type = ChangeState
value = 1510
triggerall = command = "x"
triggerall = statetype = A
triggerall = stateno = 1503
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;롤링베기
[State -1, Jump Roll Slash]
type = ChangeState
value = 1540
triggerall = (command = "y" && command = "b")|| command ="c"
triggerall = statetype = A
trigger1 = stateno = 1503
trigger1 = ctrl = 1

;마마하하 매달려서 강베기
[State -1, drop]
type = ChangeState
value = 1530
triggerall = command = "y"
triggerall = statetype = A
trigger1 = stateno = 1503
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;마마하하 매달려서 킥
[State -1, Jump middle Slash]
type = ChangeState
value = 1520
triggerall = command = "a"
triggerall = statetype = A
trigger1 = stateno = 1503
trigger1 = ctrl = 1


; 손놓기
[State -1, Jump middle Slash]
type = ChangeState
value = 1550
triggerall = command = "b"
triggerall = statetype = A
trigger1 = stateno = 1503
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump Light punch
[State -1, Jump Light punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump Light kick
[State -1, Jump Light kick]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump Hard punch
[State -1, Jump Hard punch]
type = ChangeState
value = 620
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump Hard Kick
[State -1, Jump Hard Kick]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
