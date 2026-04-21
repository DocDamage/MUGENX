;-| Super Motions |------------------------------------------------------

[Command];단공광아검 약
name = "1000_a"
command = ~D, DF, F,D.DF,F, a
time = 45

[Command];단공광아검 중
name = "1000_b"
command = ~D, DF, F,D.DF,F, b
time = 45

[Command];단공광아검 강
name = "1000_c"
command = ~D, DF, F,D.DF,F, c
time = 45


;-| Special Motions |------------------------------------------------------

[Command]
name = "rush_x"
command = ~D, DB, B, x
time = 25

[Command]
name = "rush_y"
command = ~D, DB, B, y
time = 25

[Command]
name = "rush_z"
command = ~D, DB, B, z
time = 25



[Command]
name = "qcf_x"
command = ~D, DF, F, x
time = 25

[Command]
name = "qcf_y"
command = ~D, DF, F, y
time = 25

[Command]
name = "qcf_z"
command = ~D, DF, F, z
time = 25



[Command]
name = "x_x"
command = ~F, DF, F, x
time = 25

[Command]
name = "x_y"
command = ~F, DF, F, y
time = 25


[Command]
name = "x_z"
command = ~F, DF, F, z
time = 25




[Command]
name = "hiryu_b"
command = ~F, D, B, b
time = 45


[Command]
name = "hiryu_c"
command = ~F, D, B, c
time = 45



;-------------------------------------------------


[Command]
name = "ki_a"
command = ~F, DF, F, a
time = 25


[Command]
name = "ki_b"
command = ~F, DF, F, b
time = 25


[Command]
name = "ki_c"
command = ~F, DF, F, c
time = 25

;--------------------------------------------------
;throw

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
name = "DU"
command = D, U
time = 10

[Command]
name = "DUF"
command = D, UF
time = 10

[Command]
name = "DUB"
command = D, UB
time = 10



;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "abc"
command = a+b+c
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "yz"
command = y+z
time = 1


[Command]
name = "ab"
command = a+b
time = 1


[Command]
name = "bc"
command = b+c
time = 1

[Command]
name = "d_xy"
command = /$D,x+y
time = 1

[Command]
name = "d_xy"
command = /$D,z+y
time = 1


[Command]
name = "d_ab"
command = /$D,a+b
time = 1

[Command]
name = "d_ab"
command = /$D,b+c
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
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "jump"
command = /F
time = 1

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
;----------------------------------------------------------------
;-| Super Jump |------------------------------------------------------------------
;--------------------------------------
;------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = changestate
value = 41
triggerall = var(5) = 0
triggerall = statetype = S
trigger1 = command = "DU" || command = "abc" || command = "DUF" || command = "DUB"
trigger1 = ctrl



;---------------------------------------------------------------


;천열각 약
[State -1]
type = ChangeState
value = 2000;180
trigger1 = command = "1000_a"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype != A
trigger1 = ctrl = 1

천열각 중
[State -1]
type = ChangeState
value = 2000;180
trigger1 = command = "1000_b"
triggerall = power >= 1000 ;Level 2
trigger1 = statetype != A
trigger1 = ctrl = 1

;천열각 강
[State -1]
type = ChangeState
value = 2000;180
trigger1 = command = "1000_c"
triggerall = power >= 1000 ;Level 3
trigger1 = statetype != A
trigger1 = ctrl = 1



;======================================================================-
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



;----------------------------------------------------------------------------
;무릎 약
[State -1]
type = ChangeState
value = 4300
triggerall = command = "ki_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;무릎 중
[State -1]
type = ChangeState
value = 4400
triggerall = command = "ki_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl



;무릎 중
[State -1]
type = ChangeState
value = 4500
triggerall = command = "ki_c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl




;===========================================================================

;승룡 약
[State -1]
type = ChangeState
value = 1300
triggerall = command = "x_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;승룡 중
[State -1]
type = ChangeState
value = 1310
triggerall = command = "x_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;승룡 강
[State -1]
type = ChangeState
value = 1320
triggerall = command = "x_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl



;---------------------------------------






;rush_x
[State -1]
type = ChangeState
value = 1000
triggerall = command = "rush_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl



;rush_y
[State -1]
type = ChangeState
value = 1010
triggerall = command = "rush_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;rush_z
[State -1]
type = ChangeState
value = 1020
triggerall = command = "rush_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl




;-------------------------------------------------------------------------
;비룡승천파
[State -1]
type = ChangeState
value = 1400
triggerall = p2statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = p2bodydist X <= 10
trigger1 = p2movetype != H
trigger1 = command = "hiryu_b"

