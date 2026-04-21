; CvsKim's CMD file.
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
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "H1-1"
command = ~D, B, D, F, a
Time = 30

[Command]
name = "H1-2"
command = ~D, B, D, F, b
Time = 30

[Command]
name = "H1-3"
command = ~D, B, D, F, a+b
Time = 30

[Command]
name = "H1-3"
command = ~D, B, D, F, c
Time = 30


[Command]
name = "H2-1"
command = ~D, F, D, B, a
Time = 30

[Command]
name = "H2-2"
command = ~D, F, D, B, b
Time = 30

[Command]
name = "H2-3"
command = ~D, F, D, B, a+b
Time = 30

[Command]
name = "H2-3"
command = ~D, F, D, B, c
Time = 30


[Command]
name = "H3-1"
command = ~D, F, D, F, a
Time = 30

[Command]
name = "H3-2"
command = ~D, F, D, F, b
Time = 30

[Command]
name = "H3-3"
command = ~D, F, D, F, a+b
Time = 30

[Command]
name = "H3-3"
command = ~D, F, D, F, c
Time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "S1-1"
command = ~D, DB, B, a

[Command]
name = "S1-2"
command = ~D, DB, B, b


[Command]
name = "S2-1"
command = ~D, D, a

[Command]
name = "S2-2"
command = ~D, D, b


[Command]
name = "S3-1"
command = ~30$D, U, a

[Command]
name = "S3-2"
command = ~30$D, U, b


[Command]
name = "S4-1"
command = ~D, DF, F, a

[Command]
name = "S4-2"
command = ~D, DF, F, b


[Command]
name = "S5-1"
command = ~30$D, U, x

[Command]
name = "S5-2"
command = ~30$D, U, y


[Command]
name = "S6-1"
command = ~30$B, F, a


[Command]
name = "S6-2"
command = ~30$B, F, b



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "RUN"
command = F, F
time = 10

[Command]
name = "FF"     ;Required (do not remove)
command = D, D, D
time = 15

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "HighJump"
command = D, $U
time = 18

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y+b
time = 1

[Command]
name = "Roll"
command = x+a
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
name = "holdb"
command = /$b
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
name = "Roll"
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
;ºÀÈ²°¢ 3
;
[State -1, H1-3]
type = ChangeState
value = 3060
triggerall = power >= 3000
triggerall = command = "H1-3" 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1050 && movecontact
trigger2 = AnimElemTime(5) > 1
trigger3 = stateno = 1060 && movecontact
trigger3 = AnimElemTime(5) > 1
trigger4 = stateno = 215 && movecontact && AnimElemTime(7) < 0
trigger4 = AnimElemTime(3) >= 1
trigger5 = stateno = 410 && movecontact && AnimElemTime(6) < 0
trigger5 = AnimElemTime(4) >= 1

;---------------------------------------------------------------------------
;ºÀÈ²°¢ 2
;
[State -1, H1-2]
type = ChangeState
value = 3050
triggerall = power >= 2000
triggerall = command = "H1-2"  || command = "H1-3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1050 && movecontact
trigger2 = AnimElemTime(5) > 1
trigger3 = stateno = 1060 && movecontact
trigger3 = AnimElemTime(5) > 1
trigger4 = stateno = 215 && movecontact && AnimElemTime(7) < 0
trigger4 = AnimElemTime(3) >= 1
trigger5 = stateno = 410 && movecontact && AnimElemTime(6) < 0
trigger5 = AnimElemTime(4) >= 1

;---------------------------------------------------------------------------
;ºÀÈ²°¢ 1
;
[State -1, H1-1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "H1-1" || command = "H1-2" || command = "H1-3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1050 && movecontact
trigger2 = AnimElemTime(5) > 1
trigger3 = stateno = 1060 && movecontact
trigger3 = AnimElemTime(5) > 1
trigger4 = stateno = 215 && movecontact && AnimElemTime(7) < 0
trigger4 = AnimElemTime(3) >= 1
trigger5 = stateno = 410 && movecontact && AnimElemTime(6) < 0
trigger5 = AnimElemTime(4) >= 1


;---------------------------------------------------------------------------
;°øÁßºÀÈ²°¢3
;
[State -1, H2-3]
type = ChangeState
value = 3160
triggerall = power >= 3000
triggerall = command = "H2-3"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact && AnimElemTime(4) <= 2
trigger2 = AnimElemTime(3) >= 1
trigger3 = stateno = 640 && movecontact && AnimElemTime(4) <= 2
trigger3 = AnimElemTime(3) >= 1


;---------------------------------------------------------------------------
;°øÁßºÀÈ²°¢2
;
[State -1, H2-2]
type = ChangeState
value = 3150
triggerall = power >= 2000
triggerall = command = "H2-2" || command = "H2-3" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact && AnimElemTime(4) <= 2
trigger2 = AnimElemTime(3) >= 1
trigger3 = stateno = 640 && movecontact && AnimElemTime(4) <= 2
trigger3 = AnimElemTime(3) >= 1


;---------------------------------------------------------------------------
;°øÁßºÀÈ²°¢1
;
[State -1, H2-1]
type = ChangeState
value = 3100
triggerall = power >= 1000
triggerall = command = "H2-1" || command = "H2-2" || command = "H2-3" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact && AnimElemTime(4) <= 2
trigger2 = AnimElemTime(3) >= 1
trigger3 = stateno = 640 && movecontact && AnimElemTime(4) <= 2
trigger3 = AnimElemTime(3) >= 1






;---------------------------------------------------------------------------
;ÃÊÇÊ3-3
;
[State -1, H3-3]
type = ChangeState
value = 3260
triggerall = power >= 3000
triggerall = command = "H3-3" 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact && AnimElemTime(7) < 0
trigger2 = AnimElemTime(3) >= 1
trigger3 = stateno = 410 && movecontact && AnimElemTime(6) < 0
trigger3 = AnimElemTime(4) >= 1
trigger4 = stateno = 430 && movecontact
trigger4 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger5 = stateno = 400 && movecontact
trigger5 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger6 = stateno = 1050 && movecontact
trigger6 = AnimElemTime(5) > 1
trigger7 = stateno = 1060 && movecontact
trigger7 = AnimElemTime(5) > 1

;---------------------------------------------------------------------------
;ÃÊÇÊ3-2
;
[State -1, H3-2]
type = ChangeState
value = 3250
triggerall = power >= 2000
triggerall = command = "H3-2"  || command = "H3-3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact && AnimElemTime(7) < 0
trigger2 = AnimElemTime(3) >= 1
trigger3 = stateno = 410 && movecontact && AnimElemTime(6) < 0
trigger3 = AnimElemTime(4) >= 1
trigger4 = stateno = 430 && movecontact
trigger4 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger5 = stateno = 400 && movecontact
trigger5 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger6 = stateno = 1050 && movecontact
trigger6 = AnimElemTime(5) > 1
trigger7 = stateno = 1060 && movecontact
trigger7 = AnimElemTime(5) > 1

;---------------------------------------------------------------------------
;ÃÊÇÊ3-1
;
[State -1, H3-1]
type = ChangeState
value = 3200
triggerall = power >= 1000
triggerall = command = "H3-1"  || command = "H3-2" || command = "H3-3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 215 && movecontact && AnimElemTime(7) < 0
trigger2 = AnimElemTime(3) >= 1
trigger3 = stateno = 410 && movecontact && AnimElemTime(6) < 0
trigger3 = AnimElemTime(4) >= 1
trigger4 = stateno = 430 && movecontact
trigger4 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger5 = stateno = 400 && movecontact
trigger5 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger6 = stateno = 1050 && movecontact
trigger6 = AnimElemTime(5) > 1
trigger7 = stateno = 1060 && movecontact
trigger7 = AnimElemTime(5) > 1



;---------------------------------------------------------------------------
;¹Ý¿ùÂü á³
;
[State -1, S1-1]
type = ChangeState
value = 1000
triggerall = command = "S1-1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 430 && movecontact
trigger2 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger3 = stateno = 400 && movecontact
trigger3 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger4 = stateno = 215 && movecontact && AnimElemTime(7) < 0
trigger4 = AnimElemTime(3) >= 1

;---------------------------------------------------------------------------
;¹Ý¿ùÂü ÓÞ
;
[State -1, S1-2]
type = ChangeState
value = 1010
triggerall = command = "S1-2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 430 && movecontact
trigger2 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger3 = stateno = 400 && movecontact
trigger3 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger4 = stateno = 215 && movecontact && AnimElemTime(7) < 0
trigger4 = AnimElemTime(3) >= 1

;---------------------------------------------------------------------------
;ÆÐ±â°¢ á³
;
[State -1, S2-1]
type = ChangeState
value = 1050
triggerall = command = "S2-1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 430 && movecontact
trigger2 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger3 = stateno = 400 && movecontact
trigger3 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger4 = stateno = 215 && movecontact && AnimElemTime(7) < 0
trigger4 = AnimElemTime(3) >= 1

;---------------------------------------------------------------------------
;ÆÐ±â°¢ ÓÞ
;
[State -1, S2-1]
type = ChangeState
value = 1060
triggerall = command = "S2-2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 430 && movecontact
trigger2 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger3 = stateno = 400 && movecontact
trigger3 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger4 = stateno = 215 && movecontact && AnimElemTime(7) < 0
trigger4 = AnimElemTime(3) >= 1

;---------------------------------------------------------------------------
;ºñ¿¬Âü á³
;
[State -1, S3-1]
type = ChangeState
value = 1100
triggerall = command = "S3-1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 40
trigger3 = stateno = 430 && movecontact
trigger3 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger4 = stateno = 400 && movecontact
trigger4 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger5 = stateno = 215 && movecontact && AnimElemTime(7) < 0
trigger5 = AnimElemTime(3) >= 1

;---------------------------------------------------------------------------
;ºñ¿¬Âü ÓÞ
;
[State -1, S3-2]
type = ChangeState
value = 1110
triggerall = command = "S3-2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 40
trigger3 = stateno = 430 && movecontact
trigger3 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger4 = stateno = 400 && movecontact
trigger4 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger5 = stateno = 215 && movecontact && AnimElemTime(7) < 0
trigger5 = AnimElemTime(3) >= 1



;---------------------------------------------------------------------------
;ºñ»ó°¢ á³
;
[State -1, S4-1]
type = ChangeState
value = 1150
triggerall = command = "S4-1"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && AnimElemTime(5) < 0
trigger2 = AnimElemTime(2) >= 1
trigger3 = stateno = 630 && movecontact && AnimElemTime(5) < 0
trigger3 = AnimElemTime(2) >= 1
trigger4 = stateno = 610 && movecontact && AnimElemTime(4) <= 2
trigger4 = AnimElemTime(3) >= 1
trigger5 = stateno = 640 && movecontact && AnimElemTime(4) <= 2
trigger5 = AnimElemTime(3) >= 1

;---------------------------------------------------------------------------
;ºñ»ó°¢ ÓÞ
;
[State -1, S4-2]
type = ChangeState
value = 1160
triggerall = command = "S4-2"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact && AnimElemTime(5) < 0
trigger2 = AnimElemTime(2) >= 1
trigger3 = stateno = 630 && movecontact && AnimElemTime(5) < 0
trigger3 = AnimElemTime(2) >= 1
trigger4 = stateno = 610 && movecontact && AnimElemTime(4) <= 2
trigger4 = AnimElemTime(3) >= 1
trigger5 = stateno = 640 && movecontact && AnimElemTime(4) <= 2
trigger5 = AnimElemTime(3) >= 1


;---------------------------------------------------------------------------
;°ø»çÁø á³
;
[State -1, S5-1]
type = ChangeState
value = 1200
triggerall = command = "S5-1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 40
trigger3 = stateno = 430 && movecontact
trigger3 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger4 = stateno = 400 && movecontact
trigger4 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger5 = stateno = 215 && movecontact && AnimElemTime(7) < 0
trigger5 = AnimElemTime(3) >= 1

;---------------------------------------------------------------------------
;°ø»çÁø ÓÞ
;
[State -1, S5-2]
type = ChangeState
value = 1210
triggerall = command = "S5-2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 40
trigger3 = stateno = 430 && movecontact
trigger3 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger4 = stateno = 400 && movecontact
trigger4 = AnimElemTime(2) > 1 ;&& AnimElemTime(4) <= 1
trigger5 = stateno = 215 && movecontact && AnimElemTime(7) < 0
trigger5 = AnimElemTime(3) >= 1



---------------------------------------------------------------------------
;À¯¼º¶ô á³
;
[State -1, S6-1]
type = ChangeState
value = 1250
triggerall = command = "S6-1"
trigger1 = statetype != A
trigger1 = ctrl


---------------------------------------------------------------------------
;À¯¼º¶ô ÓÞ
;
[State -1, S6-2]
type = ChangeState
value = 1260
triggerall = command = "S6-2"
trigger1 = statetype != A
trigger1 = ctrl



;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "RUN"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Dash Fwd
;ƒ_ƒbƒVƒ…
[State -1, Dash Fwd]
type = ChangeState
value = 102
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;Œã‘Þƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Roll
;Œã‘Þƒ_ƒbƒVƒ…
[State -1, Roll]
type = ChangeState
value = 750
trigger1 = command = "Roll"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;¼ÕÀâ±â
;
[State -1, Hand Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 4
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;---------------------------------------------------------------------------
;¹ßÀâ±â
;
[State -1, Foot Throw]
type = ChangeState
value = 850
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 4
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;---------------------------------------------------------------------------
;¹ß¹Ù²Ù±â A3
;—§‚¿Žãƒpƒ“ƒ`
[State -1, A]
type = ChangeState
value = 701
triggerall = command = "holdfwd"
triggerall = command = "x"
trigger1 = stateno = 10000
;---------------------------------------------------------------------------
;¹ß¹Ù²Ù±â A2
;—§‚¿Žãƒpƒ“ƒ`
[State -1, A]
type = ChangeState
value = 702
triggerall = command = "holdback"
triggerall = command = "x"
trigger1 = stateno = 10000
;---------------------------------------------------------------------------
;¹ß¹Ù²Ù±â A1
;—§‚¿Žãƒpƒ“ƒ`
[State -1, A]
type = ChangeState
value = 700
triggerall = command = "x"
trigger1 = stateno = 10000


;---------------------------------------------------------------------------
;¹ß¹Ù²Ù±â B
;—§‚¿Žãƒpƒ“ƒ`
[State -1, B]
type = ChangeState
value = 710
triggerall = command = "y"
trigger1 = stateno = 10000

;---------------------------------------------------------------------------
;¹ß¹Ù²Ù±â C
;—§‚¿Žãƒpƒ“ƒ`
[State -1, C]
type = ChangeState
value = 720
triggerall = command = "a"
trigger1 = stateno = 10000


;===========================================================================
;---------------------------------------------------------------------------
;³»·ÁÂ÷±â (1)
[State -1, asdfg]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Stand Light Punch
;—§‚¿Žãƒpƒ“ƒ`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time >= 8


;---------------------------------------------------------------------------
;Stand Close Strong Punch
;—§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Close Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown" && p2bodydist x < 30
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Stand Strong Punch
;—§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand Close Light Kick
;—§‚¿ŽãƒLƒbƒN
[State -1, Stand Close Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown" && p2bodydist x < 16
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = AnimElemTime(2) >= 1 ;&& AnimElemTime(3) <= 1

;---------------------------------------------------------------------------
;Stand Light Kick
;—§‚¿ŽãƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = time >= 13
trigger3 = stateno = 200 && movecontact
trigger3 = AnimElemTime(2) >= 1 ;&& AnimElemTime(3) <= 1


;---------------------------------------------------------------------------
;Standing Strong Kick
;—§‚¿‹­ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;‚µ‚á‚ª‚ÝŽãƒpƒ“ƒ`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && movecontact
trigger2 = AnimElemTime(2) > 1 ;&& AnimElemTime(3) <= 1
trigger3 = stateno = 400 &&  Time >= 8

;---------------------------------------------------------------------------
;Crouching Strong Punch
;‚µ‚á‚ª‚Ý‹­ƒpƒ“ƒ`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
;Crouching Light Kick
;‚µ‚á‚ª‚ÝŽãƒLƒbƒN
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger2 = AnimElemTime(2) > 1 ;&& AnimElemTime(3) <= 1
trigger3 = stateno = 430 && Time >= 8

;---------------------------------------------------------------------------
;Crouching Strong Kick
;‚µ‚á‚ª‚Ý‹­ƒLƒbƒN
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Light Punch
;‹ó’†Žãƒpƒ“ƒ`
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
;‹ó’†‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl


