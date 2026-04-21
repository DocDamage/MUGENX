;shen woo byNAO&M.
;-|AI Command |--------------------------------------------------------
[Command]
name = "AI_1"
command = U,D,F,F,B,B
time = 1
[Command]
name = "AI_2"
command = U,D,F,F,B,F
time = 1
[Command]
name = "AI_3"
command = U,D,F,F,B,D
time = 1
[Command]
name = "AI_4"
command = U,D,F,F,B,U
time = 1
[Command]
name = "AI_5"
command = U,D,F,F,U,B
time = 1
[Command]
name = "AI_6"
command = U,D,F,F,D,B
time = 1
[Command]
name = "AI_7"
command = U,D,F,F,F,B
time = 1
[Command]
name = "AI_8"
command = U,D,U,F,B,B
time = 1
[Command]
name = "AI_9"
command = U,D,D,F,B,B
time = 1
[Command]
name = "AI_10"
command = D,D,F,F,B,B
time = 1
[Command]
name = "AI_11"
command = U,U,F,F,B,B
time = 1
[Command]
name = "AI_12"
command = U,B,F,F,B,B
time = 1
[Command]
name = "AI_13"
command = U,B,F,F,U,U,B
time = 1
[Command]
name = "AI_14"
command = U,B,F,F,F,B,U
time = 1
[Command]
name = "AI_15"
command = U,B,F,U,F,U,D
time = 1

;-| Hyper      |----------------------------------------
;ÇlÇ`ÇwÇRÅ@ê_ïê
[Command]
name = "shinbu"
command = ~D, DB, B, D, DB, B, z
time = 24

;ÇlÇ`ÇwÇQÅ@å’ï^óêåÇ
[Command]
name = "kohyourangeki"
command = ~D, DF, F, D, DF, F, a+b
time = 24

;îöê^
[Command]
name = "bakushin"
command = ~D, DB, B, D, DB, B, a+b
time = 24

;å’ï^òAåÇ a
[Command]
name = "kohyourengeki"
command = ~D, DF, F, D, DF, F, a
time = 24

;å’ï^òAåÇ b
[Command]
name = "kohyourengeki"
command = ~D, DF, F, D, DF, F, b
time = 24

;ê‚ÅIåÉåùÅ@é„
[Command]
name = "zetsu_gekiken_x"
command = ~D, DF, F, D, DF, F, x
time = 24

;ê‚ÅIåÉåùÅ@ã≠
[Command]
name = "zetsu_gekiken_y"
command = ~D, DF, F, D, DF, F, y
time = 24

;-| Special    |----------------------------------------
; åÉåùÅ@é„
[Command]
name = "gekiken_A"
command = ~D,DF,F,x
time = 12

; åÉåùÅ@ã≠
[Command]
name = "gekiken_C"
command = ~D,DF,F,y
time = 12

; ïöå’åÇÅ@é„
[Command]
name = "hukukogeki"
command = ~D,DB,B,x
time = 12

; ç~ó¥åÇÅ@é„
[Command]
name = "kouryugeki"
command = ~D,DF,F,x
time = 12

; ùBçUïˆåÇ
[Command]
name = "saikouhougeki"
command = ~F,D,B,F,y
time = 25

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "dodge"
command = a+x
time = 1

[Command]
name = "CD"
command = b+y
time = 1

[Command]
name = "abc"
command = a+b+c
time = 1

;-| Single Tap |---------------------------------------------------------
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

;------------------------------------------------------
[Command]
name = "CD"
command = c
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "dodge"
command = z
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;------------------------------------------------------
[Command]
name = "A"
command = a
time = 1

[Command]
name = "B"
command = b
time = 1

[Command]
name = "C"
command = x
time = 1

[Command]
name = "D"
command = y
time = 1

; - [Hold button] - 
;-------------------------------------------------
[Command]
name = "hold_A"
command = /$a
time = 1

[Command]
name = "hold_B"
command = /$b
time = 1

[Command]
name = "hold_C"
command = /$x
time = 1

[Command]
name = "hold_D"
command = /$y
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

;longjump
[Command]
name = "longjump"
command = D, $U
time = 18


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
;-|Commands|------------------------------------------------------------------------------
[Statedef -1]
;===============================================
;Hyper
;===============================================
; ÇlÇ`ÇwÇRÅ@ê_ïê
[State -1]
type = ChangeState
value = 3600
triggerall = !Var(59)
triggerall = Var(43) = 0
triggerall = power >= 3000
triggerall = Life <= 300
triggerall = command = "shinbu"
triggerall = statetype != A
trigger1 = ctrl = 1

; ÇlÇ`ÇwÇQÅ@å’ï^óêåÇ
[State -1]
type = ChangeState
value = 3500
triggerall = !Var(59)
triggerall = Var(43) = 0
triggerall = power >= 2000
triggerall = Life <= 800
triggerall = command = "kohyourangeki"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger5 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 220 
trigger7 = (movecontact = 1) || time = [5,11]
trigger8 = stateno = 1003 
trigger8 = (movecontact = 1); || time = [9,12]
trigger9 = stateno = 1006 
trigger9 = (movecontact = 1); || time = [10,13]
trigger10 = stateno = 311 
trigger10 = (movecontact = 1) || time = [14,20]


; îöê^
[State -1]
type = ChangeState
value = 3200
triggerall = !Var(59)
triggerall = Var(40) = 0
triggerall = Var(43) = 0
triggerall = power >= 2000
triggerall = command = "bakushin"
triggerall = statetype != A
trigger1 = ctrl = 1

; îöê^ ÉLÉÉÉìÉZÉãVer.
[State -1]
type = ChangeState
value = 3201
triggerall = !Var(59)
triggerall = Var(40) = 0
triggerall = Var(43) = 0
triggerall = power >= 2000
triggerall = command = "bakushin"
trigger1 = stateno = [250,280]
trigger1 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger2 = stateno = [400,430]
trigger2 = movecontact = 1
trigger3 = stateno = 301
trigger3 = movecontact = 1 && time = [15,17]
trigger4 = time = [15,21]
trigger4 = stateno = 356
trigger5 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger5 = time = [7,14]
trigger6 = stateno = 220 
trigger6 = (movecontact = 1) || time = [5,11]
trigger7 = stateno = 1003 
trigger7 = (movecontact = 1); || time = [9,12]
trigger8 = stateno = 1006 
trigger8 = (movecontact = 1); || time = [10,13]
trigger9 = stateno = 311 
trigger9 = (movecontact = 1) || time = [14,20]

; å’ï^òAåÇ
[State -1]
type = ChangeState
value = 3300
triggerall = !Var(59)
triggerall = Var(43) = 0
triggerall = power >= 1000
triggerall = command = "kohyourengeki"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger5 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 220 
trigger7 = (movecontact = 1) || time = [5,11]
trigger8 = stateno = 1003 
trigger8 = (movecontact = 1); || time = [9,12]
trigger9 = stateno = 1006 
trigger9 = (movecontact = 1); || time = [10,13]
trigger10 = stateno = 311 
trigger10 = (movecontact = 1) || time = [14,20]

; ê‚ÅIåÉåù é„
[State -1]
type = ChangeState
value = 3000
triggerall = !Var(59)
triggerall = Var(43) = 0
triggerall = power >= 1000
triggerall = command = "zetsu_gekiken_x"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger5 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 220 
trigger7 = (movecontact = 1) || time = [5,11]
trigger8 = stateno = 1003 
trigger8 = (movecontact = 1); || time = [9,12]
trigger9 = stateno = 1006 
trigger9 = (movecontact = 1); || time = [10,13]
trigger10 = stateno = 311 
trigger10 = (movecontact = 1) || time = [14,20]

; ê‚ÅIåÉåù ã≠
[State -1]
type = ChangeState
value = 3003
triggerall = !Var(59)
triggerall = Var(43) = 0
triggerall = power >= 1000
triggerall = command = "zetsu_gekiken_y"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger5 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 220 
trigger7 = (movecontact = 1) || time = [5,11]
trigger8 = stateno = 1003 
trigger8 = (movecontact = 1); || time = [9,12]
trigger9 = stateno = 1006 
trigger9 = (movecontact = 1); || time = [10,13]
trigger10 = stateno = 311 
trigger10 = (movecontact = 1) || time = [14,20]

;=======================================
; TEMP vars
;=======================================
[State -1]
type = varset
triggerall = command = "holdfwd" && command = "B"
triggerall = time = [2,13]
trigger1 = stateno = 1000 || stateno = 1006
trigger2 = stateno = 1504
var(2) = 1

[State -1]
type = varset
triggerall = command = "holdfwd" && command = "A"
triggerall = time = [2,13]
trigger1 = stateno = 1000 || stateno = 1006
trigger2 = stateno = 1504
var(2) = 2

[State -1]
type = varset
triggerall = command = "holdback" && command = "A"
triggerall = time = [2,13]
trigger1 = stateno = 1000 || stateno = 1006
var(2) = 3

[State -1]
type = varset
triggerall = command = "holdback" && command = "B"
triggerall = time = [2,13]
trigger1 = stateno = 1000 || stateno = 1006
var(2) = 4

;CM start temp
[State -1]
type = Changestate
trigger1 = command = "A" && command = "B" && command = "C"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = var(6) = 0 && var(7) = 0
trigger1 = power >= 3000
value = 6100

;AM start temp
[State -1]
type = Changestate
trigger1 = command = "B" && command = "C" && command = "D"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = var(6) = 0 && var(7) = 0
trigger1 = power >= 3000
value = 6200

;========================================
; martial moves
;========================================

; ïöå’åÇ
[State -1]
type = ChangeState
value = 1100
triggerall = !Var(59)
triggerall = command = "hukukogeki"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger5 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 220 
trigger7 = (movecontact = 1) || time = [5,11]
trigger8 = stateno = 311 
trigger8 = (movecontact = 1) || time = [14,20]

; ç~ó¥åÇ
[State -1]
type = ChangeState
value = 1101
triggerall = command = "kouryugeki"
trigger1 = stateno = 1100
trigger1 = (movecontact = 1) || time = [17,33]

; åÉåùÅ@é„
[State -1]
type = ChangeState
value = 1001
triggerall = !Var(59)
triggerall = command = "gekiken_A"
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger5 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 220 
trigger7 = (movecontact = 1) || time = [5,11]
trigger8 = stateno = 311 
trigger8 = (movecontact = 1) || time = [14,20]

; åÉåùÅ@ã≠
[State -1]
type = ChangeState
value = 1004
triggerall = !Var(50); AI focus
triggerall = command = "gekiken_C"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = [250,280]
trigger2 = (movecontact = 1 && time <= 10) || time = [5,11]
trigger3 = stateno = [400,430]
trigger3 = movecontact = 1
trigger4 = stateno = 301
trigger4 = movecontact = 1 && time = [15,17]
trigger5 = time = [15,21]
trigger5 = stateno = 356
trigger6 = stateno = 240 || stateno = 321 || stateno = 420 || stateno = 430
trigger6 = time = [7,14]
trigger7 = stateno = 220 
trigger7 = (movecontact = 1) || time = [5,11]
trigger8 = stateno = 311 
trigger8 = (movecontact = 1) || time = [14,20]

; ùBçUïˆåÇ
[State -1]
type = ChangeState
value = 1200
triggerall = !Var(59)
triggerall = command = "saikouhougeki"
triggerall = statetype != A
trigger1 = ctrl = 1

;========================================
; misc moves
;========================================

; 113 during guard roll back cancel
[State -1]
type = ChangeState
value = 113
triggerall = !Var(59)
triggerall = command = "A" && command = "C"
triggerall = command = "holdback"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 152

; 112 during guard roll fwd cancel
[State -1]
type = ChangeState
value = 112
triggerall = !Var(59)
triggerall = command = "A" && command = "C"
triggerall = command != "holdback"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 152

; 110 dodge forward
[State -1]
type = ChangeState
value = 110
trigger1 = command = "A" && command = "C"
trigger1 = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1

; 360 dodge backward KOF99
[State -1]
type = ChangeState
value = 355
trigger1 = command = "A" && command = "C"
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------
; FWD + B ïÄê˘ãr
[State -1]
type = ChangeState
value = 310
triggerall = command = "holdfwd" && command = "A"
triggerall = !Var(59); hide AI
trigger1 = statetype = S
trigger1 = ctrl = 1

; FWD + B cancelledÅ@ÉLÉÉÉìÉZÉãÅ@ïÄê˘ãr
[State -1]
type = ChangeState
value = 311
triggerall = command = "holdfwd" && command = "A"
triggerall = statetype != A
triggerall = !Var(59); hide AI
;trigger1 = ctrl = 1
trigger1 = (stateno = [250,260]) || (stateno = [400,430])
trigger1 = time = [2,10]
trigger2 = stateno = [270,280]
trigger2 = movecontact = 1 && time <= 18
trigger3 = stateno = 270
trigger3 = P2bodydist X <= 18
trigger3 = time = [4,10]
trigger4 = stateno = 111
trigger4 = var(6) != 0
trigger4 = movecontact = 1

; standing CD attack
[State -1]
type = ChangeState
value = 240
triggerall = !var(59)
triggerall = (command = "CD") && (command != "holddown")
triggerall = statetype != A
triggerall = statetype = S
trigger1 = ctrl = 1

; CD during guard cancel
[State -1]
type = ChangeState
value = 321
triggerall = (command = "CD") && (command != "holddown")
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 152

; jump CD
[State -1]
type = ChangeState
value = 650
triggerall = command = "CD"
triggerall = statetype = A
trigger1 = ctrl = 1

;===================================
; Throws
;===================================

;Throw Attack C
[State -1]
type = ChangeState
value = 370 + (var(59) = 1 && BackEdgeDist < 140)*10
triggerall = P2bodydist X <= 2
triggerall = p2movetype != H && p2statetype != A
triggerall = statetype = S && ctrl
triggerall = p2stateno != 5120
triggerall = stateno != 100
trigger1 = command = "holdfwd" && command = "D"
trigger2 = var(59) >= 1
trigger2 = Random <= 100
trigger2 = (p2bodydist X <= 2) && (p2stateno < 100)
trigger3 = var(50) = 1 && Random <= 800

;Throw Attack D
[State -1]
type = ChangeState
value = 375
triggerall = P2bodydist X <= 2
triggerall = p2movetype != H && p2statetype != A
triggerall = statetype = S && ctrl
triggerall = p2stateno != 5120
triggerall = stateno != 100
trigger1 = command = "holdfwd" && command = "B"
trigger2 = var(59) >= 1
trigger2 = Random <= 100
trigger2 = (p2bodydist X <= 2) && (p2stateno < 100)

;ì]òAèR
[State -1]
type = ChangeState
value = 320 + (var(59) = 1 && p2statetype = C && p2bodydist X <= 50)*10
triggerall = command = "holdfwd" && command = "B"
triggerall = !P2bodydist X <= 2
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = [250,260]) || (stateno = [400,430])
trigger2 = time = [2,10]
trigger3 = stateno = [270,280]
trigger3 = movecontact = 1 && time <= 18
trigger4 = stateno = 270
trigger4 = P2bodydist X <= 18
trigger4 = time = [4,10]
trigger5 = stateno = 111
trigger5 = var(6) != 0
trigger5 = movecontact = 1

;--------------------------------------------------------------------------------------
; Standing close attacks

; Stand_A (close)
[State -1]
type = ChangeState
value = 260
triggerall = !Var(59); hide AI
triggerall = command = "A"
triggerall = p2bodydist x <= 18
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = time >= 6
trigger2 = movecontact = 1
trigger3 = stateno = 260
trigger3 = time >= 7
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = time >= 6
trigger4 = movecontact = 1
trigger5 = stateno = 410
trigger5 = time >= 7
trigger5 = movecontact = 1

; Stand_B (close)
[State -1]
type = ChangeState
value = 280
triggerall = command = "B"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = p2bodydist x <= 18
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = time >= 6
trigger2 = movecontact = 1
trigger3 = stateno = 260
trigger3 = time >= 7
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger4 = time >= 6
trigger5 = stateno = 410
trigger5 = time >= 7
trigger5 = movecontact = 1

; Stand_C (close)
[State -1]
type = ChangeState
value = 250
triggerall = !Var(59); hide AI
triggerall = command = "C"
trigger1 = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1

; Stand_D (close)
[State -1]
type = ChangeState
value = 270
triggerall = !Var(50); AI focus
triggerall = command = "D"
triggerall = p2bodydist x <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1


;----------------------------------------------------
; Standing (far) attacks

; Stand_A (far)
[State -1]
type = ChangeState
value = 210
triggerall = command = "A"
triggerall = p2bodydist x > 18
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time >= 8
trigger3 = stateno = 250
trigger3 = movecontact = 1
trigger3 = time >= 8
trigger4 = stateno = 260
trigger4 = time >= 7
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger5 = time >= 6
trigger6 = stateno = 410
trigger6 = time >= 7
trigger6 = movecontact = 1

; Stand_B (far)
[State -1]
type = ChangeState
value = 230
triggerall = !Var(59); hide AI
triggerall = command = "B"
triggerall = p2bodydist x > 18
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time >= 8
trigger3 = stateno = 250
trigger3 = movecontact = 1
trigger3 = time >= 8
trigger4 = stateno = 260
trigger4 = time >= 7
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger5 = time >= 6
trigger6 = stateno = 410
trigger6 = time >= 7
trigger6 = movecontact = 1

; Stand_C (far)
[State -1]
type = ChangeState
value = 200 - (var(59) = 1 && p2statetype = L)*180 ; = 40
triggerall = !Var(50); AI focus
triggerall = command = "C"
triggerall = P2bodydist X > 20
trigger1 = statetype = S
trigger1 = ctrl = 1

; Stand_D (far)
[State -1]
type = ChangeState
triggerall = !Var(50); AI focus
; mini AI setup
; AI use change to Stand A when P2 lie down
; AI use backhop if too close
value = 220 - (var(59) = 1 && p2statetype = L)*30 - (var(59) = 1 && p2statetype != L && p2bodydist X <= 40)*125
triggerall = !Var(58)
triggerall = command = "D"
trigger1 = statetype = S
trigger1 = ctrl = 1

;------------------------------------------------
; Crouching attacks

; Crouching A
[State -1]
type = ChangeState
value = 410
triggerall = !Var(50); AI focus
triggerall = command = "holddown" && command = "A"
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time >= 8
trigger3 = stateno = 410
trigger3 = (time >= 7) || movecontact

; Crouching B
[State -1]
type = ChangeState
value = 430
triggerall = !Var(50); AI focus
triggerall = command = "holddown" && command = "B"
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 410
trigger2 = (time >= 8) || movecontact
trigger2 = p2bodydist X >= 0
trigger3 = stateno = 400
trigger3 = time >= 8
trigger4 = var(59)
trigger4 = hitcount = 1
trigger4 = stateno = 410 && movecontact

; Crouching C
[State -1]
type = ChangeState
value = 400
triggerall = !Var(59); hide AI
triggerall = command = "holddown" && command = "C"
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 410
trigger2 = movecontact = 1

; Crouching D
[State -1]
type = ChangeState
value = 420
triggerall = !Var(59); hide AI
triggerall = command = "holddown" && command = "D"
triggerall = statetype = C
trigger1 = ctrl = 1

; Jumping light punch
[State -1]
type = ChangeState
value = 610
triggerall = !Var(59); hide AI
trigger1 = command = "A"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping light kick
[State -1]
type = ChangeState
value = 630
trigger1 = command = "B"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping hard punch
[State -1]
type = ChangeState
value = 600
trigger1 = command = "C"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping hard kick
[State -1]
type = ChangeState
value = 620
trigger1 = command = "D"
trigger1 = statetype = A
trigger1 = ctrl = 1


;=======================================
; Taunt
[State -1]
type = ChangeState
value = 195
triggerall = !Var(50); AI focus
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = stateno != 195
trigger1 = ctrl = 1

