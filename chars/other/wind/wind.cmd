[command]
name = "holywind"
command = ~D, DF, F, D, DF, F, c
time = 30

[command]
name = "holywind"
command = ~D, DF, F, D, DF, F, x+y
time = 30

[Command]
name = "yamimax"
command = ~D, B, D, B, x+y
time = 30

[Command]
name = "yami"
command = ~D, B, D, B, x
time = 30

[Command]
name = "yami"
command = ~D, B, D, B, y
time = 30

[Command]
name = "yawotomeMAX" 
command = ~D, B, D, F, x+y
time = 30

[Command]
name = "yawotome" 
command = ~D, B, D, F, x
time = 30

[Command]
name = "yawotome" 
command = ~D, B, D, F, y
time = 30

;***************************************************

[Command]
name = "wanx"
command = ~F, D, DF, x
[Command]
name = "wany"
command = ~F, D, DF, y
[Command]
name = "kaze0"
command = ~B, D, F, x
time = 15
[Command]
name = "kaze1"
command = ~B, D, F, a
time = 15
[Command]
name = "kaze2"
command = ~B, D, F, y
time = 15
[Command]
name = "kaze3"
command = ~B, D, F, b
time = 15
[Command]
name = "aoi"
command = ~D, DB, B, x
[Command]
name = "aoi"
command = ~D, DB, B, y
[Command]
name = "warpa"
command = ~D, DB, B, a
[Command]
name = "warpb"
command = ~D, DB, B, b
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "hop"
command = D,D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "charge";Required (do not remove)
command = y+a
time = 10

[Command]
name = "recovery";Required (do not remove)
command = x+y
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

[Command]
name = "dodge"
command = x+a
time = 1

[Command]
name = "ko"
command = y+b
time = 1
;-| Single Button |---------------------------------------------------------
[Command]
name = "y"
command = y
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
name = "a"
command = a
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

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.

[Statedef -1]

[State -1]
type = ChangeState
value = 9000
triggerall = command = "holywind"
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = stateno = 210
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 221&& animelem = 4, <= 4
trigger3 = movecontact
trigger4 = stateno = 231
trigger4 = movecontact
trigger5 = stateno = 605
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 411
trigger7 = movecontact
'
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 1700
triggerall = command = "yawotomeMAX" ;8max
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = stateno = 210
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 221&& animelem = 4, <= 4
trigger3 = movecontact
trigger4 = stateno = 231
trigger4 = movecontact
trigger5 = stateno = 605
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 411
trigger7 = movecontact


[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 1030
triggerall = power >= 1000
triggerall = command = "yawotome" ;8
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = stateno = 210
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 221&& animelem = 4, <= 4
trigger3 = movecontact
trigger4 = stateno = 231
trigger4 = movecontact
trigger5 = stateno = 605
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 411
trigger7 = movecontact


[State -1, Smash Kung Fu Upper];黑暗哭泣MAX
type = ChangeState
value = 1500
triggerall = command = "yamimax"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = stateno = 210
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 221&& animelem = 4, <= 4
trigger3 = movecontact
trigger4 = stateno = 231
trigger4 = movecontact
trigger5 = stateno = 605
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 411
trigger7 = movecontact

[State -1, Smash Kung Fu Upper];黑暗哭泣
type = ChangeState
value = 1400
triggerall = command = "yami"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = stateno = 210
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 221&& animelem = 4, <= 4
trigger3 = movecontact
trigger4 = stateno = 231
trigger4 = movecontact
trigger5 = stateno = 605
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 411
trigger7 = movecontact

;===========================================================================
[State -1, Strong Kung Fu Palm];传送
type = ChangeState
value = 1410
triggerall = command = "warpa"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = stateno = 210
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 221&& animelem = 4, <= 4
trigger3 = movecontact
trigger4 = stateno = 231
trigger4 = movecontact
trigger5 = stateno = 605
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 411
trigger7 = movecontact

[State -1, Strong Kung Fu Palm];传送
type = ChangeState
value = 1420
triggerall = command = "warpb"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = stateno = 210
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 221&& animelem = 4, <= 4
trigger3 = movecontact
trigger4 = stateno = 231
trigger4 = movecontact
trigger5 = stateno = 605
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 411
trigger7 = movecontact


[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1600
triggerall = command = "wanx"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = stateno = 210
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 221&& animelem = 4, <= 4
trigger3 = movecontact
trigger4 = stateno = 231
trigger4 = movecontact
trigger5 = stateno = 605
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 411
trigger7 = movecontact


[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1601
triggerall = command = "wany"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = stateno = 210
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 221&& animelem = 4, <= 4
trigger3 = movecontact
trigger4 = stateno = 231
trigger4 = movecontact
trigger5 = stateno = 605
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 411
trigger7 = movecontact


[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1060
triggerall = command = "aoi"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = stateno = 210
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 221&& animelem = 4, <= 4
trigger3 = movecontact
trigger4 = stateno = 231
trigger4 = movecontact
trigger5 = stateno = 605
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 411
trigger7 = movecontact

[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1061
triggerall = command = "y" || command = "x"
trigger1 = stateno = 1060
trigger1 = animelem = 6, >= 1

[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1062
triggerall = command = "y" || command = "x"
trigger1 = animelem = 5, >= 1
trigger1 = stateno = 1061

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "kaze0"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = stateno = 210
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 221&& animelem = 4, <= 4
trigger3 = movecontact
trigger4 = stateno = 231
trigger4 = movecontact
trigger5 = stateno = 605
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 411
trigger7 = movecontact


[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1001
triggerall = command = "kaze1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = stateno = 210
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 221&& animelem = 4, <= 4
trigger3 = movecontact
trigger4 = stateno = 231
trigger4 = movecontact
trigger5 = stateno = 605
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 411
trigger7 = movecontact


[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1002
triggerall = command = "kaze2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = stateno = 210
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 221&& animelem = 4, <= 4
trigger3 = movecontact
trigger4 = stateno = 231
trigger4 = movecontact
trigger5 = stateno = 605
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 411
trigger7 = movecontact

[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1003
triggerall = command = "kaze3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = stateno = 210
trigger2 = movecontact
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 221&& animelem = 4, <= 4
trigger3 = movecontact
trigger4 = stateno = 231
trigger4 = movecontact
trigger5 = stateno = 605
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 411
trigger7 = movecontact

;C投掷
[State -1, Kung Fu Throw]
type = ChangeState
value = 810
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist x  < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist x  < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;D投掷
[State -1, Kung Fu Throw]
type = ChangeState
value = 815
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist x  < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist x  < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

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

;前回避
[State -1]
type = ChangeState
value = 900
triggerall = command = "dodge" ||  command = "z"
triggerall = command != "holdback"
trigger1 = statetype != A && (ctrl || stateno = 100)
trigger2 = (stateno = 150 || stateno = 151) && power >= 500

;后回避
[State -1]
type = ChangeState
value = 910
triggerall = command = "dodge" ||  command = "z"
triggerall = command = "holdback"
trigger1 = statetype != A && (ctrl || stateno = 100)
trigger2 = (stateno = 150 || stateno = 151) && power >= 500

;超重
[State -1, KO]
type = ChangeState
value = 250
triggerall = command = "ko" ||  command = "c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 150 || stateno = 151) && power >= 500

;跳超重
[State -1]
type = ChangeState
value = 255
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "ko"|| command = "c"

;---------------------------------------------------------------------------
;Standing A
[State -1, A-S]
type = ChangeState
value = 200
trigger1 = command = "x"
trigger1 = statetype = S
triggerall = ctrl
;-------------------------------------------------------------------
;Fw+A
[State -1, Command Attack 1]
type = ChangeState
value = 605
triggerall = (command = "a") && (command = "holdfwd")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA
;trigger2 = (stateno !=605)  (stateno = !1600) || (stateno != 1601) || (stateno != 250)
trigger2 = stateno !=605
trigger2 = movecontact
trigger2 = stateno !=1600
trigger2 = movecontact
trigger2 = stateno !=1601
trigger2 = movecontact
trigger2 = stateno !=250
trigger2 = movecontact



;---------------------------------------------------------------------------
;Standing B - Close
[State -1, A-S]
type = ChangeState
value = 210
trigger1 = command = "a"
trigger1 = statetype = S
trigger1 = P2BodyDist X <= 10
trigger1 = ctrl

;Standing B - Normal
[State -1, A-L]
type = ChangeState
value = 211
trigger1 = command = "a"
trigger1 = statetype = S
trigger1 = P2BodyDist X >= 10
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing C - Close
;[State -1, A-S]
;type = ChangeState
;value = 220
;trigger1 = command = "y"
;trigger1 = statetype = S
;trigger1 = P2BodyDist X <= 10
;trigger1 = ctrl

;近重P
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x  <= 10

;远重P
[State -1, A-S]
type = ChangeState
value = 221
trigger1 = command = "y"
trigger1 = statetype = S
trigger1 = P2BodyDist X >= 10
trigger1 = ctrl

;站立重K
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;蹲轻p
[State -1, Crouching Light Punch]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;蹲重p
[State -1, Crouching Strong Punch]
type = ChangeState
value = 411
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;蹲轻k
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;蹲重k
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;Jump 轻p
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X != 0

;垂直Jump 轻p
[State -1, Jump Light Punch]
type = ChangeState
value = 601
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0

;Jump 重p
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X != 0

;垂直Jump 重p
[State -1, Jump Strong Punch]
type = ChangeState
value = 611
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0

;Jump 轻k
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X != 0

;垂直Jump 轻k
[State -1, Jump Light Kick]
type = ChangeState
value = 631
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0

;Jump重K
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X != 0

;垂直Jump重K
[State -1, Jump Strong Kick]
type = ChangeState
value = 641
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0



;---------------------------------------------------------------------------
;s
[State -1, test]
type = ChangeState
value = 199
trigger1 = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Charge
[State -1, charge]
type = ChangeState
value = 196
trigger1 = command = "charge"
trigger1 = statetype = S
trigger1 = power != 3000
trigger1 = Var(1) != 1
trigger1 = ctrl

;---------------------------------------------------------------------------
;Tap Up
;[State -1, hop]
;type = ChangeState
;value = 191
;trigger1 = command = "hop"
;trigger1 = statetype = S
;trigger1 = ctrl
