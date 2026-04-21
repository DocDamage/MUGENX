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

;-| ±âÆø¹ß |--------------------------------------------------------
[Command] ;±âÆø¹ß
name = "xya"
command = x+y+a
time = 2

[Command] ;±âÆø¹ß
name = "xya"
command = z+a
time = 2

[Command] ;ÀÏ¼¶
name = "yab"
command = y+a+b
time = 2

[Command] ;ÀÏ¼¶
name = "yab"
command = y+c
time = 2




;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "sg"
command = B, F, D, x+y
time = 25

[Command]
name = "sg"
command = B, F, D, z
time = 25


;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x
time = 20

[Command]
name = "upper_y"
command = ~F, D, DF, y
time = 20

[Command]
name = "upper_a"
command = ~F, D, DF, a
time = 20



[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_a"
command = ~D, DF, F, a




[Command]
name = "sp1"
command = /F, x, x

[Command]
name = "sp2"
command = /F, y, y

[Command]
name = "sp3"
command = /F, a, a



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
name = "bc"
command = y+a
time = 1

[Command]
name = "ab"
command = a+b
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
name = "fwd_k"
command = /F,b
time = 1

[Command]
name = "upa"
command = /$U,x
time = 5

[Command]
name = "upa"
command = /$U,y
time = 5

[Command]
name = "upa"
command = /$U,a
time = 5


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
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
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


;---------------------------------------------------------------------------
;±âÆø¹ß
[State -1, power]
type = ChangeState
value = 4000
triggerall = stateno != 5900
triggerall = stateno != [4000,4005]
triggerall = var(31) != [100,101]
triggerall = command = "xya"
triggerall = statetype != A
trigger1 = movetype = H
trigger2 = ctrl = 1
trigger2 = movetype != A



;---------------------------------------------------------------------------
;ÀÏ¼¶
[State -1, power]
type = ChangeState
value = 4100
trigger1 = !win
trigger1 = var(31) != 101 
trigger1 = var(6) = [1,100]
trigger1 = command = "yab"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;½ºÇÃ·¡½Ã±×¶óµ¥ÀÌ¼Ç
[State -1, SG]
type = ChangeState
value = 3000
triggerall = Power >= 3000
triggerall = command = "sg"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 6019
trigger2 = movecontact = 1
trigger3 = stateno = 6022
trigger3 = movecontact = 1 && Time > 20
trigger4 = stateno = 6013                   ;°¡³ª´Ù¶ó
trigger4 = movecontact = 1 && Time < 21     ;°¡³ª´Ù¶ó



;---------------------------------------------------------------------------
;½Â·æ 1
[State -1, SM2-1]
type = ChangeState
value = 1100
triggerall = command = "upper_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 6019
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;½Â·æ 2
[State -1, SM2-2]
type = ChangeState
value = 1120
triggerall = command = "upper_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 6019
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
;½Â·æ 3
[State -1, SM2-3]
type = ChangeState
value = 1140
triggerall = command = "upper_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 6019
trigger2 = movecontact = 1



;---------------------------------------------------------------------------
;ÀåÇ³ 1-1
[State -1, SM1-1]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ÀåÇ³ 1-2
[State -1, SM1-2]
type = ChangeState
value = 1001
triggerall = command = "QCF_y"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ÀåÇ³ 1-3
[State -1, SM1-3]
type = ChangeState
value = 1002
triggerall = command = "QCF_a"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;½ºÇÃ·¡½ÃÆÇÆ®1
[State -1, SP1]
type = ChangeState
value = 1200
triggerall = command = "sp1"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && Time < 6
trigger3 = stateno = 300 && Time < 4
trigger4 = stateno = 6019
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;½ºÇÃ·¡½ÃÆÇÆ®2
[State -1, SP2]
type = ChangeState
value = 1220
triggerall = command = "sp2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && Time < 9
trigger3 = stateno = 310 && Time < 11
trigger4 = stateno = 6019
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;½ºÇÃ·¡½ÃÆÇÆ®3
[State -1, SP3]
type = ChangeState
value = 1240
triggerall = command = "sp3"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220 && Time < 17
trigger3 = stateno = 320 && Time < 8
trigger4 = stateno = 6019
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;c+d attack
[State -1, ma]
type = ChangeState
value = 6000
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "ab"
trigger2 = command = "c" && command != "holddown"


;---------------------------------------------------------------------------
;Áß´Ü°ø°Ý
[State -1, ma]
type = ChangeState
value = 330
triggerall = statetype != A
trigger1 = ctrl
trigger1 = command = "c" && command = "holddown"
trigger2 = ctrl
trigger2 = command = "bc"
trigger3 = stateno = 280 && time > 14 && command = "c" && command = "holddown"
trigger4 = stateno = 280 && time > 14 && command = "bc"


; ´øÁö±â
[State -1, Catch]
type = ChangeState
value = 800
trigger1 = command = "holdfwd" && command="a"
triggerall = p2bodydist X < 15
triggerall = p2bodydist y > -20
triggerall = stateno != 100
triggerall = statetype = S
triggerall = p2movetype != H
triggerall = ctrl

; ´øÁö±â
[State -1, CatchB]
type = ChangeState
value = 810
trigger1 = command = "holdback" && command="a"
triggerall = p2bodydist X < 15
triggerall = p2bodydist y > -20
triggerall = stateno != 100
triggerall = statetype = S
triggerall = p2movetype != H
triggerall = ctrl




;[State -1, Sda]
;type = ChangeState
;value = 270
;triggerall = p2statetype = L
;triggerall = command = "upa"
;triggerall = ctrl
;trigger1 = stateno = 40
;trigger2 = statetype != A

[State -1, esc2]
type = ChangeState
triggerall = p2bodydist x < 30 
triggerall = ctrl
triggerall = statetype != A
trigger1 = command = "holdfwd" && command = "recovery"
trigger2 = command = "holdfwd" && command = "z"
value = 290

[State -1, esc]
type = ChangeState
triggerall = ctrl
triggerall = statetype != A
trigger1 = command = "recovery"
trigger2 = command = "z"
value = 280

[State -1, da]
type = ChangeState
value = 260
triggerall = statetype != A
triggerall = p2statetype = L
triggerall = ctrl
trigger1 = command = "holddown" && command = "holdfwd" && command = "x"
trigger2 = command = "holddown" && command = "holdfwd" && command = "y"
trigger3 = command = "holddown" && command = "holdfwd" && command = "a"



[State -1, dsk]
type = ChangeState
value = 250
triggerall = statetype = S
triggerall = ctrl
trigger1 = Stateno = 100 && command = "b"
trigger2 = Stateno = 101 && Time < 15 &&command = "b" 

[State -1, dsp]
type = ChangeState
value = 255
triggerall = statetype = S
triggerall = ctrl
trigger1 = Stateno = 100 && command = "x"
trigger2 = Stateno = 101 && Time < 10 &&command = "x" 

[State -1, dsms]
type = ChangeState
value = 256
triggerall = statetype = S
triggerall = ctrl
trigger1 = Stateno = 100 && command = "y"
trigger2 = Stateno = 101 && Time < 10 &&command = "y" 

[State -1, dsSs]
type = ChangeState
value = 257
triggerall = statetype = S
triggerall = ctrl
trigger1 = Stateno = 100 && command = "a"
trigger2 = Stateno = 101 && Time < 10 &&command = "a" 
;===========================================================================













;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Hop Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Close Stand Strong Slash
[State -1, csss]
type = ChangeState
value = 320
triggerall = command = "a"
triggerall = command != "holddown" && p2bodydist x < 40
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Close Stand Middle Slash
[State -1, csms]
type = ChangeState
value = 310
triggerall = command = "y"
triggerall = command != "holddown" && p2bodydist x < 40
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Close Stand Light Slash
[State -1, csls]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command != "holddown" && p2bodydist x < 45
trigger1 = statetype = S
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------
;Stand Strong Slash
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Middle Slash
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Slash
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Fwd Kick
[State -1, Standing Fwd Kick]
type = ChangeState
value = 240
triggerall = command = "fwd_k"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Kick
[State -1, Standing Kick]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl




;---------------------------------------------------------------------------
;Taunt
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl


;---------------------------------------------------------------------------
;Crouching Close Strong Slash
[State -1, ccss]
type = ChangeState
value = 520
triggerall = command = "a"
triggerall = command = "holddown" && p2bodydist x < 40
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Close Middle Slash
[State -1, ccms]
type = ChangeState
value = 510
triggerall = command = "y"
triggerall = command = "holddown" && p2bodydist x < 40
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Close Light Slash
[State -1, ccls]
type = ChangeState
value = 500
triggerall = command = "x"
triggerall = command = "holddown" && p2bodydist x < 40
trigger1 = statetype = C
trigger1 = ctrl





;---------------------------------------------------------------------------
;Crouching Strong Slash
[State -1, css]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Middle Slash
[State -1, cms]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Slash
[State -1, cls]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Tripp Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown" && command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Kick
[State -1, clk]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl














;---------------------------------------------------------------------------
;Jump Light slash
[State -1, jls]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump middle slash
[State -1, jms]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump strong slash
[State -1, jss]
type = ChangeState
value = 620
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Kick
[State -1, Jump Kick]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

