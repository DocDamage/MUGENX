; Zingi's CMD file.

;-| Super Motions |--------------------------------------------------------

[Command]
name = "Zingi-Cho1"
command = ~D, F, D, F, x
time = 20

[Command]
name = "Zingi-Cho2"
command = ~D, F, D, F, y
time = 20

[Command]
name = "Zingi-Cho3"
command = ~D, F, D, F, z
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, B, D, B, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, B, D, B, y
time = 20

[Command]
name = "hyperrolling"
command = ~D, B, D, B,x
time = 20

[Command]
name = "hyperrolling"
command = ~D, B, D, B,y
time = 20

[Command]
name = "hyperrolling"
command = ~D, B, D, B,z
time = 20

[Command]
name = "roll-Cho"
command = ~D, F, D, F, a
time = 20

[Command]
name = "roll-Cho"
command = ~D, F, D, F, b
time = 20

[Command]
name = "roll-Cho"
command = ~D, F, D, F, c
time = 20

;-| Special Motions |------------------------------------------------------
;-----------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_z"
command = ~F, D, DF, z

;-----------------------------------
[Command]
name = "HCF_x"
command = ~B, DB, D, DF, F, x

[Command]
name = "HCF_y"
command = ~B, DB, D, DF, F, y

[Command]
name = "HCF_z"
command = ~B, DB, D, DF, F, z

;-----------------------------------
[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

;-----------------------------------
[Command]
name = "QCF_a"
command = D, DF, F, a

[Command]
name = "QCF_b"
command = D, DF, F, b

[Command]
name = "QCF_c"
command = D, DF, F, c

[Command]
name = "rolling1"
command = ~30$B,F,x

[Command]
name = "rolling2"
command = ~30$B,F,y

[Command]
name = "rolling3"
command = ~30$B,F,z

[Command]
name = "rolling4"
command = ~30$B,F,a

[Command]
name = "rolling5"
command = ~30$B,F,b

[Command]
name = "rolling6"
command = ~30$B,F,c


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
name = "xyz"
command = x+y+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "bc"
command = b+c
time = 1

[Command]
name = "ac"
command = a+c
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

;-| Single Button |---------------------------------------------------------
[Command]
name = "jump"
command = /F
time = 1

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
name = "hold_start"
command = /s
time = 1

[Command]
name = "forward"
command = F
time = 1

;-| Hold Button |-----------------------------------------------------------

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "holdp"
command = /$x
time = 1

[Command]
name = "holdp"
command = /$y
time = 1

[Command]
name = "holdp"
command = /$z
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]  
name = "holdDF";Required (do not remove)  
command = /$DF  
time = 1

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
;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 10200
triggerall = command = "Zingi-Cho3"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 10100
triggerall = command = "Zingi-Cho2"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 10000
triggerall = command = "Zingi-Cho1"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
; Hyper Rolling 1
[State -1, sm]
type = ChangeState
value = 4000
triggerall = palno > 6
triggerall = power >= 1000
trigger1 = command = "hyperrolling"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Hyper Rolling 2
;[State -1, sm]
;type = ChangeState
;value = 3500
;triggerall = palno > 6
;triggerall = power >= 1000
;trigger1 = command = "roll-Cho"
;trigger1 = statetype = A
;trigger1 = ctrl

;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
; Â¡±â ¾àÃ¶Åð·Ñ¸µ
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 3000
triggerall = palno > 6
triggerall = command = "rolling1" || command = "HCF_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
; Â¡±â ÁßÃ¶Åð·Ñ¸µ
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 3100
triggerall = palno > 6
triggerall = command = "rolling2" || command = "HCF_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
; Â¡±â °­Ã¶Åð·Ñ¸µ
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 3200
triggerall = palno > 6
triggerall = command = "rolling3" || command = "HCF_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
; Â¡±â ¾àÃ¶Åð
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1500
triggerall = palno < 7
triggerall = command = "QCF_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
; Â¡±â ÁßÃ¶Åð
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 1600
triggerall = palno < 7
triggerall = command = "QCF_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
; Â¡±â °­Ã¶Åð
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1700
triggerall = palno < 7
triggerall = command = "QCF_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
; Â¡±â ¾à°¡ºÎÁÂ
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 2500
triggerall = palno > 6
triggerall = command = "QCF_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
; Â¡±â Áß°¡ºÎÁÂ
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 2600
triggerall = palno > 6
triggerall = command = "QCF_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
; Â¡±â °­°¡ºÎÁÂ
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 2700
triggerall = palno > 6
triggerall = command = "QCF_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
; Â¡±â ¾àÂï±â
[State -1, Light Kung Fu Upper]
type = ChangeState
value = 2000
triggerall = command = "upper_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
; Â¡±â ÁßÂï±â
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 2100
triggerall = command = "upper_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
; Â¡±â °­Âï±â
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 2200
triggerall = command = "upper_z"
triggerall = power >= 330
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
; Â¡±â ¾à¾î±ú
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = palno < 7
triggerall = command = "QCF_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
; Â¡±â Áß¾î±ú
[State -1, Middle Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = palno < 7
triggerall = command = "QCF_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
; Â¡±â °­¾î±ú
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = palno < 7
triggerall = command = "QCF_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
;trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = stateno != [240,250]
trigger2 = stateno != 460
trigger2 = movecontact

;---------------------------------------------------------------------------
;»ï°¢¶Ù±â
[State -1]
type = ChangeState
value = 900
Triggerall = backEdgeDist < 5
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = stateno != 900
trigger1 = command = "jump"

;===========================================================================
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

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 196
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 300
triggerall = command = "xyz"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
;“Š‚°
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "z" || command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 9
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 12
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, Kung Fu Throw]
type = ChangeState
value = 850
triggerall = command = "c" || command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 9
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 12
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
;Sliding
[State -1, Sliding]
type = ChangeState
value = 460
triggerall = palno < 7
triggerall = command = "holdDF"
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger2 = time > 5

;---------------------------------------------------------------------------
;Sliding
[State -1, Sliding]
type = ChangeState
value = 460
triggerall = palno > 6
triggerall = command = "holdDF"
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger2 = time > 5

;===========================================================================
;---------------------------------------------------------------------------
; Jump Down Kicks
[state -1, stonize]
type = changestate
trigger1 = ctrl = 1
triggerall = palno < 7
triggerall = command = "holddown"
triggerall = command = "ab" || command = "bc" || command = "ac"
triggerall = statetype = a
trigger2 = stateno = 610
trigger2 = time > 5
trigger2 = movecontact = 1 
trigger2 = p2statetype = a
value = 660

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Stand Middle Punch
[State -1, Stand Middle Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Stand Middle Front Punch
[State -1, Stand Middle Front Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
;trigger2 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;Stand Strong Front Punch
[State -1, Stand Strong Front Punch]
type = ChangeState
value = 225
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger4 = time = [6,7]
trigger5 = stateno = 215
trigger5 = movecontact = 1
trigger6 = stateno = 220
trigger6 = movecontact = 1
trigger6 = time = [7,8]

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Stand Middle Kick
[State -1, Stand Middle Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Stand Middle Front Kick
[State -1, Stand Middle Front Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 230
trigger4 = movecontact = 1


;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Middle Punch
[State -1, Crouching Middle Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = stateno = 400
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 220
trigger6 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Middle Kick
[State -1, Crouching Middle Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
trigger3 = stateno = 430
trigger3 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 455
triggerall = palno > 6
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)


;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Middle Punch
[State -1, Jump Middle Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick - neutral
[State -1, Jump Light Kick Neutral]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 635
triggerall = command = "a"
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Middle Kick
[State -1, Jump Middle Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact


