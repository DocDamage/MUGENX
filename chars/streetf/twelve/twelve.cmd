;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "QCB_PP"
command = ~D, DB, B, x+y
time = 16

[Command]
name = "QCB_PP"
command = ~D, DB, B, x+z
time = 16

[Command]
name = "QCB_PP"
command = ~D, DB, B, y+z
time = 16

[Command]
name = "QCF_PP"
command = ~D, DF, F, x+y
time = 16

[Command]
name = "QCF_PP"
command = ~D, DF, F, x+z
time = 16

[Command]
name = "QCF_PP"
command = ~D, DF, F, y+z
time = 16

[Command]
name = "QCB_X"
command = ~D, DB, B, x
time = 16

[Command]
name = "QCB_Y"
command = ~D, DB, B, y
time = 16

[Command]
name = "QCB_Z"
command = ~D, DB, B, z
time = 16

[Command]
name = "QCF_X"
command = ~D, DF, F, x
time = 16

[Command]
name = "QCF_Y"
command = ~D, DF, F, y
time = 16

[Command]
name = "QCF_Z"
command = ~D, DF, F, z
time = 16

[Command]
name = "zc"
command = z+c

[Command]
name = "yb"
command = y+b

[Command]
name = "xa"
command = x+a

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "DU"
command = $D, $U
time = 10

[Command]
name = "ChargedDU"
command = ~10$D, $U

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
name = "down"
command = D
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
;EX A.X.E.
[State -1, LP]
type = ChangeState
value = 1130 + 50*(Statetype = A)
trigger1 = command = "QCB_PP"
trigger1 = ctrl
trigger1 = Power >= 313

;Light A.X.E.
[State -1, LP]
type = ChangeState
value = 1100 + 50*(Statetype = A)
trigger1 = command = "QCB_X"
trigger1 = ctrl

;Medium A.X.E.
[State -1, MP]
type = ChangeState
value = 1110 + 50*(Statetype = A)
trigger1 = command = "QCB_Y"
trigger1 = ctrl

;Strong A.X.E.
[State -1, MP]
type = ChangeState
value = 1120 + 50*(Statetype = A)
trigger1 = command = "QCB_Z"
trigger1 = ctrl

;---------------------------------------------------------------------------
;EX N.D.L.
[State -1, LP]
type = ChangeState
value = 1030
trigger1 = command = "QCF_PP"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = Power >= 313

;Light N.D.L.
[State -1, LP]
type = ChangeState
value = 1000
trigger1 = command = "QCF_X"
trigger1 = statetype != A
trigger1 = ctrl

;Medium N.D.L.
[State -1, MP]
type = ChangeState
value = 1010
trigger1 = command = "QCF_Y"
trigger1 = statetype != A
trigger1 = ctrl

;Strong N.D.L.
[State -1, MP]
type = ChangeState
value = 1020
trigger1 = command = "QCF_Z"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Throw Attempt
[State -1, Throw Attempt]
type = ChangeState
value = 800
trigger1 = command = "xa"
trigger1 = statetype = S
trigger1 = ctrl

;Leap Attack
[State -1, Throw Attempt]
type = ChangeState
value = 900
trigger1 = command = "yb"
trigger1 = statetype = S
trigger1 = ctrl

;Personal Action
[State -1, PA]
type = ChangeState
value = 189
trigger1 = command = "zc"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100 + 10*(StateType = A)
trigger1 = command = "FF"
trigger1 = statetype != C
trigger1 = ctrl
trigger1 = StateNo != [100,115]

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105 + 10*(StateType = A)
trigger1 = command = "BB"
trigger1 = statetype != C
trigger1 = ctrl
trigger1 = StateNo != [100,115]

;---------------------------------------------------------------------------
;Long Jump
[State -1, Run Back]
type = ChangeState
value = 48
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "DU"
trigger1 = command != "ChargedDU"

;---------------------------------------------------------------------------
;Light Standing Punch
[State -1, LP]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Medium Standing Punch
[State -1, MP]
type = ChangeState
value = 610
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;Strong Standing Punch
[State -1, MP]
type = ChangeState
value = 620
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;Light Standing Kick
[State -1, MP]
type = ChangeState
value = 630
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;Medium Standing Kick
[State -1, MP]
type = ChangeState
value = 640
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;Strong Standing Kick
[State -1, MP]
type = ChangeState
value = 650
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Light Standing Punch
[State -1, LP]
type = ChangeState
value = 400
trigger1 = command = "x"
trigger1 = (statetype = C) || (Command = "holddown")
trigger1 = ctrl

;Medium Standing Punch
[State -1, MP]
type = ChangeState
value = 410
trigger1 = command = "y"
trigger1 = (statetype = C) || (Command = "holddown")
trigger1 = ctrl

;Strong Standing Punch
[State -1, MP]
type = ChangeState
value = 420
trigger1 = command = "z"
trigger1 = (statetype = C) || (Command = "holddown")
trigger1 = ctrl

;Light Standing Kick
[State -1, MP]
type = ChangeState
value = 430
trigger1 = command = "a"
trigger1 = (statetype = C) || (Command = "holddown")
trigger1 = ctrl

;Medium Standing Kick
[State -1, MP]
type = ChangeState
value = 440
trigger1 = command = "b"
trigger1 = (statetype = C) || (Command = "holddown")
trigger1 = ctrl

;Strong Standing Kick
[State -1, MP]
type = ChangeState
value = 450
trigger1 = command = "c"
trigger1 = (statetype = C) || (Command = "holddown")
trigger1 = ctrl

;---------------------------------------------------------------------------
;Light Standing Punch
[State -1, LP]
type = ChangeState
value = 200
trigger1 = command = "x"
trigger1 = statetype = S
trigger1 = ctrl

;Medium Standing Punch
[State -1, MP]
type = ChangeState
value = 210 + 5*(p2bodydist X <= 30)
trigger1 = command = "y"
trigger1 = statetype = S
trigger1 = ctrl

;Strong Standing Punch
[State -1, MP]
type = ChangeState
value = 220
trigger1 = command = "z"
trigger1 = statetype = S
trigger1 = ctrl

;Light Standing Kick
[State -1, MP]
type = ChangeState
value = 230
trigger1 = command = "a"
trigger1 = statetype = S
trigger1 = ctrl

;Medium Standing Kick
[State -1, MP]
type = ChangeState
value = 240 + 5*(command = "holdback")
trigger1 = command = "b"
trigger1 = statetype = S
trigger1 = ctrl

;Strong Standing Kick
[State -1, MP]
type = ChangeState
value = 250
trigger1 = command = "c"
trigger1 = statetype = S
trigger1 = ctrl