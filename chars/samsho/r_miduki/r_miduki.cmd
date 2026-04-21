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
;   name = "some_name"
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
;               command = /F, a    ;hold fwd while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;               command = ~30
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
;   popular fighting games implement their engine.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted


;-| ’´•KE‹Z |--------------------------------------------------------
[Command]
name = "hiougi"
command = ~F, D, B, F, c
time = 30

[Command]
name = "hiougi"
command = ~F, D, B, F, c
time = 30

[Command]
name = "hiougi"
command = ~F, D, B, F, c
time = 30

[Command]
name = "hiougi"
command = ~F, D, B, F, c
time = 30

[Command]
name = "hiougi"
command = ~F, D, B, F, c
time = 30

[Command]
name = "hiougi"
command = ~F, D, B, F, c
time = 30

[Command]
name = "tenti_makyouzin"
command = ~F, D, B, F, a
time = 30

[Command]
name = "tenti_makyouzin"
command = ~F, D, B, F, a
time = 30

[Command]
name = "tenti_makyouzin"
command = ~F, D, B, F, a
time = 30

[Command]
name = "tenti_makyouzin"
command = ~F, D, B, F, a
time = 30

[Command]
name = "tenti_makyouzin"
command = ~F, D, B, F, a
time = 30

;-| •KE‹Z |------------------------------------------------------
[Command]
name = "makai_tensyou_a"
command = /$D, a+b
time = 20

[Command]
name = "makai_tensyou_b"
command = /$D, b+c
time = 20

[Command]
name = "haki_inmetuzin"
command = ~D, F, x
time = 20

[Command]
name = "gasin1"
command = ~D, B, a
time = 10

[Command]
name = "gasin2"
command = ~D, B, b
time = 10

[Command]
name = "gasin3"
command = ~D, B, x
time = 10

[Command]
name = "gasin1"
command = ~D, B, a
time = 10

[Command]
name = "gasin2"
command = ~D, B, b
time = 10

[Command]
name = "gasin3"
command = ~D, B, x
time = 10

[Command]
name = "zyasin_kyoumei_a"
command = ~D, F, a
time = 10

[Command]
name = "zyasin_kyoumei_b"
command = ~D, F, b
time = 10

[Command]
name = "syounetu1"
command = ~F, D, B, a
time = 20

[Command]
name = "syounetu2"
command = ~F, D, B, b
time = 20

[Command]
name = "syounetu3"
command = ~F, D, B, c
time = 20

;-| ƒ_ƒbƒVƒ… |-----------------------------------------------------------
[Command]
name = "FF+a"
command = F, F, a
time = 20

[Command]
name = "FF+b"
command = F, F, b
time = 20

[Command]
name = "FF+c"
command = F, F, c
time = 20

[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 20

;-| ƒLƒƒƒ“ƒZƒ‹ƒWƒƒƒ“ƒv |-----------------------------------------------
[Command]
name = "c_jump_F"
command = UF
time = 5

[Command]
name = "c_jump_N"
command = U
time = 5

[Command]
name = "c_jump_B"
command = UB
time = 5

;-| “¯‰Ÿ‚µ |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "xa"
command = x+a
time = 1

;-| •ûŒü{ƒ{ƒ^ƒ“ |---------------------------------------------------------
[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

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
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
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
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

;-| ‚Pƒ{ƒ^ƒ“ |---------------------------------------------------------
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

;-| ‰Ÿ‚µ‚Á‚Ï‚È‚µ |--------------------------------------------------------------
[Command]
name = "holddown";Required (do not remove)
command = /$D
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
name = "hold_c"
command = /$c
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
name = "holdup";Required (do not remove)
command = /$U
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
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;’´•KE‹Z
;===========================================================================
;---------------------------------------------------------------------------
; ???
[State -1]
type = ChangeState
value = 3500
triggerall = command = "hiougi"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl = 1

trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;---------------------------------------------------------------------------
; “V’n–‚‹«w
[State -1]
type = ChangeState
value = 3000
triggerall = command = "tenti_makyouzin"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl = 1

trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
; ”e‹CÅ”MwQã
[State -1]
type = ChangeState
value = 1500
triggerall = command = "syounetu1"
triggerall = statetype != A
trigger1 = ctrl = 1

trigger2 = stateno >= 200
trigger2 = stateno <= 299
trigger2 = movecontact

trigger3 = stateno >= 400
trigger3 = stateno <= 500
trigger3 = movecontact

;---------------------------------------------------------------------------
; ”e‹CÅ”MwQ’†
[State -1]
type = ChangeState
value = 1600
triggerall = command = "syounetu2"
triggerall = statetype != A
trigger1 = ctrl = 1

trigger2 = stateno >= 200
trigger2 = stateno <= 299
trigger2 = movecontact

trigger3 = stateno >= 400
trigger3 = stateno <= 500
trigger3 = movecontact

;---------------------------------------------------------------------------
; ”e‹CÅ”MwQ‹­
[State -1]
type = ChangeState
value = 1700
triggerall = command = "syounetu3"
triggerall = statetype != A
trigger1 = ctrl = 1

trigger2 = stateno >= 200
trigger2 = stateno <= 299
trigger2 = movecontact

trigger3 = stateno >= 400
trigger3 = stateno <= 500
trigger3 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
; ‰ä_‹Q”š°i‚ª‚µ‚ñ‚«‚Î‚­‚±‚ñj
[State -1,kibaku]
type = ChangeState
value = 2000
triggerall = command = "gasin1"
triggerall = statetype != A
triggerall = helper(10000),stateno = 10000
trigger1 = ctrl = 1

trigger2 = stateno >= 200
trigger2 = stateno <= 299
trigger2 = movecontact

trigger3 = stateno >= 400
trigger3 = stateno <= 500
trigger3 = movecontact

;---------------------------------------------------------------------------
; ‰ä_‹¤–Â°i‚ª‚µ‚ñ‚«‚å‚¤‚ß‚¢‚±‚ñj
[State -1]
type = ChangeState
value = 2100
triggerall = command = "gasin2"
triggerall = statetype != A
triggerall = helper(10000),stateno = 10000
trigger1 = ctrl = 1

trigger2 = stateno >= 200
trigger2 = stateno <= 299
trigger2 = movecontact

trigger3 = stateno >= 400
trigger3 = stateno <= 500
trigger3 = movecontact

;---------------------------------------------------------------------------
; ‰ä_•Ï—ô°i‚ª‚µ‚ñ‚Ö‚ñ‚ê‚Â‚±‚ñj
[State -1]
type = ChangeState
value = 2200
triggerall = command = "gasin3"
triggerall = statetype != A
triggerall = helper(10000),stateno = 10000
trigger1 = ctrl = 1

trigger2 = stateno >= 200
trigger2 = stateno <= 299
trigger2 = movecontact

trigger3 = stateno >= 400
trigger3 = stateno <= 500
trigger3 = movecontact

;---------------------------------------------------------------------------
; ×S‹¤–ÂQã
[State -1]
type = ChangeState
value = 1000
triggerall = command = "zyasin_kyoumei_a"
triggerall = statetype != A
triggerall = numhelper(1000) = 0
trigger1 = ctrl = 1

trigger2 = stateno >= 200
trigger2 = stateno <= 299
trigger2 = movecontact

trigger3 = stateno >= 400
trigger3 = stateno <= 500
trigger3 = movecontact

;---------------------------------------------------------------------------
; ×S‹¤–ÂQ‹­
[State -1]
type = ChangeState
value = 1100
triggerall = command = "zyasin_kyoumei_b"
triggerall = statetype != A
triggerall = numhelper(1000) = 0
trigger1 = ctrl = 1

trigger2 = stateno >= 200
trigger2 = stateno <= 299
trigger2 = movecontact

trigger3 = stateno >= 400
trigger3 = stateno <= 500
trigger3 = movecontact

;---------------------------------------------------------------------------
; ”e‹C‰A–Åw
[State -1]
type = ChangeState
value = 1200
triggerall = command = "haki_inmetuzin"
triggerall = statetype != A
triggerall = numhelper(1000) = 0
trigger1 = ctrl = 1

trigger2 = stateno >= 200
trigger2 = stateno <= 299
trigger2 = movecontact

trigger3 = stateno >= 400
trigger3 = stateno <= 500
trigger3 = movecontact

;---------------------------------------------------------------------------
; –‚ŠE“]¶Q‘O
[State -1]
type = ChangeState
value = 1300
triggerall = command = "makai_tensyou_a"
:triggerall = statetype != A
trigger1 = ctrl = 1

trigger2 = stateno >= 200
trigger2 = stateno <= 299
trigger2 = movecontact

trigger3 = stateno >= 400
trigger3 = stateno <= 500
trigger3 = movecontact

;---------------------------------------------------------------------------
; –‚ŠE“]¶QŒã
[State -1]
type = ChangeState
value = 1400
triggerall = command = "makai_tensyou_b"
;triggerall = statetype != A
trigger1 = ctrl = 1

trigger2 = stateno >= 200
trigger2 = stateno <= 299
trigger2 = movecontact

trigger3 = stateno >= 400
trigger3 = stateno <= 500
trigger3 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
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

;---------------------------------------------------------------------------
; “Š‚°
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100      ;Not running
triggerall = p2bodydist X < 15
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = command = "fwd_c";Near, p2 stand
trigger2 = command = "back_c";Near, p2 stand

;===========================================================================
;---------------------------------------------------------------------------
;—§‚¿QƒLƒbƒN
[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;—§‚¿Qãi‹ß‹——£j
[State -1]
type = ChangeState
value = 201
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X < 30
trigger1 = statetype = S
trigger1 = ctrl = 1

;—§‚¿Qã
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;—§‚¿Q’†i‹ß‹——£j
[State -1]
type = ChangeState
value = 211
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X < 30
trigger1 = statetype = S
trigger1 = ctrl = 1

;—§‚¿Q’†
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;—§‚¿Q‹­i‹ß‹——£j
[State -1]
type = ChangeState
value = 221
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = p2bodydist X < 30
trigger1 = statetype = S
trigger1 = ctrl = 1

;—§‚¿Q‹­
[State -1]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İQƒLƒbƒN
[State -1]
type = ChangeState
value = 430
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İQãi‹ß‹——£j
[State -1]
type = ChangeState
value = 401
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = p2bodydist X < 30
trigger1 = statetype != A
trigger1 = ctrl = 1

;‚µ‚á‚ª‚İQã
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İQ’†i‹ß‹——£j
[State -1]
type = ChangeState
value = 411
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = p2bodydist X < 30
trigger1 = statetype != A
trigger1 = ctrl = 1

;‚µ‚á‚ª‚İQ’†
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İQ‹­
[State -1]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ƒWƒƒƒ“ƒvQƒLƒbƒN
[State -1]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ƒWƒƒƒ“ƒvQã
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
triggerall = stateno != 650 ;ƒWƒƒƒ“ƒvUŒ‚Œã
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ƒWƒƒƒ“ƒvQ’†
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
triggerall = stateno != 650 ;ƒWƒƒƒ“ƒvUŒ‚Œã
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ƒWƒƒƒ“ƒvQ‹­
[State -1]
type = ChangeState
value = 620
triggerall = command = "c"
triggerall = stateno != 650 ;ƒWƒƒƒ“ƒvUŒ‚Œã
trigger1 = statetype = A
trigger1 = ctrl = 1



