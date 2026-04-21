; Yunfei's CMD File
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


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name 	= "Zetsumei Ougi"
command = ~D, DB, B, y+b
time 	= 40

[Command]
name	= "Tenkai_Unri"
command = ~D, DF, F, y+b
time 	= 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "rage explosion mode"     ;Required (do not remove)
command = a+x+y
time = 2

[Command]
name = "Hard Slash"     ;Required (do not remove)
command = a+x
time = 2

[Command]
name	= "Tensatsu_Daisai"
command = ~D, DF, F, y
time 	= 30

[Command]
name = "Tenkishichiyou_Nichi"    
command = x+y
time = 2

[Command]
name 	= "Tenidaihou_Hard"
command = ~D, DF, F, a+x
time 	= 30

[Command]
name 	= "Tenidaihou_Light"
command = ~D, DF, F, x
time 	= 30

[Command]
name 	= "Tenidaihou_Medium"
command = ~D, DF, F, a
time 	= 30

[Command]
name	= "Tenkishichiyou_Tsuki"
command = ~D, DB, B, x
time 	= 30

[Command]
name	= "Tenkishichiyou_Hi"
command = ~D, DB, B, a
time 	= 30

[Command]
name	= "Tenkishichiyou_Tsuki_AIR"
command = ~D, DB, B, x
time 	= 30

[Command]
name	= "Tenkishichiyou_Hi_AIR"
command = ~D, DB, B, a
time 	= 30

[Command]
name	= "Tenkishichiyou_Kon"
command = ~D, DB, B, y
time 	= 30

[Command]
name	= "Tenkishichiyou_Do"
command = ~D, DB, B, b
time 	= 30

[Command]
name	= "Tenmoukonji_Zenpou"
command = ~D, DF, F, x+a
time 	= 30

[Command]
name	= "Tenmoukonji_Kouhou"
command = ~D, DF, F, y+b
time 	= 30

[Command]
name	= "Tenkoku_Houra"
command = ~F, D, DF, y
time 	= 30


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DBL Jump"
command = U, U
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
name = "Duck"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "Medium Slash"
command = a
time = 1

[Command]
name = "Dodge"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "Light Slash"
command = x
time = 1

[Command]
name = "Kick"
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

;-| Direction |--------------------------------------------------------------------------------

[Command]
name = "F"
command = F
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
time = 1

;-| CPU |--------------------------------------------------------------------------------------

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "F2"
command = F
time = 1

[Command]
name = "B2"
command = B
time = 1

[Command]
name = "U2"
command = U
time = 1

[Command]
name = "D2"
command = D
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

;SUPERS!!!
;===========================================================================

;SPECIAL MOVES
;---------------------------------------------------------------------------

; Rage Explosion Mode
;--------------------
[State -1, rage explosion mode]
type = ChangeState
value = 3000
triggerall = var(59) <= 0 && var(0) = 0
triggerall = var(22) = 0 && var(25) = 0
triggerall = command = "rage explosion mode"
trigger1 = StateType = S && ctrl

; Zetsumei Ougi
;----------------------------
[State -1, Zetsumei Ougi]
type = ChangeState
value = 3300
triggerall = command = "Zetsumei Ougi"
triggerall = var(59) <= 0 && var(20) = 1 && var(22) = 1
triggerall = RoundState = 2 && P2life <= 200
trigger1 = StateType = S && ctrl
trigger2 = RoundNo >= 1

; Tenkai Unri
;---------------------
[State -1, Tenkai Unri]
type = ChangeState
value = 3201 + 257*var(0)
triggerall = command = "Tenkai_Unri"
triggerall = RoundState = 2 && var(59) <= 0 && var(20) = 1
trigger1 = StateType = S && ctrl

;---------------------------------------------------------------------------
; Tensatsu Daisai
;---------------------
[State -1, Tensatsu Daisai]
type = ChangeState
value = 6021
triggerall = RoundState = 2 && var(40) = 1
triggerall = command = "Tensatsu_Daisai"
trigger1 = StateType = S 
trigger2 = ctrl

;---------------------------------------------------------------------------
;Tenki Shichiyou: Nichi
[State -1, Tenki Shichiyou: Nichi]
type = ChangeState
value = 6000
triggerall = command = "Tenkishichiyou_Nichi"
triggerall = Statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Tenki Shichiyou: Tsuki
[State -1, Tenki Shichiyou: Tsuki]
type = ChangeState
value = 6050
triggerall = command = "Tenkishichiyou_Tsuki"
triggerall = Statetype = S 
trigger1 = ctrl

;---------------------------------------------------------------------------
;Tenki Shichiyou: Tsuki (Air)
[State -1, Tenki Shichiyou: Tsuki_AIR]
type = ChangeState
value = 6056
triggerall = command = "Tenkishichiyou_Tsuki_AIR"
triggerall = Statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Tenki Shichiyou: Hi
[State -1, Tenki Shichiyou: Hi]
type = ChangeState
value = 6051
triggerall = command = "Tenkishichiyou_Hi"
triggerall = Statetype = S 
trigger1 = ctrl