; Run Forward
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1
trigger1 = stateno != 100 && prevstateno != 100
trigger1 = stateno != 10044 && prevstateno != 10044

; Run Backwards
[State -1]
type = ChangeState
value = 105 + (var(59) = 1 && BackEdgeDist <= 165)*9939
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1

[State -1]
type = Helper
trigger1 = NumHelper(9999) = 0
id = 9999
pos = 0, 150
stateno = 9999
pausemovetime = 999999
Name = "AI switch - Thanks to 'ANMC' && 'Bagaliao'"
keyctrl = 1
persistent = 0






;=======================================
; AI plus, most of AI is in CNS
;=======================================

; Crawbite C (anti air)
[State -1]
type = ChangeState
value = 1503 - (p2stateno >= 2000 && p2movetype = A)*1373 ;130
triggerall = var(59) >= 1 && ctrl
triggerall = statetype != A
triggerall = P2bodydist x = (10,50)
triggerall = FrontEdgeDist > 50
triggerall = P2movetype != H ;&& (P2StateNo != [120,155]) && (P2StateNo != 0)
trigger1 = P2bodydist Y = (-58,-40)
trigger1 = P2statetype = A; && p2movetype = A
trigger2 = (PrevStateNo = [151,153]) || (PrevStateNo = 140)
trigger2 = p2stateno < 2000

; Crawbite A (anti attack)
[State -1]
type = ChangeState
value = 1500 - (p2stateno >= 2000 && p2movetype = A)*1370 ;130
triggerall = var(59) >= 1 && ctrl
triggerall = (Random >= 100) || (var(50) = 1)
triggerall = statetype != A
triggerall = P2bodydist X = (5,50)
triggerall = FrontEdgeDist > 50
triggerall = P2movetype = A
trigger1 = P2statetype != A
trigger2 = P2dist Y = (-50,-40)
trigger2 = P2statetype = A
trigger3 = stateno = 5120
trigger3 = AnimTIme = 0
trigger2 = (PrevStateNo = [151,153]) || (PrevStateNo = 140)

; Minute spike B
[State -1]
type = ChangeState
value = 1300
triggerall = var(59) >= 1 && ctrl
triggerall = statetype != A && p2statetype != A
triggerall = p2stateno <= 2000
triggerall = Random <= 700
trigger1 = P2stateno = (105,107)
trigger1 = P2bodydist X = (25,35)
trigger2 = P2stateno = 100
trigger2 = P2bodydist X = (30,65)
trigger3 = P2movetype = A 
trigger3 = P2bodydist X = (35,80)
trigger4 = p2bodydist X = [112,117]
trigger4 = p2stateno = 20

; Crouch C 
[State -1]
type = ChangeState
value = 420 - (p2statetype = S)*150
trigger1 = PrevStateNo != 5120 && P2statetype != L
trigger1 = var(59) >= 1 && ctrl && statetype != A 
trigger1 = p2statetype != A
trigger1 = P2bodydist X = (0,11)  ; (0,15)
trigger1 = p2stateno != 5120

; Standing C
[State -1]
type = ChangeState
value = 270 + (P2stateno < 100 && Random <= 50)*10
triggerall = var(59) >= 1 && ctrl = 1 && statetype != A
triggerall = p2stateno != 5120 && p2movetype != A
trigger1 = P2statetype = S || P2Statetype = C
trigger1 = P2bodydist X <= 3 ;2 
trigger2 = P2statetype = S 
trigger2 = P2bodydist X <= 15

; Crouching  C - part 2
[State -1]
type = ChangeState
value = 420
trigger1 = PrevStateNo != 5120
trigger1 = var(59) >= 1 && ctrl
trigger1 = statetype != A
trigger1 = p2statetype != L && p2statetype != A
trigger1 = P2bodydist X <= 10

; crouching B
; 409 is a temporary state for stand to crouch animation for AI use. 
; since this is a guard reversal, no need to go through the delay.
[State -1]
type = ChangeState
value = 410 
triggerall = var(59) = 1 && ctrl
triggerall = PrevStateNo != 5120
triggerall = P2StateType != C && statetype != A && P2Statetype != L
triggerall = (P2bodydist X <= 35) && (P2bodydist Y = [-10,0])
triggerall = (P2MoveType != A) || (PrevStateNo = [151,153]) || (PrevStateNo = 140)
triggerall = P2life != 0
trigger1 = !var(50)
trigger2 = var(50)
trigger2 = Random = [0,500]

; stop AI walk
[State -1]
type = AssertSpecial
trigger1 = Var(59)
flag = NoWalk

[state -1]
type = ChangeState
triggerall = var(59) = 1 && ctrl
trigger1 = P2bodyDist X != [18,50]
trigger1 = RoundState != 3
trigger1 = Anim != 5
trigger1 = StateNo = 0
trigger1 = Pos Y = 0
value = 2044 ; AI walk loop state

; jumps
[State -1, AI jump]
type = ChangeState
value = 40 ; see CNS
triggerall = (stateno != (40,52)) && (Anim != (40,52)) 
triggerall = (stateno != 2041) && (stateno != 4044)
triggerall = statetype != A && p2statetype != A && p2movetype != H
triggerall = !var(58)
triggerall = var(59) = 1 && ctrl
triggerall = frontedgebodydist >= 40
trigger1 = p2stateno = 5120
trigger1 = P2bodydist X >= 60
trigger1 = random <= 150 
trigger2 = P2bodydist X >= 50
trigger2 = p2statetype = L 
trigger2 = random <= 50
;trigger3 = enemy, numproj = 1 && (enemy,time <= 12) ; mugen 414 2001 only

; jump C
[State -1]
type = ChangeState
value = 620 +(p2stateno = 5120 && p2bodydist X >= 68)*10
triggerall = statetype = A
triggerall = var(59) = 1 && ctrl
trigger1 = p2bodydist x = [-20,18]
trigger1 = p2statetype = S || p2statetype = C
trigger2 = p2stateno = 5120

; jump CD
[State -1]
type = ChangeState
value = 650
triggerall = statetype = A
triggerall = var(59) = 1 && ctrl
triggerall= p2statetype = S
trigger1 = p2bodydist x = (19,38)
trigger2 = p2movetype = A
trigger2 = p2bodydist x = (-20,75) ; [-20,60]
trigger3 = p2bodydist X = [40,90]
trigger4 = vel x = 0

; jump B
[State -1]
type = ChangeState
value = 620 + (P2statetype != A && Pos Y = [-65,-48])*40
triggerall = statetype = A
triggerall = var(59) = 1 && ctrl
trigger1 = p2statetype = A
trigger1 = p2movetype != H
trigger1 = p2bodydist x = [0,41]
trigger1 = vel x > 0
;trigger1 = Enemy, numproj = 0 ; mugen 414 2001 only

; jump D
[State -1]
type = ChangeState
value = 630
triggerall = statetype = A
triggerall = var(59) = 1 && ctrl
trigger1 = (p2bodydist x = [42,55]) && (p2statetype != S)
trigger2 = p2bodydist x >= 105 && Pos Y < -30

; Minute spike D
[State -1]
type = ChangeState
value = 1305
triggerall = var(59) >= 1 && ctrl
triggerall = statetype != A
triggerall = P2bodydist X = (36,60)
trigger1 = P2stateno = (105,106)
trigger2 = P2stateno = 40
trigger2 = time < 2

; hop back
[State -1]
type = ChangeState
value = 105 + (BackEdgeDist < 125)*9939
triggerall = var(59) >= 1 && ctrl
triggerall = statetype != A
triggerall = BackEdgeDist >= 100 && (PrevStateNo != [105,107])
triggerall = P2movetype = I
trigger1 = FrontEdgeBodyDist <= 26
trigger1 = Random <= 100
trigger2 = P2bodydist X = [0,50]
trigger2 = P2StateNo = 5120
trigger2 = Random < 80
trigger3 = P2bodydist X = [30,40]
trigger3 = Random < 100

