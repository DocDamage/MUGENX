;-| AI Commands |----------------------------------------------------------

[Command]
name = "cpu1"
command = U, U, U, U
time = 1
[Command]
name = "cpu2"
command = U, U, U, D
time = 1
[Command]
name = "cpu3"
command = U, U, D, D
time = 1
[Command]
name = "cpu4"
command = U, D, D, D
time = 1
[Command]
name = "cpu5"
command = D, D, D, D
time = 1
[Command]
name = "cpu6"
command = D, D, D, U
time = 1
[Command]
name = "cpu7"
command = D, D, U, U
time = 1
[Command]
name = "cpu8"
command = D, U, U, U
time = 1
[Command]
name = "cpu9"
command = U, D, U, U
time = 1
[Command]
name = "cpu10"
command = U, U, D, U
time = 1
[Command]
name = "cpu11"
command = D, U, U, D
time = 1
[Command]
name = "cpu12"
command = U, D, D, U
time = 1
[Command]
name = "cpu13"
command = D, U, D, U
time = 1
[Command]
name = "cpu14"
command = U, D, U, D
time = 1
[Command]
name = "cpu15"
command = F, F, F, F
time = 1
[Command]
name = "cpu16"
command = B, B, B, B
time = 1
[Command]
name = "cpu17"
command = F, B, F, F
time = 1
[Command]
name = "cpu18"
command = F, F, B, F
time = 1
[Command]
name = "cpu19"
command = B, F, F, F
time = 1
[Command]
name = "cpu20"
command = F, F, F, B
time = 1
[Command]
name = "cpu21"
command = F, B, B, F
time = 1
[Command]
name = "cpu22"
command = B, F, F, B
time = 1
[Command]
name = "cpu23"
command = F, B, F, B
time = 1
[Command]
name = "cpu24"
command = B, F, B, F
time = 1
[Command]
name = "cpu25"
command = D, F, D, F
time = 1
[Command]
name = "cpu26"
command = D, B, D, B
time = 1
[Command]
name = "cpu27"
command = D, B, D, F
time = 1
[Command]
name = "cpu28"
command = D, F, D, B
time = 1
[Command]
name = "cpu29"
command = U, F, D, B
time = 1
[Command]
name = "cpu30"
command = U, B, D, F
time = 1
[Command]
name = "cpu31"
command = B, D, F, U
time = 1
[Command]
name = "cpu32"
command = F, D, B, U
time = 1
[Command]
name = "cpu33"
command = U, U, U, U
time = 1
[Command]
name = "cpu34"
command = U, U, U, D
time = 1
[Command]
name = "cpu35"
command = U, U, D, D
time = 1
[Command]
name = "cpu36"
command = U, D, D, D
time = 1
[Command]
name = "cpu37"
command = D, D, D, D
time = 1
[Command]
name = "cpu38"
command = D, D, D, U
time = 1
[Command]
name = "cpu39"
command = D, D, U, U
time = 1
[Command]
name = "cpu40"
command = D, U, U, U
time = 1
[Command]
name = "cpu41"
command = U, D, U, U
time = 1
[Command]
name = "cpu42"
command = U, U, D, U
time = 1
[Command]
name = "cpu43"
command = D, U, U, D
time = 1
[Command]
name = "cpu44"
command = U, D, D, U
time = 1
[Command]
name = "cpu45"
command = D, U, D, U
time = 1
[Command]
name = "cpu46"
command = U, D, U, D
time = 1
[Command]
name = "cpu47"
command = F, F, F, F
time = 1
[Command]
name = "cpu48"
command = B, B, B, B
time = 1
[Command]
name = "cpu49"
command = F, B, F, F
time = 1
[Command]
name = "cpu50"
command = F, F, B, F
time = 1
[Command]
name = "cpu51"
command = B, F, F, F
time = 1
[Command]
name = "cpu52"
command = F, F, F, B
time = 1
[Command]
name = "cpu53"
command = F, B, B, F
time = 1
[Command]
name = "cpu54"
command = B, F, F, B
time = 1
[Command]
name = "cpu55"
command = F, B, F, B
time = 1
[Command]
name = "cpu56"
command = B, F, B, F
time = 1
[Command]
name = "cpu57"
command = D, F, D, F
time = 1
[Command]
name = "cpu58"
command = D, B, D, B
time = 1
[Command]
name = "cpu59"
command = D, B, D, F
time = 1
[Command]
name = "cpu60"
command = D, F, D, B
time = 1
[Command]
name = "cpu61"
command = U, F, D, B
time = 1
[Command]
name = "cpu62"
command = U, B, D, F
time = 1
[Command]
name = "cpu63"
command = B, D, F, U
time = 1
[Command]
name = "cpu64"
command = F, D, B, U
time = 1

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

[Command] ;Two quarter circles forward + y
name = "nsk"
command = ~D, DF, F, D, DF, F, y
time = 30 

[Command] ;Two quarter circles forward + a
name = "nsa"
command = ~D, DF, F, D, DF, F, a
time = 30 

[Command] ;Two quarter circles forward + b
name = "nsb"
command = ~D, DF, F, D, DF, F, b
time = 30 

[Command] ;Two quarter circles forward + b
name = "nsc"
command = ~D, DF, F, D, DF, F, c
time = 30 

;[Command]
;name = "holdz"
;command = /$z
;time > 10


;-| Special Motions |------------------------------------------------------

[Command] ;Quarter circle forward + a
name = "skull_A"
command = ~D, DF, F, a

[Command] ;Quarter circle forward + b
name = "skull_B"
command = ~D, DF, F, b

[Command] ;Quarter circle forward + c
name = "skull_C"
command = ~D, DF, F, c

[Command] ;Quarter circle back + a
name = "skull2_a"
command = ~D, DB, B, a

[Command] ;Quarter circle back + b
name = "skull2_b"
command = ~D, DB, B, b

[Command] ;Quarter circle back + c
name = "skull2_c"
command = ~D, DB, B, c

[Command] ;Tap A rapidly
name = "5A"
command = /$F, a, a, a
time = 30

[Command] ;Tap B rapidly
name = "5B"
command = /$F, b, b, b
time = 30

[Command] ;Tap C rapidly
name = "5C"
command = /$F, c, c, c
time = 30

[Command] ;Tap D rapidly
name = "patada"
command = /$F, x, x, x
time = 30

[Command] ;SHO-RYU-KEN-Y
name = "SRKY"
command = ~F, D, DF, y
time = 20

[Command] ;kicks_a
name = "kicks_A"
command = ~F, DF, F, x
time = 40


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
command = a+b
time = 1

[Command] ;rodar
name = "rodar"
command = /$B, a+b
time = 30

[Command]
name = "potencia"
command = x+y
time = 8;4

;-| Dir + Button |---------------------------------------------------------
[Command]
Name = "TAVILLO"
command = /$D , y
time = 1

[Command]
name = "down_z"
command = /$D, z
time = 1

[Command] ;Tap A rapidly
name = "tam"
command = /$F, c
time = 1

[Command] ;Tap A rapidly
name = "tamtam"
command = /$B, c
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

[Command]
name = "holdz";Required (do not remove)
command = /$z
time = 10

[Command]
name = "holdpotencia"
command = /$x+y
time = 8;4


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
;inteligencia artificial

;-|AI Routine|----------------------------------------------------------------------------

;-|Signal AI Routines|--------------------------------------------------------------------
[State -1]
type = VarSet
v = 30
value = 1
triggerall = RoundState = 1 || RoundState = 2 || RoundState = 3 || RoundState = 4 
triggerall = ctrl = 0 || ctrl = 1
trigger1 = command = "cpu1"
trigger2 = command = "cpu2"
trigger3 = command = "cpu3"
trigger4 = command = "cpu4"
trigger5 = command = "cpu5"
trigger6 = command = "cpu6"
trigger7 = command = "cpu7"
trigger8 = command = "cpu8"
trigger9 = command = "cpu9"
trigger10 = command = "cpu10"
trigger11 = command = "cpu11"
trigger12 = command = "cpu12"
trigger13 = command = "cpu13"
trigger14 = command = "cpu14"
trigger15 = command = "cpu15"
trigger16 = command = "cpu16"
trigger17 = command = "cpu17"
trigger18 = command = "cpu18"
trigger19 = command = "cpu19"
trigger20 = command = "cpu20"
trigger21 = command = "cpu21"
trigger22 = command = "cpu22"
trigger23 = command = "cpu23"
trigger24 = command = "cpu24"
trigger25 = command = "cpu25"
trigger26 = command = "cpu26"
trigger27 = command = "cpu27"
trigger28 = command = "cpu28"
trigger29 = command = "cpu29"
trigger30 = command = "cpu30"
trigger31 = command = "cpu31"
trigger32 = command = "cpu32"
trigger33 = command = "cpu33"
trigger34 = command = "cpu34"
trigger35 = command = "cpu35"
trigger36 = command = "cpu36"
trigger37 = command = "cpu37"
trigger38 = command = "cpu38"
trigger39 = command = "cpu39"
trigger40 = command = "cpu40"
trigger41 = command = "cpu41"
trigger42 = command = "cpu42"
trigger43 = command = "cpu43"
trigger44 = command = "cpu44"
trigger45 = command = "cpu45"
trigger46 = command = "cpu46"
trigger47 = command = "cpu47"
trigger48 = command = "cpu48"
trigger49 = command = "cpu49"
trigger50 = command = "cpu50"
trigger51 = command = "cpu51"
trigger52 = command = "cpu52"
trigger53 = command = "cpu53"
trigger54 = command = "cpu54"
trigger55 = command = "cpu55"
trigger56 = command = "cpu56"
trigger57 = command = "cpu57"
trigger58 = command = "cpu58"
trigger59 = command = "cpu59"
trigger60 = command = "cpu60"
trigger61 = command = "cpu61"
trigger62 = command = "cpu62"
trigger63 = command = "cpu63"
trigger64 = command = "cpu64"
;===========================================================================
;clave

