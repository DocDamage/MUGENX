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

[Command]
name = "QCF2p"     ;Required (do not remove)
command = ~D, DF, F, x+y

[Command]
name = "QCF2p"     ;Required (do not remove)
command = ~D, DF, F, y+z

[Command]
name = "QCF2p"     ;Required (do not remove)
command = ~D, DF, F, x+z
;

[Command]
name = "QCF2k"     ;Required (do not remove)
command = ~D, DF, F, a+b

[Command]
name = "QCF2k"     ;Required (do not remove)
command = ~D, DF, F, b+c

[Command]
name = "QCF2k"     ;Required (do not remove)
command = ~D, DF, F, a+c

[Command]
name = "HCBx"     ;Required (do not remove)
command = ~F, DF, D, DB, B, x
time = 25

[Command]
name = "HCBy"     ;Required (do not remove)
command = ~F, DF, D, DB, B, y
time = 25

[Command]
name = "HCBz"     ;Required (do not remove)
command = ~F, DF, D, DB, B, z
time = 25

[Command]
name = "QCFx"     ;Required (do not remove)
command = ~D, DF, F, x

[Command]
name = "QCFy"     ;Required (do not remove)
command = ~D, DF, F, y

[Command]
name = "QCFz"     ;Required (do not remove)
command = ~D, DF, F, z

[Command]
name = "QCFa"     ;Required (do not remove)
command = ~D, DF, F, a

[Command]
name = "QCFb"     ;Required (do not remove)
command = ~D, DF, F, b

[Command]
name = "QCFc"     ;Required (do not remove)
command = ~D, DF, F, c

[Command]
name = "EXswitch"     ;Required (do not remove)
command = ~B, D, DB, a

[Command]
name = "EXswitch"     ;Required (do not remove)
command = ~B, D, DB, b

[Command]
name = "EXswitch"     ;Required (do not remove)
command = ~B, D, DB, c

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
name = "sjump"
command = $D, $U
time = 8

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+z
time = 1

[Command]
name = "striker";Required (do not remove)
command = y+b
time = 1
[Command]
name = "counter1"
command = ~B, DB, D, x

[Command]
name = "counter1"
command = ~B, DB, D, y

[Command]
name = "counter1"
command = ~B, DB, D, z

[Command]
name = "counter2a"
command = ~B, DB, D, a

[Command]
name = "counter2b"
command = ~B, DB, D, b

[Command]
name = "counter2c"
command = ~B, DB, D, c


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

;Venom Rush
[State -1]
type = ChangeState
value = 3000
triggerall = command = "QCF2k"
triggerall = statetype !=A && power >= 1000
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  
trigger2 = movecontact

;Venom Rush
[State -1]
type = ChangeState
value = 3010
triggerall = command = "QCF2p"
triggerall = statetype !=A && power >= 1000
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  
trigger2 = movecontact

;Mode Change
[State -1]
type = ChangeState
value = 3020
triggerall = command = "EXswitch"
triggerall = statetype !=A && power >= 1000
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  
trigger2 = movecontact


;Web Throw
[State -1]
type = ChangeState
value = 1030
triggerall = command = "HCBx"
triggerall = statetype !=A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  
trigger2 = movecontact

;Web Throw
[State -1]
type = ChangeState
value = 1031
triggerall = command = "HCBy"
triggerall = statetype !=A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  
trigger2 = movecontact

;Web Throw
[State -1]
type = ChangeState
value = 1032
triggerall = command = "HCBz"
triggerall = statetype !=A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  
trigger2 = movecontact

;Venom Fang
[State -1]
type = ChangeState
value = ifelse(statetype=A,(ifelse(Var(55),2020,1010)),(ifelse(Var(55),2000,1000)))
triggerall = command = "QCFx"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

;Venom Fang
[State -1]
type = ChangeState
value = ifelse(statetype=A,(ifelse(Var(55),2020,1012)),(ifelse(Var(55),2000,1002)))
triggerall = command = "QCFy"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  || (stateno = [600,699])
trigger2 = movecontact

;Venom Fang
[State -1]
type = ChangeState
value = ifelse(statetype=A,(ifelse(Var(55),2020,1014)),(ifelse(Var(55),2000,1004)))
triggerall = command = "QCFz"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  || (stateno = [600,699])
trigger2 = movecontact


;Venom Rush
[State -1]
type = ChangeState
value = ifelse(Var(55),2010,1020)
triggerall = command = "QCFa"
triggerall = statetype !=A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  
trigger2 = movecontact

;Venom Rush
[State -1]
type = ChangeState
value = ifelse(Var(55),2010,1021)
triggerall = command = "QCFb"
triggerall = statetype !=A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  
trigger2 = movecontact

;Venom Rush
[State -1]
type = ChangeState
value = ifelse(Var(55),2010,1022)
triggerall = command = "QCFc"
triggerall = statetype !=A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  
trigger2 = movecontact

;Counter Strike 1
[State -1, Counter]
type = ChangeState
value = 950
triggerall = (command = "counter1") && (power >= 1000)
trigger1 = stateno = [150,153]

;Counter Strike 2
[State -1, Counter]
type = ChangeState
value = 960
triggerall = (command = "counter2a" || command = "counter2b" || command = "counter2c") 
triggerall = (power >= 1000)
trigger1 = stateno = [150,153]


;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = ifelse(statetype=A,850,800)
triggerall = (command = "y") || (command = "z")
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" && (statetype = S)
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback" && (statetype = S)
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = command = "holdfwd" && (statetype = A)
trigger3 = p2bodydist X < 3
trigger3 = p2statetype = A
trigger4 = command = "holdback" && (statetype = A)
trigger4 = p2bodydist X < 5
trigger4 = p2statetype = A 


;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 820 
triggerall = (command = "b") || (command = "c")
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" && (statetype = S)
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback" && (statetype = S)
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H



;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100 + (2*(statetype = A))
trigger1 = (command = "FF") && (stateno !=[100,106]) && (Var(2) = 0)
trigger1 = ctrl && !Var(55)



;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB" && !Var(55)
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno !=[100,105]
;Taunt

;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
 

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 400) && MoveContact
trigger5 = (stateno = 430) && MoveContact
 

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 400) && MoveContact
trigger5 = (stateno = 430) && MoveContact
trigger6 = (stateno = 210 || stateno = 240) && MoveContact && Var(55)
trigger7 = (stateno = 410 || stateno = 440) && MoveContact && Var(55)


;Stand Light Punch
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && Movecontact && Var(55) 

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 400) && MoveContact
trigger5 = (stateno = 430) && MoveContact
trigger6 = (stateno = 210) && MoveContact && Var(55)
trigger7 = (stateno = 410) && MoveContact && Var(55)

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 400) && MoveContact
trigger5 = (stateno = 430) && MoveContact
trigger6 = (stateno = [200,240]) && MoveContact && Var(55)
trigger7 = (stateno = [400,440]) && MoveContact && Var(55)

;Stand Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
 

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 400) && MoveContact
trigger5 = (stateno = 430) && MoveContact
trigger6 = (stateno = 210) && MoveContact && Var(55)
trigger7 = (stateno = 410) && MoveContact && Var(55)

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 400) && MoveContact
trigger5 = (stateno = 430) && MoveContact
trigger6 = (stateno = 210 || stateno = 240) && MoveContact && Var(55)
trigger7 = (stateno = 410 || stateno = 440) && MoveContact && Var(55)

;Stand Light Punch
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 400) && Movecontact && Var(55)
 

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 400) && MoveContact
trigger5 = (stateno = 430) && MoveContact
trigger6 = (stateno = 210) && MoveContact && Var(55)
trigger7 = (stateno = 410) && MoveContact && Var(55)
 

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 400) && MoveContact
trigger5 = (stateno = 430) && MoveContact
trigger6 = (stateno = [200,240]) && MoveContact && Var(55)
trigger7 = (stateno = [400,440]) && MoveContact && Var(55)

;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 102 && Animelemtime(2) >=0
 

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 630) && MoveContact
trigger4 = stateno = 102 && Animelemtime(2) >=0


;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact && (Var(55) || Var(4))
trigger4 = (stateno = 630) && MoveContact
trigger5 = (stateno = 640) && MoveContact && (Var(55) || Var(4))
trigger6 = stateno = 102 && Animelemtime(2) >=0
 

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact && (Var(55) || Var(4))
trigger3 = (stateno = [600,699]) && (Var(5) =4)
trigger3 = movecontact
trigger4 = stateno = 102 && Animelemtime(2) >=0
;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact && (Var(55) || Var(4))
trigger4 = (stateno = 630) && MoveContact
trigger5 = stateno = 102 && Animelemtime(2) >=0
;---------------------------------------------------------------------------

;Jump Strong Kick
[State -1]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact && (Var(55) || Var(4))
trigger4 = (stateno = 630) && MoveContact
trigger5 = (stateno = 640) && MoveContact && (Var(55) || Var(4))
trigger6 = stateno = 102 && Animelemtime(2) >=0

[State -1]
type = ChangeState
value = 260 
trigger1 = command = "sjump"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = ifelse(Var(55),220,210)
trigger2 = (movecontact) && (command = "holdup")


;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------