;---------------------------------------------------------------------------
;Tenki Shichiyou: Hi (Air)
[State -1, Tenki Shichiyou: Hi_AIR]
type = ChangeState
value = 6058
triggerall = command = "Tenkishichiyou_Hi_AIR"
triggerall = Statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Tenki Shichiyou: Kon
[State -1, Tenki Shichiyou: Kon]
type = ChangeState
value = 6052
triggerall = command = "Tenkishichiyou_Kon"
triggerall = Statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Tenki Shichiyou: Do
[State -1, Tenki Shichiyou: Do]
type = ChangeState
value = 6053
triggerall = command = "Tenkishichiyou_Do"
triggerall = Statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Tenmou Konji: Zenpou
[State -1, Tenmou Konji: Zenpou]
type = ChangeState
value = 6030
triggerall = command = "Tenmoukonji_Zenpou"
triggerall = Statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Tenmou Konji: Kouhou
[State -1, Tenmou Konji: Kouhou]
type = ChangeState
value = 6031
triggerall = command = "Tenmoukonji_Kouhou"
triggerall = Statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Ten'i Daihou Hard
[State -1, Ten'i Daihou Hard]
type = ChangeState
value = 6012
triggerall = command = "Tenidaihou_Hard"
triggerall = Statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Ten'i Daihou Light
[State -1, Ten'i Daihou Light]
type = ChangeState
value = 6010
triggerall = command = "Tenidaihou_Light"
triggerall = Statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Ten'i Daihou Medium
[State -1, Ten'i Daihou Medium]
type = ChangeState
value = 6011
triggerall = command = "Tenidaihou_Medium"
triggerall = Statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Tenkoku Houra
[State -1, Tenkoku Houra]
type = ChangeState
value = 6020
triggerall = command = "Tenkoku_Houra"
triggerall = Statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

; Jumping Hard Slash
[State -1, Jumping Hard Slash]
type = ChangeState
value = 620
triggerall = command = "Hard Slash"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

; Crouching Hard Slash

[State -1, Crouching Hard Slash]

type = ChangeState
value = 420
triggerall = command = "Hard Slash"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Hard Standing Slash
[State -1, Hard Standing Slash]
type = ChangeState
value = 220
triggerall = command = "Hard Slash"
triggerall = Statetype = S
trigger1 = ctrl
;trigger1 = var(1) ;Use combo condition (above)

; Forward with Kick
;-------------
[State -1, Forward with Kick]
type = ChangeState
value = 240
;triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "Kick" && command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl

; Forward+Down Kick
;-------------
[State -1, Forward+Down Kick]
type = ChangeState
value = 440
;triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "Kick" && command = "holdfwd" && command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

; Hop Forward
;------------
[State -1, hop forward]
type = ChangeState
value = 62
;triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "Dodge" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger1 = ctrl

;Lay Down
[State -1, Lay down]

type = ChangeState
value = 60
triggerall = command = "Dodge" 
;triggerall = command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Roll Forward
;-------------
[State -1, roll forward]
type = ChangeState
value = 66
;triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "Dodge" && command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl

; Roll Back
;----------
[State -1, roll back]
type = ChangeState
value = 68
;triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "Dodge" && command = "holdback"
trigger1 = statetype = C
trigger1 = ctrl

;==================
; Lying Down Moves
;==================

; Roll Forward Recovery
;----------------------
[State -1, roll forward recovery]
type = ChangeState
value = 72
;triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "holdfwd"
trigger1 = Life > 0 && StateNo = 5110 && time > 8

; Roll Back Recovery
;-------------------
[State -1, roll back recovery]
type = ChangeState
value = 76
;triggerall = var(59) <= 0 && var(0) = 0
triggerall = command = "holdback"
trigger1 = Life > 0 && StateNo = 5110 && time > 8

;BASIC COMMANDS
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
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;BASIC ATTACKS
;---------------------------------------------------------------------------
;Light Standing Slash
[State -1, Light Standing Slash]
type = ChangeState
value = 200
triggerall = command = "Light Slash"
triggerall = Statetype = S
trigger1 = ctrl
;trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Medium Standing Slash
[State -1, Medium Standing Slash]
type = ChangeState
value = 210
triggerall = command = "Medium Slash"
triggerall = Statetype = S
trigger1 = ctrl
;trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Standing Kick
[State -1, Hard Standing Slash]
type = ChangeState
value = 230
triggerall = command = "Kick"
triggerall = Statetype = S
trigger1 = ctrl
;trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------

; Crouching Light Slash
[State -1, Crouching Light Slash]

type = ChangeState
value = 400
triggerall = command = "Light Slash"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

; Crouching Medium Slash
[State -1, Crouching Medium Slash]

type = ChangeState
value = 410
triggerall = command = "Medium Slash"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

; Crouching Kick
[State -1, Crouching Kick]

type = ChangeState
value = 430
triggerall = command = "Kick"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

; Jumping Light Slash
[State -1, Jumping Light Slash]
type = ChangeState
value = 600
triggerall = command = "Light Slash"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

; Jumping Medium Slash
[State -1, Jumping Medium Slash]
type = ChangeState
value = 610
triggerall = command = "Medium Slash"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

; Jumping Kick
[State -1, Jumping Light Slash]
type = ChangeState
value = 630
triggerall = command = "Kick"
trigger1 = statetype = A
trigger1 = ctrl