; ==========================
; AI Standing Guard
; ==========================
[State -1]
type = ChangeState
triggerall = var(30) = 1 ;AI trigger used
triggerall = Statetype != A ;Player is not in the air
triggerall = P2statetype != C ;Player is not crouching
triggerall = Statetype = S ;Player is currently standing
triggerall = P2Movetype = A ;Opponent is attacking
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 800 ;triggers at 80% probability
value = 130 ;Default standing guard state

; ==========================
; AI DEFLECT
; ==========================
[State -1]
type = ChangeState
triggerall = var(30) = 1 ;AI trigger used
triggerall = Statetype != A ;Player is not in the air
triggerall = P2statetype != C ;Player is not crouching
triggerall = Statetype = S ;Player is currently standing
triggerall = P2Movetype = A ;Opponent is attacking
triggerall = Pos Y != [-1,-999]
triggerall = p2bodydist x = [10, 90]
triggerall = ctrl = 1
trigger1 = random <= 500 ;triggers at 80% probability
value = 500 ;Default standing guard state

; =============================
; AI Stand to Crouch Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

; =============================
; AI Crouching Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = random <= 850
value = 131

; =============================
; AI Crouch to Stand Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

; =============================
; AI Aerial Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = random <= 800
value = 132

; =============================
; AI Aerial DEFLECT
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = A
triggerall = p2bodydist x = [10, 90]
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = random <= 500
value = 510

; ============================
; AI Auto taunt
; ============================
[State -1,AutoTaunt]
type = ChangeState
value = 195
triggerall = (var(30) = 1) && (statetype != A) && (movetype != H) && (statetype != L) && (P2life != 0)
trigger1 = (P2statetype = L) && (ctrl = 1) && (random <= 5)
persistent = 0

; =============================
; AI FUEGO debil
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = A
triggerall = P2statetype = S
triggerall = anim = [44, 46]
triggerall = p2bodydist x = [10, 80]
triggerall = ctrl = 1
trigger1 = random <= 700
value = 1200

; =============================
; AI FUEGO PICANTE
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = A
triggerall = P2statetype = S
triggerall = anim = [44, 46]
triggerall = p2bodydist x = [150, 900]
triggerall = ctrl = 1
trigger1 = random <= 999
value = 1202

; =============================
; AI FUEGO medio
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = A
triggerall = P2statetype = S
triggerall = anim = [44, 46]
triggerall = p2bodydist x = [81, 149]
triggerall = ctrl = 1
trigger1 = random <= 700
value = 1201

; =============================
; AI FLAMA PODEROSA de aire
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = A
triggerall = P2statetype = S
triggerall = anim = [44, 46]
triggerall = p2bodydist x = [81, 149]
triggerall = ctrl = 1
triggerall = POWER > 2000
trigger1 = random <= 900
value = 9100

; =============================
; AI FLAMA PODEROSA DE TIERRA
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = S
triggerall = P2statetype = S
triggerall = p2bodydist x = [81, 149]
triggerall = ctrl = 1
triggerall = POWER > 2000
trigger1 = random <= 900
value = 9000

; =============================
; AI MACHETAZO de remate
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = S
triggerall = P2statetype = S
triggerall = power > 1000
triggerall = stateno = 701
triggerall = animtime = 0
trigger1 = random <= 500
value = 4010

