;==================================================================================
;======| RELACIONADO À AI - AI RELATED |===========================================
;==================================================================================

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

;-| Hold Button |----------------------------------------------------------
; Please define Anim 74140108 in your AIR file if AND ONLY IF you place these
; 7 Hold Button commands immediately after the 11 Single Button and Hold Dir
; commands at the very top of your CMD list, as demonstrated here.
; In this version of the AI code, these commands are only used by the XOR
; method, and thus are optional.  But there remains a possibility that a
; future version of the helper method might be helped by having these
; commands placed here, and Anim 74140108 would then be used to indicate
; that a partner character has a compatible CMD.

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
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

[Command]
name = "holdstart"
command = /s
time = 1

;-| CPU |--------------------------------------------------------------
; Note that if you make any changes to the basic one-button or recovery
; commands, you'll need to make the same changes to their matching commands here
; and/or in the XOR VarSet controller.  That includes things like, for example:
;  * changing the recovery command to use a different combination of buttons.
;  * renaming the b button command as "d", or the start button command as "s".
;  * switching the button names around, e.g. so button y triggers "a" and button a triggers "y".
;  * having more than one way to trigger the same command name.
; If you understand how the XOR method works, the proper changes should be obvious.
; If you don't understand it, then simply disable the lines in the XOR VarSet
; controller that correspond to the commands you've altered.

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
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

;==================================================================================
;==================================================================================
;==================================================================================

;-| Super Motions |--------------------------------------------------------

[Command]
name = "super soco X"
command = ~F, F, b

[Command]
name = "super soco cruzado"
command = ~D, D, b

[Command]
name = "super soco"
command = ~B, F, b

[Command]
name = "BUSTER TIRO AEREO"
command = ~x

[Command]
name = "BUSTER TIRO"
command = ~x

;-| Special Motions |------------------------------------------------------

[Command]
name = "gancho"
command = ~D, F, b

[Command]
name = "sequencia soco forte"
command = ~b

[Command]
name = "sequencia soco fraco"
command = ~b+b

[Command]
name = "helicoptero aereo"
command = ~B, F, a

[Command]
name = "helicoptero"
command = ~B, F, a

[Command]
name = "pedalada"
command = ~D, D, a

[Command]
name = "sequencia chute forte"
command = ~a

[Command]
name = "sequencia chute fraco"
command = ~a+a

[Command]
name = "esquiva"
command = ~y

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

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
command = /$F, z
time = 1

[Command]
name = "BB"     ;Required (do not remove)
command = /$B, z
time = 1

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
name = "down_b"
command = /$D,b
time = 1


;===========================================================================
[Statedef -1]

;==================================================================================
;======| RELACIONADO À AI - AI RELATED |===========================================
;==================================================================================

; The main purpose of having these next two controllers here at the top of
; StateDef -1 is to make sure the AI helper never changes to a different state,
; but they also improve efficiency by preventing Mugen from wasting time
; processing the entire State -1 for the helper.
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

; This is generally the best place to put most of your AI directives.  For
; example, this controller would only be executed when the CPU is in control:
;
; [State -1, Haha!]
; type = ChangeState
; trigger1 = var(0) ; (Or use "var(59)>0" if you've chosen not to
;                   ; use the Simplifier variable/controller.)
; trigger1 = ctrl
; trigger1 = (StateType = S)
; trigger1 = (MoveType = I)
; trigger1 = (P2MoveType = H)
; trigger1 = (NumEnemy = 1)
; trigger1 = (Enemy,GetHitVar(HitTime) > 60)
; trigger1 = (PrevStateNo != 195)
; trigger1 = (Random < 99)
; value = 195

; And of course, most human-only command-based ChangeStates also belong
; in State -1.  For example, this move would only be performable by a human:
;
; [State -1, Death Before Dishonor]
; type = ChangeState
; trigger1 = (command = "suicide")
; trigger1 = !var(0) ; (Or use "var(59)<1" if you've chosen not to
;                    ; use the Simplifier variable/controller.)
; trigger1 = ctrl
; trigger1 = (StateType != A)
; trigger1 = (MoveType = I)
; value = {suicide state number}

;---------------------------------------------------------------------------
;super soco cruzado
[State -1, super soco cruzado]
type = ChangeState
value = 3100
triggerall = !var(0)
triggerall = (command = "super soco cruzado") && (!Pos Y)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 233 && animelemtime(14) > 1 && animelemtime(18) < 0
trigger3 = stateno = 235 && animelemtime(5) > 1 && animelemtime(7) < 0
trigger4 = stateno = 250 && animelemtime(14) > 1 && animelemtime(18) < 0
trigger5 = stateno = 260 && animelemtime(8) > 1 && animelemtime(20) < 0
trigger6 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;super soco
[State -1, super soco]
type = ChangeState
value = 3000
triggerall = !var(0)
triggerall = (command = "super soco") && (!Pos Y)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 233 && animelemtime(14) > 1 && animelemtime(18) < 0
trigger3 = stateno = 235 && animelemtime(5) > 1 && animelemtime(7) < 0
trigger4 = stateno = 250 && animelemtime(14) > 1 && animelemtime(18) < 0
trigger5 = stateno = 260 && animelemtime(8) > 1 && animelemtime(20) < 0
trigger6 = stateno = 6000 && animelemtime(28) > 1 && animelemtime(34) < 0
trigger7 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;super soco X
[State -1, super soco X]
type = ChangeState
value = 3200
triggerall = !var(0)
triggerall = (command = "super soco X") && (!Pos Y)
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Custom Combo Start!
;[State -1, Vism]
type = ChangeState
value = 1000
triggerall = !var(0)
triggerall = power > 1000 && var(15) = 0
trigger1 = command = "x" && command = "y"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;BUSTER TIRO AEREO
[State -1, BUSTER TIRO AEREO]
type = ChangeState
value = 2002
triggerall = !var(0)
triggerall = (command = "BUSTER TIRO AEREO")
triggerall = StateNo != 700
trigger1 = statetype = A
trigger2 = stateno = 1350 ;Air blocking
trigger3 = (stateno = 2002) && animelemtime(16) > 1 && animelemtime(23) < 10
trigger2 = (statetype = A) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;BUSTER TIRO
[State -1, BUSTER TIRO]
type = ChangeState
value = 2000
triggerall = !var(0)
triggerall = (command = "BUSTER TIRO") && (!Pos Y)
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 10
trigger3 = (stateno = 2000) && animelemtime(10) > 1 && animelemtime(13) < 10
trigger4 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;esquiva
[State -1, esquiva]
type = ChangeState
value = 30
triggerall = !var(0)
trigger1 = command = "esquiva"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(0)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd Air
[State -1, Run Fwd]
type = ChangeState
value = 4000
triggerall = !var(0)
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(0)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back Air
[State -1, Run Back]
type = ChangeState
value = 4005
triggerall = !var(0)
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;gancho
[State -1, gancho]
type = ChangeState
value = 280
triggerall = !var(0)
triggerall = (command = "gancho") && (!Pos Y)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 240) && time > 9
trigger4 = stateno = 233 && animelemtime(14) > 1 && animelemtime(18) < 0
trigger5 = stateno = 235 && animelemtime(5) > 1 && animelemtime(7) < 0
trigger6 = stateno = 250 && animelemtime(14) > 1 && animelemtime(18) < 0
trigger7 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;sequencia soco forte
[State -1, sequencia soco forte]
type = ChangeState
value = 260
triggerall = !var(0)
triggerall = (command = "sequencia soco forte") && (!Pos Y)
trigger1 = stateno = 250 && animelemtime(14) > 1 && animelemtime(18) < 0
trigger2 = stateno = 235 && animelemtime(5) > 1 && animelemtime(7) < 0
trigger3 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;sequencia soco fraco
[State -1, sequencia soco fraco]
type = ChangeState
value = 250
triggerall = !var(0)
triggerall = (command = "sequencia soco fraco") && (!Pos Y)
trigger1 = movehit && stateno = 240
trigger2 = movehit && stateno = 233
trigger3 = stateno = 270 && animelemtime(21) > 1 && animelemtime(45) < 0
trigger3 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;helicoptero aereo
[State -1, helicoptero aereo]
type = ChangeState
value = 275
triggerall = !var(0)
triggerall = (command = "helicoptero aereo")
trigger1 = statetype = A
trigger2 = stateno = 1350 ;Air blocking
trigger2 = (statetype = A) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;helicoptero
[State -1, helicoptero]
type = ChangeState
value = 270
triggerall = !var(0)
triggerall = (command = "helicoptero") && (!Pos Y)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 240) && time > 9
trigger4 = stateno = 233 && animelemtime(14) > 1 && animelemtime(18) < 0
trigger5 = stateno = 235 && animelemtime(5) > 1 && animelemtime(7) < 0
trigger6 = stateno = 260 && animelemtime(8) > 1 && animelemtime(20) < 0
trigger2 = (statetype = A) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;pedalada
[State -1, pedalada]
type = ChangeState
value = 650
triggerall = !var(0)
triggerall = (command = "pedalada")
trigger1 = statetype = A
trigger2 = stateno = 1350 ;Air blocking
trigger2 = (statetype = A) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;sequencia chute forte
[State -1, sequencia chute forte]
type = ChangeState
value = 235
triggerall = !var(0)
triggerall = (command = "sequencia chute forte") && (!Pos Y)
trigger1 = stateno = 233 && animelemtime(14) > 1 && animelemtime(18) < 0
trigger2 = stateno = 260 && animelemtime(8) > 1 && animelemtime(20) < 0
trigger2 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;sequencia chute fraco
[State -1, sequencia chute fraco]
type = ChangeState
value = 233
triggerall = !var(0)
triggerall = (command = "sequencia chute fraco") && (!Pos Y)
trigger1 = movehit && stateno = 230
trigger2 = movehit && stateno = 250
trigger3 = stateno = 270 && animelemtime(21) > 1 && animelemtime(45) < 0
trigger4 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;Kung Fu Throw
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = !var(0)
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
;Stand CHUTE
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !var(0)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 10
trigger3 = (stateno = 230) && time > 7
trigger4 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;Standing SOCO
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = !var(0)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 240) && time > 9
trigger4 = (statetype = S) && movecontact && (Var(15) > 0)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Jump CHUTE
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !var(0)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger3 = (statetype = A) && movecontact && (Var(15) > 0)
