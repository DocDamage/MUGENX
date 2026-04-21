; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
;

;-| Super Motions |--------------------------------------------------------
[Command]
name = "sspin_a"
command = ~D, F, D, B, x

[Command]
name = "sspin_b"
command = ~D, F, D, B, y

[Command]
name = "rude_x"
command = ~F, B, DB, D, DF, F, x

[Command]
name = "rude_y"
command = ~F, B, DB, D, DF, F, y

[Command]
name = "Naughty_x"
command = ~D, B, D, F, x
time = 20

[Command]
name = "Naughty_y"
command = ~D, B, D, F, y
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "HCB_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "HCB_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "HCF_x"
command = ~D, DF, F, x

[Command]
name = "HCF_y"
command = ~D, DF, F, y

[Command]
name = "split_x"
command = ~B, D, DB, x

[Command]
name = "split_y"
command = ~B, D, DB, y

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "spin_a"
command = ~D, DB, B, a

[Command]
name = "spin_b"
command = ~D, DB, B, b

[Command]
name = "DF"
command = /DF

;--------------------------------------------------------------------------
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
name = "longjump"
command = ~D, $U
time = 10

[Command]
name = "GC"
command = y+b
time = 1

[Command]
name = "esquiva"
command = a+x
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_x"
command = /F, x
time = 1

