; Kang CMD file.

;-| Super Motions |--------------------------------------------------------

[Command]
name = "k_spd_x"
command = ~F, DF, D, DB, B, D, DB, B, x
time = 35

[Command]
name = "k_spd_y"
command = ~F, DF, D, DB, B, D, DB, B, y
time = 35

[Command]
name = "screwpiledriver"
command = ~D,D, x+y
time = 10

[Command]
name = "bellyattack"
command = ~F, F, x+y
time = 10

[Command]
name = "stunner"
command = /DB, x+y
time = 5

[Command]
name = "powerbomb"
command = /DF, x+y
time = 5

[Command]
name = "piledriver"
command = /D, x+y
time = 5

[Command]
name = "break"
command = /U, x+y
time = 5

[Command]
name = "throw_1"
command = /F, x+y
time = 5

[Command]
name = "throw_2"
command = /B, x+y
time = 5

[Command]
name = "dropkick_a"
command = ~B, D, DB, a
time = 25

[Command]
name = "dropkick_b"
command = ~B, D, DB, b
time = 25

[Command]
name = "k_screw_x"
command = ~F, D, DF, x
time = 25

[Command]
name = "k_screw_y"
command = ~F, D, DF, y
time = 25

[Command]
name = "k_screw_a"
command = ~F, D, DF, a
time = 25

[Command]
name = "k_screw_b"
command = ~F, D, DF, b
time = 25

[Command]
name = "kangattack_a"
command = ~B, DB, D, DF, F, a
time = 25

[Command]
name = "kangattack_b"
command = ~B, DB, D, DF, F, b
time = 25

[Command]
name = "catch_xy"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "catch_ab"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "rollingfire_x"
command = ~D, DB, B, x
time = 20

[Command]
name = "rollingfire_y"
command = ~D, DB, B, y
time = 20

[Command]
name = "firebomb_x"
command = ~D, DF, F, x
time = 20

[Command]
name = "firebomb_y"
command = ~D, DF, F, y
time = 20

[Command]
name = "hand_x"
command = x, x, x
time = 20

[Command]
name = "hand_y"
command = y, y, y
time = 20

[Command]
name = "screw_xy"
command = x+y
time = 1

[Command]
name = "screw_ab"
command = a+b
time = 1

[Command]
name = "longjump"
command = D, $U
time = 18

;-| Special Motions |------------------------------------------------------


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
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "x+a"
command = x+a
time = 1

[Command]
name = "y+b"
command = y+b
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

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Kang Screw Piledriver 
[State -1, Throw]
type = ChangeState
value = 2400
triggerall = command = "k_spd_x"
trigger1 = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
;trigger1 = p2movetype != H
trigger2 = movehit = 1 && StateNo = [250,280]
trigger3 = movehit = 1 && StateNo = [400,420]
trigger4 = movehit = 1 && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Kang Screw Piledriver 
[State -1, Throw]
type = ChangeState
value = 2450
triggerall = command = "k_spd_y"
trigger1 = statetype != A
triggerall = power >= 2000
trigger1 = ctrl
;trigger1 = p2movetype != H
trigger2 = movehit = 1 && StateNo = [250,280]
trigger3 = movehit = 1 && StateNo = [400,420]
trigger4 = movehit = 1 && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Throw Catch 
; 잡기
[State -1, Throw]
type = ChangeState
value = 900
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2stateno != 915
triggerall = p2bodydist X <= 40
triggerall = command = "catch_xy" || command = "catch_ab"
trigger1 = ctrl
;trigger2 = movehit = 1 && StateNo = [250,280]
;trigger3 = movehit = 1 && StateNo = [400,420]
;trigger4 = movehit = 1 && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Throw Catch Run
; 달려가 잡기
[State -1, Throw]
type = ChangeState
value = 950
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2stateno != 915
triggerall = p2bodydist X > 40
triggerall = command = "catch_xy" || command = "catch_ab"
trigger1 = ctrl
;trigger2 = movehit = 1 && StateNo = [250,280]
;trigger3 = movehit = 1 && StateNo = [400,420]
;trigger4 = movehit = 1 && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Kang Hand x
; 백열장
[State -1, hyakkuretsujou]
type = ChangeState
value = 2300
triggerall = command = "hand_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && StateNo = [250,280]
trigger3 = MoveContact && StateNo = [400,420]
trigger4 = MoveContact && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Kang Hand y
; 백열장
[State -1, hyakkuretsujou]
type = ChangeState
value = 2305
triggerall = command = "hand_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && StateNo = [250,280]
trigger3 = MoveContact && StateNo = [400,420]
trigger4 = MoveContact && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Power Bomb
; 파워 붐
;[State -1, Throw]
;type = ChangeState
;value = 2200
;triggerall = command = "powerbomb"
;triggerall = statetype = S
;trigger1 = ctrl
;trigger1 = statetype != A
;;trigger1 = p2bodydist X < 45
;;trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
;trigger2 = movehit = 1 && StateNo = [250,280]
;trigger3 = movehit = 1 && StateNo = [400,420]
;trigger4 = movehit = 1 && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Body Break
;[State -1, Throw]
;type = ChangeState
;value = 880
;triggerall = command = "break"
;triggerall = statetype = S
;trigger1 = ctrl
;trigger1 = statetype != A
;;trigger1 = p2bodydist X < 45
;;trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
;trigger2 = movehit = 1 && StateNo = [250,280]
;trigger3 = movehit = 1 && StateNo = [400,420]
;trigger4 = movehit = 1 && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Rolling Drop Kick a
; 롤링드롭킥
[State -1, Kang Screw]
type = ChangeState
value = 2700
triggerall = command = "dropkick_a"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Rolling Drop Kick b
; 롤링드롭킥
[State -1, Kang Screw]
type = ChangeState
value = 2750
triggerall = command = "dropkick_b"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Kang Screw x
; 강 스크류
[State -1, Kang Screw]
type = ChangeState
value = 1950
triggerall = command = "k_screw_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && StateNo = [250,280]
trigger3 = MoveContact && StateNo = [400,420]
trigger4 = MoveContact && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Kang Screw y
; 강 스크류
[State -1, Kang Screw]
type = ChangeState
value = 1960
triggerall = command = "k_screw_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && StateNo = [250,280]
trigger3 = MoveContact && StateNo = [400,420]
trigger4 = MoveContact && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Kang Screw x
; 강 스크류
[State -1, Kang Screw]
type = ChangeState
value = 1900
triggerall = command = "k_screw_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && StateNo = [250,280]
trigger3 = MoveContact && StateNo = [400,420]
trigger4 = MoveContact && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Kang Screw y
; 강 스크류
[State -1, Kang Screw]
type = ChangeState
value = 1910
triggerall = command = "k_screw_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && StateNo = [250,280]
trigger3 = MoveContact && StateNo = [400,420]
trigger4 = MoveContact && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Kang Attack a
; 강 어택
[State -1, Kang Attack]
type = ChangeState
value = 1000
triggerall = command = "kangattack_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && StateNo = [250,280]
trigger3 = MoveContact && StateNo = [400,420]
trigger4 = MoveContact && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Kang Attack b
; 강 어택
[State -1, Kang Attack]
type = ChangeState
value = 1010
triggerall = command = "kangattack_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && StateNo = [250,280]
trigger3 = MoveContact && StateNo = [400,420]
trigger4 = MoveContact && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Rolling fire x
; 롤링 파이어
[State -1, Rolling fire]
type = ChangeState
value = 1100
triggerall = command = "rollingfire_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && StateNo = [250,280]
trigger3 = MoveContact && StateNo = [400,420]
trigger4 = MoveContact && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Rolling fire y
; 롤링 파이어
[State -1, Rolling fire]
type = ChangeState
value = 1110
triggerall = command = "rollingfire_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && StateNo = [250,280]
trigger3 = MoveContact && StateNo = [400,420]
trigger4 = MoveContact && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Fire Bomb x
; 파이어 붐
[State -1, hyakkuretsujou]
type = ChangeState
value = 1200
triggerall = command = "firebomb_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && StateNo = [250,280]
trigger3 = MoveContact && StateNo = [400,420]
trigger4 = MoveContact && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Fire Bomb y
; 파이어 붐
[State -1, hyakkuretsujou]
type = ChangeState
value = 1210
triggerall = command = "firebomb_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && StateNo = [250,280]
trigger3 = MoveContact && StateNo = [400,420]
trigger4 = MoveContact && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Screw Attack xy
; 스크류 어택 xy
[State -1,  Kang Screw]
type = ChangeState
value = 1500
triggerall = command = "screw_xy"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && StateNo = [250,280]
trigger3 = MoveContact && StateNo = [400,420]
trigger4 = MoveContact && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Screw Attack ab
; 스크류 어택 ab
[State -1,  Kang Screw]
type = ChangeState
value = 1510
triggerall = command = "screw_ab"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && StateNo = [250,280]
trigger3 = MoveContact && StateNo = [400,420]
trigger4 = MoveContact && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Kick Throw 
; 들어 던지기
;[State -1, Throw]
;type = ChangeState
;value = 805
;triggerall = command = "b"
;triggerall = statetype = S
;triggerall = ctrl
;triggerall = stateno != 100
;trigger1 = command = "holdfwd"
;trigger1 = p2bodydist X < 7
;trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
;trigger2 = command = "holdback"
;trigger2 = p2bodydist X < 10
;trigger2 = (p2statetype = S) || (p2statetype = C)
;trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Punch Throw 
; 머리 던지기
;[State -1, Throw]
;type = ChangeState
;value = 800
;triggerall = command = "y"
;triggerall = statetype = S
;triggerall = ctrl
;triggerall = stateno != 100
;trigger1 = command = "holdfwd"
;trigger1 = p2bodydist X < 7
;trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
;trigger2 = command = "holdback"
;trigger2 = p2bodydist X < 10
;trigger2 = (p2statetype = S) || (p2statetype = C)
;trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Kang Head combination
; 강 헤드 콤비네이션
[State -1, Head]
type = ChangeState
value = 1300
triggerall = command = "y+b"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Guard Kang Head 
; 강 헤드 
[State -1, Head]
type = ChangeState
value = 1301
triggerall = command = "y+b"
triggerall = Power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [150,153]

