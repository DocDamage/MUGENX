;----------------------------------------------
;CMD FILE FOR KEI
;(C)2002-2003 by Rikard/Rick Pk Liquid Snake
;----------------------------------------------


;-| HSDM(!!!) Motions |---------------------------------------------------------
[Command]
name = "Shut_Your_Mouth!_HSDM"
command = ~B,F,D,B,a+b
time = 35


;-| DM/SDM Motions |---------------------------------------------------------

[Command]
name = "Burnt_Offerings_DM"
command = ~D,B,D,B,x
time = 30

[Command]
name = "Burnt_Offerings_DM"
command = ~D,B,D,B,y
time = 30

[Command]
name = "Howling_Fury_SDM"
command = ~D,B,D,F,x+y
time = 30

[Command]
name = "Howling_Fury_DM"
command = ~D,B,D,F,x
time = 30

[Command]
name = "Howling_Fury_DM"
command = ~D,B,D,F,y
time = 30

[Command]
name = "Dawn_Of_Victory_DM"
command = ~D,B,D,B,a
time = 30

[Command]
name = "Dawn_Of_Victory_DM"
command = ~D,B,D,B,b
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "stained_glass_cross_a"
command = ~F,D,DF,a
time = 15

[Command]
name = "stained_glass_cross_b"
command = ~F,D,DF,b
time = 15

[Command]
name = "angel_claw_X"
command = ~D,DF,F,x
time = 15

[Command]
name = "angel_claw_Y"
command = ~D,DF,F,y
time = 15

[Command]
name = "wing_fall_a"
command = ~D,DF,F,a
time = 15

[Command]
name = "wing_fall_b"
command = ~D,DF,F,b
time = 15

[Command]
name = "1776_x"
command = ~D,DB,B,x
time = 15

[Command]
name = "1776_y"
command = ~D,DB,B,y
time = 15

[Command]
name = "mind_on_fire_x"
command = ~F,D,DF,x
time = 15

[Command]
name = "mind_on_fire_y"
command = ~F,D,DF,y
time = 15

[Command]
name = "scream_of_anger_a"
command = ~30$B,F,a
time = 15

[Command]
name = "scream_of_anger_b"
command = ~30$B,F,b
time = 15

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
name = "powerup"
command = a+b
time = 1

[Command]
name = "holdpowerup"
command = /$a+b
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
name = "c"
command = b+y
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
name = "dodge"
command = z
time = 1

[Command]
name = "dodge"
command = x+a 
time = 2

[Command]
name = "start"
command = s
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdfwd2";Required (do not remove)
command = /F
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
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$b
time = 1

[Command]
name = "holdsuper"
command = /$x
time = 1

[Command]
name = "holdsuper"
command = /$y
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

;---------------------------------------------------------------------------
;Shut Your Mouth! HSDM
[State -1, SYM]
type = ChangeState
value = 3500
triggerall = command = "Shut_Your_Mouth!_HSDM"
triggerall = (power >= 2000) && (life <= 300)
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Burnt Offerings DM
[State -1, SBO]
type = ChangeState
value = 3600
triggerall = command = "Burnt_Offerings_DM"
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = power >= 1000
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
trigger2 = stateno != 250
trigger2 = stateno != 440
trigger2 = stateno != 220
trigger3 = power >= 2000
trigger3 = stateno = [1150,1160]
trigger3 = movehit
trigger4 = power >= 2000
trigger4 = (stateno = [1250,1260]) && (time < 20)
trigger4 = (movehit) && (hitcount = 1)

;---------------------------------------------------------------------------
;Dawn of victory DM
[State -1, DOV]
type = ChangeState
value = 3100
triggerall = command = "Dawn_Of_Victory_DM"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
trigger2 = stateno != 250
trigger2 = stateno != 440
trigger2 = stateno != 220
trigger3 = power >= 2000
trigger3 = stateno = [1150,1160]
trigger3 = movehit
trigger4 = power >= 2000
trigger4 = (stateno = [1250,1260]) && (time < 20)
trigger4 = (movehit) && (hitcount = 1)

;---------------------------------------------------------------------------
;Howling Fury SDM
[State -1, SHF]
type = ChangeState
value = 3015
triggerall = command = "Howling_Fury_SDM"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
trigger2 = stateno != 250
trigger2 = stateno != 440
trigger2 = stateno != 220
;trigger3 = projcontact(1000) = 1

;---------------------------------------------------------------------------
;Howling Fury DM
[State -1, HF]
type = ChangeState
value = 3000
triggerall = command = "Howling_Fury_DM"
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = power >= 1000
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
trigger2 = stateno != 250
trigger2 = stateno != 440
trigger2 = stateno != 220
trigger3 = power >= 2000
trigger3 = stateno = [1150,1160]
trigger3 = movehit
trigger4 = power >= 2000
trigger4 = (stateno = [1250,1260]) && (time < 20)
trigger4 = (movehit) && (hitcount = 1)

;---------------------------------------------------------------------------
;Goddess of the sadman
[State -1, GOTS X]
type = ChangeState
value = 1200
triggerall = command = "1776_x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = A,NA
trigger2 = movecontact
trigger2 = stateno != 650

[State -1, GOTS Y]
type = ChangeState
value = 1210
triggerall = command = "1776_y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = A,NA
trigger2 = movecontact
trigger2 = stateno != 650
    

;---------------------------------------------------------------------------
;1776
[State -1, 1776 X]
type = ChangeState
value = 1150
triggerall = command = "1776_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
trigger2 = stateno != 250
trigger2 = stateno != 440

[State -1, 1776 Y]
type = ChangeState
value = 1160
triggerall = command = "1776_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
trigger2 = stateno != 250
trigger2 = stateno != 440

;---------------------------------------------------------------------------
;Stained glass cross
[State -1, SGC A]
type = ChangeState
value = 1100
triggerall = command = "stained_glass_cross_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
trigger2 = stateno != 250
trigger2 = stateno != 440

[State -1, SGC B]
type = ChangeState
value = 1110
triggerall = command = "stained_glass_cross_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
trigger2 = stateno != 250
trigger2 = stateno != 440


;---------------------------------------------------------------------------
;Wing Fall
[State -1, Wing Fall A]
type = ChangeState
value = 1050
triggerall = command = "wing_fall_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
trigger2 = stateno != 250
trigger2 = stateno != 440

[State -1, Wing Fall A]
type = ChangeState
value = 1060
triggerall = command = "wing_fall_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
trigger2 = stateno != 250
trigger2 = stateno != 440

;---------------------------------------------------------------------------
;Scream Of Anger
[State -1, Screan of Anger A]
type = ChangeState
value = 1300
triggerall = command = "scream_of_anger_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
trigger2 = stateno != 250
trigger2 = stateno != 440

[State -1, Screan of Anger B]
type = ChangeState
value = 1310
triggerall = command = "scream_of_anger_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
trigger2 = stateno != 250
trigger2 = stateno != 440

;---------------------------------------------------------------------------
;Mind on fire
[State -1, MOF]
type = ChangeState
value = 1250
triggerall = command = "mind_on_fire_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
trigger2 = stateno != 250
trigger2 = stateno != 440

[State -1, MOF]
type = ChangeState
value = 1260
triggerall = command = "mind_on_fire_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
trigger2 = stateno != 250
trigger2 = stateno != 440

;---------------------------------------------------------------------------
;Angel Claw
[State -1, AC]
type = ChangeState
value = 1000
triggerall = command = "angel_claw_X"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
trigger2 = stateno != 250
trigger2 = stateno != 440

[State -1, ACY]
type = ChangeState
value = 1010
triggerall = command = "angel_claw_Y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC,NA
trigger2 = movecontact
trigger2 = stateno != 250
trigger2 = stateno != 440

;---------------------------------------------------------------------------
;Throws
[State -1, Throw Y]
type = ChangeState
value = 850
triggerall = P2bodydist X <= 2
triggerall = p2movetype != H
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = statetype = S
triggerall = p2stateno != 5120
triggerall = ctrl
trigger1 = stateno != 100
trigger1 = (command = "y") && (command = "holdfwd")
trigger2 = stateno != 105
trigger2 = (command = "y") && (command = "holdback")

[State -1, Throw B]
type = ChangeState
value = 800
triggerall = P2bodydist X <= 2
triggerall = p2movetype != H
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = statetype = S
triggerall = p2stateno != 5120
triggerall = ctrl
trigger1 = stateno != 100
trigger1 = (command = "b") && (command = "holdfwd")
trigger2 = stateno != 105
trigger2 = (command = "b") && (command = "holdback")


;---------------------------------------------------------------------------
;Power Build
[State -1, Power Up]
type = ChangeState
value = 750
triggerall = command = "powerup"
triggerall = power < 3000
triggerall = var(10) != 1 ;Not accesible by AI
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno !=751


;---------------------------------------------------------------------------
;Backwards Roll
[State -1, Roll Back]
type = ChangeState
value = 701
triggerall = command = "dodge"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 150 || stateno = 152
trigger2 = power >= 1000

;---------------------------------------------------------------------------
;Forward Roll
[State -1, Roll Forward]
type = ChangeState
value = 700
triggerall = command = "dodge"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 150 || stateno = 152
trigger2 = power >= 1000

;KnockDown Attack
[State -1, Roll Forward]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = var(10) != 1 ;Not accesible by AI
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 150 || stateno = 152
trigger2 = power >= 1000

;---------------------------------------------------------------------------
;Standing Light Punch
[State -1, SLPunch]
type = ChangeState
value = 200+5*(p2bodydist X < 4)
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && (time > 10)
trigger3 = (stateno = 205) && (time > 6)
trigger4 = (stateno = 400) && (time > 3) && (command != "holddown")
 
;Standing Strong Punch
[State -1, SSPunch]
type = ChangeState
value = 210+5*(p2bodydist X < 5)
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl

;Fw+A
[State -1, Command Attack 1]
type = ChangeState
value = 220
triggerall = (command = "a") && (command = "holdfwd2")
triggerall = command != "stained_glass_cross_a"
triggerall = command != "wing_fall_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA
trigger2 = (stateno !=250) &&  (stateno != [220,221]) && (stateno != 430)
trigger2 = movecontact

;Standing Light Kick
[State -1, SLKICK]
type = ChangeState
value = 230+5*(p2bodydist X < 5)
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && (time > 7)
trigger3 = (stateno = 235) && (time > 6)
trigger4 = (stateno = 205) && (time > 4)
trigger4 = (stateno = 400) && (time > 3) && (command != "holddown")

;Standing Strong Kick

[State -1, SSKICK]
type = ChangeState
value = 240+5*(p2bodydist X < 5)
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, CSPUNCH]
type = ChangeState
value = 400
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && (time > 3)
trigger3 = (stateno = 430) && (time > 5)

;Crouching Strong Punch
[State -1, CSPUNCH]
type = ChangeState
value = 410
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl

;Crouching Light Kick
[State -1, CLKICK]
type = ChangeState
value = 430
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl

;Crouching Strong Kick
[State -1, CSKICK]
type = ChangeState
value = 440
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jumping Light Punch
[State -1, CSPUNCH]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Jumping Strong Punch
[State -1, CSPUNCH]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;Jumping Light Kick
[State -1, CLKICK]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;Jumping Strong Kick
[State -1, CSKICK]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;JumpingKnockDown Attack
[State -1, Knock]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
trigger1 = command = "start"
trigger1 = statetype = S
trigger1 = ctrl
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

;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------