[Command]
name = "fd_x"
command = /DF, x
time = 1

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
;Super Spining Top Drop Fraco
[State -1]
type = ChangeState
value = 3600
triggerall = Command = "sspin_a" && Power >= 2000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100) 
trigger2 = (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = (StateNo = 210 && AnimElemNo(0) >= 4 && AnimElemNo(0) < 6)
trigger4 = (StateNo = 220 && AnimElemNo(0) >= 5 && AnimElemNo(0) < 9)
trigger5 = (StateNo = 230 && AnimElemNo(0) >= 5 && AnimElemNo(0) <= 6)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 5)
trigger7 = (StateNo = 400 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 4)
trigger8 = (StateNo = 410 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 5)
trigger9 = (StateNo = 420 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 7)
trigger10 = MoveContact && (StateNo = 700 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 5)
trigger12 = MoveContact && (StateNo = 730 && AnimElemNo(0) <7)
trigger13 = MoveContact && (StateNo = 1300 && AnimElemNo(0) >= 3) && Power >= 2000
trigger14 = MoveContact && (StateNo = 1350 && AnimElemNo(0) >= 3) && Power >= 2000
trigger15 = MoveContact && (StateNo = 1500 && AnimElemNo(0) >= 23) && Power >= 2000
trigger16 = (StateNo = 430 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 9)
trigger17 = MoveContact && stateno = 221
trigger18 = MoveContact && stateno = 415
trigger19 = MoveContact && stateno = 225
trigger20 = MoveContact && stateno = 435
;-------------------------------------------------------------------------------------
;Super Spining Top Drop Fraco
[State -1]
type = ChangeState
value = 3600
triggerall = Command = "sspin_b" && Power >= 2000
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100) 
trigger2 = (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = (StateNo = 210 && AnimElemNo(0) >= 4 && AnimElemNo(0) < 6)
trigger4 = (StateNo = 220 && AnimElemNo(0) >= 5 && AnimElemNo(0) < 9)
trigger5 = (StateNo = 230 && AnimElemNo(0) >= 5 && AnimElemNo(0) <= 6)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 5)
trigger7 = (StateNo = 400 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 4)
trigger8 = (StateNo = 410 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 5)
trigger9 = (StateNo = 420 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 7)
trigger10 = MoveContact && (StateNo = 700 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 5)
trigger12 = MoveContact && (StateNo = 730 && AnimElemNo(0) <7)
trigger13 = MoveContact && (StateNo = 1300 && AnimElemNo(0) >= 3) && Power >= 2000
trigger14 = MoveContact && (StateNo = 1350 && AnimElemNo(0) >= 3) && Power >= 2000
trigger15 = MoveContact && (StateNo = 1500 && AnimElemNo(0) >= 23) && Power >= 2000
trigger16 = (StateNo = 430 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 9)
trigger17 = MoveContact && stateno = 221
trigger18 = MoveContact && stateno = 415
trigger19 = MoveContact && stateno = 225
trigger20 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
; Rude Ball fraco
[State -1]
type = ChangeState
value = 3000
triggerall = Command = "rude_x" && Power >= 1000
triggerall = numproj = 0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = (StateNo = 210 && AnimElemNo(0) >= 4 && AnimElemNo(0) < 6)
trigger4 = (StateNo = 220 && AnimElemNo(0) >= 5 && AnimElemNo(0) < 9)
trigger5 = (StateNo = 230 && AnimElemNo(0) >= 5 && AnimElemNo(0) <= 6)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 5)
trigger7 = (StateNo = 400 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 4)
trigger8 = (StateNo = 410 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 5)
trigger9 = (StateNo = 420 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 7)
trigger10 = MoveContact && (StateNo = 700 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 5)
trigger12 = MoveContact && (StateNo = 730 && AnimElemNo(0) <7)
trigger13 = MoveContact && (StateNo = 1300 && AnimElemNo(0) >= 3) && Power >= 2000
trigger14 = MoveContact && (StateNo = 1350 && AnimElemNo(0) >= 3) && Power >= 2000
trigger15 = MoveContact && (StateNo = 1500 && AnimElemNo(0) >= 23) && Power >= 2000
trigger16 = (StateNo = 430 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 9)
trigger17 = MoveContact && stateno = 221
trigger18 = MoveContact && stateno = 415
trigger19 = MoveContact && stateno = 225
trigger20 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
; Rude Ball forte
[State -1]
type = ChangeState
value = 3000
triggerall = Command = "rude_y" && Power >= 1000
triggerall = numproj = 0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = (StateNo = 210 && AnimElemNo(0) >= 4 && AnimElemNo(0) < 6)
trigger4 = (StateNo = 220 && AnimElemNo(0) >= 5 && AnimElemNo(0) < 9)
trigger5 = (StateNo = 230 && AnimElemNo(0) >= 5 && AnimElemNo(0) <= 6)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 5)
trigger7 = (StateNo = 400 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 4)
trigger8 = (StateNo = 410 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 5)
trigger9 = (StateNo = 420 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 7)
trigger10 = MoveContact && (StateNo = 700 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 5)
trigger12 = MoveContact && (StateNo = 730 && AnimElemNo(0) <7)
trigger13 = MoveContact && (StateNo = 1300 && AnimElemNo(0) >= 3) && Power >= 2000
trigger14 = MoveContact && (StateNo = 1350 && AnimElemNo(0) >= 3) && Power >= 2000
trigger15 = MoveContact && (StateNo = 1500 && AnimElemNo(0) >= 23) && Power >= 2000
trigger16 = (StateNo = 430 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 9)
trigger17 = MoveContact && stateno = 221
trigger18 = MoveContact && stateno = 415
trigger19 = MoveContact && stateno = 225
trigger20 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
; Naugthy Balls fraco
[State -1]
type = ChangeState
value = 3300
triggerall = Command = "Naughty_x" && Power >= 1000
triggerall = numproj = 0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = (StateNo = 210 && AnimElemNo(0) >= 4 && AnimElemNo(0) < 6)
trigger4 = (StateNo = 220 && AnimElemNo(0) >= 5 && AnimElemNo(0) < 9)
trigger5 = (StateNo = 230 && AnimElemNo(0) >= 5 && AnimElemNo(0) <= 6)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 5)
trigger7 = (StateNo = 400 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 4)
trigger8 = (StateNo = 410 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 5)
trigger9 = (StateNo = 420 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 7)
trigger10 = MoveContact && (StateNo = 700 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 5)
trigger12 = MoveContact && (StateNo = 730 && AnimElemNo(0) <7)
trigger13 = MoveContact && (StateNo = 1300 && AnimElemNo(0) >= 3) && Power >= 2000
trigger14 = MoveContact && (StateNo = 1350 && AnimElemNo(0) >= 3) && Power >= 2000
trigger15 = MoveContact && (StateNo = 1500 && AnimElemNo(0) >= 23) && Power >= 2000
trigger16 = (StateNo = 430 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 9)
trigger17 = MoveContact && stateno = 221
trigger18 = MoveContact && stateno = 415
trigger19 = MoveContact && stateno = 225
trigger20 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
; Naugthy Balls forte
[State -1]
type = ChangeState
value = 3300
triggerall = Command = "Naughty_y" && Power >= 1000
triggerall = numproj = 0
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100)
trigger2 = (StateNo = 200 && AnimElemNo(0) >= 4)
trigger3 = (StateNo = 210 && AnimElemNo(0) >= 4 && AnimElemNo(0) < 6)
trigger4 = (StateNo = 220 && AnimElemNo(0) >= 5 && AnimElemNo(0) < 9)
trigger5 = (StateNo = 230 && AnimElemNo(0) >= 5 && AnimElemNo(0) <= 6)
trigger6 = MoveContact && (StateNo = 225 && AnimElemNo(0) >= 5)
trigger7 = (StateNo = 400 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 4)
trigger8 = (StateNo = 410 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 5)
trigger9 = (StateNo = 420 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 7)
trigger10 = MoveContact && (StateNo = 700 && AnimElemNo(0) >= 7)
trigger11 = MoveContact && (StateNo = 600 && AnimElemNo(0) >= 5)
trigger12 = MoveContact && (StateNo = 730 && AnimElemNo(0) <7)
trigger13 = MoveContact && (StateNo = 1300 && AnimElemNo(0) >= 3) && Power >= 2000
trigger14 = MoveContact && (StateNo = 1350 && AnimElemNo(0) >= 3) && Power >= 2000
trigger15 = MoveContact && (StateNo = 1500 && AnimElemNo(0) >= 23) && Power >= 2000
trigger16 = (StateNo = 430 && AnimElemNo(0) >= 3 && AnimElemNo(0) < 9)
trigger17 = MoveContact && stateno = 221
trigger18 = MoveContact && stateno = 415
trigger19 = MoveContact && stateno = 225
trigger20 = MoveContact && stateno = 435
;---------------------------------------------------------------------------
; Fresbee fraco
[State -1]
type = ChangeState
value = 1300
triggerall = command = "HCF_x"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && stateno = 221
trigger3 = MoveContact && stateno = 415
trigger4 = MoveContact && stateno = 225
trigger5 = MoveContact && stateno = 435
trigger6 = stateno = 410 && movecontact = 1

