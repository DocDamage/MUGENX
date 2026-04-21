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


;-| Super Motions |--------------------------------------------------------
[Command]
name = "DBDF_ab"
command = ~D, B, D, F, x+y
time = 25

[Command]
name = "DFDF_ab"
command = ~D, F, D, F, x+y
time = 25

[Command]
name = "DBDF_b"
command = ~D, B, D, F, y
time = 20

[Command]
name = "DFDF_b"
command = ~D, F, D, F, y
time = 20

[Command]
name = "DFDB_b"
command = ~D, F, D, B, y
time = 20

[Command]
name = "DD_a"
command = ~D, D, x
time = 15

[Command]
name = "DD_b"
command = ~D, D, y
time = 15

;-| Special Motions |------------------------------------------------------
[Command]
name = "FDF_a"
command = ~F, D, DF, x

[Command]
name = "FDF_b"
command = ~F, D, DF, y

[Command]
name = "BDF_c"
command = ~B, D, F, z

[Command]
name = "DF_a"
command = ~D, F, x
time = 10

[Command]
name = "DF_b"
command = ~D, F, y
time = 10

[Command]
name = "DF_c"
command = ~D, F, z
time = 10

[Command]
name = "DF_aAir"
command = ~D, F, x
time = 8

[Command]
name = "DF_bAir"
command = ~D, F, y
time = 8

[Command]
name = "DB_a"
command = ~D, B, x

[Command]
name = "DB_b"
command = ~D, B, y

[Command]
name = "DB_c"
command = ~D, B, z


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "longjump"
command = D, $U
time = 15

[Command]
name = "FF"       ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"       ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = a+b
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "bc"
command = y+z
time = 1

[Command]
name = "cd"
command = z+a
time = 1


;-| Dir + Button |---------------------------------------------------------



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
name = "holdx"
command = /x

[Command]
name = "holdy"
command = /y

[Command]
name = "holdz"
command = /z

[Command]
name = "holda"
command = /a

[Command]
name = "holdb"
command = /b

[Command]
name = "holdc"
command = /c

[Command]
name = "fwd"
command = $F
time = 1

[Command]
name = "back"
command = $B
time = 1

[Command]
name = "up"
command = $U
time = 1

[Command]
name = "down"
command = $D
time = 1

[Command]
name = "justfwd"
command = F
time = 1

[Command]
name = "justback"
command = B
time = 1

[Command]
name = "justup"
command = U
time = 1

[Command]
name = "justdown"
command = D
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"  ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"   ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdF"
command = /F
time = 1

[Command]
name = "holdB"
command = /B
time = 1

[Command]
name = "holdU"
command = /U
time = 1

[Command]
name = "holdD"
command = /D
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
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;天霸封神斬?....呃,未完成....
[State -1]
type = null;ChangeState
value = 3020
triggerall = command = "DFDB_b"
trigger1 = ctrl
trigger1 = statetype != A


;===========================================================================
;---------------------------------------------------------------------------
;DBDF_AB
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000 || var(43)%10 = 1
triggerall = command = "DBDF_ab" || (Var(44)=15 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=15 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 204
trigger2 = AnimElem = 5, < 0
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = AnimElem = 5, < 2
trigger3 = movecontact
trigger4 = stateno = 202
trigger4 = AnimElem = 7, < 0
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = AnimElem = 9, < 0
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = AnimElem = 5, < 4
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = AnimElem = 4, < 2
trigger7 = movecontact
trigger8 = Var(40) != 2
trigger8 = statetype = S && (stateno = 1401 || stateno = 1411) && time > 2
trigger8 = movecontact && (Var(10) = 1 || Var(10) = 3 || Var(10) = 5)
trigger9 = stateno = 213
trigger9 = AnimElem = 8, < 0
trigger9 = movecontact

;DFDF_AB
[State -1]
type = ChangeState
triggerall = power >= 1000 || var(43)%10 = 1
value = ifelse(Var(40)=1,3012,3010)
triggerall = command = "DFDF_ab" || (Var(44)=16 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=16 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 204
trigger2 = AnimElem = 5, < 0
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = AnimElem = 5, < 2
trigger3 = movecontact
trigger4 = stateno = 202
trigger4 = AnimElem = 7, < 0
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = AnimElem = 9, < 0
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = AnimElem = 5, < 4
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = AnimElem = 4, < 2
trigger7 = movecontact
trigger8 = Var(40) != 2
trigger8 = statetype = S && (stateno = 1401 || stateno = 1411)
trigger8 = movecontact && (Var(10) = 1 || Var(10) = 3 || Var(10) = 5)
trigger9 = stateno = 213
trigger9 = AnimElem = 8, < 0
trigger9 = movecontact


;DBDF_B
[State -1]
type = ChangeState
value = 3120
triggerall = power >= 2000
triggerall = Var(40) != 2
triggerall = command = "DBDF_b" || (Var(44)=17 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=17 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 204
trigger2 = AnimElem = 5, < 0
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = AnimElem = 5, < 2
trigger3 = movecontact
trigger4 = stateno = 202
trigger4 = AnimElem = 7, < 0
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = AnimElem = 9, < 0
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = AnimElem = 5, < 4
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = AnimElem = 4, < 2
trigger7 = movecontact
trigger8 = stateno = 213
trigger8 = AnimElem = 8, < 0
trigger8 = movecontact

;DFDF_B
[State -1]
type = ChangeState
value = 3100
triggerall = power >= 2000
triggerall = Var(40) != 2
triggerall = command = "DFDF_b" || (Var(44)=18 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=18 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 204
trigger2 = AnimElem = 5, < 0
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = AnimElem = 5, < 2
trigger3 = movecontact
trigger4 = stateno = 202
trigger4 = AnimElem = 7, < 0
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = AnimElem = 9, < 0
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = AnimElem = 5, < 4
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = AnimElem = 4, < 2
trigger7 = movecontact
trigger8 = stateno = 213
trigger8 = AnimElem = 8, < 0
trigger8 = movecontact


;------------------------------------------------------------------
;DD_AB 亂舞奧義發動-上段
[State -1]
type = VarSet
triggerall = power >= 2000
triggerall = command = "DD_a" || (Var(44)=19 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=19 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno != 222
trigger2 = stateno != 240
trigger2 = stateno != 242
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
v = 12
value = 3210

;DD_AB 亂舞奧義發動-下段
[State -1]
type = VarSet
triggerall = power >= 2000
triggerall = command = "DD_b" || (Var(44)=20 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=20 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno != 222
trigger2 = stateno != 240
trigger2 = stateno != 242
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
v = 12
value = 3211

;DD_AB 亂舞奧義發動-隨機
[State -1]
type = VarSet
triggerall = power >= 2000
triggerall = ( (Var(44)>=21 && Var(44)<=26) && ((Var(45)=1 && command = "holdb")|| command = "b")) || ( (Var(46)>=21 && Var(46)<=26) && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno != 222
trigger2 = stateno != 240
trigger2 = stateno != 242
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
v = 13
value = ifelse( command="b" || command="holdb", 3212, 3213)

;DD_AB 亂舞奧義發動
[State -1]
type = ChangeState
value = 3200
triggerall = power >= 2000
triggerall = Var(40) != 1
triggerall = command = "DD_a" || command = "DD_b" || ( (Var(44)>=19 && Var(44)<=26) && ((Var(45)=1 && command = "holdb")|| command = "b")) || ( (Var(46)>=19 && Var(46)<=26) && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno != 222
trigger2 = stateno != 240
trigger2 = stateno != 242
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

;1
[State -1]
type = ChangeState
value = 3212
triggerall = command = "x" || (Var(44)=1 && command = "holdb") || (Var(46)=1 && command = "holdc") || (Var(13)=3212 && Var(44)>=22 && Var(44)<=26) || (Var(13)=3213 && Var(46)>=22 && Var(46)<=26)
trigger1 = stateno = 3210
trigger1 = movecontact && AnimElem = 10, < 1
trigger2 = stateno = 3211 && time > 3
trigger2 = movecontact && AnimElem = 5, < 1

;2
[State -1]
type = ChangeState
value = 3213
triggerall = stateno = 3212
trigger1 = movecontact && AnimElem = 4, < 1
trigger1 = command = "y" || (Var(44)=2 && command = "holdb") || (Var(46)=2 && command = "holdc") || (Var(13)=3212 && Var(44)>=22 && Var(44)<=26) || (Var(13)=3213 && Var(46)>=22 && Var(46)<=26)

;3
[State -1]
type = ChangeState
value = 3214
trigger1 = stateno = 3213
trigger1 = movecontact && AnimElem = 6, < 1
trigger1 = command = "z" || (Var(44)=3 && command = "holdb") || (Var(46)=3 && command = "holdc") || (Var(13)=3212 && Var(44)>=22 && Var(44)<=26) || (Var(13)=3213 && Var(46)>=22 && Var(46)<=26)

;type A 4
[State -1]
type = ChangeState
value = 3215
trigger1 = stateno = 3214
trigger1 = movecontact && AnimElem = 6, < 1
trigger1 = command = "x" || (Var(44)=1 && command = "holdb") || (Var(46)=1 && command = "holdc") || (Var(13)=3212 && (Var(44)=22 || Var(44)=23 || (Var(44)=26 && Random<500))) || (Var(13)=3213 && (Var(46)=22 || Var(46)=23 || (Var(46)=26 && Random<500)))

;type A 5
[State -1]
type = ChangeState
value = 3216
trigger1 = stateno = 3215
trigger1 = movecontact && AnimElem = 5, < 1
trigger1 = command = "y" || (Var(44)=2 && command = "holdb") || (Var(46)=2 && command = "holdc") || (Var(13)=3212 && (Var(44)=22 || Var(44)=23 || Var(44)=26)) || (Var(13)=3213 && (Var(46)=22 || Var(46)=23 || Var(46)=26))

;type A 6
[State -1]
type = ChangeState
value = 3217
trigger1 = stateno = 3216
trigger1 = movecontact && AnimElem = 5, < 1
trigger1 = command = "z" || (Var(44)=3 && command = "holdb") || (Var(46)=3 && command = "holdc") || (Var(13)=3212 && (Var(44)=22 || Var(44)=23 || Var(44)=26)) || (Var(13)=3213 && (Var(46)=22 || Var(46)=23 || Var(46)=26))

;type A 7
[State -1]
type = ChangeState
value = 3218
trigger1 = stateno = 3217
trigger1 = movecontact && AnimElem = 6, < 1
trigger1 = command = "x" || (Var(44)=1 && command = "holdb") || (Var(46)=1 && command = "holdc") || (Var(13)=3212 && (Var(44)=22 || (Var(44)=26 && Random<500))) || (Var(13)=3213 && (Var(46)=22 || (Var(46)=26 && Random<500)))

;type A 8
[State -1]
type = ChangeState
value = 3219
trigger1 = stateno = 3218
trigger1 = movecontact && AnimElem = 9, < 0
trigger1 = command = "y" || (Var(44)=2 && command = "holdb") || (Var(46)=2 && command = "holdc") || (Var(13)=3212 && (Var(44)=22 || Var(44)=26)) || (Var(13)=3213 && (Var(46)=22 || Var(46)=26))

;type A Last Hit
[State -1]
type = ChangeState
value = 3220
triggerall = stateno = 3219
trigger1 = movecontact && AnimElem = 7, < 1
trigger1 = command = "DF_c" || (Var(13)=3212 && (Var(44)=22 || Var(44)=26)) || (Var(13)=3213 && (Var(46)=22 || Var(46)=26))

;type B 7 && type C 6
[State -1]
type = ChangeState
value = 3222
trigger1 = stateno = 3217
trigger1 = movecontact && AnimElem = 6, < 1
trigger1 = command = "z" || (Var(44)=3 && command = "holdb") || (Var(46)=3 && command = "holdc") || (Var(13)=3212 && (Var(44)=23 || Var(44)=26)) || (Var(13)=3213 && (Var(46)=23 || Var(46)=26))
trigger2 = stateno = 3226
trigger2 = movecontact && AnimElem = 6, < 1
trigger2 = command="bc"||(Var(44)=5&&((Var(45)=1&&command="holdb")||command="b"))||(Var(46)=5&&((Var(47)=1&&command="holdc")||command="c"))||(Var(13)=3212&&(Var(44)=24||(Var(44)=26&&Random<500)))||(Var(13)=3213&&(Var(46)=24||(Var(46)=26&&Random<500)))

;type B 8
[State -1]
type = ChangeState
value = 3223
trigger1 = stateno = 3222 && prevstateno = 3217
trigger1 = movecontact && AnimElem = 5, < 1
trigger1 = command = "y" || (Var(44)=2 && command = "holdb") || (Var(46)=2 && command = "holdc") || (Var(13)=3212 && (Var(44)=23 || Var(44)=26)) || (Var(13)=3213 && (Var(46)=23 || Var(46)=26))

;type B Last Hit
[State -1]
type = ChangeState
value = 3224
triggerall = stateno = 3223
trigger1 = movecontact && AnimElem = 6, < 1
trigger1 = command = "DF_a"||(Var(44)=8&&((Var(45)=1&&command = "holdb")||command = "b"))||(Var(46)=8 && ((Var(47)=1 && command = "holdc")|| command = "c")) || (Var(13)=3212 && (Var(44)=23 || Var(44)=26)) || (Var(13)=3213 && (Var(46)=23 || Var(46)=26))

;type C 4 && type D 6
[State -1]
type = ChangeState
value = 3225
trigger1 = stateno = 3214 || stateno = 3226
trigger1 = movecontact && AnimElem = 6, < 1
trigger1 = (command = "holddown" && (command = "z"  || (Var(44)=3 && command = "holdb") || (Var(46)=3 && command = "holdc") ) )  || (Var(13)=3212 && Var(44)>=24 && Var(44)<=26) || (Var(13)=3213 && Var(46)>=24 && Var(46)<=26)

;type C 5
[State -1]
type = ChangeState
value = 3226
triggerall = stateno = 3225 && prevstateno = 3214
trigger1 = movecontact && AnimElem = 5, < 1
trigger1 = command = "x" || (Var(44)=1 && command = "holdb") || (Var(46)=1 && command = "holdc") || (Var(13)=3212 && Var(44)>=24 && Var(44)<=26) || (Var(13)=3213 && Var(46)>=24 && Var(46)<=26)

;type C 7
[State -1]
type = ChangeState
value = 3227
triggerall = stateno = 3222 && prevstateno = 3226
trigger1 = movecontact && AnimElem = 5, < 1
trigger1 = command = "x" || (Var(44)=1 && command = "holdb") || (Var(46)=1 && command = "holdc") || (Var(13)=3212 && (Var(44)=24 || Var(44)=26)) || (Var(13)=3213 && (Var(46)=24 || Var(46)=26))

;type C Last Hit
[State -1]
type = ChangeState
value = 3228
triggerall = stateno = 3227
trigger1 = movecontact && AnimElem = 5, < 1
trigger1 = command = "DF_b"||(Var(44)=9&&((Var(45)=1&&command = "holdb")||command = "b"))||(Var(46)=9&&((Var(47)=1 && command = "holdc")|| command = "c")) || (Var(13)=3212 && (Var(44)=24 || Var(44)=26)) || (Var(13)=3213 && (Var(46)=24 || Var(46)=26))

;type D Last Hit
[State -1]
type = ChangeState
value = 3230
triggerall = stateno = 3225 && prevstateno = 3226
trigger1 = movecontact && AnimElem = 5, < 1
trigger1 = (command="holdfwd"&&(command="bc"||(Var(44)=5&&((Var(45)=1&&command="holdb")||command="b"))||(Var(46)=5&&((Var(47)=1&&command="holdc")||command="c"))))||(Var(13)=3212&&(Var(44)=25||Var(44)=26)) || (Var(13)=3213 && (Var(46)=25 || Var(46)=26))


;===========================================================================
;---------------------------------------------------------------------------
;FDF_A
[State -1]
type = ChangeState
value = 1000
triggerall = command = "FDF_a" || (Var(44)=10 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=10 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 204
trigger2 = AnimElem = 5, < 0
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = AnimElem = 5, < 2
trigger3 = movecontact
trigger4 = stateno = 202
trigger4 = AnimElem = 7, < 0
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = AnimElem = 9, < 0
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = AnimElem = 5, < 4
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = AnimElem = 4, < 2
trigger7 = movecontact
trigger8 = stateno = 213
trigger8 = AnimElem = 8, < 0
trigger8 = movecontact

;FDF_B -2
[State -1]
type = ChangeState
value = 1012
triggerall = stateno = 1011
triggerall = command = "FDF_b" || (Var(44)=11 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=11 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = (var(40)=1 && AnimElem = 3, >= 3) || (var(40)!=1 && AnimElem = 3, >= 0)
trigger1 = movecontact

;FDF_B
[State -1]
type = ChangeState
value = 1010
triggerall = command = "FDF_b" || (Var(44)=11 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=11 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 204
trigger2 = AnimElem = 5, < 0
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = AnimElem = 5, < 2
trigger3 = movecontact
trigger4 = stateno = 202
trigger4 = AnimElem = 7, < 0
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = AnimElem = 9, < 0
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = AnimElem = 5, < 4
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = AnimElem = 4, < 2
trigger7 = movecontact
trigger8 = stateno = 213
trigger8 = AnimElem = 8, < 0
trigger8 = movecontact

;DF_A
[State -1]
type = ChangeState
value = 1100
triggerall = command = "DF_a" || (Var(44)=8 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=8 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 204
trigger2 = AnimElem = 5, < 0
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = AnimElem = 5, < 2
trigger3 = movecontact
trigger4 = stateno = 202
trigger4 = AnimElem = 7, < 0
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = AnimElem = 9, < 0
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = AnimElem = 5, < 4
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = AnimElem = 4, < 2
trigger7 = movecontact
trigger8 = stateno = 213
trigger8 = AnimElem = 8, < 0
trigger8 = movecontact

;DF_A in Air
[State -1]
type = ChangeState
value = 1200
triggerall = command = "DF_aAir" || (Var(44)=8 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=8 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620
trigger2 = movecontact

;DF_B
[State -1]
type = ChangeState
value = 1110
triggerall = command = "DF_b" || (Var(44)=9 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=9 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 204
trigger2 = AnimElem = 5, < 0
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = AnimElem = 5, < 2
trigger3 = movecontact
trigger4 = stateno = 202
trigger4 = AnimElem = 7, < 0
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = AnimElem = 9, < 0
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = AnimElem = 5, < 4
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = AnimElem = 4, < 2
trigger7 = movecontact
trigger8 = stateno = 213
trigger8 = AnimElem = 8, < 0
trigger8 = movecontact

;DF_B in Air
[State -1]
type = ChangeState
value = 1210
triggerall = command = "DF_bAir" || (Var(44)=9 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=9 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620
trigger2 = movecontact

;BDF_C
[State -1]
type = ChangeState
value = 1300
triggerall = command = "BDF_c" || (Var(44)=12 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=12 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype = S
trigger1 = ctrl

;DB_A
[State -1]
type = ChangeState
value = 1400
triggerall = command = "DB_a" || (Var(44)=13 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=13 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 204
trigger2 = AnimElem = 5, < 0
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = AnimElem = 5, < 2
trigger3 = movecontact
trigger4 = stateno = 202
trigger4 = AnimElem = 7, < 0
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = AnimElem = 9, < 0
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = AnimElem = 5, < 4
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = AnimElem = 4, < 2
trigger7 = movecontact
trigger8 = stateno = 213
trigger8 = AnimElem = 8, < 0
trigger8 = movecontact

;DB_B
[State -1]
type = ChangeState
value = 1410
triggerall = command = "DB_b" || (Var(44)=14 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=14 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 204
trigger2 = AnimElem = 5, < 0
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = AnimElem = 5, < 2
trigger3 = movecontact
trigger4 = stateno = 202
trigger4 = AnimElem = 7, < 0
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = AnimElem = 9, < 0
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = AnimElem = 5, < 4
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = AnimElem = 4, < 2
trigger7 = movecontact
trigger8 = stateno = 213
trigger8 = AnimElem = 8, < 0
trigger8 = movecontact

;DB_C
[State -1]
type = ChangeState
value = 950
triggerall = command = "DB_c" || (Var(44)=7 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=7 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact


;CD Stand Throw
[State -1]
type = ChangeState
value = 900
triggerall = command = "cd" || (Var(44)=6 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=6 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype = S
trigger1 = ctrl

;Jump_CD Throw
[State -1]
type = ChangeState
value = 910
triggerall = command = "cd" || (Var(44)=6 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=6 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype = A
trigger1 = ctrl


;===========================================================================
;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------


;===========================================================================
;---------------------------------------------------------------------------
;Stand_A holdback
[State -1]
type = ChangeState
value = 204
triggerall = command = "holdback"
triggerall = command = "x" || (Var(44)=1 && command = "holdb") || (Var(46)=1 && command = "holdc")
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "x" || (Var(44)=1 && command = "holdb") || (Var(46)=1 && command = "holdc")
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Var(40) != 1 && stateno = 204
trigger2 = time < 10
trigger2 = MoveContact

;Stand_A 第二擊
[State -1]
type = ChangeState
value = 202
triggerall = Var(40) != 1
triggerall = command = "x" || (Var(44)=1 && command = "holdb") || (Var(46)=1 && command = "holdc")
triggerall = command != "holddown"
trigger1 = stateno = 200
trigger1 = time < 10
trigger1 = MoveContact

;Stand_BC for POWER Mode
[State -1]
type = ChangeState
value = 242
triggerall = Var(40) = 1
triggerall = command = "bc" || (Var(44)=5 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=5 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype != A
trigger1 = ctrl

;Stand_BC
[State -1]
type = ChangeState
value = 240
triggerall = Var(40) != 1
triggerall = command = "bc" || (Var(44)=5 && ((Var(45)=1 && command = "holdb")|| command = "b")) || (Var(46)=5 && ((Var(47)=1 && command = "holdc")|| command = "c"))
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 204
trigger2 = AnimElem = 5, < 0
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = AnimElem = 5, < 2
trigger3 = movecontact
trigger4 = stateno = 202
trigger4 = AnimElem = 7, < 0
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = AnimElem = 9, < 0
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = AnimElem = 5, < 4
trigger6 = movecontact
trigger7 = stateno = 400 && (prevstateno = 200 || prevstateno = 204)
trigger7 = AnimElem = 4, < 2
trigger7 = movecontact
trigger8 = stateno = 213
trigger8 = AnimElem = 8, < 0
trigger8 = movecontact

;Stand_B - Run
[State -1]
type = ChangeState
value = 213
triggerall = command = "holdfwd"
triggerall = command = "y" || (Var(44)=2 && command = "holdb") || (Var(46)=2 && command = "holdc")
triggerall = command != "holddown"
trigger1 = stateno = 100
trigger1 = time > 10

;Stand_B - holdfwd
[State -1]
type = ChangeState
value = 212
triggerall = command = "holdfwd"
triggerall = command = "y" || (Var(44)=2 && command = "holdb") || (Var(46)=2 && command = "holdc")
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Var(40) != 1 && stateno = 204
trigger2 = AnimElem = 5, < 0
trigger2 = movecontact
trigger3 = Var(40) != 1 && stateno = 200
trigger3 = AnimElem = 5, < 2
trigger3 = movecontact
trigger4 = Var(40) != 1 && stateno = 202
trigger4 = AnimElem = 7, < 0
trigger4 = movecontact
trigger5 = Var(40) != 1 && stateno = 210
trigger5 = AnimElem = 9, < 0
trigger5 = movecontact
trigger6 = Var(40) != 1 && stateno = 410
trigger6 = AnimElem = 5, < 4
trigger6 = movecontact
trigger7 = Var(40) != 1 && stateno = 400 && (prevstateno = 200 || prevstateno = 204)
trigger7 = AnimElem = 4, < 2
trigger7 = movecontact
trigger8 = Var(40) != 1 && stateno = 213
trigger8 = AnimElem = 8, < 0
trigger8 = movecontact

;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = command = "y" || (Var(44)=2 && command = "holdb") || (Var(46)=2 && command = "holdc")
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Var(40) != 1 && stateno = 204
trigger2 = time < 10
trigger2 = movecontact
trigger3 = Var(40) != 1 && stateno = 200
trigger3 = time < 10
trigger3 = movecontact
trigger4 = Var(40) != 1 && stateno = 202
trigger4 = time < 10
trigger4 = movecontact
trigger5 = Var(40) != 1 && stateno = 400 && (prevstateno = 200 || prevstateno = 204)
trigger5 = AnimElem = 4, < 2
trigger5 = movecontact
trigger6 = Var(40) != 1 && stateno = 213
trigger6 = AnimElem = 8, < 0
trigger6 = movecontact

;↘+B 追擊
[State -1]
type = ChangeState
value = 250
triggerall = p2statetype = L
triggerall = command = "holddown"
triggerall = command = "holdfwd"
triggerall = command = "y" || (Var(44)=2 && command = "holdb") || (Var(46)=2 && command = "holdc")
trigger1 = statetype != A
trigger1 = ctrl

;Stand_C - holdfwd
[State -1]
type = ChangeState
value = 222
triggerall = command = "holdfwd"
triggerall = command = "z" || (Var(44)=3 && command = "holdb") || (Var(46)=3 && command = "holdc")
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Var(40) != 1 && stateno = 204
trigger2 = AnimElem = 5, < 0
trigger2 = movecontact
trigger3 = Var(40) != 1 && stateno = 200
trigger3 = AnimElem = 5, < 2
trigger3 = movecontact
trigger4 = Var(40) != 1 && stateno = 202
trigger4 = AnimElem = 7, < 0
trigger4 = movecontact
trigger5 = Var(40) != 1 && stateno = 210
trigger5 = AnimElem = 9, < 0
trigger5 = movecontact
trigger6 = Var(40) != 1 && stateno = 410
trigger6 = AnimElem = 5, < 4
trigger6 = movecontact
trigger7 = Var(40) != 1 && stateno = 400 && (prevstateno = 200 || prevstateno = 204)
trigger7 = AnimElem = 4, < 2
trigger7 = movecontact
trigger8 = Var(40) != 1 && stateno = 213
trigger8 = AnimElem = 8, < 0
trigger8 = movecontact

;Stand_C
[State -1]
type = ChangeState
value = 220
triggerall = command = "z" || (Var(44)=3 && command = "holdb") || (Var(46)=3 && command = "holdc")
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Stand_D - 2
[State -1]
type = ChangeState
value = 236
triggerall = command = "a" || (Var(44)=4 && command = "holdb") || (Var(46)=4 && command = "holdc")
trigger1 = stateno = 235 || stateno = 435
trigger1 = ctrl

;Stand_D
[State -1]
type = ChangeState
value = 230
triggerall = command = "a" || (Var(44)=4 && command = "holdb") || (Var(46)=4 && command = "holdc")
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "x" || (Var(44)=1 && command = "holdb") || (Var(46)=1 && command = "holdc")
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Var(40) != 1 && stateno = 204
trigger2 = AnimElem = 5, < 0
trigger2 = movecontact
trigger3 = Var(40) != 1 && stateno = 200
trigger3 = AnimElem = 5, < 2

;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "y" || (Var(44)=2 && command = "holdb") || (Var(46)=2 && command = "holdc")
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Var(40) != 1 && stateno = 204
trigger2 = AnimElem = 5, < 0
trigger2 = movecontact
trigger3 = Var(40) != 1 && stateno = 200
trigger3 = AnimElem = 5, < 2
trigger3 = movecontact
trigger4 = Var(40) != 1 && stateno = 202
trigger4 = AnimElem = 7, < 0
trigger4 = movecontact
trigger5 = Var(40) != 1 && stateno = 400 && (prevstateno = 200 || prevstateno = 204)
trigger5 = AnimElem = 4, < 2
trigger5 = movecontact
trigger6 = Var(40) != 1 && stateno = 213
trigger6 = AnimElem = 8, < 0
trigger6 = movecontact

;Crouch_C - holdfwd
[State -1]
type = ChangeState
value = 422
triggerall = command = "z" || (Var(44)=3 && command = "holdb") || (Var(46)=3 && command = "holdc")
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Var(40) != 1 && stateno = 204
trigger2 = AnimElem = 5, < 0
trigger2 = movecontact
trigger3 = Var(40) != 1 && stateno = 200
trigger3 = AnimElem = 5, < 2
trigger3 = movecontact
trigger4 = Var(40) != 1 && stateno = 202
trigger4 = AnimElem = 7, < 0
trigger4 = movecontact
trigger5 = Var(40) != 1 && stateno = 210
trigger5 = AnimElem = 9, < 0
trigger5 = movecontact
trigger6 = Var(40) != 1 && stateno = 410
trigger6 = AnimElem = 5, < 4
trigger6 = movecontact
trigger7 = Var(40) != 1 && stateno = 400 && (prevstateno = 200 || prevstateno = 204)
trigger7 = AnimElem = 4, < 2
trigger7 = movecontact
trigger8 = Var(40) != 1 && stateno = 213
trigger8 = AnimElem = 8, < 0
trigger8 = movecontact


;Crouch_C
[State -1]
type = ChangeState
value = 420
triggerall = command = "z" || (Var(44)=3 && command = "holdb") || (Var(46)=3 && command = "holdc")
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Stand_C -ABC 連段
[State -1]
type = ChangeState
value = 226
triggerall = Var(40) != 1
triggerall = command = "z" || (Var(44)=3 && command = "holdb") || (Var(46)=3 && command = "holdc")
trigger1 = stateno = 210
trigger1 = Var(12) = 210

;Crouch_D
[State -1]
type = ChangeState
value = 430
triggerall = command = "a" || (Var(44)=4 && command = "holdb") || (Var(46)=4 && command = "holdc")
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
trigger1 = command = "x" || (Var(44)=1 && command = "holdb") || (Var(46)=1 && command = "holdc")
trigger1 = statetype = A
trigger1 = ctrl

;Jump_B
[State -1]
type = ChangeState
value = 610
trigger1 = command = "y" || (Var(44)=2 && command = "holdb") || (Var(46)=2 && command = "holdc")
trigger1 = statetype = A
trigger1 = ctrl

;Jump_C
[State -1]
type = ChangeState
value = 620
trigger1 = command = "z" || (Var(44)=3 && command = "holdb") || (Var(46)=3 && command = "holdc")
trigger1 = statetype = A
trigger1 = ctrl

;Jump_D
[State -1]
type = ChangeState
value = 630
triggerall = command = "a" || (Var(44)=4 && command = "holdb") || (Var(46)=4 && command = "holdc")
triggerall = stateno != 635
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------

