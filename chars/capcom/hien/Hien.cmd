; Strider Hien
; CMD file version 1.0

; -| Super Motions |--------------------------------------------------------

[Command]
name = "HouKageZan"
command = ~D, DF, F, b+c

[Command]
name = "NigentekiHouDan"
command = ~D, DF, F, y+z

[Command]
name = "ShoHouDan"
command = ~D, DB, B, b+c
time = 20

[Command]
name = "ShinkuHouDan"
command = ~D, DF, F, y+z

[Command]
name = "GuidingLight"
command = ~D, DF, F, b+c


; -| Special Motions |------------------------------------------------------
[Command]
name = "TeiHouDan"
command = ~D, DF, F, x

[Command]
name = "KouHouDan"
command = ~D, DF, F, y

[Command]
name = "DenshoHouDan"
command = ~D, DF, F, z

[Command]
name = "AerialHouDan1"
command = ~D, DF, F, x

[Command]
name = "AerialHouDan2"
command = ~D, DF, F, y

[Command]
name = "AerialHouDan3"
command = ~D, DF, F, z

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "NigentekiKatsu"
command = ~D, DF, F, b
time = 20

[Command]
name = "HougekiBakushin"
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
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

; -| CPU ONLY |-------------------------------------------------------------
[Command]
name = "CPU1"
command = D, D, U, U, D, U
time = 1

[Command]
name = "CPU2"
command = D, U, U, D, D, U
time = 1

[Command]
name = "CPU3"
command = D, D, D, U, U, U
time = 1

[Command]
name = "CPU4"
command = U, D, D, U, U, U
time = 1

[Command]
name = "CPU5"
command = D, D, U, U, D, D
time = 1

[Command]
name = "CPU6"
command = U, D, D, D, D, U
time = 1

[Command]
name = "CPU7"
command = U, U, U, U, U, D
time = 1

[Command]
name = "CPU8"
command = U, U, U, U, D, U
time = 1

[Command]
name = "CPU9"
command = U, U, U, D, U, U
time = 1

[Command]
name = "CPU10"
command = U, U, D, U, U, U
time = 1

[Command]
name = "CPU11"
command = U, D, U, U, U, U
time = 1

[Command]
name = "CPU12"
command = D, U, D, U, D, U
time = 1

[Command]
name = "CPU13"
command = U, U, D, U, U, U, U
time = 1

[Command]
name = "CPU14"
command = U, D, D, U, U, U, U
time = 1

[Command]
name = "CPU15"
command = D, U, D, U, U, U, D
time = 1

[Command]
name = "CPU16"
command = D, D, D, U, U, U, U
time = 1

[Command]
name = "CPU17"
command = U, U, D, U, U, D, D
time = 1

[Command]
name = "CPU18"
command = D, D, D, U, D, D, D
time = 1

[Command]
name = "CPU19"
command = U, D, D, U, D, U, D
time = 1

[Command]
name = "CPU20"
command = D, D, D, U, U, U, D
time = 1

[Command]
name = "CPU21"
command = U, D, U, D, U, U, U
time = 1

[Command]
name = "CPU22"
command = U, U, U, U, U, U, U
time = 1

[Command]
name = "CPU23"
command = D, D, D, D, D, D, D
time = 1

[Command]
name = "CPU24"
command = D, D, D, D, D, D, U
time = 1

[Command]
name = "CPU25"
command = D, D, D, D, D, U, D
time = 1


; -| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

; -| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

; -| Dir + Button |---------------------------------------------------------
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

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

; -| Single Button |---------------------------------------------------------
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
name = "SJump1"
command = $D, $U
time = 1

[Command]
name = "SJump2"
command = $U
time = 1

[Command]
name = "start"
command = s
time = 1

; -| Hold Dir |--------------------------------------------------------------
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


[Statedef -1]
;---------------------------------------------------------------------------

[State -1, AI]
type = VarSet
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
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
v = 21
value = 1

; =================
; AI 
; =================

; =====================
; AI Teleport
; =====================
[State -1]
type = ChangeState
value = 1050
triggerall = var(21) = 1
triggerall = stateno != 1050
triggerall = statetype != A
trigger1 = random < 999
trigger1 = stateno = 420 && movecontact > 1
trigger2 = random < 500
trigger2 = P2statetype = A
trigger2 = ctrl

; =====================
; AI Recover air
; =====================
[State -1]
type = ChangeState
value = 5210
triggerall = var(21) = 1
triggerall = random = [0,500]
triggerall = life > 0
trigger1 = stateno = 5050


; =====================
; AI Recover ground
; =====================
[State -1]
type = ChangeState
value = 5201
triggerall = var(21) = 1
triggerall = random = [500,999]
triggerall = life > 0
trigger1 = stateno = 5100
trigger1 = Pos Y < -20

; =====================
; AI Standing Guard
; =====================
[State -1]
type = ChangeState
value = 130
triggerall = var(21) = 1
triggerall = ctrl
trigger1 = random < 500
trigger1 = P2movetype = A
trigger1 = statetype = S
trigger1 = P2BodyDist X < 20

; =====================
; AI Crouching Guard
; =====================
[State -1]
type = ChangeState
value = 131
triggerall = var(21) = 1
triggerall = ctrl
trigger1 = random < 999
trigger1 = P2movetype = A
trigger1 = statetype = C
trigger1 = P2statetype != S


; =====================
; AI Air Guard
; =====================
[State -1]
type = ChangeState
value = 132
triggerall = var(21) = 1
triggerall = ctrl
trigger1 = random < 999
trigger1 = P2movetype = A
trigger1 = statetype = A
trigger2 = stateno = 5210
trigger2 = P2BodyDist Y > 0
trigger2 = random < 500

; =====================
; AI Stand Light Punch
; =====================
[State -1]
type = ChangeState
value = 200
triggerall = var(21) = 1
triggerall = P2life > 0
triggerall = ctrl = 1
triggerall = P2statetype != L
trigger1 = statetype = S
trigger1 = statetype != C
trigger1 = statetype != A
trigger1 = random < 100
trigger1 = stateno != 200
trigger1 = P2BodyDist X < 10


; ====================
; AI Stand Light Kick
; ====================
[State -1]
type = ChangeState
value = 230
triggerall = var(21) = 1
triggerall = statetype = S
triggerall = statetype != A
triggerall = statetype != C
triggerall = P2statetype != L
trigger1 = random < 200
trigger1 = stateno = 200
trigger1 = movecontact
trigger1 = P2BodyDist X < 40
trigger1 = stateno != 230

; ===================
; AI Stand Med Punch
; ===================
[State -1]
type = ChangeState
value = 210
triggerall = var(21) = 1
triggerall = statetype = S
triggerall = statetype != A
triggerall = statetype != C
triggerall = stateno != 210
triggerall = P2statetype != L
trigger1 = stateno = 230 && prevstateno = 200
trigger1 = movecontact
trigger1 = random < 200
trigger2 = stateno = 200
trigger2 = random =  [167,332]
trigger2 = movecontact
trigger2 = ctrl = 1

; ========================
; AI Standing Med Kick
; ========================
[State -1]
type = ChangeState
value = 240
triggerall = var(21) = 1
triggerall = statetype = S
triggerall = statetype != A
triggerall = statetype != C
triggerall = stateno != 240
triggerall = P2statetype != L
trigger1 = ctrl = 1
trigger1 = random = [332,498]
trigger1 = stateno = 200 && movecontact
trigger2 = ctrl = 1
trigger2 = random = [201,400]
trigger2 = stateno = 230 && movecontact
trigger3 = random < 200
trigger3 = stateno = 210 && prevstateno = 230
trigger3 = movecontact

; ==================
; AI Stand Hard Slash
; ==================
[State -1]
type = ChangeState
value = 220
triggerall = var(21) = 1
triggerall = statetype = S
triggerall = statetype != A
triggerall = statetype != C
triggerall = stateno != 220
triggerall = P2statetype != L
trigger1 = ctrl = 1
trigger1 = stateno = 200 && movecontact
trigger1 = random = [499,664]
trigger2 = ctrl = 1
trigger2 = stateno = 210 && movecontact
trigger2 = random = [401,600]
trigger3 = ctrl = 1
trigger3 = stateno = 230 && movecontact
trigger3 = random = [301,600]
trigger4 = stateno = 240 && prevstateno = 210
trigger4 = movecontact
trigger4 = random < 200

; ===================
; AI Standing Hard Kick
; ===================
[State -1]
type = ChangeState
value = 250
triggerall = var(21) = 1
triggerall = statetype = S
triggerall = statetype != A
triggerall = statetype != C
triggerall = stateno != 250
triggerall = P2statetype != L
trigger1 = ctrl = 1
trigger1 = stateno = 200 && movecontact
trigger1 = random = [664,830]
trigger2 = ctrl
trigger2 = stateno = 210 && movecontact
trigger2 = random = [601,800]
trigger3 = stateno = 230 && movecontact
trigger3 = random = [601,999]
trigger3 = ctrl
trigger4 = stateno = 240 && movecontact
trigger4 = random = [501,999]
trigger4 = ctrl
trigger5 = stateno = 220 && prevstateno = 240
trigger5 = movecontact
trigger5 = random < 200

; =====================
; AI Hougeki Bakushin
; =====================
[State -1]
type = ChangeState
value = 1020
triggerall = var(21) = 1 
triggerall = statetype = S
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = ctrl
triggerall = stateno != 420
trigger1 = random < 250
trigger1 = P2BodyDist x = [120,210]
trigger1 = P2statetype != A
trigger1 = P2life > 0
trigger2 = random < 200
trigger2 = (stateno = 220) || (stateno = 250)
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

; ======================
; AI Nigenteki Katsu
; ======================
[State -1]
type = ChangeState
value = 1030
triggerall = var(21) = 1
trigger1 = random < 250
trigger1 = statetype = S
trigger1 = stateno = 1021
trigger1 = movecontact && statetime > 8
trigger1 = P2BodyDist x < -30

; =====================
; AI Crouching Hard Punch
; =====================
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(21) = 1
triggerall = statetype = C
triggerall = statetype != A
triggerall = stateno != 420
triggerall = random < 100
triggerall = P2BodyDist X < 55
trigger1 = (stateno = [200,299]) || (stateno = [400,499])
trigger1 = stateno != 450 ;Except for sweep kick
trigger1 = movecontact
trigger1 = ctrl
trigger2 = ctrl

; =====================
; AI SuperJump
; =====================
[State -1]
type = changestate
value = 4000
triggerall = var(21) = 1
triggerall = statetype = C
triggerall = statetype != A
triggerall = stateno != 420
triggerall = random < 300
trigger1 = stateno = 420 && movehit = 2

; =====================
; AI Jump Light Punch
; =====================
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(21) = 1
triggerall = statetype != S
triggerall = stateno != 600
trigger1 = random < 500
trigger1 = stateno = 1051
trigger1 = P2BodyDist X < 30
trigger1 = P2BodyDist Y = [-10,-40]

; =====================
; AI Jump Med Punch
; =====================
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(21) = 1
triggerall = statetype != S
triggerall = stateno != 610
trigger1 = random < 250
trigger1 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger1 = movecontact
trigger1 = P2BodyDist X < 30
trigger1 = P2BodyDist Y = [0,-10]

; =====================
; AI Jump Strong Punch
; =====================
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(21) = 1
triggerall = statetype != S
triggerall = stateno != 620
trigger1 = random < 250
trigger1 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640;jump_x or jump_a
trigger1 = movecontact

; ====================
; AI Jump Light Kick
; ====================
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(21) = 1
triggerall = statetype != S
triggerall = stateno != 630
trigger1 = random < 250
trigger1 = stateno = 600 && movecontact
trigger1 = P2BodyDist X < 30
trigger1 = P2BodyDist Y = [0,-10]

; =====================
; AI Jump Med Kick
; =====================
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(21) = 1
triggerall = statetype != S
triggerall = stateno != 640
trigger1 = random < 250
trigger1 = stateno = 600 || stateno = 610
trigger1 = movecontact
trigger1 = P2BodyDist X < 30
trigger1 = P2BodyDist Y = [0,-10]

; =====================
; AI Jump Strong Kick
; =====================
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(21) = 1
triggerall = statetype != S
triggerall = stateno != 650
trigger1 = random < 250
trigger1 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 620
trigger1 = movecontact
trigger1 = P2BodyDist X < 30
trigger1 = P2BodyDist Y = [0,-10]

; =====================
; AI Aerial Hou Dan
; =====================
[State -1, Jump Strong Kick]
type = ChangeState
value = 1100
triggerall = var(21) = 1
triggerall = statetype != S
triggerall = stateno != 1100
triggerall = P2Life > 0
triggerall = Pos Y < -10
trigger1 = random < 250
trigger1 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 620
trigger1 = movecontact


; =====================
; AI Hou Kage Zan
; =====================
[State -1, Kage Zan]
type = ChangeState
value = 3020
triggerall = var(21) = 1
triggerall = power >= 1000
triggerall = random < 250
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = P2BodyDist x < 40
trigger1 = P2BodyDist y = [-5,5]
trigger2 = (stateno = [600,699])
trigger2 = movecontact
trigger2 = P2BodyDist x < 40
trigger2 = P2BodyDist y = [-5,5]
trigger3 = stateno = 1051 && prevstateno = 1050
trigger3 = P2BodyDist Y = 0
trigger3 = P2BodyDist X < 30


; ====================
; AI Tei Hou Dan
; ====================
[State -1, Low Cypher]
type = ChangeState
value = 1010
triggerall = var(21) = 1
triggerall = stateno != 420
triggerall = statetype = S
triggerall = statetype != A
triggerall = Pos Y < 0
triggerall = random < 200
triggerall = prevstateno != 1030
triggerall = stateno != 1030 
triggerall = stateno != 1010
triggerall = Numhelper(2) != 1
trigger1 = P2statetype = S
trigger1 = P2stateno = 130
trigger2 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
trigger3 = P2statetype = L
trigger3 = P2Life != 0

; =====================
; AI Kou Hou Dan
; =====================
[State -1, High Cypher]
type = ChangeState
value = 1012
triggerall = var(21) = 1
triggerall = random < 200
triggerall = statetype != A
triggerall = Pos Y < 0
triggerall = stateno != 420
triggerall = stateno != 1012
triggerall = Numhelper(2) != 1
triggerall = statetype = S
triggerall = ctrl
trigger1 = P2statetype = S
trigger1 = P2stateno = 131
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

; ====================
; AI Densho Hou Dan
; ====================
[State -1, Homing Cypher]
type = ChangeState
value = 1014 + ((random<500) * (1986 * (power >= (1000 + (1000 * (life > 200))))))
triggerall = var(21) = 1
triggerall = random < 500
triggerall = statetype != A
triggerall = Pos Y < 0
triggerall = stateno != 420
triggerall = statetype = S
triggerall = Numhelper(2) != 1
triggerall = ctrl
trigger1 = P2BodyDist y < 0
trigger1 = P2movetype = A
trigger1 = P2BodyDist x > 100
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 1030)
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

