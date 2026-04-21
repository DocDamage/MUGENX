;6-Button-Pad
;
;-| Super Motions |--------------------------------------------------------
; QCBHCF

[Command]
name = "QCFQCF_a"
command = ~D, DF, D, DF, a
time = 25

[Command]
name = "QCFQCF_z"
command = ~D, DF, D, DF, z
time = 25

[Command]
name = "QCFQCF_y"
command = ~D, DF, D, DF, y
time = 25

[Command]
name = "QCFQCF_x"
command = ~D, DF, D, DF, x
time = 25

;-| Special Motions |------------------------------------------------------
;-----------------
; QCF
[Command]
name = "QCF_x"
command = ~D, DF, x
time = 15

[Command]
name = "QCF_y"
command = ~D, DF, y
time = 15

[Command]
name = "QCF_xy"
command = ~D, DF, x+y
time = 15

[Command]
name = "QCF_z"
command = ~D, DF, z
time = 15

[Command]
name = "QCF_a"
command = ~D, DF, a
time = 15

[Command]
name = "QCF_b"
command = ~D, DF, b
time = 15

[Command]
name = "QCF_c"
command = ~D, DF, c
time = 15

[Command]
name = "keyring"
command = ~DF, F, B, y
time = 15

;-----------------
; QCB
[Command]
name = "QCB_a"
command = ~D, DB, a
time = 15

[Command]
name = "QCB_b"
command = ~D, DB, b
time = 15

[Command]
name = "QCB_xy"
command = ~D, DB, x+y
time = 15

[Command]
name = "QCB_c"
command = ~D, DB, c
time = 15

[Command]
name = "QCB_x"
command = ~D, DB, x
time = 15

[Command]
name = "QCB_y"
command = ~D, DB, y
time = 15

[Command]
name = "QCB_z"
command = ~D, DB, z
time = 15

[Command]
name = "QCD_xy"
command = ~DB, D, x + y
time = 15

;-----------------
; Uppercut
[Command]
name = "uppercut_a"
command = ~F, D, DF, a
time = 20

[Command]
name = "uppercut_b"
command = ~F, D, DF, b
time = 20

[Command]
name = "uppercut_c"
command = ~F, D, DF, c
time = 20

[Command]
name = "uppercut_x"
command = ~F, D, DF, x
time = 20

[Command]
name = "uppercut_y"
command = ~F, D, DF, y
time = 20

[Command]
name = "uppercut_z"
command = ~F, D, DF, z
time = 20

[Command]
name = "MIRROR_a"
command = ~B, D, DB, a
time = 20

[Command]
name = "MIRROR_z"
command = ~B, D, DB, z
time = 20

[Command]
name = "MIRROR_y"
command = ~B, D, DB, y
time = 20

;CPU_AI
[Command]
name = "CPU_AI_Z"
command = ~U, UF, U, UB, U, UF, U, UB, U, UF, U, UB, U, UF, U, UB, U, z
time = 5

[Command]
name = "CPU_AI_Y"
command = ~U, UF, U, UB, U, UF, U, UB, U, UF, U, UB, U, UF, U, UB, U, y
time = 5

[Command]
name = "CPU_AI_X"
command = ~U, UF, U, UB, U, UF, U, UB, U, UF, U, UB, U, UF, U, UB, U, x
time = 5

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "bx"
command = b+x
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "yz"
command = y+z
time = 1

[Command]
name = "explo"
command = x+y+z
time = 1

;-| Dir + Button |---------------------------------------------------------
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
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "downfwd_z"
command = /DF,z
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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
name = "holdup";Required (do not remove)
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
name = "holdx"
command = /$x
time = 1

[Command]
name = "pounce"
command = /$z
time = 1

[Command]
name = "holdab"
command = /$a+b
time = 1

[Command]
name = "holdxy"
command = /$x+y
time = 1

[Command]
name = "charge"
command = /$x+y
time = 1

[Command]
name = "ESCAPEFWD"
command = F
time = 1

[Command]
name = "ESCAPEBACK"
command = B
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
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
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Roll_Fwd
[State -1]
type = ChangeState
value = 7000
trigger1 = command = "ESCAPEFWD" && canrecover = 1
trigger1 = stateno = 5100

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Roll_Back
[State -1]
type = ChangeState
value = 7100
trigger1 = command = "ESCAPEBACK" && canrecover = 1
trigger1 = stateno = 5100

;---------------------------------------------------------------------------
;Waza#1:Swallow_Flash
[State -1]
type = ChangeState
value = 4000
triggerall = command = "QCFQCF_y"
triggerall = power >= 1000 || var(30) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = A
trigger2 = ctrl = 1
trigger3 = stateno = 290 && time > 7
trigger4 = stateno = 6600 && time > 7

; WAZA#2:Flashback_Flash_Blast
[State -1]
type = ChangeState
value = 4100
triggerall = command = "QCFQCF_x"
triggerall = power >= 1000 || var(30) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

; WAZA#3:Hyper_Flashback_Flash_Blast
[State -1]
type = ChangeState
value = 4200
triggerall = command = "QCFQCF_z"
triggerall = power >= 1000 || var(30) = 1
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 1445 && ProjHitTime(1956) != -1 && ProjHitTime(1956) < 30
trigger4 = stateno = 6600 && time > 7

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;Solar_Blast_Strong
[State -1]
type = ChangeState
value = 1300
triggerall = command = "uppercut_z"
triggerall = numprojid(1250) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

;Solar_Blast_medium
[State -1]
type = ChangeState
value = 1301
triggerall = command = "uppercut_y"
triggerall = numprojid(1250) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

;Solar_Blast_light
[State -1]
type = ChangeState
value = 1302
triggerall = command = "uppercut_x"
triggerall = numprojid(1250) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

;Snowfall_Slash_Fake
[State -1]
type = ChangeState
value = 1101
triggerall = command = "uppercut_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

;Solar_Blast_Follow_Up
[State -1]
type = ChangeState
value = 1310
triggerall = command = "uppercut_x"
triggerall = numprojid(1250) = 0
trigger1 = movecontact
trigger1 = stateno = 1080
trigger2 = movecontact
trigger2 = stateno = 1180

;keyring_ON
[State -1]
type = ChangeState
value = 6600
triggerall = command = "keyring"
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 290 && time > 7

;keyring_OFF
[State -1]
type = ChangeState
value = 6650
triggerall = command = "keyring"
trigger1 = stateno = 6600 && time > 7

;Swallow_Swipe_Normal_Z
[State -1]
type = ChangeState
value = 1200
triggerall = command = "QCF_z" && statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 620
trigger3 = movecontact && stateno = 1570

;Swallow_Swipe_Normal_Y
[State -1]
type = ChangeState
value = 1205
triggerall = command = "QCF_y" && statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 620
trigger3 = movecontact && stateno = 1570

;Swallow_Swipe_Normal_X
[State -1]
type = ChangeState
value = 1210
triggerall = command = "QCF_x" && statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 620
trigger3 = movecontact && stateno = 1570

;Haze_Hack_Strong
[State -1]
type = ChangeState
value = 1000
triggerall = command = "QCF_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

;Haze_Hack_Medium
[State -1]
type = ChangeState
value = 1050
triggerall = command = "QCF_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

;Haze_Hack_Light
[State -1]
type = ChangeState
value = 1080
triggerall = command = "QCF_x"
trigger1 = statetype = S && ctrl = 1
trigger2 = movecontact && stateno = 460
trigger3 = stateno = 290 && time > 7
trigger4 = stateno = 6600 && time > 7

;Piercing_Moon_Pounce
[State -1]
type = ChangeState
value = 1400
triggerall = command = "MIRROR_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

;Sasameyuki
[State -1]
type = ChangeState
value = 1500
triggerall = command = "MIRROR_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

;Sasameyuki_Low_Strike
[State -1]
type = ChangeState
value = 1560
trigger1 = command = "y" && stateno = 1500

;Sasameyuki_Low_Strike
[State -1]
type = ChangeState
value = 1570
trigger1 = command = "x" && stateno = 1500

;Reversal
[State -1]
type = ChangeState
value = 1430
triggerall = command = "MIRROR_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

;Snowfall_Slash_Strong
[State -1]
type = ChangeState
value = 1100
triggerall = command = "QCB_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

;Snowfall_Slash_Medium
[State -1]
type = ChangeState
value = 1150
triggerall = command = "QCB_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

;Snowfall_Slash_Light
[State -1]
type = ChangeState
value = 1180
triggerall = command = "QCB_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

;Spider_Thrust
[State -1]
type = ChangeState
value = 1590
triggerall = command = "QCB_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

;Ground_Stab
[State -1]
type = ChangeState
value = 1650
triggerall = command = "downfwd_z"
triggerall = p2bodydist X < 100
triggerall = p2stateno > 5000
triggerall = p2stateno < 5150
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;EXPLOSION
[State -1]
type = ChangeState
value = 6400
triggerall = statetype = S && var(30) = 0
triggerall = ctrl = 1
trigger1 = command = "explo"
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

;EXPLOSION_FLASH_ATTACK
[State -1]
type = ChangeState
value = 6500
triggerall = command = "explo" || command = "CPU_AI_Z" || command = "CPU_AI_Y" || command = "CPU_AI_X"
triggerall = var(30) = 1
trigger1 = statetype = S && ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

;---------------------------------------------------------------------------
;JUGGLE_START
[State -1]
type = ChangeState
value = 6700
triggerall = statetype = S
triggerall = command = "yz"
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

;JUGGLE_CONTINUE
[State -1]
type = ChangeState
value = 6710
triggerall = command = "x"
trigger1 = stateno = 6700 && movehit

;JUGGLE_POWER
[State -1]
type = ChangeState
value = 6740
triggerall = command = "x"
trigger1 = stateno = 6710 && movehit

;JUGGLE_FREE_KICK
[State -1]
type = ChangeState
value = 6730
triggerall = command = "y"
trigger1 = stateno = 6710 && movehit

;JUGGLE_SPIDER
[State -1]
type = ChangeState
value = 1590
triggerall = command = "z"
trigger1 = stateno = 6710 && movehit

;---------------------------------------------------------------------------
;EVADE
[State -1]
type = ChangeState
value = 290
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "xy"
trigger2 = stateno = 6600 && time > 7

;EVADE_CPU
[State -1]
type = ChangeState
value = 290
triggerall = statetype = S && ctrl = 1 && p2bodydist X <= 180 && p2movetype = A
trigger1 = command = "CPU_AI_Z" || command = "CPU_AI_Y" || command = "CPU_AI_X"

;Crouch_Guard_Breaker
[State -1]
type = ChangeState
value = 1700
triggerall = command = "ab"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 6600 && time > 7

;Stand_Throw (close dir+z)
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 ;Near P2
trigger1 = command = "fwd_z";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_z";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_z";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_z";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;---------------------------------------------------------------------------
;Strong_Slash_Run
[State -1]
type = ChangeState
value = 435
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = ctrl = 1
trigger1 = stateno = 100
trigger2 = stateno = 101

;Strong_Slash
[State -1]
type = ChangeState
value = 230
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7

;Medium_Slash_Run
[State -1]
type = ChangeState
value = 228
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = ctrl = 1
trigger1 = stateno = 100
trigger2 = stateno = 101

;Medium_Slash_Close
[State -1]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X < 30
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7

;Medium_Slash_Far
[State -1]
type = ChangeState
value = 225
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7

;Light_Slash_Run
[State -1]
type = ChangeState
value = 218
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = ctrl = 1
trigger1 = stateno = 100
trigger2 = stateno = 101

;Light_Slash
[State -1]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7

;Strong_Slash_Crouch_Close
[State -1]
type = ChangeState
value = 430
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = P2BodyDist X < 30
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7

;Strong_Slash_Crouch_Far
[State -1]
type = ChangeState
value = 435
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7
trigger3 = stateno = 1590 && movehit

;Medium_Slash_CrouchCLOSE
[State -1]
type = ChangeState
value = 415
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = P2BodyDist X < 20
triggerall = P2BodyDist Y >= 0
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7

;Light_Slash_CrouchCLOSE
[State -1]
type = ChangeState
value = 415
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = P2BodyDist X < 20
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7

;Medium_Slash_Crouch
[State -1]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7

;Light_Slash_Crouch
[State -1]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7

;Light_Slash_Air
[State -1]
type = ChangeState
value = 610
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Medium_Slash_Air
[State -1]
type = ChangeState
value = 620
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Strong_Slash_Air_up
[State -1]
type = ChangeState
value = 630
triggerall = command = "z" && vel X = 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;Strong_Slash_Air_FWD
[State -1]
type = ChangeState
value = 635
triggerall = command = "z" && vel X != 0
trigger1 = statetype = A
trigger1 = ctrl = 1

;Crouch_Kick_Knock_Down
[State -1]
type = ChangeState
value = 460
triggerall = command = "downfwd_a"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7

;Crouch_Kick_Quick
[State -1]
type = ChangeState
value = 450
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7

;Slide_Kick
[State -1]
type = ChangeState
value = 260
triggerall = command = "fwd_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7

;Kick_Air
[State -1]
type = ChangeState
value = 660
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Kick_Stand
[State -1]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 290 && time > 7