[State -1]
type = ChangeState
value = 1400
triggerall = p2statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = p2bodydist X <= 10
trigger1 = p2movetype != H
trigger1 = command = "hiryu_c"


;===========================================================================

;약장풍
[State -1]
type = ChangeState
value = 1200
triggerall = command = "qcf_x"
trigger1 = statetype = S
trigger1 = ctrl



;중장풍
[State -1]
type = ChangeState
value = 1210
triggerall = command = "qcf_y"
trigger1 = statetype = S
trigger1 = ctrl


;강장풍
[State -1]
type = ChangeState
value = 1220
triggerall = command = "qcf_z"
trigger1 = statetype = S
trigger1 = ctrl




;----------------------------------------------------
; Throw2
[State -1]
type = ChangeState
value = 820
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = p2bodydist X <= 20
trigger1 = p2statetype = A
trigger1 = p2movetype != H
trigger1 = command = "fwd_y"
trigger2 = statetype = A
trigger2 = ctrl = 1
trigger2 = p2bodydist X <= 20
trigger2 = p2statetype = A
trigger2 = p2movetype != H
trigger2 = command = "back_y"

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
value = 800
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



;--------------------------------------------------

; Head Stomp
[State -1]
type = ChangeState
value = 1500
trigger1 = command = "holddown"
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;--------------------------------------------------


;---------------------------------------------------------------------------


;손 특수기1
[State -1, 특수기]
type = ChangeState
value = 761
triggerall = command = "xy"
triggerall = command != "holddown"
triggerall = p2bodydist x >= 20
trigger1 = statetype = S
trigger1 = ctrl

;근접 손 특수기 
[State -1, 특수기]
type = ChangeState
value = 762
triggerall = command = "xy"
triggerall = command != "holddown"
triggerall = p2bodydist x < 20
trigger1 = statetype = S
trigger1 = ctrl


;손 특수기2
[State -1, 특수기]
type = ChangeState
value = 770
triggerall = command = "yz"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;------------------------------------------------------------------
;발 특수기1
;Stand Strong Punch
[State -1, 특수기]
type = ChangeState
value = 772
triggerall = command = "ab"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;발 특수기2
;Stand Strong Punch
[State -1, 특수기]
type = ChangeState
value = 775
triggerall = command = "bc"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;앉아 손 특수기
[State -1, 특수기]
type = ChangeState
value = 780
triggerall = command = "d_xy"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;앉아 발 특수기
;Stand Strong Punch
[State -1, 특수기]
type = ChangeState
value = 790
triggerall = command = "d_ab"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl






;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x >= 20
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand middle Punch
[State -1, Stand middle Punch]
type = ChangeState
value = 205
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x >= 20
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = p2bodydist x >= 20
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x >= 20
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand middle Kick
[State -1, Stand middle Kick]
type = ChangeState
value = 235
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x >= 20
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = p2bodydist x >= 30
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger4 = stateno = 430
trigger4 = movecontact = 1


;---------------------------------------------------------------------------
;Crouching middle Punch
[State -1, Crouching middle Punch]
type = ChangeState
value = 405
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 430
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 405
trigger3 = movecontact = 1
trigger4 = stateno = 435
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 430
trigger3 = movecontact = 1



;---------------------------------------------------------------------------
;Crouching middle Kick
[State -1, Crouching middle Kick]
type = ChangeState
value = 435
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Strong Kick
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
trigger4 = stateno = 410
trigger4 = movecontact = 1
trigger5 = stateno = 405
trigger5 = movecontact = 1



;---------------------------------------------------------------------------
;ex Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 651
triggerall = command = "xy"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = movecontact = 1
trigger3 = stateno = 605
trigger3 = movecontact = 1
trigger4 = stateno = 635
trigger4 = movecontact = 1


;ex Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 651
triggerall = command = "yz"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = movecontact = 1
trigger3 = stateno = 605
trigger3 = movecontact = 1
trigger4 = stateno = 635
trigger4 = movecontact = 1


;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Jump middle Punch
[State -1, Jump middle Punch]
type = ChangeState
value = 605
triggerall = command = "y"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 630
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "z"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = movecontact = 1
trigger3 = stateno = 605
trigger3 = movecontact = 1
trigger4 = stateno = 635
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;ex Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 646
triggerall = command = "ab"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = movecontact = 1
trigger3= stateno = 635
trigger3= movecontact = 1
trigger4 = stateno = 640
trigger4 = movecontact = 1


