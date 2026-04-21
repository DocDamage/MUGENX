;----------------------------________________-------------------------------
;---------------------------|                |------------------------------
;---------------------------|   hyper move   |------------------------------
;---------------------------|________________|------------------------------
;---------------------------------------------------------------------------

; super Furacão Doido!
[command]
name = "qcb_kk"
command = ~D, DB, B, a+b
time = 40

[command]
name = "qcb_kk"
command = ~D, DB, B, b+c
time = 40

[command]
name = "qcb_kk"
command = ~D, DB, B, a+c
time = 40

; arrastão sobre os noobs!
[command]
name = "qcf_pp"
command = ~D, DF, F, x+y
time = 40

[command]
name = "qcf_pp"
command = ~D, DF, F, y+z
time = 40

[command]
name = "qcf_pp"
command = ~D, DF, F, x+z
time = 40
 

;----------------------------________________-------------------------------
;---------------------------|                |------------------------------
;---------------------------|  special move  |------------------------------
;---------------------------|________________|------------------------------
;---------------------------------------------------------------------------

[command]
name = "qcb_a"
command = ~D, DB, B, a
time = 40

[command]
name = "qcb_b"
command = ~D, DB, B, b
time = 40

[command]
name = "qcb_c"
command = ~D, DB, B, c
time = 40

;-------------------------------------

[command]
name = "DP_a"
command = ~F, D, DF, a
time = 40

[command]
name = "DP_b"
command = ~F, D, DF, b
time = 40

[command]
name = "DP_c"
command = ~F, D, DF, c
time = 40

;-------------------------------------

[command]
name = "qcf_x"
command = ~D, DF, F, x
time = 40

[command]
name = "qcf_y"
command = ~D, DF, F, y
time = 40

[command]
name = "qcf_z"
command = ~D, DF, F, z
time = 40

; teleport
[command]
name = "teleport_fwd_p"
command = /F, x+y+z


[command]
name = "teleport_fwd_k"
command = /F, a+b+c


[command]
name = "teleport_bwd_p"
command = /B, x+y+z


[command]
name = "teleport_bwd_k"
command = /B, a+b+c

;----------------------------________________-------------------------------
;---------------------------|                |------------------------------
;---------------------------|   basic move   |------------------------------
;---------------------------|________________|------------------------------
;---------------------------------------------------------------------------
; superjump
[command]
name = "superjump"
command = ~D, U
time = 30

;-| DoUBle tap |-----------------------------------------------------------
[command]
name = "ff"
command = F, F
time = 10


[command]
name = "bb"
command = B, B
time = 10

;-| 2/3 button combination |-----------------------------------------------
[command]
name = "recovery"
command = x+y
time = 1


[command]
name = "throw_p"
command = x+y
time = 5


[command]
name = "throw_p"
command = y+z
time = 5


[command]
name = "throw_p"
command = x+z
time = 5


[command]
name = "throw_k"
command = a+b
time = 5


[command]
name = "throw_k"
command = b+c
time = 5


[command]
name = "throw_k"
command = a+c
time = 5

;-| Dir + button |---------------------------------------------------------
;---------------------------------------------------------------------------
; Dir + button
[command]
name = "fwd_a"
command = /F,a
time = 1


[command]
name = "fwd_b"
command = /F,b
time = 1


[command]
name = "fwd_c"
command = /F,c
time = 1


[command]
name = "fwd_x"
command = /F,x
time = 1


[command]
name = "fwd_y"
command = /F,y
time = 1


[command]
name = "fwd_z"
command = /F,z
time = 1


[command]
name = "back_a"
command = /B,a
time = 1


[command]
name = "back_b"
command = /B,b
time = 1


[command]
name = "back_c"
command = /B,c
time = 1


[command]
name = "back_x"
command = /B,x
time = 1


[command]
name = "back_y"
command = /B,y
time = 1


[command]
name = "back_z"
command = /B,z
time = 1

;-| single button |---------------------------------------------------------
[command]
name = "a"
command = a
time = 1


[command]
name = "b"
command = b
time = 1


[command]
name = "c"
command = c
time = 1


[command]
name = "x"
command = x
time = 1


[command]
name = "y"
command = y
time = 1


[command]
name = "z"
command = z
time = 1


