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
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command]
name ="code1"
command = B,F,B,F,D,U
time = 180

[Command]
name ="code2"
command = D,D,U,D,U,D
time = 180

[Command]
name = "vcross"
command = ~D, DB, B, z+c

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+z

[Command]
name = "QCF_xy"
command = ~D, DF, F, y+z

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "QCF_ab"
command = ~D, DF, F, b+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+c

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+z

[Command]
name = "QCB_xy"
command = ~D, DB, B, y+z

[Command]
name = "L3-1"
command = ~F, D, DF, a+b

[Command]
name = "L3-1"
command = ~F, D, DF, b+c

[Command]
name = "L3-1"
command = ~F, D, DF, a+c

[Command]
name = "L3-2"
command = ~D, DB, B, a+b

[Command]
name = "L3-2"
command = ~D, DB, B, b+c

[Command]
name = "L3-2"
command = ~D, DB, B, a+c

[Command]
name = "L3-3"
command = x, x, F, a, z
time = 40


;-| Special Motions |------------------------------------------------------
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
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "FF_x"
command = F,D,DF, x
time = 20

[Command]
name = "FF_y"
command = F,D,DF,y
time = 20

[Command]
name = "FF_z"
command = F,D,DF, z
time = 20


[Command]
name = "FF_a"
command = F,D,DF, a
time = 20

[Command]
name = "FF_b"
command = F,D,DF,b
time = 20

[Command]
name = "FF_c"
command = F,D,DF, c
time = 20

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
name = "counter2"
command = ~B, DB, D, a

[Command]
name = "counter2"
command = ~B, DB, D, b

[Command]
name = "counter2"
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

[Command]
name = "Fwd"
command = F
time = 1

[Command]
name = "Back"
command = B
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

[Command]
name = "sjump"
command = $D, $U
time = 8


[command]
name = "CPU1"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU11"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU12"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU2"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU13"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU14"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU3"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU15"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU16"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU4"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU17"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU18"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU5"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU19"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU20"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU6"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU21"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU22"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU7"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU23"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU24"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU8"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU25"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU26"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU9"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU27"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU28"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU10"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU29"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU30"
command = s, s, s, s, s, s, s, s
time = 1

;---------------------------------------------------------------------------

; Commands
[Statedef -1]

[State -1]
type = VarSet
var(57) = 1
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
trigger21 = command = "CPU21"
trigger22 = command = "CPU22"
trigger23 = command = "CPU23"
trigger24 = command = "CPU24"
trigger25 = command = "CPU25"
trigger26 = command = "CPU26"
trigger27 = command = "CPU27"
trigger28 = command = "CPU28"
trigger29 = command = "CPU29"
trigger30 = command = "CPU30"
trigger31 = TeamSide = 2 && TeamMode =Single && IsHomeTeam = 1

; Stand Still--If you win, STOP MOVING!!!
[State -1]
type = ChangeState
value = 0
triggerall = Var(57) = 1
triggerall = roundstate = 3
trigger1 = statetype != A
trigger1 = ctrl

;Ground Combo
[State -1,1]
type = ChangeState
value = 400
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,25]
trigger1 = random < 300
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,25]
trigger2 = random < 300

[State -1,1]
type = ChangeState
value = 200
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,20]
trigger1 = random < 200
trigger2 = stateno = 100
trigger2 = P2BodyDist X = [0,20]
trigger2 = random < 200

[State -1,2]
type = ChangeState
value = 430
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 400
trigger1 = movecontact
trigger1 = P2BodyDist x < 50
trigger2 = P2BodyDist X = [0,40]
trigger2 = random < 500 && enemynear, statetype = L
trigger2 = ctrl 

[State -1,2]
type = ChangeState
value = 230
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 200
trigger1 = movecontact

[State -1,3]
type = ChangeState
value = 410
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 430
trigger1 = movecontact

[State -1,3]
type = ChangeState
value = 210
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 230
trigger1 = movecontact

[State -1,32]
type = ChangeState
value = 250
triggerall = var(57) = 1 && random = [0,400]
triggerall = statetype != A && roundstate =2
trigger1 = stateno = 410 || stateno = 210
trigger1 = movecontact

[State -1,32]
type = ChangeState
value = 220
triggerall = var(57) = 1 && random = [401,700]
triggerall = statetype != A && roundstate =2
trigger1 = stateno = 410 || stateno = 210
trigger1 = movecontact

[State -1,32]
type = ChangeState
value = 450
triggerall = var(57) = 1 && random = [701,999]
triggerall = statetype != A && roundstate =2
trigger1 = stateno = 410 || stateno = 210
trigger1 = movecontact

[State -1,36]
type = ChangeState
value = 260
triggerall = var(57) = 1 && roundstate =2
trigger1 = statetype != A
trigger1 = movehit
trigger1 = stateno = 250
trigger1 = random < 900

;AirCombo

[State -1,41]
type = ChangeState
value = 600
triggerall = var(57) = 1 && roundstate =2
triggerall = statetype = A
triggerall = P2BodyDist X = [0,40]
trigger1 = ctrl = 1
trigger1 = P2BodyDist Y = [-50,10]

[State -1]
type = ChangeState
value = 630
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 600
trigger1 = movecontact

[State -1]
type = ChangeState
value = 610
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 630
trigger1 = movecontact


[State -1]
type = ChangeState
value = 640
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 610 
trigger1 = movecontact


[State -1]
type = ChangeState
value = 620
triggerall = var(57) = 1 && roundstate =2
trigger1 = stateno = 640 
trigger1 = movecontact
trigger1 = p2bodydist y < -50 || p2bodydist y > 40



;Recover
[State -1]
type = ChangeState
value = 5210
triggerall = canrecover = 1 && roundstate =2
triggerall = Var(57) = 1
triggerall = random < 999
triggerall = alive
triggerall = time > 10
trigger1 = stateno = 5050

;Standing Repel
[State -1]
type = ChangeState
value = 910
triggerall = Var(57) = 1
triggerall = random < 400 && roundstate =2
trigger1 = stateno = [150,151]

;Crouching Tiger, Hidden..... Oops! Repel
[State -1]
type = ChangeState
value = 920
triggerall = Var(57) = 1
triggerall = random < 400 
trigger1 = stateno = [152,153]

;Air Repel
[State -1]
type = ChangeState
value = 930
triggerall = Var(57) = 1
triggerall = random < 400
trigger1 = stateno = [154,155]

;Counter Strike 1
[State -1, Counter]
type = ChangeState
value = 950
triggerall = (Var(57)=1) && (power >= 2000)
triggerall = random < 300 && enemynear, statetype !=A && p2dist X < 50
trigger1 = stateno = [150,153]

;Counter Strike 2
[State -1, Counter]
type = ChangeState
value = 960
triggerall = (Var(57)=1) && (power >= 2000)
triggerall = random < 300 && enemynear, statetype = A && p2dist X < 50
trigger1 = stateno = [150,153]

; Throw
[State -1]
type = ChangeState
value = 800
triggerall = Var(57) = 1
triggerall = random <= 100
triggerall = p2bodydist X <= 10 && p2statetype != A
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------

; Guard triggers for AI
[State -2, Stand guard]
type = ChangeState
triggerall = var(57) > 0  && p2bodydist X < 70
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = ctrl = 1
value = 130

[State -2, S-to-C guard]
type = ChangeState
triggerall = var(57) > 0 && p2bodydist X < 70
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = stateno = 150
value = 152

[State -2, Crouch guard]
type = ChangeState
triggerall = var(57) > 0 && p2bodydist X < 70
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = ctrl = 1
value = 131

[State -2, C-to-S guard]
type = ChangeState
triggerall = var(57) > 0 && p2bodydist X < 70
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = stateno = 152
value = 150

[State -2, Air guard]
type = ChangeState
triggerall = var(57) > 0 && p2bodydist X < 70
triggerall = StateType = A
triggerall = P2Movetype = A
trigger1 = ctrl = 1
value = 132

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = Var(57) = 1 
triggerall = random <= 400 && stateno !=100
triggerall = p2bodydist X > 25 
trigger1 = statetype = S
trigger1 = ctrl = 1

;Good Night, Sugah!
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = random < 200 && var(57) = 1 && roundstate =2
triggerall = power >= 1000 || Var(29) > 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
;Kiss of Death
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3010
triggerall = random < 200 && var(57) = 1 && roundstate =2
triggerall = power >= 1000 || Var(29) >0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;Stolen Super
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 6000+(Var(54)*10)
triggerall = random < 200 && var(57) = 1 && roundstate =2
triggerall = Var(54) != 0
triggerall = power >= 1000 || var(29) > 0
trigger1 = statetype !=A && Var(54) !=9 && Var(54) !=12
trigger1 = ctrl
trigger2 = statetype != A && Var(54) !=9 && Var(54) !=12
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = statetype = A && (Var(54) = 1 || Var(54) =9 || Var(54) =12 || Var(54) = 21)
trigger3 = ctrl
trigger4 = statetype = A && (Var(54) = 1 || Var(54) =9 || Var(54) =12 || Var(54) = 21)
trigger4 = hitdefattr = A, NA, SA
trigger4 = movecontact

;Dive Punch (Weak Punch)
[State -1, Repeating Punch]
type = ChangeState
value = ifelse(statetype = A,1023,1020) 
triggerall = var(57) > 0 && p2bodydist X < 70 && roundstate =2 && random < 200
triggerall = P2statetype != A && Pos Y < -50
triggerall = P2Movetype = A
trigger1 = statetype = A
trigger1 = ctrl

;Mommy! She Stole My Power! 
[State -1, Steal]
type = ChangeState
value = ifelse(Var(54) = 1 || Var(54) = 9,4003+(Var(54)*10),4006+(Var(54)*10))
triggerall = var(57) > 0 && random > ifelse(Var(54) = 17,500,900) && roundstate =2 && p2bodydist X < ifelse(Var(54)=17,20,ifelse(Var(54) = 3 || Var(54)=10,40,310))
triggerall = Var(54) !=0 && NumHelper(11000)=0 && NumHelper(11001)=0 && NumHelper(11002)=0 && NumHelper(11001)=0 
trigger1 = (statetype != A && ((Var(54) =[5,8]) || (Var(54)=[10,11]) || (Var(54)=[13,18])  || Var(54) = 20)) 
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = (statetype != A && ((Var(54) =[5,8]) || (Var(54)=[10,11]) || (Var(54)=[13,18]) || Var(54) != 20)) 
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SC, NA, SA, NP, SP
trigger3 = movecontact
trigger4 = statetype != C && (Var(54) !=[5,8]) && (Var(54)!=[10,11])  && (Var(54)!=[13,18]) && Var(54) != 20 
trigger4 = ctrl
trigger5 = stateno = [600,699]
trigger5 = movecontact && (Var(54) !=[5,8]) && (Var(54)!=[10,11]) && (Var(54)!=[13,18]) && Var(54) != 20 
trigger6 = movecontact && (Var(54) !=[5,8]) && (Var(54)!=[10,11]) && (Var(54)!=[13,18]) && Var(54) != 20 
trigger6 = Var(5) = 4 && Var(6) > 0
trigger6= hitdefattr = SCA, NA, SA, NP, SP
trigger6 = movecontact

[State -1, Shoryuken Extra]
type = changestate
value = 4036
triggerall = roundstate =2
triggerall = Var(57) = 1 && Var(54) =3
triggerall = statetype != A && ctrl
triggerall = P2BodyDist X = [0,80]
triggerall = P2BodyDist Y >= -150;= [-150,-60]
trigger1 = p2stateno = 50
trigger2 = p2stateno = 5050
trigger3 = p2stateno = 5100
trigger4 = p2stateno = 5101
trigger5 = p2stateno = 5110
trigger6 = random < 500
trigger7 = p2movetype = A
trigger7 = random < 999



;Normal Controls============================================

