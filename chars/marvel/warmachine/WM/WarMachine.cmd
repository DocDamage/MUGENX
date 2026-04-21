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
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c

;-| Super Motions |--------------------------------------------------------
[command] 
name = "War Destroyer"
command = ~D, F, a+b
time = 20
[command] 
name = "War Destroyer"
command = ~D, F, a+c
time = 20
[command] 
name = "War Destroyer"
command = ~D, F, b+c
time = 20

[command] 
name = "Proton Cannon"
command = ~D, F, x+y
time = 20
[command] 
name = "Proton Cannon"
command = ~D, F, x+z
time = 20
[command] 
name = "Proton Cannon"
command = ~D, F, y+z
time = 20

;-| Special Motions |------------------------------------------------------
[command] 
name = "Repulsor Blast Weak"
command = ~F, D, B, x
time = 15
[command] 
name = "Repulsor Blast Strong"
command = ~F, D, B, y
time = 15
[command] 
name = "Repulsor Blast Fierce"
command = ~F, D, B, z
time = 15

[command] 
name = "Shoulder Cannon Weak"
command = ~D, F, x
time = 10
[command] 
name = "Shoulder Cannon Strong"
command = ~D, F, y
time = 10
[command] 
name = "Shoulder Cannon Fierce"
command = ~D, F, z
time = 10

[command] 
name = "Low Shoulder Cannon Weak"
command = ~D, F, a
time = 10
[command] 
name = "Low Shoulder Cannon Strong"
command = ~D, F, b
time = 10
[command] 
name = "Low Shoulder Cannon Fierce"
command = ~D, F, c
time = 10

[Command]
name = "Smart Bomb"     
command = y+a
time = 5
[Command]
name = "Smart Bomb Far"     
command = /$F, y+a
time = 5
[Command]
name = "Smart Bomb Short"     
command = /$B, y+a
time = 5

[command] 
name = "Advguard"
command = x+y
time = 5
[command] 
name = "Advguard"
command = y+z
time = 5
[command] 
name = "Advguard"
command = x+z
time = 5

[command] 
name = "Fly"
command = D, B, a
[command] 
name = "Fly"
command = D, B, b 
[command] 
name = "Fly"
command = D, B, c  

[Command]
name = "Roll1"
command = ~B, DB, D, x
[Command]
name = "Roll2"
command = ~B, DB, D, y
[Command]
name = "Roll1"
command = ~B, DB, D, a
[Command]
name = "Roll2"
command = ~B, DB, D, b
[Command]
name = "Roll3"
command = ~B, DB, D, z
[Command]
name = "Roll3"
command = ~B, DB, D, c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[command]
name = "SuperJump"
command = ~D, U
time = 10

[command]
name = "SuperJump_FWD"
command = ~D, UF
time = 10

[command]
name = "SuperJump_Back"
command = ~D, UB
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "Air Dash Neutral"
command = x+z
time = 3
[Command]
name = "Air Dash Neutral"
command = x+y
time = 3
[Command]
name = "Air Dash Neutral"
command = y+z
time = 3

[Command]
name = "SuperJump"     
command = a+b
time = 3
[Command]
name = "SuperJump"     
command = b+c
time = 3
[Command]
name = "SuperJump"     
command = a+c
time = 3
[Command]
name = "SuperJump_FWD"     
command = /$F, a+b
time = 3
[Command]
name = "SuperJump_FWD"     
command = /$F, b+c
time = 3
[Command]
name = "SuperJump_FWD"     
command = /$F, a+c
time = 3
[Command]
name = "SuperJump_Back"     
command = /$B, a+b
time = 3
[Command]
name = "SuperJump_Back"     
command = /$B, b+c
time = 3
[Command]
name = "SuperJump_Back"     
command = /$B, a+c
time = 3

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

[Command]
name = "Air Dash UF"
command = /$UF, x+y
time = 3
[Command]
name = "Air Dash UF"
command = /$UF, x+z
time = 3
[Command]
name = "Air Dash UF"
command = /$UF, y+z
time = 3
[Command]
name = "Air Dash U"
command = /$U, x+y
time = 3
[Command]
name = "Air Dash U"
command = /$U, x+z
time = 3
[Command]
name = "Air Dash U"
command = /$U, z+y
time = 3
[Command]
name = "Air Dash UB"
command = /$UB, x+y
time = 3
[Command]
name = "Air Dash UB"
command = /$UB, x+z
time = 3
[Command]
name = "Air Dash UB"
command = /$UB, z+y
time = 3
[Command]
name = "Air Dash B"
command = /$B, x+y
time = 3
[Command]
name = "Air Dash B"
command = /$B, x+z
time = 3
[Command]
name = "Air Dash B"
command = /$B, z+y
time = 3
[Command]
name = "Air Dash DB"
command = /$DB, x+y
time = 3
[Command]
name = "Air Dash DB"
command = /$DB, x+z
time = 3
[Command]
name = "Air Dash DB"
command = /$DB, z+y
time = 3
[Command]
name = "Air Dash D"
command = /$D, x+y
time = 3
[Command]
name = "Air Dash D"
command = /$D, x+z
time = 3
[Command]
name = "Air Dash D"
command = /$D, z+y
time = 3
[Command]
name = "Air Dash DF"
command = /$DF, x+y
time = 3
[Command]
name = "Air Dash DF"
command = /$DF, x+z
time = 3
[Command]
name = "Air Dash DF"
command = /$DF, z+y
time = 3
[Command]
name = "Air Dash F"
command = /$F, x+y
time = 3
[Command]
name = "Air Dash F"
command = /$F, y+z
time = 3
[Command]
name = "Air Dash F"
command = /$F, x+z
time = 3

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

;-| Hold Button |--------------------------------------------------------------
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

[Command]
name = "hold_start"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
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
;   triggerall = command = command_name
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
; War Destroyer
[State -1, War Destroyer]
type = ChangeState
value = 3000
triggerall = command = "War Destroyer"
triggerall = Power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,450]
trigger2 = Time > 5

; Proton Cannon
[State -1, Proton Cannon]
type = ChangeState
value = 3100
triggerall = command = "Proton Cannon"
triggerall = Power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,450]
trigger2 = Time > 5

;---------------------------------------------------------------------------
; Repulsor Blast
[State -1, Repulsor Blast]
type = ChangeState
value = 1200
triggerall = palno <= 6
triggerall = command = "Repulsor Blast Weak"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,450]
trigger2 = movecontact
trigger3 = Stateno = [200,450]
trigger3 = time > 5
[State -1, Repulsor Blast]
type = ChangeState
value = 1215
triggerall = palno <= 6
triggerall = command = "Repulsor Blast Strong"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,450]
trigger2 = movecontact
trigger3 = Stateno = [200,450]
trigger3 = time > 5
[State -1, Repulsor Blast]
type = ChangeState
value = 1220
triggerall = palno <= 6
triggerall = command = "Repulsor Blast Fierce"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,450]
trigger2 = movecontact
trigger3 = Stateno = [200,450]
trigger3 = time > 5

;---------------------------------------------------------------------------
; Shoulder Cannon
[State -1, Shoulder Cannon]
type = ChangeState
value = 1100
triggerall = command = "Shoulder Cannon Weak"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 5
[State -1, Shoulder Cannon]
type = ChangeState
value = 1100
triggerall = command = "Shoulder Cannon Weak"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 5
[State -1, Shoulder Cannon]
type = ChangeState
value = 1110
triggerall = command = "Shoulder Cannon Strong"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 5
[State -1, Shoulder Cannon]
type = ChangeState
value = 1110
triggerall = command = "Shoulder Cannon Strong"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 5
[State -1, Shoulder Cannon]
type = ChangeState
value = 1120
triggerall = command = "Shoulder Cannon Fierce"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 5
[State -1, Shoulder Cannon]
type = ChangeState
value = 1120
triggerall = command = "Shoulder Cannon Fierce"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 5
; Shoulder Cannon
[State -1, Shoulder Cannon]
type = ChangeState
value = 1108
triggerall = command = "Low Shoulder Cannon Weak"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,450]
trigger2 = movecontact
trigger3 = Stateno = [200,450]
trigger3 = time > 5
[State -1, Shoulder Cannon]
type = ChangeState
value = 1118
triggerall = command = "Low Shoulder Cannon Strong"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,450]
trigger2 = movecontact
trigger3 = Stateno = [200,450]
trigger3 = time > 5
[State -1, Shoulder Cannon]
type = ChangeState
value = 1128
triggerall = command = "Low Shoulder Cannon Fierce"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,450]
trigger2 = movecontact
trigger3 = Stateno = [200,450]
trigger3 = time > 5

;---------------------------------------------------------------------------
; Smart Bomb
[State -1, Smart Bomb]
type = ChangeState
value = 1000
triggerall = command = "Smart Bomb Short"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 5
[State -1, Smart Bomb]
type = ChangeState
value = 1000
triggerall = command = "Smart Bomb Short"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 5
[State -1, Smart Bomb]
type = ChangeState
value = 1004
triggerall = command = "Smart Bomb Far"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 5
[State -1, Smart Bomb]
type = ChangeState
value = 1004
triggerall = command = "Smart Bomb Far"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 5
[State -1, Smart Bomb]
type = ChangeState
value = 1002
triggerall = command = "Smart Bomb"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 5
[State -1, Smart Bomb]
type = ChangeState
value = 1002
triggerall = command = "Smart Bomb"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = [200,655]
trigger2 = movecontact
trigger3 = Stateno = [200,655]
trigger3 = time > 5

;---------------------------------------------------------------------------
; Fly Mode
[State -1, Fly]
type = ChangeState
value = 730
triggerall = palno <=6
triggerall = StateNo != 731
triggerall = command = "Fly"
triggerall = Var(12) <= 0
trigger1 = ctrl
trigger2 = StateNo = [200,655]

[State -1, Fly End]
type = Null;ChangeState
value = 49
triggerall = command = "Fly"
triggerall = Var(12) > 0
triggerall = StateNo != [1000,1300]
trigger1 = 1

;---------------------------------------------------------------------------
; Jumping Fierce Punch (Upward)
[State -1, Jumping Fierce Punch]
type = ChangeState
value = 621
triggerall = command = "up_z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,610]
trigger2 = movecontact
trigger3 = stateno = [630,640]
trigger3 = movecontact
trigger4 = StateNo = [720, 728]
trigger4 = Time > 1

;---------------------------------------------------------------------------
; Jumping Fierce Punch (Downward)
[State -1, Jumping Fierce Punch]
type = ChangeState
value = 622
triggerall = command = "down_z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,610]
trigger2 = movecontact
trigger3 = stateno = [630,640]
trigger3 = movecontact
trigger4 = StateNo = [720, 728]
trigger4 = Time > 1

;---------------------------------------------------------------------------
; Rocket Knee Dive
[State -1, Rocket Knee Dive]
type = ChangeState
value = 645
triggerall = command = "down_b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = StateNo != 620
trigger2 = movecontact
trigger3 = StateNo = [720, 728]
trigger3 = Time > 1

;---------------------------------------------------------------------------
; Jumping Fierce Kick (Upward)
[State -1, Jumping Fierce Kick]
type = ChangeState
value = 655
triggerall = command = "up_c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact
trigger3 = StateNo = [720, 728]
trigger3 = Time > 1

;---------------------------------------------------------------------------
[state -1, SuperJump]
type = changestate
value = 702
triggerall = command = "holdupfwd"
trigger1 = movehit
trigger1 = stateno = 250
[state -1, SuperJump]
type = changestate
value = 704
triggerall = command = "holdupback"
trigger1 = movehit
trigger1 = stateno = 250
;Follow Up After Launcher
[state -1, SuperJump]
type = changestate
value = 700
triggerall = command = "holdup"
trigger1 = movehit
trigger1 = stateno = 250

;---------------------------------------------------------------------------
[state -1, SuperJump]
type = changestate
value = 702
triggerall = command = "SuperJump_FWD"
trigger1 = statetype != a
trigger1 = ctrl
[state -1, SuperJump]
type = changestate
value = 704
triggerall = command = "SuperJump_Back"
trigger1 = statetype != a
trigger1 = ctrl
;Super Jump
[state -1, SuperJump]
type = changestate
value = 700
triggerall = command = "SuperJump"
trigger1 = statetype != a
trigger1 = ctrl

;---------------------------------------------------------------------------
; Recovery Roll
[State -1, Falling]
type = VarSet
triggerall = (StateNo = 5035) || (StateNo = 5050) || (StateNo = 5071)
trigger1 = (Command = "Roll1") && (Alive = 1)
var(7) = 1
[State -1, Falling]
type = VarSet
triggerall = (StateNo = 5035) || (StateNo = 5050) || (StateNo = 5071)
trigger1 = (Command = "Roll2") && (Alive = 1)
var(7) = 2
[State -1, Falling]
type = VarSet
triggerall = (StateNo = 5035) || (StateNo = 5050) || (StateNo = 5071)
trigger1 = (Command = "Roll3")  && (Alive = 1)
var(7) = 3
[State -1, Rolling]
type = ChangeState
value = 708
triggerall = Var(7) = [1,3]
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
; Guard Push (Stand)
[State -1, Guard Push]
type = ChangeState
value = 710
triggerall = command = "Advguard"
trigger1 = stateno = [150,151]
;Guard Push (Crouch)
[State -1, Guard Push]
type = ChangeState
value = 711
triggerall = command = "Advguard"
trigger1 = stateno = [152,153]
;Guard Push (Air)
[State -1, Guard Push]
type = ChangeState
value = 712
triggerall = command = "Advguard"
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;---------------------------------------------------------------------------
; Up Fwd
[State -1, Up Fwd]
type = ChangeState
value = 720
triggerall = palno <= 6
triggerall = command = "Air Dash UF"
triggerall = statetype = A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [600, 655]
trigger3 = StateNo = 731
; Up Back
[State -1, Up Back]
type = ChangeState
value = 722
triggerall = palno <= 6
triggerall = command = "Air Dash UB"
triggerall = statetype = A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [600, 655]
trigger3 = StateNo = 731
; Down Back
[State -1, Down Back]
type = ChangeState
value = 724
triggerall = palno <= 6
triggerall = command = "Air Dash DB"
triggerall = statetype = A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [600, 655]
trigger3 = StateNo = 731
; Down Fwd
[State -1, Down Fwd]
type = ChangeState
value = 726
triggerall = palno <= 6
triggerall = command = "Air Dash DF"
triggerall = statetype = A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [600, 655]
trigger3 = StateNo = 731
; Up
[State -1, Up]
type = ChangeState
value = 721
triggerall = palno <= 6
triggerall = command = "Air Dash U"
triggerall = statetype = A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [600, 655]
trigger3 = StateNo = 731
; Down
[State -1, Down]
type = ChangeState
value = 725
triggerall = palno <= 6
triggerall = command = "Air Dash D"
triggerall = statetype = A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [600, 655]
trigger3 = StateNo = 731
; Back
[State -1, Back]
type = ChangeState
value = 723
triggerall = palno <= 6
triggerall = command = "Air Dash B"
triggerall = statetype = A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [600, 655]
trigger3 = StateNo = 731
; Fwd
[State -1, Fwd]
type = ChangeState
value = 727
triggerall = palno <= 6
triggerall = command = "Air Dash F"
triggerall = statetype = A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [600, 655]
trigger3 = StateNo = 731
; Neutral
[State -1, Fwd]
type = ChangeState
value = 728
triggerall = palno <= 6
triggerall = command = "Air Dash Neutral"
triggerall = statetype = A
triggerall = Var(6) = 0
trigger1 = ctrl
trigger2 = StateNo = [600, 655]
trigger3 = StateNo = 731

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,210]
trigger5 = movecontact
trigger3 = stateno = [230,240]
trigger3 = movecontact
trigger4 = stateno = [400,410]
trigger4 = movecontact
trigger5 = stateno = [430,440]
trigger5 = movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,210]
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = [400,410]
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,210]
trigger2 = movecontact
trigger3 = stateno = [230,240]
trigger3 = movecontact
trigger4 = stateno = [400,410]
trigger4 = movecontact
trigger5 = stateno = [430,440]
trigger5 = movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 430
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [400,410]
trigger2 = movecontact
trigger3 = stateno = [430,440]
trigger3 = movecontact
trigger4 = stateno = [200,210]
trigger4 = movecontact
trigger4 = stateno = [430,440]
trigger4 = movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [400,410]
trigger2 = movecontact
trigger3 = stateno = 430
trigger3 = movecontact
trigger4 = stateno = [200,210]
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [400,410]
trigger2 = movecontact
trigger3 = stateno = [430,440]
trigger3 = movecontact
trigger4 = stateno = [200,210]
trigger4 = movecontact
trigger5 = stateno = [230,240]
trigger5 = movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = [720, 728]
trigger2 = Time > 1

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = StateNo = [720, 728]
trigger4 = Time > 1

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact
trigger3 = StateNo = [720, 728]
trigger3 = Time > 1

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = StateNo = [720, 728]

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = StateNo = [720, 728]

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,640]
trigger2 = movecontact
trigger3 = StateNo = [720, 728]