[command]
name = "start"
command = s
time = 1

;-| hold single button |----------------------------------------------------
[command]
name = "holdx"
command = /x
time = 1


[command]
name = "holdy"
command = /y
time = 1


[command]
name = "holdz"
command = /z
time = 1


[command]
name = "holda"
command = /a
time = 1


[command]
name = "holDB"
command = /B
time = 1


[command]
name = "holdc"
command = /c
time = 1

;-| hold Dir |--------------------------------------------------------------
[command]
name = "holdfwd"
command = /$F
time = 1


[command]
name = "holdback"
command = /$B
time = 1


[command]
name = "holdup"
command = /$U
time = 1


[command]
name = "holddown"
command = /$D
time = 1

[Command]      
name = "parry"
command = ~F
time = 2

;---------------------------------------------------------------------------
; 2. state entry
; --------------
; this is where you Define what commands bring you to what states.
;
; each state entry block looks like:
;   [state -1, label]           ;change label to any name you want to Use to
;                               ;identify the state with.
;   type = changestate          ;don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       s, c or a : current state-type of player (stanD, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - Useful For "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                Useful For "move interrupts"
;
; note: the order of state entry is important.
;   state entry with a certain command must come before another state
;   entry with a command that is the sUBset of the First.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see cns Documentation.
;
; just For your information (skip if you're not interested):
; this part is an extension of the cns. "state -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the Following line. it's required by the cmd standard.
[statedef -1]

;===========================================================================
;----------------------------________________-------------------------------
;---------------------------|                |------------------------------
;---------------------------|   hyper move   |------------------------------
;---------------------------|________________|------------------------------

;---------------------------------------------------------------------------
; tornado Doido
[state -1, tornado Doido]
type = changestate
value = 3000
triggerall = Var(59) != 2
triggerall = power >=1000
triggerall = command = "qcb_kk"
triggerall = Var(15) = 0
triggerall = (RoundState = 2)
trigger1 = statetype = s
trigger1 = ctrl 
trigger2 = statetype != A 
trigger2 = (hitdefattr = SC, NA, SA) && (Var(12) = 1) || hitdefattr = SC, NA
trigger2 = (Pos Y >= 0) && ((Time < 20) || (MoveContact) || (NumTarget))
trigger3 = stateno = [100,105]
trigger3 = time >= 4
trigger4 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
; arrastão nos noobs safados!
[state -1, arrastão nos noobs]
type = changestate
value = 3100
triggerall = Var(59) != 2
triggerall = power >=1000
triggerall = command = "qcf_pp"
triggerall = Var(15) = 0
triggerall = (RoundState = 2)
trigger1 = statetype = s
trigger1 = ctrl 
trigger2 = statetype != A
trigger2 = (hitdefattr = SC, NA, SA) && (Var(12) = 1) || hitdefattr = SC, NA
trigger2 = (Pos Y >= 0) && ((Time < 20) || (MoveContact) || (NumTarget))
trigger3 = stateno = [100,105]
trigger3 = time >= 4
trigger4 = (statetype = S) && movecontact && (Var(15) > 0)


;----------------------------________________-------------------------------
;---------------------------|                |------------------------------
;---------------------------|   basic move   |------------------------------
;---------------------------|________________|------------------------------

;---------------------------------------------------------------------------
;----------------------------- triangle jump --------------------------------
;---------------------------------------------------------------------------

;------------------------------ parry by Inferis --------------
[State -1,parry ticks]
type = VarSet 
triggerAll = enemynear, Movetype = A
triggerAll = statetype !=A
triggerAll = Movetype !=H
trigger1 = Command = "parry" && stateno != 751
var(21) = 6

[State -1,parry ticks diminui]
type = VarAdd
triggerAll = var(21) > 0
trigger1 = time >= 0 && TimeMod = 2,1
var(21) = -1

[State -1, muda state]
type = hitoverride
trigger1 = var(21) > 0
attr = SCA, HA, SA, NA, HP, SP, NP, AP, AA
stateno = 751
ignorehitPause = 1
;------------------------------ fim parry by Inferis --------------


;---------------------------------------------------------------------------
; triangle jump - jump back

[state -1]
type = changestate
value = 995
triggerall = command = "holdfwd"
triggerall = statetype = a
triggerall = backedgedist < 10
triggerall = vel x <= 0
trigger1 = stateno != 997
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; triangle jump - jump Up

[state -1]
type = changestate
value = 996
triggerall = command = "holdback"
triggerall = statetype = a
triggerall = Frontedgedist < 10
trigger1 = stateno != 997
trigger1 = ctrl = 1

;----------------------------________________-------------------------------
;---------------------------|                |------------------------------
;---------------------------|  special move  |------------------------------
;---------------------------|________________|------------------------------
;---------------------------------------------------------------------------

; rolling turtle
[state -1, rolling turtle]
type = changestate
value = 1000
triggerall = command = "qcb_a"
triggerall = var(59) != 2
trigger1 = statetype = s
trigger1 = ctrl 
trigger2 = stateno = [200,450]
trigger2 = movecontact
trigger3 = stateno = [100,105]
trigger3 = time >= 4
trigger4 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
; rasteira lateral
[state -1, rasteira lateral]
type = changestate
value = (1100+Var(40))
triggerall = command = "qcb_b"
triggerall = var(59) != 2
trigger1 = statetype = s
trigger1 = ctrl 
trigger2 = stateno = [200,450]
trigger2 = movecontact
trigger3 = stateno = [100,105]
trigger3 = time >= 4 
trigger4 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
; Pezada na cara / Rabada
[state -1, Pezada na cara]
type = changestate
value = (1200+Var(40))
triggerall = command = "qcb_c"
triggerall = var(59) != 2
trigger1 = statetype = s
trigger1 = ctrl 
trigger2 = stateno = [200,450]
trigger2 = movecontact
trigger3 = stateno = [100,105]
trigger3 = time >= 4 
trigger4 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
; parafuso1
[state -1, parafuso 1]
type = changestate
value = 1300
triggerall = command = "qcf_x"
triggerall = var(59) != 2
trigger1 = statetype = a
trigger1 = ctrl 
trigger2 = stateno = [600,650]
trigger2 = movecontact
trigger3 = stateno = [100,105]
trigger3 = time >= 4

;---------------------------------------------------------------------------
; parafuso2
[state -1, parafuso 2]
type = changestate
value = 1310
triggerall = command = "qcf_y"
triggerall = var(59) != 2
trigger1 = statetype = a
trigger1 = ctrl 
trigger2 = stateno = [600,650]
trigger2 = movecontact
trigger3 = stateno = [100,105]
trigger3 = time >= 4

;---------------------------------------------------------------------------
; parafuso3
[state -1, parafuso 3]
type = changestate
value = 1320
triggerall = command = "qcf_z"
triggerall = var(59) != 2
trigger1 = statetype = a
trigger1 = ctrl 
trigger2 = stateno = [600,650]
trigger2 = movecontact
trigger3 = stateno = [100,105]
trigger3 = time >= 4

;---------------------------------------------------------------------------
; Pente Fraco
[state -1, pente f]
type = changestate
value = (1400+Var(40))
triggerall = command = "DP_a"
triggerall = var(59) != 2
trigger1 = statetype = s
trigger1 = ctrl 
trigger2 = stateno = [200,450]
trigger2 = movecontact
trigger3 = stateno = [100,105]
trigger3 = time >= 4
trigger4 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
; Pente Medio
[state -1, pente m]
type = changestate
value = (1410+Var(40))
triggerall = command = "DP_b"
triggerall = var(59) != 2
trigger1 = statetype = s
trigger1 = ctrl 
trigger2 = stateno = [200,450]
trigger2 = movecontact
trigger3 = stateno = [100,105]
trigger3 = time >= 4
trigger4 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
; Pente Forte
[state -1, pente fo]
type = changestate
value = (1420+Var(40))
triggerall = command = "DP_c"
triggerall = var(59) != 2
trigger1 = statetype = s
trigger1 = ctrl 
trigger2 = stateno = [200,450]
trigger2 = movecontact
trigger3 = stateno = [100,105]
trigger3 = time >= 4
trigger4 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;Custom Combo Start!
[State -1, Vism]
type = ChangeState
value = 9000
triggerall = power > 1000 && var(15) = 0
trigger1 = command = "recovery"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;----------------------------- running kick --------------------------------
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; running light kick

[state -1]
type = changestate
value = 660
triggerall = var(59) != 2
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = stateno = 100
trigger1 = time >= 4
trigger2 = stateno = [690,710]
trigger2 = movecontact


;---------------------------------------------------------------------------
; running medium kick

[state -1]
type = changestate
value = 670
triggerall = var(59) != 2
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = stateno = 100
trigger1 = time >= 4
trigger2 = stateno = 660 
trigger2 = movecontact
trigger3 = stateno = [680,710]
trigger3 = movecontact 

;---------------------------------------------------------------------------
; running heavy kick

[state -1]
type = changestate
value = 680
triggerall = var(59) != 2
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = stateno = 100
trigger1 = time >= 4
trigger2 = stateno = [660,670] 
trigger2 = movecontact
trigger3 = stateno = [690,710]
trigger3 = movecontact 

;---------------------------------------------------------------------------
;----------------------------- running punch -------------------------------
;---------------------------------------------------------------------------
 
;---------------------------------------------------------------------------
; running light punch

[state -1]
type = changestate
value = 690
triggerall = var(59) != 2
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = stateno = 100
trigger1 = time >= 4



;---------------------------------------------------------------------------
; running medium punch

[state -1]
type = changestate
value = 700
triggerall = var(59) != 2
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = stateno = 100
trigger1 = time >= 4
trigger2 = stateno = 690
trigger2 = movecontact
;---------------------------------------------------------------------------
; running heavy punch

[state -1]
type = changestate
value = 710
triggerall = var(59) != 2
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = stateno = 100
trigger1 = time >= 4
trigger2 = stateno = [660,700]
trigger2 = movecontact

;---------------------------------------------------------------------------
;--------------------------------- Dash -----------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;dash Foward
[state -1, [state -1]
type = changestate
value = 100
triggerall = var(59) != 2
triggerall = var(54) != 1
trigger1 = command = "ff"
trigger1 = statetype = s
trigger1 = ctrl


;---------------------------------------------------------------------------
;dash backward
[state -1, [state -1]
type = changestate
value = 105
triggerall = var(59) != 2
triggerall = var(54) != 1
trigger1 = command = "bb"
trigger1 = statetype = s
trigger1 = ctrl
;---------------------------------------------------------------------------
;kung Fu throw
;“š‚°
[state -1, kung Fu throw]
type = null;changestate
value = 800
triggerall = command = "y"
triggerall = statetype = s
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist x < 3
trigger1 = (p2statetype = s) || (p2statetype = c)
trigger1 = p2movetype != h
trigger2 = command = "holdback"
trigger2 = p2bodydist x < 5
trigger2 = (p2statetype = s) || (p2statetype = c)
trigger2 = p2movetype != h

;---------------------------------------------------------------------------
;crouch walk
[state -1]
type = changestate
value = 23
trigger1 = stateno = 11
trigger1 = command = "holddown"
trigger1 = command = "holdfwd"

;---------------------------------------------------------------------------
;crouch back walk
[state -1]
type = changestate
value = 25
trigger1 = stateno = 11
trigger1 = command = "holddown"
trigger1 = command = "holdback"
;---------------------------------------------------------------------------
;---------------------------------- jump -----------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; super jump
[state -1, [state -1]
type = changestate
value = 890
triggerall = var(59) != 2
triggerall = command = "superjump"
trigger1 = statetype != a
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
; aerial rave Follow-jump
[state -1, [state -1]
type = changestate
value = 890
triggerall = var(59) != 2
triggerall = command = "holdup"
trigger1 = movecontact
trigger1 = stateno = 420
;---------------------------------------------------------------------------
;---------------------------- standing punch -------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; standing light punch
[state -1, [state -1]
type = changestate
value = 200
triggerall = var(59) != 2
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
; standing medium punch
[state -1, [state -1]
type = changestate
value = 210
triggerall = var(59) != 2
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = [230,450]
trigger3 = movecontact
trigger4 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
; standing heavy punch
[state -1, [state -1]
type = changestate
value = 220
triggerall = var(59) != 2
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = [200,215]
trigger2 = movecontact
trigger3 = stateno = [230,450]
trigger3 = movecontact
trigger4 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;---------------------------- standing kick --------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; standing light kick
[state -1, [state -1]
type = changestate
value = 230
triggerall = var(59) != 2
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
; standing medium kick
[state -1, [state -1]
type = changestate
value = 240
triggerall = var(59) != 2
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = [200,230]
trigger2 = movecontact
trigger3 = stateno = [250,450]
trigger3 = movecontact
trigger4 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
; standing heavy kick
[state -1, [state -1]
type = changestate
value = 250
triggerall = var(59) != 2
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = [200,240]
trigger2 = movecontact
trigger3 = stateno = [400,450]
trigger3 = movecontact
trigger4 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;taunt
;’§”­
[state -1, taunt]
type = changestate
value = 195
triggerall = command = "start"
trigger1 = statetype != a
trigger1 = ctrl

;---------------------------------------------------------------------------
;--------------------------- crouching punch -------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; crouching light punch
[state -1, [state -1]
type = changestate
value = 400
triggerall = var(59) != 2
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact
trigger3 = (statetype = C) && movecontact && (Var(15) > 0)


;---------------------------------------------------------------------------
; crouching medium punch
[state -1, [state -1]
type = changestate
value = 410
triggerall = var(59) != 2
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = stateno = [200,250]
trigger2 = movecontact
trigger3 = stateno = [420,450]
trigger3 = movecontact
trigger4 = (statetype = C) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
; crouching heavy punch
[state -1, [state -1]
type = changestate
value = 420
triggerall = var(59) != 2
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = stateno = [200,410]
trigger2 = movecontact
trigger3 = stateno = [430,450]
trigger3 = movecontact
trigger4 = (statetype = C) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;--------------------------- crouching kick --------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; crouching light kick
[state -1, [state -1]
type = changestate
value = 430
triggerall = var(59) != 2
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = stateno = [200,420]
trigger2 = movecontact
trigger3 = (statetype = C) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
; crouching medium kick
[state -1, [state -1]
type = changestate
value = 440
triggerall = var(59) != 2
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = stateno = [200,430]
trigger2 = movecontact
trigger3 = (statetype = C) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
; crouching heavy kick
[state -1, [state -1]
type = changestate
value = 450
triggerall = var(59) != 2
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = stateno = [200,440]
trigger2 = movecontact
trigger3 = (statetype = C) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;----------------------------- jumping punch -------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; jumping light punch
[state -1, [state -1]
type = changestate
value = 600
triggerall = var(59) != 2
triggerall = command = "x"
trigger1 = statetype = a
trigger1 = ctrl = 1
trigger2 = stateno = 630
trigger2 = movecontact
trigger3 = (statetype = A) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
; jumping medium punch
[state -1, [state -1]
type = changestate
value = 610
triggerall = var(59) != 2
triggerall = command = "y"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = p2statetype = a
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = p2statetype = a
trigger3 = stateno = [620,650]
trigger3 = movecontact
trigger4 = (statetype = A) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
; jumping heavy punch
[state -1, [state -1]
type = changestate
value = 620
triggerall = var(59) != 2
triggerall = command = "z"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = p2statetype = a
trigger2 = stateno = [600,615]
trigger2 = movecontact
trigger3 = p2statetype = a
trigger3 = stateno = [630,650]
trigger3 = movecontact
trigger4 = (statetype = A) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;----------------------------- jumping kick --------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; jumping light kick
[state -1, [state -1]
type = changestate
value = 630
triggerall = var(59) != 2
triggerall = command = "a"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = p2statetype = a
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = (statetype = A) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
; jumping medium kick
[state -1, [state -1]
type = changestate
value = 640
triggerall = var(59) != 2
triggerall = command = "b"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = p2statetype = a
trigger2 = stateno = [600,630]
trigger2 = movecontact
trigger3 = p2statetype = a
trigger3 = stateno = 650
trigger3 = movecontact
trigger4 = (statetype = A) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
; jumping heavy kick
[state -1, [state -1]
type = changestate
value = 650
triggerall = var(59) != 2
triggerall = command = "c"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = p2statetype = a
trigger2 = stateno = [600,640]
trigger2 = movecontact
trigger3 = (statetype = A) && movecontact && (Var(15) > 0)

