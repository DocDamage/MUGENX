;MR BIG's CMD

;-| Super Motions |--------------------------------------------------------

[Command]
name = "QCBHCFp"
command = ~D, F, D, B, x
time = 60

[Command]
name = "QCBHCFp"
command = ~D, F, D, B, y
time = 60

[Command]
name = "2QCFp"
command = ~D, F, D, F, x
time = 40

[Command]
name = "2QCFp"
command = ~D, F, D, F, y
time = 40

[Command]
name = "2QCFk"
command = ~D, F, D, F, a
time = 40

[Command]
name = "2QCFk"
command = ~D, F, D, F, b
time = 40

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "HCB_x"
command = ~F, D, B, x

[Command]
name = "HCB_y"
command = ~F, D, B, y

[Command]
name = "HCB_a"
command = ~F, D, B, a

[Command]
name = "HCB_b"
command = ~F, D, B, b

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y
 
[Command]
name = "QCB_a"
command = ~D, F, a

[Command]
name = "QCB_b"
command = ~D, F, b

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "longjump"
command = ~D, $U
time = 5

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
name = "evade"
command = a+x
time = 1

[Command]
name = "evade"
command = z
time = 1

[Command]
name = "knockdown"
command = b+y
time = 1

[Command]
name = "knockdown"
command = c
time = 1

[Command]
name = "advance"
command = a+x+y
time = 1

[Command]
name = "advance"
command = c+z
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
name = "rapid_x"
command = x, x, x, x, x, x
time = 50

[Command]
name = "rapid_y"
command = y, y, y, y, y, y
time = 50

[Command]
name = "a"
command = a
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "hold_b"
command = /$b
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
name = "hold_x"
command = /$x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "hold_y"
command = /$y
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
;Pimp Drop SDM
[State -1, BWSDM]
type = ChangeState
value = 1110
triggerall = command = "QCBHCFp" && power >= 1000 && Var(15)
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Stand A
trigger3 = stateno = 210 && AnimElemTime(4) > 0 && AnimElemTime(7) < 0 ;Stand C
trigger4 = stateno = 225 && AnimElemTime(3) > 0 && AnimElemTime(4) < 0 ;Close B
trigger5 = stateno = 215 && AnimElemTime(3) > 0 && AnimElemTime(5) < 0 ;Close C
trigger6 = stateno = 235 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 ;Close D
trigger7 = stateno = 400 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Crouch A
trigger8 = stateno = 410 && AnimElemTime(5) > 0 && AnimElemTime(7) < 0 ;Crouch C
trigger9 = stateno = 250 && AnimElemTime(7) > 0 && AnimElemTime(8) < 0 ;Standing CD
;---------------------------------------------------------------------------
;Strong Pimp Drop DM
[State -1, PSDM]
type = ChangeState
value = 1100
triggerall = command = "QCBHCFp" && power >= 1000 && !Var(15)
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Stand A
trigger3 = stateno = 210 && AnimElemTime(4) > 0 && AnimElemTime(7) < 0 ;Stand C
trigger4 = stateno = 225 && AnimElemTime(3) > 0 && AnimElemTime(4) < 0 ;Close B
trigger5 = stateno = 215 && AnimElemTime(3) > 0 && AnimElemTime(5) < 0 ;Close C
trigger6 = stateno = 235 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 ;Close D
trigger7 = stateno = 400 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Crouch A
trigger8 = stateno = 410 && AnimElemTime(5) > 0 && AnimElemTime(7) < 0 ;Crouch C
trigger9 = stateno = 250 && AnimElemTime(7) > 0 && AnimElemTime(8) < 0 ;Standing CD
;---------------------------------------------------------------------------
;Blaster Wave SDM
[State -1, BWSDM]
type = ChangeState
value = 805
triggerall = command = "2QCFp" && power >= 1000 && Var(15)
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Stand A
trigger3 = stateno = 210 && AnimElemTime(4) > 0 && AnimElemTime(7) < 0 ;Stand C
trigger4 = stateno = 225 && AnimElemTime(3) > 0 && AnimElemTime(4) < 0 ;Close B
trigger5 = stateno = 215 && AnimElemTime(3) > 0 && AnimElemTime(5) < 0 ;Close C
trigger6 = stateno = 235 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 ;Close D
trigger7 = stateno = 400 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Crouch A
trigger8 = stateno = 410 && AnimElemTime(5) > 0 && AnimElemTime(7) < 0 ;Crouch C
trigger9 = stateno = 250 && AnimElemTime(7) > 0 && AnimElemTime(8) < 0 ;Standing CD
;---------------------------------------------------------------------------
;Blaster Wave DM
[State -1, BWDM]
type = ChangeState
value = 800
triggerall = command = "2QCFp" && power >= 1000 && !Var(15)
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Stand A
trigger3 = stateno = 210 && AnimElemTime(4) > 0 && AnimElemTime(7) < 0 ;Stand C
trigger4 = stateno = 225 && AnimElemTime(3) > 0 && AnimElemTime(4) < 0 ;Close B
trigger5 = stateno = 215 && AnimElemTime(3) > 0 && AnimElemTime(5) < 0 ;Close C
trigger6 = stateno = 235 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 ;Close D
trigger7 = stateno = 400 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Crouch A
trigger8 = stateno = 410 && AnimElemTime(5) > 0 && AnimElemTime(7) < 0 ;Crouch C
trigger9 = stateno = 250 && AnimElemTime(7) > 0 && AnimElemTime(8) < 0 ;Standing CD
;---------------------------------------------------------------------------
;Thunder Dive SDM
[State -1, TDSDM]
type = ChangeState
value = 1305
triggerall = command = "2QCFk" && power >= 1000 && Var(15)
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Stand A
trigger3 = stateno = 210 && AnimElemTime(4) > 0 && AnimElemTime(7) < 0 ;Stand C
trigger4 = stateno = 225 && AnimElemTime(3) > 0 && AnimElemTime(4) < 0 ;Close B
trigger5 = stateno = 215 && AnimElemTime(3) > 0 && AnimElemTime(5) < 0 ;Close C
trigger6 = stateno = 235 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 ;Close D
trigger7 = stateno = 400 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Crouch A
trigger8 = stateno = 410 && AnimElemTime(5) > 0 && AnimElemTime(7) < 0 ;Crouch C
trigger9 = stateno = 250 && AnimElemTime(7) > 0 && AnimElemTime(8) < 0 ;Standing CD
;---------------------------------------------------------------------------
;Thunder Dive DM
[State -1, TDDM]
type = ChangeState
value = 1300
triggerall = command = "2QCFk" && power >= 1000 && !Var(15)
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Stand A
trigger3 = stateno = 210 && AnimElemTime(4) > 0 && AnimElemTime(7) < 0 ;Stand C
trigger4 = stateno = 225 && AnimElemTime(3) > 0 && AnimElemTime(4) < 0 ;Close B
trigger5 = stateno = 215 && AnimElemTime(3) > 0 && AnimElemTime(5) < 0 ;Close C
trigger6 = stateno = 235 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 ;Close D
trigger7 = stateno = 400 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Crouch A
trigger8 = stateno = 410 && AnimElemTime(5) > 0 && AnimElemTime(7) < 0 ;Crouch C
trigger9 = stateno = 250 && AnimElemTime(7) > 0 && AnimElemTime(8) < 0 ;Standing CD
;---------------------------------------------------------------------------
;Weak Crazy Drum
[State -1, WCD]
type = ChangeState
value = 750
triggerall = command = "rapid_x"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Stand A
trigger3 = stateno = 210 && AnimElemTime(4) > 0 && AnimElemTime(7) < 0 ;Stand C
trigger4 = stateno = 225 && AnimElemTime(3) > 0 && AnimElemTime(4) < 0 ;Close B
trigger5 = stateno = 215 && AnimElemTime(3) > 0 && AnimElemTime(5) < 0 ;Close C
trigger6 = stateno = 235 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 ;Close D
trigger7 = stateno = 400 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Crouch A
trigger8 = stateno = 410 && AnimElemTime(5) > 0 && AnimElemTime(7) < 0 ;Crouch C
trigger9 = stateno = 250 && AnimElemTime(7) > 0 && AnimElemTime(8) < 0 ;Standing CD
;---------------------------------------------------------------------------
;Strong Crazy Drum
[State -1, SCD]
type = ChangeState
value = 760
triggerall = command = "rapid_y"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Stand A
trigger3 = stateno = 210 && AnimElemTime(4) > 0 && AnimElemTime(7) < 0 ;Stand C
trigger4 = stateno = 225 && AnimElemTime(3) > 0 && AnimElemTime(4) < 0 ;Close B
trigger5 = stateno = 215 && AnimElemTime(3) > 0 && AnimElemTime(5) < 0 ;Close C
trigger6 = stateno = 235 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 ;Close D
trigger7 = stateno = 400 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Crouch A
trigger8 = stateno = 410 && AnimElemTime(5) > 0 && AnimElemTime(7) < 0 ;Crouch C
trigger9 = stateno = 250 && AnimElemTime(7) > 0 && AnimElemTime(8) < 0 ;Standing CD
;---------------------------------------------------------------------------
;Weak California Romance
[State -1, WCR]
type = ChangeState
value = 730
triggerall = command = "upper_x"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Stand A
trigger3 = stateno = 210 && AnimElemTime(4) > 0 && AnimElemTime(7) < 0 ;Stand C
trigger4 = stateno = 225 && AnimElemTime(3) > 0 && AnimElemTime(4) < 0 ;Close B
trigger5 = stateno = 215 && AnimElemTime(3) > 0 && AnimElemTime(5) < 0 ;Close C
trigger6 = stateno = 235 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 ;Close D
trigger7 = stateno = 400 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Crouch A
trigger8 = stateno = 410 && AnimElemTime(5) > 0 && AnimElemTime(7) < 0 ;Crouch C
trigger9 = stateno = 250 && AnimElemTime(7) > 0 && AnimElemTime(8) < 0 ;Standing CD
;---------------------------------------------------------------------------
;Strong California Romance
[State -1, SCR]
type = ChangeState
value = 735
triggerall = command = "upper_y"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Stand A
trigger3 = stateno = 210 && AnimElemTime(4) > 0 && AnimElemTime(7) < 0 ;Stand C
trigger4 = stateno = 225 && AnimElemTime(3) > 0 && AnimElemTime(4) < 0 ;Close B
trigger5 = stateno = 215 && AnimElemTime(3) > 0 && AnimElemTime(5) < 0 ;Close C
trigger6 = stateno = 235 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 ;Close D
trigger7 = stateno = 400 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Crouch A
trigger8 = stateno = 410 && AnimElemTime(5) > 0 && AnimElemTime(7) < 0 ;Crouch C
trigger9 = stateno = 250 && AnimElemTime(7) > 0 && AnimElemTime(8) < 0 ;Standing CD
;---------------------------------------------------------------------------
;Weak Spinning Lancer
[State -1, WSL]
type = ChangeState
value = 720
triggerall = command = "HCB_a"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Stand A
trigger3 = stateno = 210 && AnimElemTime(4) > 0 && AnimElemTime(7) < 0 ;Stand C
trigger4 = stateno = 225 && AnimElemTime(3) > 0 && AnimElemTime(4) < 0 ;Close B
trigger5 = stateno = 215 && AnimElemTime(3) > 0 && AnimElemTime(5) < 0 ;Close C
trigger6 = stateno = 235 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 ;Close D
trigger7 = stateno = 400 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Crouch A
trigger8 = stateno = 410 && AnimElemTime(5) > 0 && AnimElemTime(7) < 0 ;Crouch C
trigger9 = stateno = 250 && AnimElemTime(7) > 0 && AnimElemTime(8) < 0 ;Standing CD
;---------------------------------------------------------------------------
;Strong Spinning Lancer
[State -1, SSL]
type = ChangeState
value = 725
triggerall = command = "HCB_b"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Stand A
trigger3 = stateno = 210 && AnimElemTime(4) > 0 && AnimElemTime(7) < 0 ;Stand C
trigger4 = stateno = 225 && AnimElemTime(3) > 0 && AnimElemTime(4) < 0 ;Close B
trigger5 = stateno = 215 && AnimElemTime(3) > 0 && AnimElemTime(5) < 0 ;Close C
trigger6 = stateno = 235 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 ;Close D
trigger7 = stateno = 400 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Crouch A
trigger8 = stateno = 410 && AnimElemTime(5) > 0 && AnimElemTime(7) < 0 ;Crouch C
trigger9 = stateno = 250 && AnimElemTime(7) > 0 && AnimElemTime(8) < 0 ;Standing CD
;---------------------------------------------------------------------------
;Weak Cross Diving
[State -1, WCD]
type = ChangeState
value = 710
triggerall = command = "HCB_x"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Stand A
trigger3 = stateno = 210 && AnimElemTime(4) > 0 && AnimElemTime(7) < 0 ;Stand C
trigger4 = stateno = 225 && AnimElemTime(3) > 0 && AnimElemTime(4) < 0 ;Close B
trigger5 = stateno = 215 && AnimElemTime(3) > 0 && AnimElemTime(5) < 0 ;Close C
trigger6 = stateno = 235 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 ;Close D
trigger7 = stateno = 400 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Crouch A
trigger8 = stateno = 410 && AnimElemTime(5) > 0 && AnimElemTime(7) < 0 ;Crouch C
trigger9 = stateno = 250 && AnimElemTime(7) > 0 && AnimElemTime(8) < 0 ;Standing CD
;---------------------------------------------------------------------------
;Strong Cross Diving
[State -1, SCD]
type = ChangeState
value = 715
triggerall = command = "HCB_y"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Stand A
trigger3 = stateno = 210 && AnimElemTime(4) > 0 && AnimElemTime(7) < 0 ;Stand C
trigger4 = stateno = 225 && AnimElemTime(3) > 0 && AnimElemTime(4) < 0 ;Close B
trigger5 = stateno = 215 && AnimElemTime(3) > 0 && AnimElemTime(5) < 0 ;Close C
trigger6 = stateno = 235 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 ;Close D
trigger7 = stateno = 400 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Crouch A
trigger8 = stateno = 410 && AnimElemTime(5) > 0 && AnimElemTime(7) < 0 ;Crouch C
trigger9 = stateno = 250 && AnimElemTime(7) > 0 && AnimElemTime(8) < 0 ;Standing CD
;---------------------------------------------------------------------------
;Stand Light Punch Linked From Crouching Weak Kick
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = stateno = 420 && movecontact && command = "holdfwd"
trigger2 = stateno = 420 && movecontact && command != "holdfwd"
;---------------------------------------------------------------------------
;Weak Ground Wave
[State -1, WGW]
type = ChangeState
value = 700
triggerall = command = "QCF_x"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Stand A
trigger3 = stateno = 210 && AnimElemTime(4) > 0 && AnimElemTime(7) < 0 ;Stand C
trigger4 = stateno = 225 && AnimElemTime(3) > 0 && AnimElemTime(4) < 0 ;Close B
trigger5 = stateno = 215 && AnimElemTime(3) > 0 && AnimElemTime(5) < 0 ;Close C
trigger6 = stateno = 235 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 ;Close D
trigger7 = stateno = 400 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Crouch A
trigger8 = stateno = 410 && AnimElemTime(5) > 0 && AnimElemTime(7) < 0 ;Crouch C
trigger9 = stateno = 250 && AnimElemTime(7) > 0 && AnimElemTime(8) < 0 ;Standing CD
;---------------------------------------------------------------------------
;Strong Ground Wave
[State -1, SGW]
type = ChangeState
value = 705
triggerall = command = "QCF_y"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Stand A
trigger3 = stateno = 210 && AnimElemTime(4) > 0 && AnimElemTime(7) < 0 ;Stand C
trigger4 = stateno = 225 && AnimElemTime(3) > 0 && AnimElemTime(4) < 0 ;Close B
trigger5 = stateno = 215 && AnimElemTime(3) > 0 && AnimElemTime(5) < 0 ;Close C
trigger6 = stateno = 235 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 ;Close D
trigger7 = stateno = 400 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 ;Crouch A
trigger8 = stateno = 410 && AnimElemTime(5) > 0 && AnimElemTime(7) < 0 ;Crouch C
trigger9 = stateno = 250 && AnimElemTime(7) > 0 && AnimElemTime(8) < 0 ;Standing CD
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
;---------------------------------------------------------------------------
;Punch Throw
[State -1, PT]
type = ChangeState
value = 264
triggerall = command = "y" && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 5 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)
;---------------------------------------------------------------------------
;Kick Throw
[State -1, KT]
type = ChangeState
value = 274
triggerall = command = "b" && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 5 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)
;---------------------------------------------------------------------------
;Advance Mode
[State -1, AM]
type = ChangeState
value = 1250
triggerall = power >= 1000 && !Var(15)
triggerall = command = "advance"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Emergency Escape Backward
[State -1, EEB]
type = ChangeState
value = 790
triggerall = command = "evade" && command = "holdback"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 150 || stateno = 152) && power >= 500
;---------------------------------------------------------------------------
;Emergency Escape Forward
[State -1, EEF]
type = ChangeState
value = 780
triggerall = command = "evade" && command != "holdback"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 150 || stateno = 152) && power >= 500
;---------------------------------------------------------------------------
;Standing Knock Down
[State -1, SKD]
type = ChangeState
value = 250
triggerall = command = "knockdown"
trigger1 = (statetype = S || statetype = C) && ctrl
trigger2 = (stateno = 150 || stateno = 152) && power >= 500
;---------------------------------------------------------------------------
;Linkable Attack
[State -1, SSP]
type = ChangeState
value = 255
triggerall = command = "x" && command != "holddown" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 && movecontact ;Stand A
trigger3 = stateno = 210 && AnimElemTime(5) > 0 && AnimElemTime(8) < 0 && movecontact ;Stand C
trigger4 = stateno = 225 && AnimElemTime(3) > 0 && AnimElemTime(4) < 0 && movecontact ;Close B
trigger5 = stateno = 215 && AnimElemTime(3) > 0 && AnimElemTime(5) < 0 && movecontact ;Close C
trigger6 = stateno = 235 && AnimElemTime(5) > 0 && AnimElemTime(6) < 0 && movecontact ;Close D
trigger7 = stateno = 400 && AnimElemTime(2) > 0 && AnimElemTime(3) < 0 && movecontact ;Crouch A
trigger8 = stateno = 410 && AnimElemTime(5) > 0 && AnimElemTime(7) < 0 && movecontact ;Crouch C
trigger9 = stateno = 430 && AnimElemTime(4) > 0 && AnimElemTime(5) < 0 && movecontact ;Crouch D
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown" && command != "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact && time > 9
trigger3 = stateno = 400 && movecontact && time > 9
;---------------------------------------------------------------------------
;Strong Punch
[State -1, LA]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown" && p2dist x > 60
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Close Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y" && command != "holddown" && p2dist x <= 60
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "a" && command != "holddown" && p2dist x > 40
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Close Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 225
triggerall = command = "a" && command != "holddown" && p2dist x <= 40
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 230
triggerall = command = "b" && command != "holddown" && p2dist x > 70
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Close Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 235
triggerall = command = "b" && command != "holddown" && p2dist x <= 70
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 && movecontact && time > 9
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact && time > 9
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 420
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact && time > 9
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 430
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C &&  ctrl
;---------------------------------------------------------------------------
;Jump Knock Down
[State -1, JKD]
type = ChangeState
value = 650
triggerall = command = "knockdown"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" && vel x != 0
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
;Vertical Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 605
triggerall = command = "x" && vel x = 0
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 620
triggerall = command = "a"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A && ctrl