;---------------------------------------------------------------------------
; Rolling forward
; 앞 구르기
[State -1, Roll Fwd]
type = ChangeState
value = 115
triggerall = command = "x+a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Rolling backward
; 뒤 구르기
[State -1, Roll Back]
type = ChangeState
value = 116
triggerall = command = "x+a"
triggerall = command != "holddown"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Escape
; 회피
[State -1, Escape]
type = ChangeState
value = 117
triggerall = command = "x+a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Fwd
; 달리기
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
; 백스탭
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Impact Parm
; 임팩트 팜
[State -1, Impact Parm]
type = ChangeState
value = 1850
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && StateNo = [250,280]
trigger3 = MoveContact && StateNo = [400,420]

;---------------------------------------------------------------------------
; Guard Attack
; 반격기
[State -1]
type = ChangeState
value = 1600
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Spacial Kick
; 돗스코이
[State -1, Spacial Kick]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = MoveContact && StateNo = [250,280]
trigger3 = MoveContact && StateNo = [400,420]
trigger4 = MoveContact && StateNo = 1850 && AnimElemTime(13) < 0

;---------------------------------------------------------------------------
; Stand Light Punch (Close)
; 근접 약펀치
[State -1, Stand Light Punch (Close)]
type = ChangeState
value = 250
triggerall = command = "x"
triggerall = command != "holddown" && p2bodydist x < 30
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Strong Punch (Close)
; 근접 강펀치
[State -1, Stand Light Punch (Close)]
type = ChangeState
value = 260
triggerall = command = "y"
triggerall = command != "holddown" && p2bodydist x < 35
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick (Close)
; 근접 약킥
[State -1, Stand Light Punch (Close)]
type = ChangeState
value = 270
triggerall = command = "a"
triggerall = command != "holddown" && p2bodydist x < 30
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Strong Kick (Close)
; 근접 강킥
[State -1, Stand Light Punch (Close)]
type = ChangeState
value = 280
triggerall = command = "b"
triggerall = command != "holddown" && p2bodydist x < 35
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = MoveContact && StateNo = 270

;---------------------------------------------------------------------------
; Stand Light Punch
; 서서 약펀치
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Strong Punch
; 서서 강펀치
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
; 서서 약킥
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Strong Kick
; 서서 강킥
[State -1, Standing Strong Kick]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Taunt
; 도발
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
; 앉아 약펀치
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
; 앉아 강펀치
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
; 앉아 약킥
[State -1, Crouching Light Kick]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
; 앉아 강킥
[State -1, Crouching Strong Kick]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 420)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
; Jump Light Punch
; 점프 약펀치
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
; 점프 강펀치
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
; 점프 약킥
[State -1, Jump Light Kick]
type = ChangeState
value = 620
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
; 점프 강킥
[State -1, Jump Strong Kick]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
; 점프 강펀치 (점프헤딩)
[State -1, Jump Strong Punch]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl



