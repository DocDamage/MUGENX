
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

;-|AI Command |-----------------------------------------------------------
[Command]
name = "AI_1"
command = U,D,F,B,U,D
time = 0

[Command]
name = "AI_2"
command = D,F,B,U,D,F
time = 0

[Command]
name = "AI_3"
command = F,B,U,D,F,B
time = 0

[Command]
name = "AI_4"
command = B,U,D,F,B,U
time = 0

[Command]
name = "AI_5"
command = U,D,U,D,U,D
time = 0

[Command]
name = "AI_6"
command = D,U,D,U,D,U
time = 0

[Command]
name = "AI_7"
command = F,B,F,B,F,B
time = 0

[Command]
name = "AI_8"
command = B,F,B,F,B,F
time = 0

[Command]
name = "AI_9"
command = U,F,U,F,U,F
time = 0

[Command]
name = "AI_10"
command = D,B,D,B,D,B
time = 0

[Command]
name = "AI_11"
command = F,U,F,U,F,U
time = 0

[Command]
name = "AI_12"
command = D,B,D,B,D,B
time = 0

[Command]
name = "AI_13"
command = U,B,U,B,U,B
time = 0

[Command]
name = "AI_14"
command = D,F,D,F,D,F
time = 0

[Command]
name = "AI_15"
command = B,U,B,U,B,U
time = 0

[Command]
name = "AI_16"
command = F,D,F,D,F,D
time = 0

[Command]
name = "AI_17"
command = a,b,c,x,y,z,s
time = 0

[Command]
name = "AI_18"
command = b,c,x,y,z,s,a
time = 0

[Command]
name = "AI_19"
command = c,x,y,z,s,a,b
time = 0

[Command]
name = "AI_20"
command = x,y,z,s,a,b,c
time = 0

[Command]
name = "AI_21"
command = y,z,s,a,b,c,x
time = 0

[Command]
name = "AI_22"
command = z,s,a,b,c,x,y
time = 0

[Command]
name = "AI_23"
command = s,a,b,c,x,y,z
time = 0

[Command]
name = "AI_24"
command = a+b+c+s
time = 0

[Command]
name = "AI_25"
command = x+y+z+s
time = 0

[Command]
name = "AI_26"
command = U,D,F,B,U,D,U,D,F,B,U,D
time = 0

[Command]
name = "AI_27"
command = D,F,B,U,D,F,D,F,B,U,D,F
time = 0

[Command]
name = "AI_28"
command = F,B,U,D,F,B,F,B,U,D,F,B
time = 0

[Command]
name = "AI_29"
command = B,U,D,F,B,U,B,U,D,F,B,U
time = 0

[Command]
name = "AI_30"
command = U,D,U,D,U,D,U,D,U,D,U,D
time = 0

[Command]
name = "AI_31"
command = D,U,D,U,D,U,D,U,D,U,D,U
time = 0

[Command]
name = "AI_32"
command = F,B,F,B,F,B,F,B,F,B,F,B
time = 0

[Command]
name = "AI_33"
command = B,F,B,F,B,F,B,F,B,F,B,F
time = 0

[Command]
name = "AI_34"
command = U,F,U,F,U,F,U,F,U,F,U,F
time = 0

[Command]
name = "AI_35"
command = D,B,D,B,D,B,D,B,D,B,D,B
time = 0

[Command]
name = "AI_36"
command = F,U,F,U,F,U,F,U,F,U,F,U
time = 0

[Command]
name = "AI_37"
command = D,B,D,B,D,B,D,B,D,B,D,B
time = 0

[Command]
name = "AI_38"
command = U,B,U,B,U,B,U,B,U,B,U,B
time = 0

[Command]
name = "AI_39"
command = D,F,D,F,D,F,D,F,D,F,D,F
time = 0

[Command]
name = "AI_40"
command = B,U,B,U,B,U,B,U,B,U,B,U
time = 0

[Command]
name = "AI_41"
command = F,D,F,D,F,D,F,D,F,D,F,D
time = 0

[Command]
name = "AI_42"
command = a,b,c,x,y,z,s,a,b,c,x,y,z,s
time = 0

[Command]
name = "AI_43"
command = b,c,x,y,z,s,a,b,c,x,y,z,s,a
time = 0

[Command]
name = "AI_44"
command = c,x,y,z,s,a,b,c,x,y,z,s,a,b
time = 0

[Command]
name = "AI_45"
command = x,y,z,s,a,b,c,x,y,z,s,a,b,c
time = 0

[Command]
name = "AI_46"
command = y,z,s,a,b,c,x,y,z,s,a,b,c,x
time = 0

[Command]
name = "AI_47"
command = z,s,a,b,c,x,y,z,s,a,b,c,x,y
time = 0

[Command]
name = "AI_48"
command = s,a,b,c,x,y,z,s,a,b,c,x,y,z
time = 0

[Command]
name = "AI_49"
command = a+b+c+s,a+b+c+s
time = 0

[Command]
name = "AI_50"
command = x+y+z+s,x+y+z+s
time = 0

;-| Super Motions |-------------------------------------------------------
[Command]
name = "HCF"
command = ~B, DB, D, DF, F, c
time = 20
buffer.time = 2

[Command]
name = "HCF"
command = ~DB, D, DF, F, c
time = 20
buffer.time = 2

[Command]
name = "HCF"
command = ~B, D, DF, F, c
time = 20
buffer.time = 2

[Command]
name = "HCF"
command = ~B, DB, DF, F, c
time = 20
buffer.time = 2

[Command]
name = "HCF"
command = ~B, DB, D, F, c
time = 20
buffer.time = 2

[Command]
name = "HCF"
command = ~B, DB, D, DF, c
time = 20
buffer.time = 2

[Command]
name = "HCF"
command = ~B, D, F, c
time = 20
buffer.time = 2

;--------------------------------------------------------------------------
; F,QCF
[Command]
name = "F,QCF_a"
command = ~F, D, DF, a
time = 15
buffer.time = 2

[Command]
name = "F,QCF_b"
command = ~F, D, DF, b
time = 15
buffer.time = 2

[Command]
name = "F,QCF_c"
command = ~F, D, DF, c
time = 15
buffer.time = 2

;--------------------------------------------------------------------------
; B,QCB
[Command]
name = "B,QCB_a"
command = ~B, D, DB, a
time = 15
buffer.time = 2

[Command]
name = "B,QCB_b"
command = ~B, D, DB, b
time = 15
buffer.time = 2

[Command]
name = "B,QCB_c"
command = ~B, D, DB, c
time = 15
buffer.time = 2