[State -10, 1 ]
type = Helper
trigger1 = Var(52) = 0
trigger1 = roundstate < 2 && command = "code1"
helpertype = normal
name = "Striker"
ID = 10000
pos = -130,0
postype = p1
facing = ifelse(Teamside = 2,-1,1)
stateno = 15000
ownpal = 1

[State -10, 1 ]
type = Helper
trigger1 = Var(52) = 0
trigger1 = roundstate < 2 && command = "code2"
helpertype = normal
name = "Striker"
ID = 10000
pos = -130,0
postype = p1
facing = ifelse(Teamside = 2,-1,1)
stateno = 15001
ownpal = 1


;Variable Cross
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3500
triggerall = command = "vcross" && Var(29) = 0 && Var(55) != 0
triggerall = power >= 3000 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;Level Three Supers - Command One
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 8000+(Var(54)*10)
triggerall = command = "L3-1"
triggerall = power >= 3000
triggerall = Var(54) = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;Level Three Supers - Command Three
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 8000+(Var(54)*10)
triggerall = command = "L3-3"
triggerall = power >= 3000
triggerall = Var(54) = 12
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno = 200
trigger4 = stateno = 220
trigger5 = stateno = 230



;Good Night, Sugah!
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "QCF_xy"
triggerall = power >= 1000 || Var(29) > 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
;Kiss of Death
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3010
triggerall = command = "QCB_xy"
triggerall = power >= 1000 || Var(29) >0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;Stolen Super
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 6000+(Var(54)*10)
triggerall = command = "QCF_ab"
triggerall = Var(54) != 0
triggerall = power >= 1000 || Var(29) >0
trigger1 = statetype !=A && Var(54) !=9 && Var(54) !=12
trigger1 = ctrl
trigger2 = statetype != A && Var(54) !=9 && Var(54) !=12
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = statetype = A && (Var(54) = 1 || Var(54) =9 || Var(54) =12 || Var(54) = 21)
trigger3 = ctrl
trigger4 = statetype = A && (Var(54) = 1 || Var(54) =9 || Var(54) =12 || Var(54) = 21)
trigger4 = hitdefattr = A, NA, SA
trigger4 = movecontact

;===========================================================================

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
triggerall = (command = "counter2") && (power >= 1000)
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------

;Dive Punch (Weak Punch)
[State -1, Repeating Punch]
type = ChangeState
value = ifelse(statetype = A,1023,1020)
triggerall = command = "FF_a"
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA,NP, SP
trigger3 = movecontact

;---------------------------------------------------------------------------
;Dive Punch (Medium Punch)
[State -1, Repeating Punch]
type = ChangeState
value = ifelse(statetype = A,1023,1021)
triggerall = command = "FF_b"
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA,NP, SP
trigger3 = movecontact

;---------------------------------------------------------------------------
;Dive Punch(Strong Punch)
[State -1, Repeating Punch]
type = ChangeState
value = ifelse(statetype = A,1023,1022)
triggerall = command = "FF_c"
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA,NP, SP
trigger3 = movecontact


;Dive Punch (Weak Punch)
[State -1, Repeating Punch]
type = ChangeState
value = 1030
triggerall = command = "FF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA, NP, SP
trigger3 = movecontact

;---------------------------------------------------------------------------
;Dive Punch (Medium Punch)
[State -1, Repeating Punch]
type = ChangeState
value = 1031
triggerall = command = "FF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = Var(5)= 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA, NP, SP
trigger3 = movecontact

;---------------------------------------------------------------------------
;Dive Punch(Strong Punch)
[State -1, Repeating Punch]
type = ChangeState
value = 1032
triggerall = command = "FF_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA, NP, SP
trigger3 = movecontact

;Repeating Punch (Weak Punch)
[State -1, Repeating Punch]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA, NP, SP 
trigger3 = movecontact

;---------------------------------------------------------------------------
;Repeating Punch (Medium Punch)
[State -1, Repeating Punch]
type = ChangeState
value = 1001
triggerall = command = "QCF_y"
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA, NP, SP
trigger3 = movecontact

;---------------------------------------------------------------------------
;Repeating Punch (Strong Punch)
[State -1, Repeating Punch]
type = ChangeState
value = 1002
triggerall = command = "QCF_z"
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA,NP, SP
trigger3 = movecontact

;Special Powers 1
[State -1, Steal]
type = ChangeState
value = 4000+(Var(54)*10)
triggerall = command = "QCF_a"
triggerall = Var(54) !=0 && NumHelper(11000)=0 && NumHelper(11001)=0 && NumHelper(11002)=0 && NumHelper(11001)=0 
trigger1 = (statetype != A && ((Var(54) =[5,8]) || (Var(54)=[10,11]) || (Var(54)=[13,18])  || Var(54) = 20)) 
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = (statetype != A && ((Var(54) =[5,8]) || (Var(54)=[10,11]) || (Var(54)=[13,18]) || Var(54) = 20)) 
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SC, NA, SA, NP, SP
trigger3 = movecontact
trigger4 = statetype != C && (Var(54) !=[5,8]) && (Var(54)!=[10,11])  && (Var(54)!=[13,18]) && Var(54) != 20 
trigger4 = ctrl
trigger5 = stateno = [600,699]
trigger5 = movecontact && (Var(54) !=[5,8]) && (Var(54)!=[10,11]) && (Var(54)!=[13,18]) && Var(54) != 20 
trigger6 = movecontact && (Var(54) !=[5,8]) && (Var(54)!=[10,11]) && (Var(54)!=[13,18]) && Var(54) != 20 
trigger6 = Var(5) = 4 && Var(6) > 0
trigger6= hitdefattr = SCA, NA, SA, NP, SP
trigger6 = movecontact
;---------------------------------------------------------------------------
;Mommy! She Stole My Power! 2
[State -1, Steal]
type = ChangeState
value = 4003+(Var(54)*10)
triggerall = command = "QCF_b"
triggerall = Var(54) !=0 && NumHelper(11000)=0 && NumHelper(11001)=0 && NumHelper(11002)=0 && NumHelper(11001)=0 
trigger1 = (statetype != A && ((Var(54) =[5,8]) || (Var(54)=[10,11]) || (Var(54)=[13,18])  || Var(54) = 20)) 
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = (statetype != A && ((Var(54) =[5,8]) || (Var(54)=[10,11]) || (Var(54)=[13,18]) || Var(54) != 20)) 
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SC, NA, SA, NP, SP
trigger3 = movecontact
trigger4 = statetype != C && (Var(54) !=[5,8]) && (Var(54)!=[10,11])  && (Var(54)!=[13,18]) && Var(54) != 20 
trigger4 = ctrl
trigger5 = stateno = [600,699]
trigger5 = movecontact && (Var(54) !=[5,8]) && (Var(54)!=[10,11]) && (Var(54)!=[13,18]) && Var(54) != 20 
trigger6 = movecontact && (Var(54) !=[5,8]) && (Var(54)!=[10,11]) && (Var(54)!=[13,18]) && Var(54) != 20 
trigger6 = Var(5) = 4 && Var(6) > 0
trigger6= hitdefattr = SCA, NA, SA, NP, SP
trigger6 = movecontact
;---------------------------------------------------------------------------
;Thou Shalt Steal 3
[State -1, Steal]
type = ChangeState
value = 4006+(Var(54)*10)
triggerall = command = "QCF_c"
triggerall = Var(54) !=0 && NumHelper(11000)=0 && NumHelper(11001)=0 && NumHelper(11002)=0 && NumHelper(11001)=0
trigger1 = (statetype != A && ((Var(54) =[5,8]) || (Var(54)=[10,11]) || (Var(54)=[13,18])  || Var(54) = 20)) 
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = (statetype != A && ((Var(54) =[5,8]) || (Var(54)=[10,11]) || (Var(54)=[13,18]) || Var(54) != 20)) 
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SC, NA, SA, NP, SP
trigger3 = movecontact
trigger4 = statetype != C && (Var(54) !=[5,8]) && (Var(54)!=[10,11])  && (Var(54)!=[13,18]) && Var(54) != 20 
trigger4 = ctrl
trigger5 = stateno = [600,699]
trigger5 = movecontact && (Var(54) !=[5,8]) && (Var(54)!=[10,11]) && (Var(54)!=[13,18]) && Var(54) != 20 
trigger6 = movecontact && (Var(54) !=[5,8]) && (Var(54)!=[10,11]) && (Var(54)!=[13,18]) && Var(54) != 20 
trigger6 = Var(5) = 4 && Var(6) > 0
trigger6= hitdefattr = SCA, NA, SA, NP, SP
trigger6 = movecontact

;Power Drain
[State -1, Power Drain]
type = ChangeState
value = 1010
triggerall = (command = "QCB_a") || (command = "QCB_b") || (command = "QCB_c") 
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

;Standing Repel
[State -1]
type = ChangeState
value = 910
triggerall = command = "recovery"
trigger1 = stateno = [150,151]

;Crouching Tiger, Hidden..... Oops! Repel
[State -1]
type = ChangeState
value = 920
triggerall = command = "recovery"
trigger1 = stateno = [152,153]

;Air Repel
[State -1]
type = ChangeState
value = 930
triggerall = command = "recovery"
trigger1 = stateno = [154,155]

;Call a Striker
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "y" && command = "b"
triggerall = Var(55) != 0
triggerall = power >= 750 && NumHelper(10000) = 0 && Var(52) != 1
trigger1 = statetype !=A 
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800 + (statetype = A)
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


;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100 + (2*(statetype = A))
trigger1 = (command = "FF") && (stateno !=[100,106]) && (Var(2) = 0)
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = (statetype = S) && (stateno !=[100,106])
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,499]) && (Var(5) =4)
trigger2 = movecontact 

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
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && MoveContact
trigger3 = (stateno = [230,240]) && MoveContact
trigger4 = (stateno = [400,410]) && MoveContact
trigger5 = (stateno = [430,440]) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 400) && MoveContact
trigger4 = (stateno = [200,499]) && (Var(5) =4)
trigger4 = movecontact 
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = [400,410]) && MoveContact
trigger5 = (stateno = 430) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,220]) && MoveContact
trigger3 = (stateno = [230,240]) && MoveContact
trigger4 = (stateno = [400,420]) && MoveContact
trigger5 = (stateno = [430,440]) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
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
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
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
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && MoveContact
trigger3 = (stateno = [230,240]) && MoveContact
trigger4 = (stateno = [400,410]) && MoveContact
trigger5 = (stateno = [430,440]) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 400) && MoveContact
trigger4 = (stateno = [200,499]) && (Var(5) =4)
trigger4 = movecontact 

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = [400,410]) && MoveContact
trigger5 = (stateno = 430) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,220]) && MoveContact
trigger3 = (stateno = [230,240]) && MoveContact
trigger4 = (stateno = [400,420]) && MoveContact
trigger5 = (stateno = [430,440]) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
;---------------------------------------------------------------------------

;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699]) && (Var(5) =4)
trigger2 = movecontact 

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
trigger4 = (stateno = [600,699]) && (Var(5) =4)
trigger4 = movecontact 

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 630) && MoveContact
trigger5 = (stateno = 640) && MoveContact
trigger6 = (stateno = [600,699]) && (Var(5) =4)
trigger6 = movecontact 

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = [600,699]) && (Var(5) =4)
trigger3 = movecontact 
;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 630) && MoveContact
trigger5 = (stateno = [600,699]) && (Var(5) =4)
trigger5 = movecontact 
;---------------------------------------------------------------------------
;Dive Kick
[State -1]
type = ChangeState
value = 655
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699]) && (Var(5) =4)
trigger2 = movecontact 

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 630) && MoveContact
trigger5 = (stateno = 640) && MoveContact
trigger6 = (stateno = [600,699]) && (Var(5) =4)
trigger6 = movecontact 


[State -1]
type = ChangeState
value = 260 
trigger1 = command = "sjump"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 250 
trigger2 = (movecontact) && (command = "holdup")
trigger3 = stateno = 420
trigger3 = (movecontact) && (command = "holdup")