; ========================
; AI Sho Hou Dan
; ========================
[State -1]
type = ChangeState
value = 3030
triggerall = var(21) = 1
triggerall = stateno != 3030
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = random < 250
trigger1 = P2BodyDist x < 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 420) && movecontact
trigger2 = random < 250

; ========================
; AI Ground Shuriken
; ========================
type = ChangeState
value = 1200
triggerall = var(21) = 1
triggerall = stateno != 1200
triggerall = P2StateNo != 1300
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = random < 750
trigger2 = stateno = 1030 && movecontact
; ========================
; AI Shinku Hou Dan
; ========================
[State -1]
type = ChangeState
value = 3040
triggerall = var(21) = 1
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = random < 250
trigger1 = stateno = [600,699]
trigger1 = movecontact
trigger1 = P2BodyDist Y > 10
trigger2 = stateno = 1051 && prevstateno = 1050
trigger2 = P2BodyDist Y > 10
trigger2 = P2BodyDist X > 10
trigger3 = stateno = 5210
trigger3 = P2BodyDist Y > 0
trigger3 = random < 500


; ========================
; AI Guiding Light
; ========================
[State -1]
type = ChangeState
value = 3050
triggerall = var(21) = 1
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = random < 500
trigger2 = Stateno = 1030
trigger2 = movecontact
trigger3 = random < 500
trigger3 = Stateno = 3000
trigger3 = HitCount >= 3
; ===================================================
; Manual Commands
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


;===========================================================================
;---------------------------------------------------------------------------
; Wall Cling
[State -1]
type = ChangeState
value = 800
trigger1 = command = "QCB_z"
trigger1 = ctrl = 1
trigger1 = stateno != 800
trigger1 = movetype != A
trigger2 = var(21) = 1
trigger2 = stateno = 5210
trigger2 = P2BodyDist Y > 0
trigger2 = random < 500

; Hyper Double Cypher Throw
[State -1]
type = ChangeState
value = 3000
triggerall = command = "NigentekiHouDan"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
;trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
; Hou Kage Zan
[State -1, Midare Giri]
type = ChangeState
value = 3020
triggerall = command = "HouKageZan"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = movecontact

; ========================
; Shinku Hou Dan
; ========================
[State -1]
type = ChangeState
value = 3040
triggerall = command = "ShinkuHouDan"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]
trigger2 = movecontact

; ========================
; Sho Hou Dan
; ========================
[State -1]
type = ChangeState
value = 3030
triggerall = command = "ShoHouDan"
triggerall = power >= 1000
triggerall = stateno != 3030
;triggerall = statetype != C
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 420) && movecontact

;---------------------------------------------------------------------------
; Tei Hou Dan
;ÉJÉìÉtÅ[ìÀÇ´éËÅié„Åj
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = command = "TeiHouDan"
triggerall = stateno != 420
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
trigger3 = stateno = 1030 && movecontact

;---------------------------------------------------------------------------
; Kou Hou Dan
;ÉJÉìÉtÅ[ìÀÇ´éËÅiã≠Åj
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1012
triggerall = command = "KouHouDan"
triggerall = stateno != 420
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 1030)
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact


; Densho Hou Dan
;ÉJÉ"ÉtÅ["ÀÇ´éËÅiã≠Åj
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1014
triggerall = command = "DenshoHouDan"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = 1030)
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

; Aerial Densho Hou Dan
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1100
triggerall = command = "AerialHouDan1"
triggerall = Pos Y < -10
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 620
trigger2 = movecontact

; Aerial Densho Hou Dan
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1100
triggerall = command = "AerialHouDan2"
triggerall = Pos Y < -10
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 620
trigger2 = movecontact

; Aerial Densho Hou Dan
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1100
triggerall = command = "AerialHouDan3"
triggerall = Pos Y < -10
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 620
trigger2 = movecontact


; ============================
; Nightmare Shuriken
; ============================
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1200
triggerall = command = "QCB_a"
triggerall = stateno != 1200
triggerall = P2StateNo != 1300
trigger1 = statetype = S
trigger1 = ctrl
trigger3 = stateno = 1030 && movecontact

; =======================
; Guiding Light
; =======================
[State -1]
type = ChangeState
value = 3050
triggerall = command = "GuidingLight"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
;trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = Stateno = 3000
trigger3 = HitCount >= 3



; =======================
; Hougeki Bakushin
; =======================
[State -1]
type = ChangeState
value = 1020
triggerall = command = "HougekiBakushin"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

; =======================
; Nigenteki Katsu
; =======================
[State -1]
type = ChangeState
value = 1030
trigger1 = command = "NigentekiKatsu"
trigger1 = statetype = S
trigger1 = stateno = 1021 && movecontact

; =====================
; Teleport
; =====================
[State -1]
type = ChangeState
value = 1050
triggerall = command = "QCB_c"
triggerall = statetype != A
triggerall = stateno != 1050
trigger1 = stateno = 3030
trigger1 = movecontact
trigger2 = stateno = 420 
trigger2 = movecontact
trigger3 = ctrl
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;É_ÉbÉVÉÖ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;å„ëﬁÉ_ÉbÉVÉÖ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand_Throw
;ìäÇ∞
;[State -1, Standing Throw]
;type = null;ChangeState
;value = 900
;triggerall = statetype = S
;triggerall = ctrl
;triggerall = stateno != 100
;trigger1 = command = "fwd_b"
;trigger1 = p2bodydist X < 3
;trigger1 = (p2statetype = S) || (p2statetype = C)
;trigger1 = p2movetype != H
;trigger2 = command = "back_b";Near, p2 stand
;trigger2 = p2bodydist X < 5
;trigger2 = (p2statetype = S) || (p2statetype = C)
;trigger2 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;óßÇøé„ÉpÉìÉ`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 7

;---------------------------------------------------------------------------
;Stand Med Punch
;óßÇøã≠ÉpÉìÉ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact

;---------------------------------------------------------------------------
;Stand Hard Slash
;óßÇøã≠ÉpÉ"É`
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = stateno != 220
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 240) && movecontact

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = stateno != 230
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact

;---------------------------------------------------------------------------
;Standing Med Kick
;óßÇøã≠ÉLÉbÉN
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 210) && movecontact

; Standing Hard Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 210) && movecontact
trigger5 = (stateno = 220) && movecontact
trigger6 = (stateno = 240) && movecontact



;---------------------------------------------------------------------------
;Taunt
;íßî≠
;[State -1, Taunt]
;type = ChangeState
;value = 195
;triggerall = command = "start"
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;ÇµÇ·Ç™Ç›é„ÉpÉìÉ`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Med Punch
;ÇµÇ·Ç™Ç›ã≠ÉpÉìÉ`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movecontact


;Crouching Hard Punch
;ÇµÇ·Ç™Ç›ã≠ÉpÉ"É`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 450 ;Except for sweep kick
trigger2 = stateno != 420
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Light Kick
;ÇµÇ·Ç™Ç›é„ÉLÉbÉN
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Med Kick
;ÇµÇ·Ç™Ç›ã≠ÉLÉbÉN
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410) || (stateno = 430)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Strong Kick
;ÇµÇ·Ç™Ç›ã≠ÉLÉbÉN
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410) || (stateno = 430) || (stateno = 440)
trigger2 = movecontact
;---------------------------------------------------------------------------
; SuperJump
[State -1]
type = changestate
value = 4000
trigger1 = command = "SJump1"
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = command = "SJump2"
trigger2 = stateno = 420 && movehit

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;Jump Med Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact


;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
;Jump Med Kick
;ãÛíÜã≠ÉLÉbÉN
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact

;Jump Med Kick
;ãÛ'Üã≠ÉLÉbÉN
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640 || stateno = 620
trigger2 = movecontact