;--------------------------------------------------------------------------
; QCF
[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 15
buffer.time = 2

[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 15
buffer.time = 2

[Command]
name = "QCF_c"
command = ~D, DF, F, c
time = 15
buffer.time = 2

;---------------------------------------------------------------------------
; QCB
[Command]
name = "QCB_a"
command = ~D, DB, B, a
time = 15
buffer.time = 2

[Command]
name = "QCB_b"
command = ~D, DB, B, b
time = 15
buffer.time = 2

[Command]
name = "QCB_c"
command = ~D, DB, B, c
time = 15
buffer.time = 2

[Command]
name = "QCB_z"
command = ~D, DB, B, z
time = 15
buffer.time = 2

;---------------------------------------------------------------------------
; DDD
[Command]
name = "DDD_z"
command = ~D, D, D, z
time = 20
buffer.time = 2

;---------------------------------------------------------------------------
; DD
[Command]
name = "DD_a"
command = ~D, D, a
time = 15
buffer.time = 2

[Command]
name = "DD_b"
command = ~D, D, b
time = 15
buffer.time = 2

[Command]
name = "DD_c"
command = ~D, D, c
time = 15
buffer.time = 2

;---------------------------------------------------------------------------
;Charge_Down_Up
[Command]
name = "HighJump"
command = D, UF
time = 10

[Command]
name = "HighJump"
command = DB, UF
time = 10

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10
buffer.time = 2

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10
buffer.time = 2

[Command]
name = "UU";Required (do not remove)
command = U, U
time = 10
buffer.time = 2

[Command]
name = "DD";Required (do not remove)
command = D, D
time = 10
buffer.time = 2

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c
time = 1

[Command]
name = "abc"
command = a+b+c
time = 1

[Command]
name = "abc"
command = y
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "ab"
command = x
time = 1

[Command]
name = "rc"
command = a+b
time = 1

[Command]
name = "rc"
command = b+c
time = 1

[Command]
name = "rc"
command = c+a
time = 1

[Command]
name = "rc"
command = x
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
name = "fwd"
command = F
time = 1

[Command]
name = "upfwd"
command = UF
time = 1

[Command]
name = "downfwd"
command = DF
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "upback"
command = UB
time = 1

[Command]
name = "downback"
command = DB
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

[Command]
name = "hold_s"
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
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdupback";Required (do not remove)
command = /$UB
time = 1

[Command]
name = "holddownback";Required (do not remove)
command = /$DB
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

;============================================================================

;---------------------------------------------------------------------------
;サタデーナイト・フォーエバー
[State -1]
type = ChangeState
value = 3200
trigger1 = var(10)         = 3
trigger1 = statetype       = A
trigger1 = stateno         = 920
trigger1 = movehit

;---------------------------------------------------------------------------
;L・S・O (超人姉妹同盟)
[State -1]
type = ChangeState
value = ifelse(var(10) = 3, 3100, 3000)
triggerall = command       = "HCF"
triggerall = var(10)       > 0
triggerall = var(59)       = 0
triggerall = statetype    != A
triggerall = numhelper(3020) = 0 && numhelper(3120) = 0
trigger1   = ctrl
trigger2   = var(24)/100  >= 1
trigger2   = stateno      != 241 && stateno != 412
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;電磁ネットワイヤー・TYPEハイ(弱)
[State -1]
type = ChangeState
value = 1600
triggerall = command       = "F,QCF_a"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 2
trigger2   = stateno      != 241 && stateno != 412
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;電磁ネットワイヤー・TYPEハイ(中)
[State -1]
type = ChangeState
value = 1650
triggerall = command       = "F,QCF_b"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 2
trigger2   = stateno      != 241 && stateno != 412
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;電磁ネットワイヤー・TYPEハイ(EX)
[State -1]
type = ChangeState
value = ifelse(fvar(20) >= ifelse(var(10) != 0, 1, 100), 1700, 1650)
triggerall = command       = "F,QCF_c"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= ifelse(fvar(20)>=ifelse(var(10)!=0,1,100),1,2)
trigger2   = stateno      != 241 && stateno != 412
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;電磁ネットワイヤー・TYPEシー(弱)
[State -1]
type = ChangeState
value = 1800
triggerall = command       = "B,QCB_a"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 2
trigger2   = stateno      != 241 && stateno != 412
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;電磁ネットワイヤー・TYPEシー(中)
[State -1]
type = ChangeState
value = 1850
triggerall = command       = "B,QCB_b"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 2
trigger2   = stateno      != 241 && stateno != 412
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;電磁ネットワイヤー・TYPEシー(EX)
[State -1]
type = ChangeState
value = ifelse(fvar(20) >= ifelse(var(10) != 0, 1, 100), 1900, 1850)
triggerall = command       = "B,QCB_c"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= ifelse(fvar(20)>=ifelse(var(10)!=0,1,100),1,2)
trigger2   = stateno      != 241 && stateno != 412
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;レーザー(弱)
[State -1]
type = ChangeState
value = 1000
triggerall = command       = "QCF_a"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 2
trigger2   = stateno      != 241 && stateno != 412
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;レーザー(中)
[State -1]
type = ChangeState
value = 1050
triggerall = command       = "QCF_b"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 2
trigger2   = stateno      != 241 && stateno != 412
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;処刑レーザー
[State -1]
type = ChangeState
value = ifelse(fvar(20) >= ifelse(var(10) != 0, 1, 100), 1100, 1050)
triggerall = command       = "QCF_c"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= ifelse(fvar(20)>=ifelse(var(10)!=0,1,100),1,2)
trigger2   = stateno      != 241 && stateno != 412
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;ジェット・バイ(弱)
[State -1]
type = ChangeState
value = 2200
triggerall = command       = "QCF_a"
triggerall = var(59)       = 0
triggerall = statetype     = A
trigger1   = ctrl
trigger2   = var(24)/100  >= 2

;---------------------------------------------------------------------------
;ジェット・バイ(中)
[State -1]
type = ChangeState
value = 2250
triggerall = command       = "QCF_b"
triggerall = var(59)       = 0
triggerall = statetype     = A
trigger1   = ctrl
trigger2   = var(24)/100  >= 2

;---------------------------------------------------------------------------
;ハレーズ・コメット
[State -1]
type = ChangeState
value = ifelse(fvar(20) >= ifelse(var(10) != 0, 1, 100), 2300, 2250)
triggerall = command       = "QCF_c"
triggerall = var(59)       = 0
triggerall = statetype     = A
trigger1   = ctrl
trigger2   = var(24)/100  >= ifelse(fvar(20)>=ifelse(var(10)!=0,1,100),1,2)

;---------------------------------------------------------------------------
;幻視力ミサイル(弱)
[State -1]
type = ChangeState
value = 1200
triggerall = command       = "QCB_a"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 2
trigger2   = stateno      != 241 && stateno != 412
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;幻視力ミサイル(中)
[State -1]
type = ChangeState
value = 1250
triggerall = command       = "QCB_b"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 2
trigger2   = stateno      != 241 && stateno != 412
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;幻視力ミサイル・ナイトメア
[State -1]
type = ChangeState
value = ifelse(fvar(20) >= ifelse(var(10) != 0, 1, 100), 1300, 1250)
triggerall = command       = "QCB_c"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= ifelse(fvar(20)>=ifelse(var(10)!=0,1,100),1,2)
trigger2   = stateno      != 241 && stateno != 412
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;熱線追尾弾キングフィッシャー(弱)
[State -1]
type = ChangeState
value = 2000
triggerall = command       = "QCB_a"
triggerall = var(59)       = 0
triggerall = statetype     = A
triggerall = pos y         < -10
trigger1   = ctrl
trigger2   = var(24)/100  >= 2

;---------------------------------------------------------------------------
;熱線追尾弾キングフィッシャー(中)
[State -1]
type = ChangeState
value = 2050
triggerall = command       = "QCB_b"
triggerall = var(59)       = 0
triggerall = statetype     = A
triggerall = pos y         < -10
trigger1   = ctrl
trigger2   = var(24)/100  >= 2

;---------------------------------------------------------------------------
;熱線追尾弾キングフィッシャー(EX)
[State -1]
type = ChangeState
value = ifelse(fvar(20) >= ifelse(var(10) != 0, 1, 100), 2100, 2050)
triggerall = command       = "QCB_c"
triggerall = var(59)       = 0
triggerall = statetype     = A
triggerall = pos y         < -10
trigger1   = ctrl
trigger2   = var(24)/100  >= ifelse(fvar(20)>=ifelse(var(10)!=0,1,100),1,2)

;---------------------------------------------------------------------------
;琥珀力バリヤー(弱)
[State -1]
type = ChangeState
value = 1400
triggerall = command       = "DD_a"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 2
trigger2   = stateno      != 241 && stateno != 412
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;琥珀力バリヤー(中)
[State -1]
type = ChangeState
value = 1450
triggerall = command       = "DD_b"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 2
trigger2   = stateno      != 241 && stateno != 412
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;琥珀力バリヤー(EX)
[State -1]
type = ChangeState
value = ifelse(fvar(20) >= ifelse(var(10) != 0, 1, 100), 1500, 1450)
triggerall = command       = "DD_c"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= ifelse(fvar(20)>=ifelse(var(10)!=0,1,100),1,2)
trigger2   = stateno      != 241 && stateno != 412
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;SB
[State -1]
type = ChangeState
value = 950
triggerall = command       = "QCB_z"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 2
trigger2   = stateno      != 241 && stateno != 412

;---------------------------------------------------------------------------
;強制解放
[State -1]
type = ChangeState
value = 700
triggerall = command       = "a"
triggerall = command       = "b"
triggerall = command       = "c"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = var(10)       = 0 && fvar(20) >= 100.0
trigger1   = ctrl
trigger2   = var(10)       = 0 && fvar(20) >= 100.0
trigger2   = var(24)/100  >= 5
trigger3   = var(10)       = 0 && fvar(20) >= 100.0
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152
trigger4   = var(10)       = 1 || var(10) = 4
trigger4   = ctrl
trigger5   = var(10)       = 1 || var(10) = 4
trigger5   = var(24)/100  >= 5
trigger6   = var(10)       = 1 || var(10) = 4
trigger6   = var(25)       = 1
trigger6   = stateno       = 150 || stateno = 152

[State -1]
type = ChangeState
value = 700
triggerall = command       = "y"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = var(10)       = 0 && fvar(20) >= 100.0
trigger1   = ctrl
trigger2   = var(10)       = 0 && fvar(20) >= 100.0
trigger2   = var(24)/100  >= 5
trigger3   = var(10)       = 0 && fvar(20) >= 100.0
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152
trigger4   = var(10)       = 1 || var(10) = 4
trigger4   = ctrl
trigger5   = var(10)       = 1 || var(10) = 4
trigger5   = var(24)/100  >= 5
trigger6   = var(10)       = 1 || var(10) = 4
trigger6   = var(25)       = 1
trigger6   = stateno       = 150 || stateno = 152

[State -1]
type = ChangeState
value = 700
triggerall = command       = "DDD_z"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = var(10)       = 0 && fvar(20) >= 100.0
trigger1   = ctrl
trigger2   = var(10)       = 0 && fvar(20) >= 100.0
trigger2   = var(24)/100  >= 5
trigger3   = var(10)       = 0 && fvar(20) >= 100.0
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152
trigger4   = var(10)       = 1 || var(10) = 4
trigger4   = ctrl
trigger5   = var(10)       = 1 || var(10) = 4
trigger5   = var(24)/100  >= 5
trigger6   = var(10)       = 1 || var(10) = 4
trigger6   = var(25)       = 1
trigger6   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;High Jump
[State -1]
type = ChangeState
value = 60
triggerall = command       = "HighJump"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = stateno       = 100
trigger2   = animelemtime(3) >= 0
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;Jump
[State -1]
type = ChangeState
value = 40
triggerall = command       = "holdup"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100   = 4
trigger2   = var(26)%10    = 1
trigger3   = stateno       = 100
trigger3   = animelemtime(3) >= 0

;---------------------------------------------------------------------------
;High Jump Cancel in the Air
[State -1]
type = ChangeState
value = 80
triggerall = command       = "upfwd"
triggerall = var(24)/100   = 4
triggerall = var(26)/10%10 = 1
triggerall = var(27)      != 2
triggerall = var(59)       = 0
triggerall = statetype     = A
trigger1   = stateno       = 600
trigger2   = stateno       = 610
trigger3   = stateno       = 623

;---------------------------------------------------------------------------
;Jump in the Air
[State -1]
type = ChangeState
value = 45
triggerall = command       = "holdup"
triggerall = var(27)      != 2
triggerall = var(59)       = 0
triggerall = statetype     = A
trigger1   = ctrl
trigger1   = stateno      != [40,50]
trigger2   = var(24)/100   = 4
trigger2   = var(26)/10%10 = 1

;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = command       = "FF" || (command   = "holdfwd" && command   = "ab")
triggerall = var(59)       = 0
trigger1   = statetype    != A
trigger1   = ctrl
trigger2   = var(25)       = 1
trigger2   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
triggerall = command       = "BB" || (command   = "holdback" && command   = "ab")
triggerall = var(59)       = 0
trigger1   = statetype    != A
trigger1   = ctrl
trigger2   = stateno       = 100
trigger2   = animelemtime(3) >= 0
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;RunFwd in the Air
[State -1]
type = ChangeState
value = 110
triggerall = command       = "FF" || (command   = "holdfwd" && command   = "ab")
triggerall = var(28)       = 0
triggerall = var(59)       = 0
triggerall = statetype     = A
trigger1   = ctrl
trigger1   = stateno      != 110
trigger1   = stateno      != 115
trigger2   = var(24)/100   = 4
trigger2   = var(26)/100%10= 1

;---------------------------------------------------------------------------
;RunBack in the Air
[State -1]
type = ChangeState
value = 115
trigger1 = command         = "BB" || (command   = "holdback" && command   = "ab")
trigger1 = var(28)         = 0
trigger1 = var(59)         = 0
trigger1 = statetype       = A
trigger1 = ctrl
trigger1 = stateno        != 110
trigger1 = stateno        != 115

;---------------------------------------------------------------------------
;Recovery
[State -1]
type = ChangeState
value = 5220
triggerall = command       = "FF" || command   = "BB" || command   = "UU"
triggerall = var(40)       = 0
triggerall = var(59)       = 0
trigger1   = stateno       = 5100
trigger1   = time          = [0,3]
trigger2   = stateno       = 5110
trigger2   = time          = [0,3]

;---------------------------------------------------------------------------
;Throw_Fwd
[State -1]
type = ChangeState
value = 800
triggerall = command       = "c" || (command = "a" && command = "z")
triggerall = command       = "holdfwd"
triggerall = var(59)       = 0
triggerall = statetype    != A
triggerall = p2statetype  != A
triggerall = p2movetype   != H
triggerall = p2stateno    != 5120
triggerall = p2bodydist x  = [-10,20]
trigger1   = ctrl
trigger2   = var(24)/100   = 5

;---------------------------------------------------------------------------
;Throw_Back
[State -1]
type = ChangeState
value = 830
triggerall = command       = "c" || (command = "a" && command = "z")
triggerall = command       = "holdback"
triggerall = var(59)       = 0
triggerall = statetype    != A
triggerall = p2statetype  != A
triggerall = p2movetype   != H
triggerall = p2stateno    != 5120
triggerall = p2bodydist x  = [-10,20]
trigger1   = ctrl
trigger2   = var(24)/100   = 5

;---------------------------------------------------------------------------
;Throw_in the Air
[State -1]
type = ChangeState
value = 850
triggerall = command       = "c" || (command = "a" && command = "z")
triggerall = command       = "holdfwd" || command = "holdback"
triggerall = var(59)       = 0
triggerall = statetype     = A
triggerall = p2statetype   = A
triggerall = p2stateno    != [5200,5210]
triggerall = p2bodydist x  = [-10,30]
triggerall = p2bodydist y  = [-40,40]
trigger1   = ctrl
trigger2   = var(24)/100   = 5

;---------------------------------------------------------------------------
;Throw_in the Air
[State -1]
type = ChangeState
value = 850
triggerall = command       = "c" || (command = "a" && command = "z")
triggerall = command       = "holdfwd" || command = "holdback"
triggerall = var(24)/100  >= 3
triggerall = var(59)       = 0
triggerall = statetype     = A
triggerall = p2statetype   = A
triggerall = p2stateno    != [154,155]
triggerall = p2bodydist x  = [-10,30]
triggerall = p2bodydist y  = [-40,40]
trigger1   = stateno       = 600
trigger2   = stateno       = 610
trigger3   = stateno       = 623

;---------------------------------------------------------------------------
;Shield_S
[State -1]
type = ChangeState
value = 900
triggerall = command       = "z"
triggerall = command      != "holddown"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100   = 5

;---------------------------------------------------------------------------
;Shield_C
[State -1]
type = ChangeState
value = 910
triggerall = command       = "z"
triggerall = command       = "holddown"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100   = 5

;---------------------------------------------------------------------------
;Shield_A
[State -1]
type = ChangeState
value = 920
triggerall = command       = "z"
triggerall = var(59)       = 0
triggerall = statetype     = A
trigger1   = ctrl
trigger2   = var(24)/100   = 5

;---------------------------------------------------------------------------
;Escape
[State -1]
type = ChangeState
value = 940
triggerall = command       = "a" && command = "b" || command = "x"
triggerall = command       = "holddown"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100   = 5

;---------------------------------------------------------------------------
;code:4B
[State -1]
type = ChangeState
value = 230
triggerall = command       = "b"
triggerall = command       = "holdback"
triggerall = var(59)       = 0
triggerall = statetype    != A
triggerall = numhelper(231) = 0
trigger1   = ctrl
trigger2   = var(24)/100  >= 3
trigger2   = stateno      != 241
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;code:6C
[State -1]
type = ChangeState
value = 240
triggerall = command       = "c"
triggerall = command       = "holdfwd"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 3
trigger2   = stateno      != 241
trigger3   = var(25)       = 1
trigger3   = stateno       = 150 || stateno = 152

;---------------------------------------------------------------------------
;code:2C"AERIAL"
[State -1]
type = ChangeState
value = 630
triggerall = command       = "c"
triggerall = command       = "holddown"
triggerall = var(59)       = 0
triggerall = statetype     = A
triggerall = pos y         < -30
triggerall = numhelper(632) = 0
trigger1   = ctrl
trigger2   = var(24)/100  >= 3

;---------------------------------------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command       = "a"
triggerall = command      != "holddown"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 3
trigger2   = var(30)       = 0 || var(30) = 10
trigger2   = stateno      != 241
trigger3   = var(24)/100  >= 3
trigger3   = stateno       = 200

;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = command       = "b"
triggerall = command      != "holddown"
triggerall = var(59)       = 0
triggerall = var(31)       = 0 || var(31) = 10
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 3
trigger2   = stateno      != 241

;---------------------------------------------------------------------------
;Stand_C
[State -1]
type = ChangeState
value = 220
triggerall = command       = "c"
triggerall = command      != "holddown"
triggerall = var(32)       = 0 || var(32) = 10
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 3
trigger2   = stateno      != 241

;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command       = "a"
triggerall = command       = "holddown"
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 3
trigger2   = var(30)       = 0 || var(30) = 1
trigger2   = stateno      != 241
trigger3   = var(24)/100  >= 3
trigger3   = stateno       = 400

;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command       = "b"
triggerall = command       = "holddown"
triggerall = var(31)       = 0 || var(31) = 1
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 3
trigger2   = stateno      != 241

;---------------------------------------------------------------------------
;Crouch_C
[State -1]
type = ChangeState
value = 420
triggerall = command       = "c"
triggerall = command       = "holddown"
triggerall = var(32)       = 0 || var(32) = 1
triggerall = var(59)       = 0
triggerall = statetype    != A
trigger1   = ctrl
trigger2   = var(24)/100  >= 3
trigger2   = stateno      != 241

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
triggerall = command       = "a"
triggerall = var(59)       = 0
triggerall = statetype     = A
trigger1   = ctrl
trigger2   = var(24)/100  >= 3
trigger2   = var(33)       = 0
trigger3   = var(24)/100  >= 3
trigger3   = stateno       = 600

;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 610
triggerall = command       = "b"
triggerall = var(34)       = 0
triggerall = var(59)       = 0
triggerall = statetype     = A
trigger1   = ctrl
trigger2   = var(24)/100  >= 3

;---------------------------------------------------------------------------
;Jump_C
[State -1]
type = ChangeState
value = 620
triggerall = command       = "c"
triggerall = var(35)       = 0
triggerall = var(59)       = 0
triggerall = statetype     = A
trigger1   = ctrl
trigger2   = var(24)/100  >= 3

;---------------------------------------------------------------------------
;Respect
[State -1]
type = ChangeState
value = 196
triggerall = command       = "s"
triggerall = command       = "holdfwd"
triggerall = var(59)       = 0
triggerall = statetype     = S
trigger1   = ctrl
trigger2   = var(24)/100   = 5

;---------------------------------------------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = command       = "s"
triggerall = command      != "holdfwd"
triggerall = var(59)       = 0
triggerall = statetype     = S
trigger1   = ctrl
trigger2   = var(24)/100   = 5

;---------------------------------------------------------------------------
;Guard
[State -1]
type = ChangeState
value = 120
triggerall = command       = "holdback" || command = "holddownback"
triggerall = var(59)       = 0
triggerall = inguarddist
trigger1   = stateno       = 100
trigger1   = animelemtime(3) >= 0
trigger2   = stateno       = 101
