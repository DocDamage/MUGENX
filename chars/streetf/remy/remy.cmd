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
name = "Light of Justice"
command = ~D, F, x+y
time = 20

[Command]
name = "Light of Justice"
command = ~D, F, x+z
time = 20

[Command]
name = "Light of Justice"
command = ~D, F, z+y
time = 20

[Command]
name = "Super Light of Virtue"
command = ~D, B, x+y
time = 20

[Command]
name = "Super Light of Virtue"
command = ~D, B, x+z
time = 20

[Command]
name = "Super Light of Virtue"
command = ~D, B, z+y
time = 20

[Command]
name = "Supreme Rising Rage Flash"
command = ~D, B, a+b
time = 20

[Command]
name = "Supreme Rising Rage Flash"
command = ~D, B, a+c
time = 20

[Command]
name = "Supreme Rising Rage Flash"
command = ~D, B, b+c
time = 20

[Command]
name = "Blue Nocturne"
command = ~D, F, a+b
time = 20

[Command]
name = "Blue Nocturne"
command = ~D, F, a+c
time = 20

[Command]
name = "Blue Nocturne"
command = ~D, F, b+c
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "Cold Blue Kick_A"
command = ~F, D, B, a
time = 20

[Command]
name = "Cold Blue Kick_B"
command = ~F, D, B, b
time = 20

[Command]
name = "Cold Blue Kick_C"
command = ~F, D, B, c
time = 20

[Command]
name = "Rising Rage Flash_A"
command = ~D, B, a
time = 15

[Command]
name = "Rising Rage Flash_B"
command = ~D, B, b
time = 15

[Command]
name = "Rising Rage Flash_C"
command = ~D, B, c
time = 15

[Command]
name = "Light of Virtue_X"
command = ~20$B, F, x
time = 20

[Command]
name = "Light of Virtue_Y"
command = ~20$B, F, y
time = 5

[Command]
name = "Light of Virtue_Z"
command = ~20$B, F, z
time = 5

[Command]
name = "Low Light of Virtue_A"
command = ~20$B, F, a
time = 5

[Command]
name = "Low Light of Virtue_B"
command = ~20$B, F, b
time = 5

[Command]
name = "Low Light of Virtue_C"
command = ~20$B, F, c
time = 5

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
name = "recoveryroll"
command = ~B, DB, D, x

[Command]
name = "recoveryroll"
command = ~B, DB, D, y

[Command]
name = "recoveryroll"
command = ~B, DB, D, z

[Command]
name = "recoveryroll"
command = ~B, DB, D, a

[Command]
name = "recoveryroll"
command = ~B, DB, D, b

[Command]
name = "recoveryroll"
command = ~B, DB, D, c

[command]
name = "superjump"
command = ~D, U
time = 10

[command]
name = "superjump"
command = ~D, UF
time = 10

[command]
name = "superjump"
command = ~D, UB
time = 10

[command]
name = "throw"
command = ~x+a
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

[command]
name = "fwd_b"
command = /$F, b
time = 5

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
name = "fwd"
command = $F
time = 1

[Command]
name = "down"
command = $D
time = 1

[Command]
name = "back"
command = $B
time = 1

[Command]
name = "up"
command = $U
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
name = "parryH"
command = F
time = 1

[Command]
name = "parryL"
command = D
time = 1

[Statedef -1]

;---------------------------------------------------------------------------
; Cold Blue Kick
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "Light of Justice"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [1500,1602]
trigger2 = time >= 5
trigger3 = stateno = [200,450]
trigger3 = time >= 5

; Cold Blue Kick
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 4500
triggerall = command = "Super Light of Virtue"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Cold Blue Kick
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 3100
triggerall = command = "Supreme Rising Rage Flash"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [1500,1602]
trigger2 = time >= 5
trigger3 = stateno = [200,450]
trigger3 = time >= 5

;--------------------------------------
; Cold Blue Kick
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 3400
triggerall = command = "Supreme Rising Rage Flash"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = time >= 5
trigger3 = stateno = [1000,2008]
trigger3 = time >= 5

;---------------------------------------------------------------------------
; Cold Blue Kick
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 3200
triggerall = command = "Blue Nocturne"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [1500,1602]
trigger2 = time >= 5
trigger3 = stateno = [200,450]
trigger3 = time >= 5

;---------------------------------------------------------------------------
; Cold Blue Kick
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "Cold Blue Kick_A"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

;---------------------------------------------------------------------------
; Cold Blue Kick
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1001
triggerall = command = "Cold Blue Kick_B"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

;---------------------------------------------------------------------------
; Cold Blue Kick
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1002
triggerall = command = "Cold Blue Kick_C"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

;---------------------------------------------------------------------------
; Cold Blue Kick
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "Cold Blue Kick_A"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

;---------------------------------------------------------------------------
; Cold Blue Kick
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1001
triggerall = command = "Cold Blue Kick_B"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

;---------------------------------------------------------------------------
; Cold Blue Kick
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1002
triggerall = command = "Cold Blue Kick_C"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

;---------------------------------------------------------------------------
; Rising Rage Flash
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "Rising Rage Flash_A"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Rising Rage Flash
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 2001
triggerall = command = "Rising Rage Flash_B"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Rising Rage Flash
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 2002
triggerall = command = "Rising Rage Flash_C"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Rising Rage Flash
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 2006
triggerall = command = "Rising Rage Flash_A"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

;---------------------------------------------------------------------------
; Rising Rage Flash
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 2007
triggerall = command = "Rising Rage Flash_B"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

;---------------------------------------------------------------------------
; Rising Rage Flash
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 2008
triggerall = command = "Rising Rage Flash_C"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,650]
trigger2 = movecontact

;---------------------------------------------------------------------------
; Light of Virtue
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1500
triggerall = NumHelper(1503) = 0
triggerall = NumHelper(1504) = 0  
triggerall = NumHelper(1505) = 0  
triggerall = command = "Light of Virtue_X"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

;---------------------------------------------------------------------------
; Light of Virtue
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1501
triggerall = NumHelper(1503) = 0
triggerall = NumHelper(1504) = 0  
triggerall = NumHelper(1505) = 0   
triggerall = command = "Light of Virtue_Y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

;---------------------------------------------------------------------------
; Light of Virtue
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1502
triggerall = NumHelper(1503) = 0
triggerall = NumHelper(1504) = 0  
triggerall = NumHelper(1505) = 0  
triggerall = command = "Light of Virtue_Z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

;---------------------------------------------------------------------------
; Light of Virtue
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1600
triggerall = NumHelper(1503) = 0
triggerall = NumHelper(1504) = 0  
triggerall = NumHelper(1505) = 0    
triggerall = command = "Low Light of Virtue_A"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

;---------------------------------------------------------------------------
; Light of Virtue
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1601
triggerall = NumHelper(1503) = 0
triggerall = NumHelper(1504) = 0  
triggerall = NumHelper(1505) = 0  
triggerall = command = "Low Light of Virtue_B"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

;---------------------------------------------------------------------------
; Light of Virtue
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1602
triggerall = NumHelper(1503) = 0
triggerall = NumHelper(1504) = 0  
triggerall = NumHelper(1505) = 0 
triggerall = command = "Low Light of Virtue_C"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;Œã‘Þƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;“Š‚°
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "z"  
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = (p2statetype != A) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = (p2statetype != A) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;—§‚¿Žãƒpƒ“ƒ`
[State -1, Stand Light Punch]
type = ChangeState
value = IfElse(P2BodyDist X <= 20,200,205)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Medium Punch
;—§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = IfElse(P2BodyDist X <= 20,210,215)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong Punch
;-§‚¿‹-ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = IfElse(P2BodyDist X <= 20,220,225)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Kick
;—§‚¿ŽãƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
value = IfElse(P2BodyDist X <= 20,265,230)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Strong Kick
;-§‚¿‹-ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = (command = "b") && (command = "holdfwd")
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Strong Kick
;-§‚¿‹-ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = IfElse(P2BodyDist X <= 20,260,240)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Strong Kick
;-§‚¿‹-ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = IfElse(P2BodyDist X <= 20,250,255)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;‚µ‚á‚ª‚ÝŽãƒpƒ“ƒ`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;‚µ‚á‚ª‚Ý‹­ƒpƒ“ƒ`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 430
trigger3 = movecontact

;---------------------------------------------------------------------------
;Crouching Strong Punch
;‚µ‚á‚ª‚Ý‹-ƒpƒ“ƒ`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = movecontact
trigger3 = stateno = 440
trigger3 = movecontact

;---------------------------------------------------------------------------
;Crouching Light Kick
;‚µ‚á‚ª‚ÝŽãƒLƒbƒN
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouching Strong Kick
;‚µ‚á‚ª‚Ý‹­ƒLƒbƒN
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = movecontact
trigger3 = stateno = 430
trigger3 = movecontact

;---------------------------------------------------------------------------
;Crouching Strong Kick
;‚µ‚á‚ª‚Ý‹-ƒLƒbƒN
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 440
trigger2 = movecontact
trigger3 = stateno = 420
trigger3 = movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
;‹ó’†Žãƒpƒ“ƒ`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Punch
;‹ó’†Žãƒpƒ“ƒ`
[State -1, Jump Light Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact
trigger3 = stateno = 640
trigger3 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
;‹ó’†‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
;‹ó’†‹-ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640
trigger2 = movecontact
trigger3 = stateno = 620
trigger3 = movecontact

;----------------------------------------------------------------------------
; Recovery Roll
[State -1, Falling]
type = VarSet
triggerall = (StateNo = 5030) || (StateNo = 5035) || (StateNo = 5050) || (StateNo = 5071)
trigger1 = ((Command = "recoveryroll") || (Command = "recoveryroll")) && (Alive = 1)
v = 20
value = ifelse((Command = "recoveryroll"),1,2)

[State -1, Rolling]
type = ChangeState
value = 1700
triggerall = Var(20) = [1,2] 
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;-------------------------------
;Follow Up After Launcher
[state -1]
type = changestate
value = 9800
triggerall = command = "holdup"
trigger1 = movehit
trigger1 = stateno = 420

;------------------------------
;Super Jump
[state -1]
type = changestate
value = 9800
triggerall = command = "superjump"
trigger1 = statetype != a
trigger1 = ctrl