;ex Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 646
triggerall = command = "bc"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = movecontact = 1
trigger3= stateno = 635
trigger3= movecontact = 1
trigger4 = stateno = 640
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Jump middle Kick
[State -1, Jump middle Kick]
type = ChangeState
value = 635
triggerall = command = "b"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 630
trigger3 = movecontact = 1



;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "c"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 630
trigger3 = movecontact = 1
trigger4 = stateno = 605
trigger4 = movecontact = 1
trigger5 = stateno = 635
trigger5 = movecontact = 1



;=======================================================



; ex Hard Punch (Air/Moving)
[State -1]
type = ChangeState
value = 658
triggerall = command = "xy"
;triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 652
trigger2 = movecontact = 1
trigger3= stateno = 650
trigger3= movecontact = 1
trigger4= stateno = 665
trigger4= movecontact = 1

; ex Hard Punch (Air/Moving)
[State -1]
type = ChangeState
value = 658
triggerall = command = "yz"
;triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 652
trigger2 = movecontact = 1
trigger3= stateno = 650
trigger3= movecontact = 1
trigger4= stateno = 665
trigger4= movecontact = 1


;-------------------------------------------------------------
; Light Punch (Air/Moving)
[State -1]
type = ChangeState
value = 650
triggerall = command = "x"
;triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 660
trigger2 = movecontact = 1


; Medium Punch (Air/Moving)
[State -1]
type = ChangeState
value = 652
triggerall = command = "y"
;triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 650
trigger2 = movecontact = 1
trigger3 =stateno = 660
trigger3 = movecontact = 1




; Hard Punch (Air/Moving)
[State -1]
type = ChangeState
value = 655
triggerall = command = "z"
;triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 652
trigger2 = movecontact = 1
trigger3= stateno = 665
trigger3= movecontact = 1
trigger4= stateno = 660
trigger4= movecontact = 1


;--------------------------------------------------------------
; ex Hard Kick (Air/Moving)
[State -1]
type = ChangeState
value = 645
triggerall = command = "ab"
;triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 660
trigger2 = movecontact = 1
trigger3= stateno = 665
trigger3= movecontact = 1
trigger4 = stateno = 670
trigger4 = movecontact = 1


; ex Hard Kick (Air/Moving)
[State -1]
type = ChangeState
value = 645
triggerall = command = "bc"
;triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 660
trigger2 = movecontact = 1
trigger3= stateno = 665
trigger3= movecontact = 1
trigger4 = stateno = 670
trigger4 = movecontact = 1

;------------------------------------------------------------
; Light Kick (Air/Moving)
[State -1]
type = ChangeState
value = 660
triggerall = command = "a"
;triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 650
trigger2 = movecontact = 1



;-------------------------------------------------------------
; Medium Kick (Air/Moving)
[State -1]
type = ChangeState
value = 665
triggerall = command = "b"
;triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 660
trigger2 = movecontact = 1
trigger3= stateno = 650
trigger3= movecontact = 1



;--------------------------------------------------------------
; Hard Kick (Air/Moving)
[State -1]
type = ChangeState
value = 670
triggerall = command = "c"
;triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 660
trigger2 = movecontact = 1
trigger3= stateno = 650
trigger3= movecontact = 1
trigger4 = stateno = 665
trigger4 = movecontact = 1
trigger5= stateno = 652
trigger5= movecontact = 1



;---------------------------------------------------------------------------
;near Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 700
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 730
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;near middle Punch
[State -1, Stand middle Punch]
type = ChangeState
value = 710
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 700
trigger2 = movecontact = 1
trigger3 = stateno = 730
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;near Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 720
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = p2bodydist x < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 700
trigger2 = movecontact = 1
trigger3 = stateno = 710
trigger3 = movecontact = 1
trigger4 = stateno = 740
trigger4 = movecontact = 1
trigger5 = stateno = 730
trigger5 = movecontact = 1

;======================================================================

;NEAR Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 730
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 700
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;NEAR middle Kick
[State -1, Stand middle Kick]
type = ChangeState
value = 740
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 730
trigger2 = movecontact = 1
trigger3 = stateno = 700
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;NEAR Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 750
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = p2bodydist x < 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 730
trigger2 = movecontact = 1
trigger3 = stateno = 740
trigger3 = movecontact = 1
trigger4 = stateno = 710
trigger4 = movecontact = 1
trigger5 = stateno = 700
trigger5 = movecontact = 1