; Eine Trigger
[State -1, AIEineTrigger1]
type = ChangeState
value = 1000
triggerall = var(59) >= 1 && ctrl && (statetype != A)
triggerall = FrontEdgeBodyDist >= 26
trigger1 = P2bodydist X = (34,175) 
trigger1 = P2movetype = I ; P2 idle
trigger1 = P2statetype != A
trigger1 = random < 100
trigger1 = p2statetype = L || p2stateno < 1200

; combo eine trigger
[state -1]
type = ChangeState
value = 1000
triggerall = var(59) && ctrl = 0
triggerall = movecontact
triggerall = (hitcount >= 2) || p2bodydist X >= 5
trigger1 = stateno = 400
trigger2 = stateno = 410

; 3250 SDM chaindriver unhide AI
[State -1]
type = ChangeState
value = 3250
trigger1 = statetype != A && ctrl && power >= 3000
trigger1 = p2statetype != A
trigger1 = !var(50); memory
trigger1 = var(59) = 1 ; unhide AI
trigger1 = random < 111 && p2life > 500
trigger1 = p2bodydist X = [178,244] ; farthest possible is 255
trigger1 = p2movetype = A

; AI memory disable SDM chain drive if missed
[state -1, memory SDM]
type = VarSet
trigger1 = Var(59) = 1
trigger1 = PrevStateNo = 3250
trigger1 = MoveType = H ; when countered
trigger1 = time = 0
ignorehitpause = 1
var(50) = 1 ; memory AI


;=======================================
; AI anti boss
;=======================================

; blackout
[State -1, 581]
type = ChangeState
value = 1710
triggerall = var(58) = 1
triggerall = statetype != A && ctrl
trigger1 = p2movetype = I 
trigger1 = p2bodydist  X >= 205
trigger1 = random <= 1000

[State -1]
type = ChangeState
value = 3250 ; SDM chain
triggerall = var(58) = 1
triggerall = statetype != A && ctrl && power >= 3000
trigger1 = p2stateno = 900 || p2stateno = 950
trigger1 = p2bodydist X > 43

; defense up
[State -1, 58571]
type = ChangeState
value = 120 + (p2statetype = C)*11
trigger1 = Var(58) = 1
trigger1 = RoundState = 2
trigger1 = alive = 1 && ctrl
trigger1 = p2movetype = A
trigger1 = p2statetype != C
trigger1 = statetype != A
trigger1 = ctrl = 1

[State-1]
type = ChangeState
value = 105 ; hop back
triggerall = var(58) = 1
triggerall = PrevStateNo != [105,107]
triggerall = statetype != A && ctrl
trigger1 = random <= 200
trigger1 = P2bodydist X = (195,209)
trigger2 = backedgedist > 60
trigger2 = P2bodydist X < 80
trigger2 = p2stateno = 5120; get up

[State -1]
type = ChangeState
value = 1503
trigger1 = var(58) = 1
trigger1 = statetype != A && ctrl
trigger1 = p2stateno = 100
trigger1 = p2bodydist X < 85


;=======================================
; AI walk state 2044
[Statedef 2044]
type    = S
physics = S
sprpriority = 0

;fwd
[State 2044, 1]
type = VelSet
trigger1 = Var(59)
trigger1 = P2BodyDist X >= 38
trigger1 = FrontEdgeDist >=50 
x = const(velocity.walk.fwd.x)

;bak
[State 2044, 2]
type = VelSet
triggerall = Var(59)
trigger1 = P2BodyDist X < 20
trigger1 = BackEdgeDist >= 45
;trigger2 = P2BodyDist X < 28 && P2Statetype = L
x = const(velocity.walk.back.x)

[State 2044, 3]
type = ChangeAnim
triggerall = vel x > 0
triggerall = var(59) = 1
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 2044, 4]
type = ChangeAnim
triggerall = vel x < 0
triggerall = var(59) = 1
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

; go back to neutral state
[State 2044, Ai end walk]
type = ChangeState
triggerall = Var(59)
triggerall = stateno != 0
trigger1 = P2BodyDist X > 235
trigger1 = P2BodyDist X < 15
trigger2 = P2MoveType = A
trigger2 = Vel X <= 0
trigger3 = RoundState = 3
trigger4 = Vel X = 0
trigger4 = Anim != 0
value = 0
