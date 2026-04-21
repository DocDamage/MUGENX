;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------
;-----------------
[Command]
name = "throw_d"
command = /F,c
time = 1

[Command]
name = "footthrow"
command = /F,z
time = 1

; DM move 1
[Command]
name = "dm1"
command = ~D, DB, B, DB, D, x
time = 30

; DM move_y 1
[Command]
name = "dm2"
command = ~D, DB, B, DB, D, y
time = 30

; DM move_z 1
[Command]
name = "dm3"
command = ~D, DB, B, DB, D, z
time = 30

; DM move_z 1
[Command]
name = "ukickdm"
command = ~D, DB, B, DB, D, a
time = 30

; DM move_z 1
[Command]
name = "ukickdm2"
command = ~D, DB, B, DB, D, b
time = 30

; DM move_z 1
[Command]
name = "ukickdm3"
command = ~D, DB, B, DB, D, c
time = 30

; 4punch
[Command]
name = "4punch"
command = ~B, DB, D, DF, F, x

; 4punch
[Command]
name = "4punchb"
command = ~B, DB, D, DF, F, y

; 4punch
[Command]
name = "4punchc"
command = ~B, DB, D, DF, F, z

; U kick
[Command]
name = "ukicka"
command = ~D, DF, F, a

; U kickb
[Command]
name = "ukickb"
command = ~D, DF, F, b

; U kickc
[Command]
name = "ukickc"
command = ~D, DF, F, c

[Command]
name = "aldm"
command = ~D, DF, F, D, DF, F, x
time = 50

[Command]
name = "aldm2"
command = ~D, DF, F, D, DF, F, y
time = 50

[Command]
name = "aldm3"
command = ~D, DF, F, D, DF, F, z
time = 50

; U punch
[Command]
name = "dashix"
command = ~B, F, x

; U punch
[Command]
name = "dashiy"
command = ~B, F, y

; U punch
[Command]
name = "dashiz"
command = ~B, F, z

; QCF
[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "longjump"
command = $D, $U
time = 18

;-----------------
; QCB
[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

; Air attack
[Command]
name = "airattacka"
command = ~D, DF, F, a
time = 10

; Air attack
[Command]
name = "airattackb"
command = ~D, DF, F, b
time = 10

; Air attack
[Command]
name = "airattackc"
command = ~D, DF, F, c
time = 10

;-----------------
; Uppercut
[Command]
name = "uppercut_a"
command = ~F, D, DF, a

[Command]
name = "uppercut_b"
command = ~F, D, DF, b

[Command]
name = "uppercut_c"
command = ~F, D, DF, c

[Command]
name = "uppercut_x"
command = ~F, D, DF, x

[Command]
name = "uppercut_y"
command = ~F, D, DF, y

[Command]
name = "uppercut_z"
command = ~F, D, DF, z

;--------------------
;Charge_Down_up
[Command]
name = "chargedownup_a"
command = ~60$D, U, a
time = 10

[Command]
name = "chargedownup_b"
command = ~60$D, U, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;--------------------
;Charge_Back_fwd
[Command]
name = "chargebackfwd_a"
command = ~60$B, F, a
time = 10

[Command]
name = "chargebackfwd_b"
command = ~60$B, F, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
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
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
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
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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

[Command]
name = "cd"
command = a+b
time = 1

[Command]
name = "xy"
command = x+y
time = 1

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
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
name = "holdup";Required (do not remove)
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
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
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
;Alternate dm move x
[State -1]
type = ChangeState
value = 4000
triggerall = command = "aldm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = movecontact
trigger3 = stateno = 202 ;Stand_X
trigger3 = movecontact
trigger4 = stateno = 355 
trigger4 = movecontact
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact
;===========================================================================
;Alternate sdm move y
[State -1]
type = ChangeState
value = 4010
triggerall = command = "aldm2"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = movecontact
trigger3 = stateno = 202 ;Stand_X
trigger3 = movecontact
trigger4 = stateno = 355 
trigger4 = movecontact
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact
;===========================================================================
;Alternate ssdm move x
[State -1]
type = ChangeState
value = 4030
triggerall = command = "aldm3"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = movecontact
trigger3 = stateno = 202 ;Stand_X
trigger3 = movecontact
trigger4 = stateno = 355 
trigger4 = movecontact
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact
;===========================================================================
;Dm_move1_x
[State -1]
type = ChangeState
value = 11000
triggerall = command = "dm1"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = movecontact
trigger3 = stateno = 202 ;Stand_X
trigger3 = movecontact
trigger4 = stateno = 355 
trigger4 = movecontact
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact
;===========================================================================
;Sdm_move1_x
[State -1]
type = ChangeState
value = 12000
triggerall = command = "dm2"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = movecontact
trigger3 = stateno = 202 ;Stand_X
trigger3 = movecontact
trigger4 = stateno = 355 
trigger4 = movecontact
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact
;===========================================================================
;Ssdm_move1_x
[State -1]
type = ChangeState
value = 13000
triggerall = command = "dm3"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = movecontact
trigger3 = stateno = 202 ;Stand_X
trigger3 = movecontact
trigger4 = stateno = 355 
trigger4 = movecontact
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact

;===========================================================================
;Dm_move1_x
[State -1]
type = ChangeState
value = 1422
triggerall = command = "dm1"
triggerall = power >= 1000
triggerall = frontedgedist = 50 
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = movecontact
trigger3 = stateno = 202 ;Stand_X
trigger3 = movecontact
trigger4 = stateno = 355 
trigger4 = movecontact
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact

;===========================================================================
;Dm_move1_x
[State -1]
type = ChangeState
value = 1400
triggerall = command = "dm1"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = movecontact
trigger3 = stateno = 202 ;Stand_X
trigger3 = movecontact
trigger4 = stateno = 355 
trigger4 = movecontact
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact
;===========================================================================
;Dm_move1_x
[State -1]
type = ChangeState
value = 1600
triggerall = command = "dm1"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = movecontact
trigger3 = stateno = 202 ;Stand_X
trigger3 = movecontact
trigger4 = stateno = 355 
trigger4 = movecontact
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact
;---------------------------------------------------------------------------
;Dm_move1 (Close)
[State -1]
type = ChangeState
value = 1311
triggerall = command = "dm1"
triggerall = power >= 1000
triggerall = P2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = movecontact
trigger3 = stateno = 202 ;Stand_X
trigger3 = movecontact
trigger4 = stateno = 355 
trigger4 = movecontact
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact
;---------------------------------------------------------------------------
; U kick dm
[State -1]
type = ChangeState
value = 2700
triggerall = command = "ukickdm"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 355
;---------------------------------------------------------------------------
; U kick sdm
[State -1]
type = ChangeState
value = 2800
triggerall = command = "ukickdm2"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 355
;---------------------------------------------------------------------------
; U kick ssdm
[State -1]
type = ChangeState
value = 2900
triggerall = command = "ukickdm3"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 355
;---------------------------------------------------------------------------
; Uppercut x
[State -1]
type = ChangeState
value = 2200
triggerall = command = "uppercut_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = time >= 8
trigger3 = stateno = 202 ;Stand_X
trigger3 = time >= 8
trigger4 = stateno = 355 
trigger4 = movecontact
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact
;-----------------------------------------------
; Uppercut y
[State -1]
type = ChangeState
value = 2220
triggerall = command = "uppercut_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = time >= 8
trigger3 = stateno = 202 ;Stand_X
trigger3 = time >= 8
trigger4 = stateno = 355 
trigger4 = movecontact
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact
;---------------------------------------------------------------------------
; Uppercut z
[State -1]
type = ChangeState
value = 2210
triggerall = command = "uppercut_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = time >= 8
trigger3 = stateno = 202 ;Stand_X
trigger3 = time >= 8
trigger4 = stateno = 355 
trigger4 = movecontact
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact
;---------------------------------------------------------------------------
; 4 Punches 
[State -1]
type = ChangeState
value = 2000
triggerall = command = "4punch"
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = P2BodyDist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 355
;---------------------------------------------------------------------------
; 4 Punches 
[State -1]
type = ChangeState
value = 2000
triggerall = command = "4punchb"
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = P2BodyDist X <= 13
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 355
;---------------------------------------------------------------------------
; 4 Punches 
[State -1]
type = ChangeState
value = 2000
triggerall = command = "4punchc"
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = P2BodyDist X <= 25
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 355 
;---------------------------------------------------------------------------
; U punch
[State -1]
type = ChangeState
value = 1420
triggerall = command = "dashix"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 299
trigger2 = stateno != 220
trigger2 = stateno != 230
trigger2 = statetype != A
trigger2 = movecontact
;---------------------------------------------------------------------------
; U punch_y
[State -1]
type = ChangeState
value = 1520
triggerall = command = "dashiy"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 299
trigger2 = stateno != 220
trigger2 = stateno != 230
trigger2 = statetype != A
trigger2 = movecontact
;---------------------------------------------------------------------------
; U punch_z
[State -1]
type = ChangeState
value = 1620
triggerall = command = "dashiz"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno >= 200
trigger2 = stateno <= 299
trigger2 = stateno != 220
trigger2 = stateno != 230
trigger2 = statetype != A
trigger2 = movecontact
;---------------------------------------------------------------------------
; U kick 
[State -1]
type = ChangeState
value = 2300
triggerall = command = "ukicka"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 355
;---------------------------------------------------------------------------
; U kick b
[State -1]
type = ChangeState
value = 2303
triggerall = command = "ukickb"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 355
;---------------------------------------------------------------------------
; U kick 
[State -1]
type = ChangeState
value = 2306
triggerall = command = "ukickc"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 355
;---------------------------------------------------------------------------
; Fireball (b)
[State -1]
type = ChangeState
value = 1130
triggerall = command = "QCF_x"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = time >= 8
trigger3 = stateno = 202 ;Stand_X
trigger3 = time >= 8
trigger4 = stateno = 450 
trigger4 = movecontact
trigger5 = stateno = 260 
trigger5 = movecontact
trigger6 = stateno = 270 
trigger6 = movecontact
trigger7 = stateno = 300 
trigger7 = movecontact
;---------------------------------------------------------------------------
; Fireball (b)
[State -1]
type = ChangeState
value = 1131
triggerall = command = "QCF_y"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = time >= 8
trigger3 = stateno = 202 ;Stand_X
trigger3 = time >= 8
trigger4 = stateno = 355 
trigger4 = movecontact
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact

;---------------------------------------------------------------------------
; Air attack 
[State -1]
type = ChangeState
value = 9100
triggerall = command = "airattacka"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Air attack_b
[State -1]
type = ChangeState
value = 9100
triggerall = command = "airattackb"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; Air attack_c
[State -1]
type = ChangeState
value = 9100
triggerall = command = "airattackc"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; Fireball (b)
[State -1]
type = ChangeState
value = 1132
triggerall = command = "QCF_z"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = time >= 8
trigger3 = stateno = 202 ;Stand_X
trigger3 = time >= 8
trigger4 = stateno = 355 
trigger4 = movecontact
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact
;---------------------------------------------------------------------------
; Fireball
[State -1]
type = ChangeState
value = 1100
triggerall = command = "QCB_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = time >= 8
trigger3 = stateno = 202 ;Stand_X
trigger3 = time >= 8
trigger4 = stateno = 355 
trigger4 = movecontact
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact
trigger9 = stateno = 380 
trigger9 = time >= 19
;---------------------------------------------------------------------------
; MP Fireball
[State -1]
type = ChangeState
value = 1110
triggerall = command = "QCB_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = time >= 8
trigger3 = stateno = 202 ;Stand_X
trigger3 = time >= 8
trigger4 = stateno = 355 
trigger4 = movecontact
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact
;---------------------------------------------------------------------------
; Hp fireball
[State -1]
type = ChangeState
value = 1101
triggerall = command = "QCB_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = time >= 8
trigger3 = stateno = 202 ;Stand_X
trigger3 = time >= 8
trigger4 = stateno = 355 
trigger4 = time >= 2
trigger5 = stateno = 450 
trigger5 = movecontact
trigger6 = stateno = 260 
trigger6 = movecontact
trigger7 = stateno = 270 
trigger7 = movecontact
trigger8 = stateno = 300 
trigger8 = movecontact
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Roll fwd AB
[State -1]
type = ChangeState
value = 700
triggerall = command = "xy"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Roll fwd AB (during guard)
[State -1]
type = ChangeState
value = 701
triggerall = command = "xy"
triggerall = command = "holdfwd"
triggerall = power >= 50
trigger1 = stateno = 150
trigger2 = stateno = 152

;---------------------------------------------------------------------------
;Roll back AB
[State -1]
type = ChangeState
value = 710
triggerall = command = "xy"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Roll back AB (during guard)
[State -1]
type = ChangeState
value = 711
triggerall = command = "xy"
triggerall = command = "holdback"
triggerall = power >= 50
trigger1 = stateno = 150
trigger2 = stateno = 152

;---------------------------------------------------------------------------
;Ex mode AB
[State -1]
type = ChangeState
value = 715
triggerall = command = "xy"
triggerall = stateno != 715
trigger1 = statetype = S
trigger1 = ctrl = 1

;----------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Throw_D
[State -1]
type = ChangeState
value = 9600
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100    ;Not running
triggerall = p2bodydist X < 6
trigger1 = command = "throw_d";Near, p2 stand
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "throw_d";Near, p2 crouch
trigger2 = p2statetype = C
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Foot Throw
[State -1]
type = ChangeState
value = 9800
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100    ;Not running
triggerall = p2bodydist X < 6
trigger1 = command = "footthrow";Near, p2 stand
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "throw_d";Near, p2 crouch
trigger2 = p2statetype = C
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Power charging
[State -1]
type = ChangeState
value = 255
trigger1 = command = "a"
trigger1 = command = "c"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
;===========================================================================
;---------------------------------------------------------------------------;
;Super_smash
[State -1]
type = ChangeState
value = 380
triggerall = command = "ab"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 460
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 300 ;Stand_A
trigger2 = time >= 8

;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 680
trigger1 = command = "c"
trigger1 = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 680
trigger1 = command = "c"
trigger1 = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_A (moving)
[State -1]
type = ChangeState
value = 650
triggerall = command = "a"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 610
trigger1 = command = "b"
trigger1 = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_B (moving)
[State -1]
type = ChangeState
value = 670
trigger1 = command = "b"
trigger1 = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_X
[State -1]
type = ChangeState
value = 630
triggerall = command = "x"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_X (moving)
[State -1]
type = ChangeState
value = 630
triggerall = command = "x"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 640
trigger1 = command = "z"
trigger1 = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_Y (moving)
[State -1]
type = ChangeState
value = 660
triggerall = command = "z"
triggerall = statetype = A
trigger1 = vel x != 0
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 690
trigger1 = command = "y"
trigger1 = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_Y (moving)
[State -1]
type = ChangeState
value = 690
triggerall = command = "y"
triggerall = statetype = A
trigger1 = vel x != 0
trigger1 = ctrl = 1
;---------------------------------------------------------------------------;
;Stand_X
[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 ;Stand_A
trigger2 = time >= 18
trigger3 = stateno = 245 ;Stand_X
trigger3 = movecontact
;---------------------------------------------------------------------------;
;Stand_X
[State -1]
type = ChangeState
value = 290
triggerall = command = "fwd_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 ;Stand_A
trigger2 = time >= 18
trigger3 = stateno = 245 ;Stand_X
trigger3 = movecontact
trigger4 = stateno = 355 ;Stand_X
trigger4 = movecontact
;---------------------------------------------------------------------------;

;Stand_Y
[State -1]
type = ChangeState
value = 240
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X > 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230 ;Stand_A
trigger2 = time >= 18
trigger3 = stateno = 232 ;Stand_X
trigger3 = movecontact
;---------------------------------------------------------------------------
;Stand_Y (close)
[State -1]
type = ChangeState
value = 245
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230 ;Stand_A
trigger2 = time >= 12
trigger3 = stateno = 232 ;Stand_X
trigger3 = movecontact
;---------------------------------------------------------------------------;
;Stand_X (close)
[State -1]
type = ChangeState
value = 232
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 30
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 ;Stand_A
trigger2 = time >= 12
;---------------------------------------------------------------------------;
;Stand_z
[State -1]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = P2bodydist X > 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 ;Stand_A
trigger2 = time >= 12
trigger3 = stateno = 245 ;Stand_X
trigger3 = movecontact
trigger4 = stateno = 260 
trigger4 = movecontact
trigger5 = stateno = 270 
trigger5 = movecontact
;---------------------------------------------------------------------------;
;New punch 1
[State -1]
type = ChangeState
value = 260
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 ;Stand_A
trigger2 = time >= 12
trigger3 = stateno = 245 ;Stand_X
trigger3 = movecontact
;---------------------------------------------------------------------------;
;New kick 1
[State -1]
type = ChangeState
value = 270
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 260 ;Stand_A
trigger2 = time >= 8
trigger3 = stateno = 245 ;Stand_X
trigger3 = movecontact

;---------------------------------------------------------------------------;
;New kick 1 (when donge)
[State -1]
type = ChangeState
value = 270
triggerall = stateno = 715
triggerall = animelem = 9, < 0
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
;---------------------------------------------------------------------------
;Stand_Z (close)
[State -1]
type = ChangeState
value = 355
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240 ;Stand_A
trigger2 = time >= 12
trigger3 = stateno = 245 ;Stand_X
trigger3 = movecontact
trigger4 = stateno = 260 
trigger4 = movecontact
trigger5 = stateno = 270 
trigger5 = movecontact
trigger6 = stateno = 1101 
trigger6 = movecontact
trigger7 = stateno = 300
trigger7 = time = 2
trigger8 = stateno = 290
trigger8 = movecontact
;---------------------------------------------------------------------------;
;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202 ;Stand_X
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 355
trigger4 = movecontact
;---------------------------------------------------------------------------;
;Stand_A (close)
[State -1]
type = ChangeState
value = 202
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 30
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_A
trigger2 = time >= 8
trigger3 = stateno = 202 ;Stand_X
trigger3 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 355
trigger4 = movecontact

;---------------------------------------------------------------------------;
;Super_smash
[State -1]
type = ChangeState
value = 380
triggerall = command = "ab"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------;
;Crouch_X
[State -1]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 430 ;Stand_X
trigger2 = time >= 2

;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 440
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 430
trigger2 = time >= 8
trigger3 = stateno = 430 ;Stand_X
trigger3 = time >= 2

;---------------------------------------------------------------------------
;Crouch_Z
[State -1]
type = ChangeState
value = 450
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 1100 ;Stand_A
trigger2 = movecontact
trigger3 = stateno = 1101 ;Stand_A
trigger3 = movecontact
trigger4 = stateno = 440 ;Stand_A
trigger4 = movecontact
trigger5 = stateno = 300 ;Stand_A
trigger5 = movecontact
trigger6 = stateno = 460 ;Stand_A
trigger6 = movecontact

;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 300
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 1100 ;Stand_A
trigger2 = movecontact
trigger3 = stateno = 1101 ;Stand_A
trigger3 = movecontact
trigger4 = stateno = 440 ;Stand_A
trigger4 = movecontact
trigger5 = stateno = 355 ;Stand_A
trigger5 = movecontact
;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 400
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Taunt A
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