; =============================
; AI MACHETAZO de remate DE LAS VUELTAS
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = S
triggerall = stateno = 1051
triggerall = animtime = 0
trigger1 = random <= 500
value = 402

; =============================
; AI MACHETAZOS de remate
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = S
triggerall = P2statetype = S
triggerall = p2bodydist x = [81, 149]
triggerall = power > 2000
trigger1 = random <= 800
value = 7000

; =============================
; AI MACHETAZO de caida (aggarre)
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = S
triggerall = P2statetype = S
triggerall = stateno = 701
triggerall = animtime = 0
trigger1 = random <= 500
value = 1080

; =============================
; AI MACHETAZO de caida (aggarre)
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = S
triggerall = P2statetype = S
triggerall = stateno = 500
triggerall = animtime = 0
trigger1 = random <= 500
value = 1720

; =============================
; AI MACHETAZO de caida despues del aggarre
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = S
triggerall = P2statetype = S
triggerall = stateno = 701
triggerall = animtime = 0
trigger1 = random <= 500
value = 210

; =============================
; AI MACHETAZO de caida despues del aggarre 2
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = S
triggerall = P2statetype = S
triggerall = stateno = 210
triggerall = animtime = 0
trigger1 = random <= 500
value = 400

; =============================
; AI MACHETAZO de caida despues del aggarre 3
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = S
triggerall = P2statetype = S
triggerall = stateno = 400
triggerall = animtime = 0
trigger1 = random <= 500
value = 403

; =============================
; AI craneo de tropiezo
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = S
triggerall = P2statetype != A
triggerall = P2life != 0
triggerall = p2bodydist x > 150
triggerall = ctrl = 1
trigger1 = random <= 150
value = 1022

; =============================
; AI especial de craneo 
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = S
triggerall = P2statetype != A
triggerall = p2bodydist x > 150
triggerall = power = 3000
triggerall = ctrl = 1
trigger1 = random <= 800
value = 2000


; =============================
; AI vueltas para el aire 
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = Statetype = S
triggerall = P2statetype = A
triggerall = p2bodydist x = [0, 50]
triggerall = ctrl = 1
trigger1 = random <= 800
value = 1000
persistent = 0

; =============================
; AI remate de correr
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = stateno = 212
triggerall = animtime = 0
trigger1 = random <= 999
value = 201

; =============================
; AI remate de patadas fuertes
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = stateno = 1730
triggerall = animtime = 0
trigger1 = random <= 999
value = 201

; =============================
; AI aggarre
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = P2statetype = S
triggerall = P2movetype != H
triggerall = p2bodydist x = [0, 10]
trigger1 = random <= 500
value = 700
persistent = 0

; =============================
; AI vueltas
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = P2statetype != A
triggerall = p2bodydist x = [0, 10]
trigger1 = random <= 250
value = 6020
persistent = 0

; =============================
; AI vueltas
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = P2statetype != A
triggerall = p2bodydist x = [81, 149]
trigger1 = random <= 400
value = 6020
persistent = 0

; =============================
; AI vueltas
; =============================
[State -1]
type = ChangeState
triggerall = var(30) = 1
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = P2statetype != A
triggerall = p2bodydist x = [81, 149]
trigger1 = random <= 400
value = 6030
persistent = 0


;===========================================================================
;humanos

[State -1, patada con giro]
type = ChangeState
value = 1700
trigger1 = command = "kicks_A"
triggerall = power < 1000
trigger1 = statetype = s
trigger1 = ctrl

[State -1, patada con giro]
type = ChangeState
value = 1710
trigger1 = command = "kicks_A"
triggerall = power > 1000
triggerall = power != 3000
trigger1 = statetype = s
trigger1 = ctrl

[State -1, patada con giro]
type = ChangeState
value = 1720
trigger1 = command = "kicks_A"
triggerall = power =  3000
trigger1 = statetype = s
trigger1 = ctrl

;-------------------------------------------------------------------
[State -1, multiple skull throw]
type = ChangeState
value = 2000
trigger1 = command = "nsk"
triggerall = power > 1000
trigger1 = statetype = s
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, machetazo destructor]
type = ChangeState
value = 4010
trigger1 = command = "nsa"
triggerall = power > 1000
trigger1 = statetype = s
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, machetazos destructores]
type = ChangeState
value = 7000
trigger1 = command = "nsb"
triggerall = power > 2000
trigger1 = statetype = s
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, FLAMA destructorA]
type = ChangeState
value = 9000
trigger1 = command = "nsc"
triggerall = power > 2000
trigger1 = statetype = s
trigger1 = ctrl

[State -1, FLAMA destructorA AEREA]
type = ChangeState
value = 9100
trigger1 = command = "nsk"
triggerall = power > 2000
trigger1 = statetype = a
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, skull throw]
type = ChangeState
value = 1011
trigger1 = command = "skull_A"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, skull throw]
type = ChangeState
value = 1010
trigger1 = command = "skull_B"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, skull throw]
type = ChangeState
value = 1012
trigger1 = command = "skull_C"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
[State -1, skull throw]
type = ChangeState
value = 1021
trigger1 = command = "skull2_a"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, skull throw]
type = ChangeState
value = 1020
trigger1 = command = "skull2_b"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, skull throw]
type = ChangeState
value = 1022
trigger1 = command = "skull2_c"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, spin a roony weak]
type = ChangeState
value = 1000
trigger1 = command = "5A"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, spin a roony medium]
type = ChangeState
value = 1050
trigger1 = command = "5B"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, spin a roony hard]
type = ChangeState
value = 1080
trigger1 = command = "5C"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, kicks]
type = ChangeState
value = 1002
trigger1 = command = "patada"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, bite]
type = ChangeState
value = 1500
trigger1 = command = "SRKY"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, air fire]
type = ChangeState
value = 1200
trigger1 = command = "skull_A"
trigger1 = statetype = A
trigger1 = statetype != S
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, air fire]
type = ChangeState
value = 1201
trigger1 = command = "skull_B"
trigger1 = statetype = A
trigger1 = statetype != S
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, air fire]
type = ChangeState
value = 1202
trigger1 = command = "skull_C"
trigger1 = statetype = A
trigger1 = statetype != S
trigger1 = statetype != C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Power load
[State -1]
type = ChangeState
value = 982
triggerall = command = "potencia"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno = 0
trigger1 = power < 3000

;===========================================================================
; Roll Fwd
;----------------
[State -1, Roll Fwd]
type = ChangeState
value = 6000
trigger1 = command = "holdfwd"
trigger1 = stateno = 5120 && time <= 2

[State -1, Roll Fwd]
type = ChangeState
value = 6020
trigger1 = statetype != A
trigger1 = command = "recovery"
trigger1 = command != "holdback"
trigger1 = command != "rodar"
trigger1 = ctrl = 1

; Roll Back
;------------------
[State -1, Roll Back]
type = ChangeState
value = 6010
trigger1 = command = "holdback"
trigger1 = stateno = 5120 && time <= 2

[State -1, Roll Back]
type = ChangeState
value = 6030
trigger1 = statetype != A
trigger1 = command = "rodar"
;trigger1 = command != "recovery"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;Stand Light Punch 
[State -1, 0]
type = ChangeState
value = 201
triggerall = p2bodydist X > 24
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = stateno != 201
trigger1 = stateno != 1700
trigger1 = ctrl = 1
;trigger1 = stateno != 52


;---------------------------------------------------------------------------

;Stand Light Punch Close
[State -1, 1]
type = ChangeState
value = 200
triggerall = p2bodydist X < 25 ;Near P2
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = stateno != 200
triggerall = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;stand medium Punch close
[State -1, 2]
type = ChangeState
value = 210
triggerall = p2bodydist X < 24 ;Near P2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = stateno != 210
triggerall = stateno != 240
triggerall = stateno != 700
triggerall = stateno != 710
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;stand medium Punch 
[State -1, Stand medium Punch]
type = ChangeState
value = 211
triggerall = p2bodydist X > 25 ;far P2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = stateno != 211
triggerall = stateno != 100
triggerall = stateno != 101
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;stand strong Punch 
[State -1, Stand strong Punch ]
type = ChangeState
value = 221
triggerall = p2bodydist X > 24 ;far P2
triggerall = command = "c"
;triggerall = command != "holddown"
triggerall = stateno != 221
triggerall = stateno != 100
triggerall = stateno != 101
triggerall = stateno != 210
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;stand strong Punch close
[State -1, Stand strong Punch close ]
type = ChangeState
value = 220
triggerall = p2bodydist X < 25 ;near P2
triggerall = p2bodydist X > 2 ;far P2
;triggerall = P2BodyDist X != 1
triggerall = command = "c"
triggerall = stateno != 700
triggerall = stateno != 710
triggerall = stateno != 220
triggerall = stateno != 240
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

;stand kick
[State -1, Stand kick]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = stateno != 499
triggerall = stateno != 230
triggerall = stateno != 105
triggerall = stateno != 100
triggerall = stateno != 101
triggerall = stateno != 499
triggerall = statetype = S
trigger1 = stateno != 20
trigger1 = ctrl


;---------------------------------------------------------------------------

;WALKING kick
[State -1, Walking kick]
type = ChangeState
value = 231
triggerall = command = "x"
;triggerall = command != "holddown"
;triggerall = command != "y"
;triggerall = command != "potencia"
;triggerall = command != "holdpotencia"
triggerall = stateno != 231
triggerall = stateno != 105
triggerall = stateno != 100
triggerall = stateno != 101
triggerall = stateno != 499
triggerall = stateno != 21
triggerall = stateno = 20
triggerall = stateno != 499
trigger1 = ctrl

;---------------------------------------------------------------------stand headbutt close
[State -1, Stand headbutt ]
type = ChangeState
value = 240
triggerall = p2bodydist X < 25 ;near P2
triggerall = command = "y"
triggerall = stateno != 240
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------

;running medium Punch
[State -1, running medium Punch]
type = ChangeState
value = 212
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = stateno != 212
trigger1 = stateno = 100
trigger2 = stateno = 101
triggerall = ctrl = 1

;---------------------------------------------------------------------------

;running strong Punch
[State -1, running strong Punch]
type = ChangeState
value = 213
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = stateno != 213
trigger1 = stateno = 100
trigger2 = stateno = 101
triggerall = ctrl = 1

;---------------------------------------------------------------------------

;running KICK
[State -1, running strong Punch]
type = ChangeState
value = 499
triggerall = command = "x"
triggerall = stateno != 499
trigger1 = stateno = 100
trigger2 = stateno = 101
triggerall = ctrl = 1

;---------------------------------------------------------------------------

[State -1, Stand rib cut ]
type = ChangeState
value = 214
triggerall = p2bodydist X > 24 ;near P2
triggerall = command = "y"
triggerall = stateno != 214
triggerall = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------

;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = stateno != 400
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

;Crouching medium Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 401
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = stateno != 401
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching strong Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 402
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = stateno != 402
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching kick
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 403
triggerall = command = "x"
triggerall = stateno != 403
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

;sweep kick
[State -1, kick sweept]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = stateno != 410
triggerall = stateno != 600
trigger1 = statetype = c
trigger1 = ctrl = 1


;---------------------------------------------------------------------------

[State -1, ground deflect]
type = ChangeState
value = 500
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = stateno != 501
triggerall = stateno != 214
triggerall = stateno != 600
triggerall = stateno != 601
trigger1 = statetype = s
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

[State -1, air deflect]
type = ChangeState
value = 510
triggerall = command = "z"
triggerall = statetype = a
trigger1 = statetype = a
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

[State -1, crouch deflect]
type = ChangeState
value = 504
triggerall = command = "down_z"
triggerall = statetype = c
triggerall = stateno != 504
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
[State -1, Grab Fwd]
type = ChangeState
value = 700
triggerall = command = "tam"
triggerall = statetype != A
triggerall = P2StateType = S
triggerall = stateno != 700
triggerall = stateno != 710
triggerall = stateno != 210
;triggerall = P2BodyDist X <= 2
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Grab back]
type = ChangeState
value = 710
triggerall = command = "tamtam"
triggerall = statetype != A
triggerall = P2StateType = S
;triggerall = P2BodyDist X <= 2
triggerall = stateno != 700
triggerall = stateno != 210
trigger1 = ctrl


;---------------------------------------------------------------------------

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "a"
triggerall = stateno != 600
triggerall = stateno != 0
triggerall = stateno != 600
triggerall = stateno != 601
triggerall = stateno != 602
triggerall = stateno != 603
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl 
;trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;Jump medium Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 601
triggerall = command = "b"
trigger1 = statetype = A
triggerall = stateno != 600
triggerall = stateno != 601
triggerall = stateno != 602
triggerall = stateno != 603
triggerall = stateno != 105
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump strong Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 602
triggerall = command = "c"
triggerall = stateno != 600
triggerall = stateno != 601
triggerall = stateno != 602
triggerall = stateno != 603
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------

;Jump kick
[State -1, Jump kick]
type = ChangeState
value = 630
triggerall = command = "x"
triggerall = stateno != 231
triggerall = stateno != 105
triggerall = anim != 600
triggerall = anim != 601
trigger1 = statetype = A
trigger1 = ctrl