;---------------------------------------------------------------------------
; Fresbee forte
[State -1]
type = ChangeState
value = 1302
triggerall = command = "HCF_y"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 410 && movecontact = 1
trigger3 = stateno = 221 && movecontact = 1
trigger5 = stateno = 225 && movecontact = 1
trigger6 = stateno = 415 && movecontact = 1
trigger7 = stateno = 435 && movecontact = 1
;---------------------------------------------------------------------------
; Split fraco
[State -1]
type = ChangeState
value = 1308
triggerall = command = "split_x"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && stateno = 221
trigger3 = MoveContact && stateno = 415
trigger4 = MoveContact && stateno = 225
trigger5 = MoveContact && stateno = 435
trigger6 = stateno = 410 && movecontact = 1
;---------------------------------------------------------------------------
; Split forte
[State -1]
type = ChangeState
value = 1309
triggerall = command = "split_y"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && stateno = 221
trigger3 = MoveContact && stateno = 415
trigger4 = MoveContact && stateno = 225
trigger5 = MoveContact && stateno = 435
trigger6 = stateno = 410 && movecontact = 1
;---------------------------------------------------------------------------
; Galvanic Fraco
[State -1]
type = ChangeState
value = 1320
triggerall = command = "QCF_a"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 410 && movecontact = 1
trigger3 = stateno = 221 && movecontact = 1
trigger4 = stateno = 440 && movecontact = 1
trigger5 = stateno = 225 && movecontact = 1
trigger6 = stateno = 415 && movecontact = 1
;---------------------------------------------------------------------
; Galvanic Forte
[State -1]
type = ChangeState
value = 1321
triggerall = command = "QCF_b"
triggerall = numproj = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 410 && movecontact = 1
trigger3 = stateno = 221 && movecontact = 1
trigger4 = stateno = 440 && movecontact = 1
trigger5 = stateno = 225 && movecontact = 1
trigger6 = stateno = 415 && movecontact = 1

;----------------------------------------------------------------------
;Nicola Throw fraco
[State -1]
type = ChangeState
value = 1000
triggerall = command = "HCB_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 410 && movehit = 1
trigger3 = stateno = 221 && movehit = 1
trigger4 = stateno = 435 && movehit = 1
trigger5 = stateno = 225 && movehit = 1
trigger6 = stateno = 415 && movehit = 1
trigger7 = stateno = 200 && movehit = 1
;---------------------------------------------------------------------------
;Nicola Throw forte
[State -1]
type = ChangeState
value = 1000
triggerall = command = "HCB_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 410 && movecontact = 1
trigger3 = stateno = 221 && movecontact = 1
trigger4 = stateno = 435 && movecontact = 1
trigger5 = stateno = 225 && movecontact = 1
trigger6 = stateno = 415 && movecontact = 1
;---------------------------------------------------------------------------
; Spinnig Top Drop Fraco
[State -1]
type = ChangeState
value = 1025
triggerall = command = "spin_a"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 40
trigger3 = stateno = 400 && movecontact = 1
trigger4 = stateno = 410 && movecontact = 1
trigger5 = stateno = 420 && movecontact = 1
trigger6 = stateno = 211 && movecontact = 1
trigger7 = stateno = 221 && movecontact = 1
trigger8 = stateno = 231 && movecontact = 1
trigger9 = stateno = 241 && movecontact = 1
trigger10 = stateno = 215 && movecontact = 1
trigger11 = stateno = 235 && movecontact = 1
trigger12 = stateno = 415 && movecontact = 1
trigger13 = stateno = 225 && movecontact = 1
trigger14 = stateno = 435 && movecontact = 1
;---------------------------------------------------------------------------
; Spinnig Top Drop Forte
[State -1]
type = ChangeState
value = 1030
triggerall = command = "spin_b"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 40
trigger3 = stateno = 400 && movecontact = 1
trigger4 = stateno = 410 && movecontact = 1
trigger5 = stateno = 420 && movecontact = 1
trigger6 = stateno = 211 && movecontact = 1
trigger7 = stateno = 221 && movecontact = 1
trigger8 = stateno = 231 && movecontact = 1
trigger9 = stateno = 241 && movecontact = 1
trigger10 = stateno = 215 && movecontact = 1
trigger11 = stateno = 235 && movecontact = 1
trigger12 = stateno = 415 && movecontact = 1
trigger13 = stateno = 225 && movecontact = 1
trigger14 = stateno = 435 && movecontact = 1
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 500
triggerall = Command = "GC"
trigger1 = StateType != A && (Ctrl = 1 || StateNo = 100 || StateNo = 110)
;-----------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 4500
triggerall = Command = "GC"
triggerall = (Power >= 1000 || (var(38) = 2 && Fvar(3) > 0)) && StateType != A
trigger1 = (StateNo = 150 || StateNo = 152)

;-----------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 750
triggerall = command = "GC"
trigger1 = StateType = A && Ctrl

;--------------------------------------------------------------------------
;Esquiva Frente
[State -1]
type = ChangeState
value = 4000
triggerall = Command = "esquiva" && !Command = "holdback"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)
;--------------------------------------------------------------------------
; esquiva na defesa
[State -1]
type = ChangeState
value = 4050
triggerall = Command = "esquiva" && Power >= 1000
triggerall = StateType != A
trigger1 = (StateNo = 150 || StateNo = 152)
trigger2 = MoveContact && Var(38) = 1 && StateNo = [200,799]
;--------------------------------------------------------------------------
; Esquiva Tr疽
[State -1]
type = ChangeState
value = 4010
triggerall = Command = "esquiva" && Command = "holdback" && !Command = "holdfwd"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

;---------------------------------------------------------------------------
; arremesso a駻eo
[State -1]
type = ChangeState
value = 700
triggerall = StateType = A && Ctrl = 1
triggerall = P2MoveType != H && P2StateType = A
trigger1 = (Command = "holdfwd" || Command = "holdup" || Command = "holdback") && (Command = "b" || Command = "y" )
trigger1 = P2BodyDist X < 20


;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Forward Light Punch
[State -1]
type = ChangeState
value = 207
;triggerall = command = "fwd_y"
triggerall = command != "holddown"
triggerall = statetype != A && command = "x" && command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 201
trigger3 = movehit = 1
trigger4 = stateno = 211
trigger4 = movehit = 1
trigger5 = stateno = 221
trigger5 = movehit = 1
trigger6 = stateno = 231
trigger6 = movehit = 1
trigger7 = stateno = 400
trigger7 = movehit = 1
trigger8 = stateno = 420
trigger8 = movehit = 1
trigger9 = stateno = 410 && movecontact = 1

; Forward hard Punch
[State -1]
type = ChangeState
value = 225
;triggerall = command = "fwd_x"
triggerall = statetype != A && command = "y" && command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 201
trigger3 = movehit = 1
trigger4 = stateno = 211
trigger4 = movehit = 1
trigger5 = stateno = 221
trigger5 = movehit = 1
trigger6 = stateno = 231
trigger6 = movehit = 1
trigger7 = stateno = 400
trigger7 = movehit = 1
trigger8 = stateno = 420
trigger8 = movehit = 1
trigger9 = stateno = 410 && movecontact = 1

;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
; Standing hard punch (close)
[State -1]
type = ChangeState
value = 221
trigger1 = command = "y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 20

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
; Standing Light Kick (close)
[State -1]
type = ChangeState
value = 235
trigger1 = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 10

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 415
triggerall = statetype != A && command = "holddown" && command = "x"  && command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400 && movecontact = 1
trigger3 = stateno = 410 && movecontact = 1
trigger4 = stateno = 420 && movecontact = 1
trigger5 = stateno = 211 && movecontact = 1
trigger6 = stateno = 221 && movecontact = 1
trigger7 = stateno = 231 && movecontact = 1
trigger8 = stateno = 241 && movecontact = 1

;--------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact



