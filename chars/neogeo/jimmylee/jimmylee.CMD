;JIMMY LEE's CMD

;-| Super Motions |--------------------------------------------------------

[Command]
name = "QCFQCFx"
command = ~D, F, D, F, x
time = 30

[Command]
name = "QCFQCFy"
command = ~D, F, D, F, y
time = 30

[Command]
name = "QCFQCFk"
command = ~D, F, D, F, a
time = 30

[Command]
name = "QCFQCFk"
command = ~D, F, D, F, b
time = 30

[Command]
name = "QCFQCFkk"
command = ~D, F, D, F, a+b
time = 30

[Command]
name = "gunx"
command = ~D, B, D, F, x
time = 30

[Command]
name = "guny"
command = ~D, B, D, F, y
time = 30

[Command]
name = "gunx"
command = ~D, B, F, x
time = 25

[Command]
name = "guny"
command = ~D, B, F, y
time = 25

[Command]
name = "Rave"
command = ~F, D, B, F, a
time = 30

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
name = "HCF_a"
command = ~B, D, F, a

[Command]
name = "HCF_b"
command = ~B, D, F, b

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
command = ~D, B, a

[Command]
name = "QCB_b"
command = ~D, B, b

[Command]
name = "charge_x"
command = ~30$B, F, x
time = 15

[Command]
name = "charge_y"
command = ~30$B, F, y
time = 15

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
;Team Duplex
[State -1, TD]
type = ChangeState
value = 800
triggerall = command = "QCF_y" && command = "a" && power >= 3000
trigger1 = statetype != A && ctrl
trigger2 = MoveContact && StateNo = [200,212]
trigger3 = MoveContact && StateNo = 368
;---------------------------------------------------------------------------
;Gun Blow DM
[State -1, GBDM]
type = ChangeState
value = 720
triggerall = command = "gunx" && power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = MoveContact && StateNo = [200,212]
trigger3 = MoveContact && StateNo = 368
;---------------------------------------------------------------------------
;Gun Blow SDM
[State -1, GBSDM]
type = ChangeState
value = 725
triggerall = command = "guny" && power >= 2000
trigger1 = statetype != A && ctrl
trigger2 = MoveContact && StateNo = [200,212]
trigger3 = MoveContact && StateNo = 368
;---------------------------------------------------------------------------
;Power Geyser DM
[State -1, PGDM]
type = ChangeState
value = 700
triggerall = command = "QCFQCFx" && power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = MoveContact && StateNo = [200,212]
trigger3 = MoveContact && StateNo = 368
;---------------------------------------------------------------------------
;Power Geyser SDM
[State -1, PGSDM]
type = ChangeState
value = 710
triggerall = command = "QCFQCFy" && power >= 2000
trigger1 = statetype != A && ctrl
trigger2 = MoveContact && StateNo = [200,212]
trigger3 = MoveContact && StateNo = 368
;---------------------------------------------------------------------------
;Weak Heat Hurricaine
[State -1, WHH]
type = ChangeState
value = 530
triggerall = command = "HCB_x"
trigger1 = statetype != A && ctrl
trigger2 = MoveContact && StateNo = [200,212]
trigger3 = MoveContact && StateNo = 368
;---------------------------------------------------------------------------
;Strong Heat Hurricaine
[State -1, SHH]
type = ChangeState
value = 535
triggerall = command = "HCB_y"
trigger1 = statetype != A && ctrl
trigger2 = MoveContact && StateNo = [200,212]
trigger3 = MoveContact && StateNo = 368
;---------------------------------------------------------------------------
;Weak Shoryudan
[State -1, WS]
type = ChangeState
value = 520
triggerall = command = "upper_x"
trigger1 = statetype != A && ctrl
trigger2 = MoveContact && StateNo = [200,212]
trigger3 = MoveContact && StateNo = 368
;---------------------------------------------------------------------------
;Strong Shoryudan
[State -1, SS]
type = ChangeState
value = 522
triggerall = command = "upper_y"
trigger1 = statetype != A && ctrl
trigger2 = MoveContact && StateNo = [200,212]
trigger3 = MoveContact && StateNo = 368
;---------------------------------------------------------------------------
;Weak Red Rage
[State -1, WRR]
type = ChangeState
value = 510
triggerall = command = "QCF_x"
trigger1 = statetype != A && ctrl
trigger2 = MoveContact && StateNo = [200,212]
trigger3 = MoveContact && StateNo = 368
;---------------------------------------------------------------------------
;Strong Red Rage
[State -1, SRR]
type = ChangeState
value = 511
triggerall = command = "QCF_y"
trigger1 = statetype != A && ctrl
trigger2 = MoveContact && StateNo = [200,212]
trigger3 = MoveContact && StateNo = 368
;---------------------------------------------------------------------------
;Weak Cannon Kick
[State -1, WCK]
type = ChangeState
value = 500
triggerall = command = "QCB_a"
trigger1 = statetype != A && ctrl
trigger2 = MoveContact && StateNo = [200,212]
trigger3 = MoveContact && StateNo = 368
;---------------------------------------------------------------------------
;Strong Cannon Kick
[State -1, SCK]
type = ChangeState
value = 501
triggerall = command = "QCB_b"
trigger1 = statetype != A && ctrl
trigger2 = MoveContact && StateNo = [200,212]
trigger3 = MoveContact && StateNo = 368
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
;First Impact Combo Starter
[State -1, FICS]
type = ChangeState
value = 360
triggerall = command = "b" && command = "y"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Punch Throw
[State -1, PT]
type = ChangeState
value = 330
triggerall = command = "y" && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 10 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
;---------------------------------------------------------------------------
;Punch Throw
[State -1, PT]
type = ChangeState
value = 332
triggerall = command = "y" && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdback" && p2bodydist X < 10 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
;---------------------------------------------------------------------------
;Dodge
[State -1, D]
type = ChangeState
value = 300
triggerall = command = "a" && command = "x" && command != "holdfwd" && command != "holdback"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Roll Forward
[State -1, RF]
type = ChangeState
value = 305
triggerall = command = "a" && command = "x" && command = "holdfwd"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Roll Backwards
[State -1, RB]
type = ChangeState
value = 310
triggerall = command = "a" && command = "x" && command = "holdback"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Command Attack 1
[State -1, CA1]
type = ChangeState
value = 315
triggerall = command = "x" && command = "holddown" && command = "holdfwd"
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
;Command Attack 2
[State -1, CA2]
type = ChangeState
value = 320
triggerall = command = "x" && command != "holddown" && command = "holdfwd"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Standing Weak Punch
[State -1, SWP]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown" && p2dist x > 60
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Standing Weak Kick
[State -1, SWK]
type = ChangeState
value = 201
triggerall = command = "a" && command != "holddown" && p2dist x > 80
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Standing Strong Punch
[State -1, SSP]
type = ChangeState
value = 202
triggerall = command = "y" && command != "holddown" && p2dist x > 70
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, SSK]
type = ChangeState
value = 203
triggerall = command = "b" && command != "holddown" && p2dist x > 80
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Close Standing Weak Punch
[State -1, CSWP]
type = ChangeState
value = 205
triggerall = command = "x" && command != "holddown" && p2dist x <= 60
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Close Standing Weak Kick
[State -1, CSWK]
type = ChangeState
value = 206
triggerall = command = "a" && command != "holddown" && p2dist x <= 80
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Close Standing Strong Punch
[State -1, CSSP]
type = ChangeState
value = 207
triggerall = command = "y" && command != "holddown" && p2dist x <= 70
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Close Standing Strong Kick
[State -1, CSSK]
type = ChangeState
value = 208
triggerall = command = "b" && command != "holddown" && p2dist x <= 80
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
;Crouching Weak Punch
[State -1, CWP]
type = ChangeState
value = 210
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
;---------------------------------------------------------------------------
;Crouching Weak Kick
[State -1, CWK]
type = ChangeState
value = 211
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, CSP]
type = ChangeState
value = 212
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, CSK]
type = ChangeState
value = 213
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
;---------------------------------------------------------------------------
;Jumping Weak Punch
[State -1, JWP]
type = ChangeState
value = 220
triggerall = command = "x"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
;Jumping Weak Kick
[State -1, JWK]
type = ChangeState
value = 221
triggerall = command = "a"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
;Jumping Strong Punch
[State -1, JSP]
type = ChangeState
value = 222
triggerall = command = "y"
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
;Jumping Strong Kick (vertical)
[State -1, JSKV]
type = ChangeState
value = 223
triggerall = command = "b" && vel x = 0
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
;Jumping Strong Kick (horozontal)
[State -1, JSKH]
type = ChangeState
value = 224
triggerall = command = "b" && vel x != 0
trigger1 = statetype = A && ctrl
