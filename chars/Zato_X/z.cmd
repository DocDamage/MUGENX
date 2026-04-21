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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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


[Command]
name = "cpu1"
command = D, F, x, x, x, y
time = 1

[Command]
name = "cpu2"
command = D, F, y, z, y, a
time = 1

[Command]
name = "cpu3"
command = D, F, z, z, z, y
time = 1

[Command]
name = "cpu4"
command = D, F, a, a, a, y
time = 1

[Command]
name = "cpu5"
command = D, F, b, a, a, y
time = 1

[Command]
name = "cpu6"
command = D, F, c, b, a, y
time = 1

[Command]
name = "cpu7"
command = D, F, c, c, a, y
time = 1

[Command]
name = "cpu8"
command = D, F, y, x, y, a
time = 1

[Command]
name = "cpu9"
command = D, F, x, y, a, y
time = 1

[Command]
name = "cpu10"
command = D, F, D, DF, F, x, z
time = 1

[Command]
name = "cpu11"
command = D, F, D, DF, B, x, a
time = 1

[Command]
name = "cpu12"
command = D, F, U, DF, F, a, b
time = 1

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

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]
name = "R"
command = ~D, DB, B, D, DB, B, y
time = 20

[Command]
name = "B"
command = ~D, DB, B, DB, D, DF, F, b
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

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
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "HCB_x"
command = ~F, D, DB, B, x

[Command]
name = "HCB_y"
command = ~F, D, DB, B, y

[Command]
name = "HCB_xy"
command = ~F, D, DB, B, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

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
name = "holdb"
command = /B
time = 1

[Command]
name = "holdf"
command = /F
time = 1

[Command]
name = "holdd"
command = /D
time = 1

[Command]
name = "holdu"
command = /U
time = 1

[Command]
name = "holddf"
command = /DF
time = 1

[Command]
name = "holddb"
command = /DB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holduf"
command = /UF
time = 1

[Command]
name = "holdub"
command = /UB
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
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
[State -2]
type = varset
triggerall = var(59) = 0
trigger1 = command = "cpu1" || command = "cpu2" || command = "cpu3" || command = "cpu4" || command = "cpu5" || command = "cpu6"
trigger2 = command = "cpu7" || command = "cpu8" || command = "cpu9" || command = "cpu10" || command = "cpu11" || command = "cpu12"
var(59) = 1

;---------------------------------------------------------------------------
;くらっかーすぺしゃる（MSゲージレベル１）
[State -1, くらっかーすぺしゃる]
type = ChangeState
value = 3000
triggerall = command = "QCF_xy"
triggerall = var(58) < 5
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3300)
trigger2 = movecontact
trigger3 = stateno = [21,24]

;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3050
triggerall = command = "SmashKFUpper"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3300)
trigger2 = movecontact
trigger3 = stateno = [21,24]

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3020
triggerall = command = "TripleKFPalm" && (PalNo != [4,6])
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3300)
trigger2 = movecontact
trigger3 = stateno = [21,24]

;---------------------------------------------------------------------------
;R (uses one super bar)
;R（ゲージレベル１）
[State -1, R]
type = ChangeState
value = 1050
triggerall = command = "R" && (PalNo != [4,6])
triggerall = power >= 1000 && var(10) < 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3300)
trigger2 = movecontact
trigger3 = stateno = [21,24]

;---------------------------------------------------------------------------
;B (uses one super bar)
;B（ゲージレベル１）
[State -1, R]
type = ChangeState
value = 3100
triggerall = command = "B" && (PalNo != [4,6])
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3300)
trigger2 = movecontact
trigger3 = stateno = [21,24]

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)
;速いズクマシンガン（ゲージレベル１／３）
[State -1, Fast Zaku MG]
type = ChangeState
value = 1040
triggerall = command = "QCB_c" && (PalNo != [4,6])
triggerall = power >= 330
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = [21,24]

;---------------------------------------------------------------------------
;ズクマシンガン
[State -1, Light Zaku MG]
type = ChangeState
value = 1000+500*(PalNo > 9)
triggerall = command = "QCF_x"
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = [21,24]

;---------------------------------------------------------------------------
;ズクマシンガン
[State -1, Strong Zaku MG]
type = ChangeState
value = 1010+500*(PalNo > 9)
triggerall = command = "QCF_y"
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = [21,24]

;---------------------------------------------------------------------------
;ズクマシンガン
[State -1, Light Zaku MG]
type = ChangeState
value = 1020+5*(var(8) = [1,367])
triggerall = command = "QCF_x" && (stateno != [1100,1115]) &&PalNo <10
trigger1 = statetype = A && ctrl
trigger2 = stateno = [770,780]
trigger3 = (stateno = [600,645]) && movecontact
trigger4 = (stateno = [700,720]) && statetype = A

;---------------------------------------------------------------------------
;ズクマシンガン
[State -1, Strong Zaku MG]
type = ChangeState
value = 1030+5*(var(8) = [1,367])
triggerall = command = "QCF_y" &&PalNo <10
trigger1 = statetype = A && ctrl
trigger2 = stateno = [770,780]
trigger3 = (stateno = [605,615]) || (stateno = [635,645])
trigger3 = stateno != 610 && stateno != 640 && movecontact
trigger4 = (stateno = [700,720]) && statetype = A

;---------------------------------------------------------------------------
;Thruster Mode
[State -1, Thruster Mode]
type = ChangeState
value = 760
triggerall = command = "QCF_z" && numexplod(93) = 0
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = [21,24]

;---------------------------------------------------------------------------
;ライジングタックル (1/3 super bar)
;速いライジングタックル
[State -1, Fast RT]
type = ChangeState
value = 1120
triggerall = command = "QCF_c" && (PalNo != [4,6])
triggerall = power >= 330
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = [21,24]

;---------------------------------------------------------------------------
;Light Kung Fu Upper
;ライジングタックル（弱）
[State -1, Light RT]
type = ChangeState
value = 1100
triggerall = command = "QCF_a" && var(9) = 0 && stateno != [1100,1115]
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = [21,24]

;---------------------------------------------------------------------------
;Strong Kung Fu Upper
;ライジングタックル（強）
[State -1, Strong RT]
type = ChangeState
value = 1105
triggerall = command = "QCF_b" && var(9) = 0 && stateno != [1100,1115]
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = [21,24]

;---------------------------------------------------------------------------
;Light Kung Fu Upper
;ライジングタックル（弱）
[State -1, Light RT]
type = ChangeState
value = 1110+5*(var(8) = [1,367])
triggerall = command = "QCF_a" && var(9) = 0 && stateno != [1100,1115]
trigger1 = statetype = A && ctrl
trigger2 = stateno = [770,780]
trigger3 = (stateno = [600,645]) && movecontact
trigger4 = (stateno = [700,720]) && statetype = A

;---------------------------------------------------------------------------
;Strong Kung Fu Upper
;ライジングタックル（強）
[State -1, Strong RT]
type = ChangeState
value = 1110+5*(var(8) = [1,367])
triggerall = command = "QCF_b" && var(9) = 0
trigger1 = statetype = A && ctrl
trigger2 = stateno = [770,780]
trigger3 = (stateno = [605,615]) || (stateno = [635,645])
trigger3 = stateno != 610 && stateno != 640 && movecontact
trigger4 = (stateno = [700,720]) && statetype = A

;---------------------------------------------------------------------------
;ヒートホーク
[State -1, Light HH]
type = ChangeState
value = 1300
triggerall = command = "HCB_x"
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = [21,24]

;---------------------------------------------------------------------------
;ヒートホーク
[State -1, Strong HH]
type = ChangeState
value = 1310
triggerall = command = "HCB_y"
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = [21,24]

;---------------------------------------------------------------------------
;Fast Kung Fu Blow (1/3 super bar)
[State -1, Fast firecracker]
type = ChangeState
value = 1220
triggerall = command = "QCB_xy" && (PalNo != [4,6])
triggerall = power >= 330
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = [21,24]

;---------------------------------------------------------------------------
;クラッカー
[State -1, Light firecracker]
type = ChangeState
value = 1200
triggerall = command = "QCB_x"
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = [21,24]

;---------------------------------------------------------------------------
;クラッカー
[State -1, Strong firecracker]
type = ChangeState
value = 1210
triggerall = command = "QCB_y"
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = [21,24]

;---------------------------------------------------------------------------
;クラッカー
[State -1, Strong firecracker]
type = ChangeState
value = 1400
triggerall = command = "QCB_a" && statetype != A && (PalNo != [4,6])
trigger1 = ctrl
trigger2 = stateno = [21,24]

;---------------------------------------------------------------------------
;クラッカー
[State -1, Strong firecracker]
type = ChangeState
value = 1450+5*(p2movetype = H)
triggerall = command = "QCB_a" && statetype = A && Pos Y < -15
trigger1 = ctrl && (PalNo != [4,6])

;---------------------------------------------------------------------------
;クラッカー
[State -1, Air firecracker]
type = ChangeState
value = 1250+5*(var(8) = [1,367])
triggerall = command = "QCB_x" || command = "QCB_y"
trigger1 = statetype = A && ctrl
trigger2 = stateno = [770,780]
trigger3 = (stateno = [600,645]) && movecontact
trigger4 = (stateno = [700,720]) && statetype = A

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
;避け
[State -1]
type = ChangeState
value = 750+(StateType = A)
triggerall = command = "ab" || command = "recovery"
trigger1 = ctrl
trigger2 = (stateno = [701,702]) || stateno = [711,712]

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl || (stateno = [20,23])
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Boost
[State -1, Boost]
type = ChangeState
value = 710-8*(statetype = A)
trigger1 = command = "z" && (command = "holduf" || command = "holdub")
trigger1 = numexplod(93) = 0
trigger1 = ctrl

[State -1, Boost]
type = ChangeState
value = 705-3*(statetype = A)
trigger1 = command = "z" && (command = "holdf" || command = "holdb")
trigger1 = numexplod(93) = 0
trigger1 = ctrl

[State -1, Boost]
type = ChangeState
value = 700+2*(statetype = A)
trigger1 = command = "z" && (command != "holdfwd" && command != "holdback")
trigger1 = numexplod(93) = 0
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
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
trigger2 = time > 14
trigger3 = stateno = [21,24]

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 250
triggerall = command = "b"
triggerall = command = "holdf"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = [21,24]

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
trigger4 = stateno = [21,24]

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
trigger2 = (stateno = 200) && time > 14
trigger3 = (stateno = 230) && time > 16
trigger4 = stateno = [21,24]

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
trigger4 = stateno = [21,24]

;---------------------------------------------------------------------------
;Taunt
;挑発
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------
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
trigger2 = (time > 16) || (movecontact && time > 5)

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
trigger2 = (time > 16)

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
value = 620
triggerall = command = "x" && command = "holdd" && var(8) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = [700,720]) && statetype = A

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600+5*(var(8) = [1,367])
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = [700,720]) && statetype = A

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610+5*(var(8) = [1,367])
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = [700,720]) && statetype = A

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630+5*(var(8) = [1,367])
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = (stateno = [700,720]) && statetype = A
;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "b" && command = "holdd" && var(8) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = [700,720]) && statetype = A
;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640+5*(var(8) = [1,367])
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = [700,720]) && statetype = A
