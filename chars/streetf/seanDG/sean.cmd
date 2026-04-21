;Char: Sean SF3 - MvsC style            -            feito por/by: DG 
; *e-mail:
;  .dg_mugen@yahoo.com.br
; *site:
;  .http://dgmugen.cjb.net
;--------------------------------------------------------------------------
[Defaults] ;to work in Linux - thanks ixnay
command.time = 15
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
;[Command]
;name = "Reppuu-Jinrai-Shou_ABC"
;command = ~F, D, DF, a+b

;[Command]
;name = "Reppuu-Jinrai-Shou_ABC"
;command = ~F, D, DF, b+c

;[Command]
;name = "Reppuu-Jinrai-Shou_ABC"
;command = ~F, D, DF, a+c

[Command]
name = "Hyper-Hurricane_ABC"
command = ~D, DB, B, a+b

[Command]
name = "Hyper-Hurricane_ABC"
command = ~D, DB, B, b+c

[Command]
name = "Hyper-Hurricane_ABC"
command = ~D, DB, B, a+c

;[Command]
;name = "Shin-Shouryuu-Ken_XYZ"
;command = ~F, D, DF, x+y

;[Command]
;name = "Shin-Shouryuu-Ken_XYZ"
;command = ~F, D, DF, y+z

;[Command]
;name = "Shin-Shouryuu-Ken_XYZ"
;command = ~F, D, DF, x+z

[Command]
name = "Shouryuu-Cannon_XYZ"
command = ~D, DB, B, x+y

[Command]
name = "Shouryuu-Cannon_XYZ"
command = ~D, DB, B, y+z

[Command]
name = "Shouryuu-Cannon_XYZ"
command = ~D, DB, B, x+z

[Command]
name = "Shinkuu-Hadou-Ken_XYZ"
command = ~D, DF, F, x+y

[Command]
name = "Shinkuu-Hadou-Ken_XYZ"
command = ~D, DF, F, y+z

[Command]
name = "Shinkuu-Hadou-Ken_XYZ"
command = ~D, DF, F, x+z

;-| Special Motions |------------------------------------------------------

[Command]
name = "Shouryuu-Ken_A"
command = ~F, D, DF, a

[Command]
name = "Shouryuu-Ken_B"
command = ~F, D, DF, b

[Command]
name = "Shouryuu-Ken_C"
command = ~F, D, DF, c

[Command] 
name = "Special-Kick_A"
command = ~B, DB, D, DF, F, a  
time = 25

[Command] 
name = "Special-Kick_B"
command = ~B, DB, D, DF, F, b 
time = 25

[Command] 
name = "Special-Kick_C"
command = ~B, DB, D, DF, F, c 
time = 25

[Command] 
name = "Fire-Hadou-Ken_X"
command = ~B, DB, D, DF, F, x  
time = 25

[Command] 
name = "Fire-Hadou-Ken_Y"
command = ~B, DB, D, DF, F, y 
time = 25

[Command] 
name = "Fire-Hadou-Ken_Z"
command = ~B, DB, D, DF, F, z 
time = 25

[Command]
name = "Shou_A"
command = ~D, DF, F, a

[Command]
name = "Shou_B"
command = ~D, DF, F, b

[Command]
name = "Shou_C"
command = ~D, DF, F, c

[Command]
name = "Tatsumaki-SK_A"
command = ~D, DB, B, a

[Command]
name = "Tatsumaki-SK_B"
command = ~D, DB, B, b

[Command]
name = "Tatsumaki-SK_C"
command = ~D, DB, B, c

[Command]
name = "zenten_X"
command = ~D, DB, B, x

[Command]
name = "zenten_Y"
command = ~D, DB, B, y

[Command]
name = "zenten_Z"
command = ~D, DB, B, z

[Command]
name = "Shouryuu-Ken_X"
command = ~F, D, DF, x

[Command]
name = "Shouryuu-Ken_Y"
command = ~F, D, DF, y

[Command]
name = "Shouryuu-Ken_Z"
command = ~F, D, DF, z

[Command]
name = "Hadou-Ken_X"
command = ~D, DF, F, x

[Command]
name = "Hadou-Ken_Y"
command = ~D, DF, F, y

[Command]
name = "Hadou-Ken_Z"
command = ~D, DF, F, z

[Command]
name = "ac_sweep"
command = ~B, DB, D, a + x

[Command]
name = "ac_skick"
command = ~B, DB, D, b + y

[Command]
name = "ac_shouryuu"
command = ~B, DB, D, c + z

[Command]
name = "rroll_xa"
command = ~B, DB, D, x

[Command]
name = "rroll_yb"
command = ~B, DB, D, y

[Command]
name = "rroll_zc"
command = ~B, DB, D, z

[Command]
name = "rroll_xa"
command = ~B, DB, D, a

[Command]
name = "rroll_yb"
command = ~B, DB, D, b

[Command]
name = "rroll_zc"
command = ~B, DB, D, c

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
name = "throw_xyz"
command = x+y
time = 5

[Command]
name = "throw_xyz"
command = x+z
time = 5

[Command]
name = "throw_xyz"
command = y+z
time = 5

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_xyz"
command = /x

[Command]
name = "hold_xyz"
command = /y

[Command]
name = "hold_xyz"
command = /z

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
name = "super_jump_up"
command = $D, $U
time = 8

[Command]      
name = "parry"
command = ~F
time = 2

[Command]      
name = "parry-crouch"
command = ~D
time = 2

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
;Hyper Tornado - ABC
[State -1, Hyper Hurricane - ABC]
type = ChangeState
value = 3200
triggerall = !Win;KO
triggerall = !(Pos Y)
triggerall = command = "Hyper-Hurricane_ABC"
triggerall = power >= 1000
trigger1 = statetype = S && statetype !=A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact 
trigger18 = stateno = 310 && movecontact
trigger19 = stateno = 1000 && movecontact
trigger20 = stateno = 1001 && movecontact
trigger21 = stateno = 1002 && movecontact
trigger22 = stateno = 1100 && movecontact
trigger23 = stateno = 1101 && movecontact
trigger24 = stateno = 1102 && movecontact
trigger25 = stateno = 1200 && movecontact
trigger26 = stateno = 1201 && movecontact
trigger27 = stateno = 1202 && movecontact
trigger28 = stateno = 1600 && movecontact
trigger29 = stateno = 1601 && movecontact
trigger30 = stateno = 1602 && movecontact
trigger31 = stateno = 1700 && movecontact
trigger32 = stateno = 1701 && movecontact
trigger33 = stateno = 1702 && movecontact
trigger34 = NumHelper(3010) > 0 
trigger34 = Helper(3010), movecontact

;---------------------------------------------------------------------------
;Shouryuu Cannon - XYZ
[State -1, Shouryuu Cannon - XYZ]
type = ChangeState
value = 3100
triggerall = !Win;KO
triggerall = ifelse(StateNo = 3300, Pos Y <= 0, !(Pos Y))
triggerall = command = "Shouryuu-Cannon_XYZ"
triggerall = power >= 1000
trigger1 = statetype = S && statetype !=A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact 
trigger18 = stateno = 310 && movecontact
trigger19 = stateno = 1000 && movecontact
trigger20 = stateno = 1001 && movecontact
trigger21 = stateno = 1002 && movecontact
trigger22 = stateno = 1100 && movecontact
trigger23 = stateno = 1101 && movecontact
trigger24 = stateno = 1102 && movecontact
trigger25 = stateno = 1200 && movecontact
trigger26 = stateno = 1201 && movecontact
trigger27 = stateno = 1202 && movecontact
trigger28 = stateno = 1600 && movecontact
trigger29 = stateno = 1601 && movecontact
trigger30 = stateno = 1602 && movecontact
trigger31 = stateno = 1700 && movecontact
trigger32 = stateno = 1701 && movecontact
trigger33 = stateno = 1702 && movecontact
trigger34 = NumHelper(3010) > 0 
trigger34 = Helper(3010), movecontact

;---------------------------------------------------------------------------
;Air Hadou-Burst - XYZ
[State -1, Air Shinkuu Hadou-Ken - XYZ]
type = ChangeState
value = 3050
triggerall = !Win;KO
triggerall = command = "Shinkuu-Hadou-Ken_XYZ"
triggerall = power >= 1000
trigger1 = statetype = A 
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 615 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 625 && movecontact
trigger7 = stateno = 630 && movecontact
trigger8 = stateno = 640 && movecontact
trigger9 = stateno = 645 && movecontact
trigger10 = stateno = 650 && movecontact
trigger11 = stateno = 655 && movecontact
trigger12 = stateno = 1050 && movecontact
trigger13 = stateno = 1051 && movecontact
trigger14 = stateno = 1052 && movecontact
trigger15 = stateno = 1100 && movecontact
trigger16 = stateno = 1101 && movecontact
trigger17 = stateno = 1102 && movecontact
trigger18 = stateno = 1250 && movecontact
trigger19 = stateno = 1251 && movecontact
trigger20 = stateno = 1252 && movecontact
trigger21 = stateno = 1600 && movecontact
trigger22 = stateno = 1601 && movecontact
trigger23 = stateno = 1602 && movecontact

;---------------------------------------------------------------------------
;Hadou-Burst - XYZ
[State -1, Shinkuu Hadou-Ken - XYZ]
type = ChangeState
value = 3000
triggerall = !Win;KO
triggerall = ifelse(StateNo = 3300, Pos Y <= 0, !(Pos Y))
triggerall = command = "Shinkuu-Hadou-Ken_XYZ"
triggerall = power >= 1000
trigger1 = statetype = S && statetype !=A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact 
trigger18 = stateno = 310 && movecontact
trigger19 = stateno = 1000 && movecontact
trigger20 = stateno = 1001 && movecontact
trigger21 = stateno = 1002 && movecontact
trigger22 = stateno = 1100 && movecontact
trigger23 = stateno = 1101 && movecontact
trigger24 = stateno = 1102 && movecontact
trigger25 = stateno = 1200 && movecontact
trigger26 = stateno = 1201 && movecontact
trigger27 = stateno = 1202 && movecontact
trigger28 = stateno = 1600 && movecontact
trigger29 = stateno = 1601 && movecontact
trigger30 = stateno = 1602 && movecontact
trigger31 = stateno = 1700 && movecontact
trigger32 = stateno = 1701 && movecontact
trigger33 = stateno = 1702 && movecontact

;---------------------------------------------------------------------------
;Dragon Smash - A
[State -1, Dragon Smash - A]
type = ChangeState
value = 1900
triggerall = command = "Shouryuu-Ken_A"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Dragon Smash - B
[State -1, Dragon Smash - B]
type = ChangeState
value = 1901
triggerall = command = "Shouryuu-Ken_B"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Dragon Smash - C
[State -1, Dragon Smash - C]
type = ChangeState
value = 1902
triggerall = command = "Shouryuu-Ken_C"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Sean Tackle - X
[State -1, Tackle - X]
type = ChangeState
value = 1700
triggerall = command = "Fire-Hadou-Ken_X"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Sean Tackle - Y
[State -1, Tackle - Y]
type = ChangeState
value = 1701
triggerall = command = "Fire-Hadou-Ken_Y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Sean Tackle - Z
[State -1, Tackle - Z]
type = ChangeState
value = 1702
triggerall = command = "Fire-Hadou-Ken_Z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Ryuubi Kyaku - A
[State -1, Ryuubi Kyaku - A]
type = ChangeState
value = 1600
triggerall = command = "Shou_A"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Ryuubi Kyaku - B
[State -1, Ryuubi Kyaku - B]
type = ChangeState
value = 1601
triggerall = command = "Shou_B"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Ryuubi Kyaku - C
[State -1, Ryuubi Kyaku - C]
type = ChangeState
value = 1602
triggerall = command = "Shou_C"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Air Tornado Kick - A
[State -1, Air Tornado Kick - A]
type = ChangeState
value = 1250
triggerall = Pos Y < - 35
triggerall = command = "Tatsumaki-SK_A"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 615 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 625 && movecontact
trigger7 = stateno = 630 && movecontact
trigger8 = stateno = 640 && movecontact
trigger9 = stateno = 645 && movecontact
trigger10 = stateno = 650 && movecontact
trigger11 = stateno = 655 && movecontact

;---------------------------------------------------------------------------
;Air Tornado Kick - B
[State -1, Air Tornado Kick - B]
type = ChangeState
value = 1251
triggerall = Pos Y < - 35
triggerall = command = "Tatsumaki-SK_B"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 615 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 625 && movecontact
trigger7 = stateno = 630 && movecontact
trigger8 = stateno = 640 && movecontact
trigger9 = stateno = 645 && movecontact
trigger10 = stateno = 650 && movecontact
trigger11 = stateno = 655 && movecontact

;---------------------------------------------------------------------------
;Air Tornado Kick - C
[State -1, Air Tornado Kick - C]
type = ChangeState
value = 1252
triggerall = Pos Y < - 35
triggerall = command = "Tatsumaki-SK_C"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 615 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 625 && movecontact
trigger7 = stateno = 630 && movecontact
trigger8 = stateno = 640 && movecontact
trigger9 = stateno = 645 && movecontact
trigger10 = stateno = 650 && movecontact
trigger11 = stateno = 655 && movecontact

;---------------------------------------------------------------------------
;Tornado Kick - A
[State -1, Tornado Kick - A]
type = ChangeState
value = 1200
triggerall = command = "Tatsumaki-SK_A"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Tornado Kick - B
[State -1, Tornado Kick - B]
type = ChangeState
value = 1201
triggerall = command = "Tatsumaki-SK_B"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Tornado Kick - C
[State -1, Tornado Kick - C]
type = ChangeState
value = 1202
triggerall = command = "Tatsumaki-SK_C"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Zenten - X
[State -1, Zenten - X]
type = ChangeState
value = 1800
triggerall = command = "zenten_X"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Zenten  - Y
[State -1, Zenten - Y]
type = ChangeState
value = 1801
triggerall = command = "zenten_Y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Zenten - Z
[State -1, Zenten - Z]
type = ChangeState
value = 1802
triggerall = command = "zenten_Z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Dragon Smash - X
[State -1, Dragon Smash - X]
type = ChangeState
value = 1100
triggerall = command = "Shouryuu-Ken_X"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Dragon Smash - Y
[State -1, Dragon Smash - Y]
type = ChangeState
value = 1101
triggerall = command = "Shouryuu-Ken_Y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Dragon Smash - Z
[State -1, Dragon Smash - Z]
type = ChangeState
value = 1102
triggerall = command = "Shouryuu-Ken_Z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Air Burst - X
[State -1, Air Burst - X]
type = ChangeState
value = 1050
triggerall = command = "Hadou-Ken_X"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 615 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 625 && movecontact
trigger7 = stateno = 630 && movecontact
trigger8 = stateno = 640 && movecontact
trigger9 = stateno = 645 && movecontact
trigger10 = stateno = 650 && movecontact
trigger11 = stateno = 655 && movecontact

;---------------------------------------------------------------------------
;Air Burst - Y
[State -1, Air Burst - Y]
type = ChangeState
value = 1051
triggerall = command = "Hadou-Ken_Y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 615 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 625 && movecontact
trigger7 = stateno = 630 && movecontact
trigger8 = stateno = 640 && movecontact
trigger9 = stateno = 645 && movecontact
trigger10 = stateno = 650 && movecontact
trigger11 = stateno = 655 && movecontact

;---------------------------------------------------------------------------
;Air Burst - Z
[State -1, AIr Burst - Z]
type = ChangeState
value = 1052
triggerall = command = "Hadou-Ken_Z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 615 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 625 && movecontact
trigger7 = stateno = 630 && movecontact
trigger8 = stateno = 640 && movecontact
trigger9 = stateno = 645 && movecontact
trigger10 = stateno = 650 && movecontact
trigger11 = stateno = 655 && movecontact

;---------------------------------------------------------------------------
;Burst - X
[State -1, Burst - X]
type = ChangeState
value = 1000
triggerall = command = "Hadou-Ken_X"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Burst - Y
[State -1, Burst - Y]
type = ChangeState
value = 1001
triggerall = command = "Hadou-Ken_Y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Burst - Z
[State -1, Burst - Z]
type = ChangeState
value = 1002
triggerall = command = "Hadou-Ken_Z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 250 && movecontact
trigger10 = stateno = 255 && movecontact
trigger11 = stateno = 400 && movecontact
trigger12 = stateno = 410 && movecontact
trigger13 = stateno = 420 && movecontact
trigger14 = stateno = 430 && movecontact
trigger15 = stateno = 440 && movecontact
trigger16 = stateno = 450 && movecontact
trigger17 = stateno = 300 && movecontact  
trigger18 = stateno = 310 && movecontact

;---------------------------------------------------------------------------
;Alpha Counter - Sweep

[State -1]
type = ChangeState
value = 1500
;triggerall = Var(59) != 2
triggerall = command = "ac_sweep" 
triggerall = power >= 1000
triggerall = (StateType != A) && (StateType != L)
trigger1 = stateno = [150,152]

;---------------------------------------------------------------------------
;Alpha Counter - Ryuubi Kyaku

[State -1]
type = ChangeState
value = 1510
;triggerall = Var(59) != 2
triggerall = command = "ac_skick" 
triggerall = power >= 1000
triggerall = (StateType != A) && (StateType != L)
trigger1 = stateno = [150,152]

;---------------------------------------------------------------------------
;Alpha Counter - Shouryuu-Ken

[State -1]
type = ChangeState
value = 1520
;triggerall = Var(59) != 2
triggerall = command = "ac_shouryuu"
triggerall = power >= 1000
triggerall = (StateType != A) && (StateType != L)
trigger1 = stateno = [150,152]

;---------------------------------------------------------------------------
;Recovery Roll - X/A (by Soldats)
[State -1, Falling]
type = VarSet
triggerall = command = "rroll_xa" 
triggerall = alive = 1
trigger1 = (stateno = 5050) || (stateno = 5071) 
v = 24
value = 1

[State -1, Rolling]
type = ChangeState
value = 1480
triggerall = Var(24) = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
;Recovery Roll - Y/B (by Soldats)
[State -1, Falling]
type = VarSet
triggerall = command = "rroll_yb"
triggerall = alive = 1
trigger1 = (stateno = 5050) || (stateno = 5071) 
v = 25
value = 1

[State -1, Rolling]
type = ChangeState
value = 1485
triggerall = Var(25) = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
;Recovery Roll - Z/C (by Soldats)
[State -1, Falling]
type = VarSet
triggerall = command = "rroll_zc"
triggerall = alive = 1
trigger1 = (stateno = 5050) || (stateno = 5071) 
v = 26
value = 1

[State -1, Rolling]
type = ChangeState
value = 1490
triggerall = Var(26) = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
;Super Jump Up
[State -1, Super Jump Up]
type = ChangeState
value = 60
triggerall = command = "super_jump_up" && ctrl
trigger1 = statetype = S && statetype != A 
trigger2 = stateno = 10  
;-----------------------------
;Launcher
[State -1, Launcher] ;by GGN
type = ChangeState
value = 60
triggerall = Command = "holdup"
trigger1 = stateno = 420 && movehit

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
;Throw Forward
[State -1, Throw Forward]
type = ChangeState
value = 800
triggerall = command = "z"
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

;---------------------------------------------------------------------------
;Throw Backward
[State -1, Throw Backward]
type = ChangeState
value = 805
triggerall = command = "c"
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

;---------------------------------------------------------------------------
;Air Throw 
[State -1, Air Throw]
type = ChangeState
value = 806
triggerall = command = "z"
triggerall = statetype = A
triggerall = ctrl
;triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 4;3
trigger1 = (p2statetype = A) 
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 6;5
trigger2 = (p2statetype = A) 
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Stand Forward Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 300
triggerall = command = "fwd_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
;Stand Forward Strong Kick
[State -1, Stand Strong Kick]
type = ChangeState
value = 310
triggerall = command = "fwd_c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
;Guard Push (Standing) ;by Soldats 
[State -1, Guard Push]
type = ChangeState
value = 1400
triggerall = command = "throw_xyz"
triggerall = statetype = S
triggerall = PalNo <= 6
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
;Guard Push (Crouching) ;by Soldats 
[State -1, Guard Push]
type = ChangeState
value = 1410
triggerall = command = "throw_xyz"
triggerall = statetype = C
triggerall = PalNo <= 6
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
;Guard Push (Air) ;by Soldats 
[State -1, Guard Push]
type = ChangeState
value = 1420
triggerall = command = "throw_xyz"
triggerall = statetype = A
triggerall = PalNo <= 6
trigger1 = stateno = [154,155]

;---------------------------------------------------------------------------
;------------------------------ parry by Inferis --------------
[State -1,parry ticks]
type = VarSet 
triggerAll = enemynear, Movetype = A
triggerAll = statetype = S && statetype !=A
triggerAll = Movetype !=H
trigger1 = Command = "parry" && stateno != 1300
var(21) = 2;4;6

[State -1,parry ticks diminui]
type = VarAdd
triggerAll = var(21) > 0
trigger1 = time >= 0 && TimeMod = 2,1
var(21) = -1

[State -1, muda state]
type = hitoverride
trigger1 = var(21) > 0
attr = SCA, HA, SA, NA, HP, SP, NP, AP, AA
stateno = 1300
ignorehitPause = 1
;------------------------------ fim parry by Inferis -------------- 
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;------------------------ parry couch by Inferis --------------
[State -1,parry ticks]
type = VarSet 
triggerAll = enemynear, Movetype = A
triggerAll = statetype = C && statetype !=A 
triggerAll = Movetype !=H
trigger1 = Command = "parry-crouch" && stateno != 1310
var(22) = 2;4;6

[State -1,parry ticks diminui]
type = VarAdd
triggerAll = var(22) > 0
trigger1 = time >= 0 && TimeMod = 2,1
var(22) = -1

[State -1, muda state]
type = hitoverride
trigger1 = var(22) > 0
attr = SCA, HA, SA, NA, HP, SP, NP, AP, AA
stateno = 1310
ignorehitPause = 1
;------------------------ fim parry crouch by Inferis -------------- 
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;--------------------------- parry air by Inferis --------------
[State -1,parry ticks]
type = VarSet 
triggerAll = enemynear, Movetype = A
triggerAll = statetype = A
triggerAll = Movetype !=H
trigger1 = Command = "parry" && stateno != 1320
var(23) = 2;4;6

[State -1,parry ticks diminui]
type = VarAdd
triggerAll = var(23) > 0
trigger1 = time >= 0 && TimeMod = 2,1
var(23) = -1

[State -1, muda state]
type = hitoverride
trigger1 = var(23) > 0
attr = SCA, HA, SA, NA, HP, SP, NP, AP, AA
stateno = 1320
ignorehitPause = 1
;--------------------------- fim parry air by Inferis -------------- 
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
;triggerall = p2bodydist X > 6
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X > 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact 
trigger3 = stateno = 230 && movecontact 
trigger4 = stateno = 400 && movecontact 
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Stand Medium Punch (Close)
[State -1, Stand Medium Punch - Close]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 10
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact 
trigger3 = stateno = 230 && movecontact 
trigger4 = stateno = 400 && movecontact 
trigger5 = stateno = 430 && movecontact 

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = p2bodydist X > 7
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 430 && movecontact
trigger11 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
;Stand Strong Punch (Close)
[State -1, Stand Strong Punch - Close]
type = ChangeState
value = 225
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 7
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 245 && movecontact
trigger8 = stateno = 400 && movecontact
trigger9 = stateno = 410 && movecontact
trigger10 = stateno = 430 && movecontact
trigger11 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = time > 6
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
;triggerall = p2bodydist X > 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact 
trigger3 = stateno = 210 && movecontact 
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact 
trigger6 = stateno = 400 && movecontact 
trigger7 = stateno = 410 && movecontact 
trigger8 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Stand Strong Kick
[State -1, Stand Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = p2bodydist X > 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
;Stand Strong Kick (Close)
[State -1, Stand Strong Kick - Close]
type = ChangeState
value = 255
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
;Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time > 6

;---------------------------------------------------------------------------
;Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact 
trigger3 = stateno = 230 && movecontact 
trigger4 = stateno = 400 && movecontact 
trigger5 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Crouch Strong Punch
[State -1, Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 240 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 410 && movecontact
trigger9 = stateno = 430 && movecontact
trigger10 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
;Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = time > 6
trigger3 = stateno = 200 && movecontact
trigger4 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
;Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact 
trigger3 = stateno = 210 && movecontact 
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 230 && movecontact 
trigger6 = stateno = 400 && movecontact 
trigger7 = stateno = 410 && movecontact 
trigger8 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Crouch Strong Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 215 && movecontact
trigger5 = stateno = 220 && movecontact
trigger6 = stateno = 225 && movecontact
trigger7 = stateno = 230 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 400 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 420 && movecontact
trigger12 = stateno = 430 && movecontact
trigger13 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch (neutral)
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
;Jump Medium Punch (in move)
[State -1, Jump Medium Punch]
type = ChangeState
value = 615
triggerall = command = "y"
triggerall = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch (neutral)
[State -1, Jump Medium Punch]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 615 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact
trigger7 = stateno = 645 && movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch (in move)
[State -1, Jump Medium Punch]
type = ChangeState
value = 625
triggerall = command = "z"
triggerall = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 615 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact
trigger7 = stateno = 645 && movecontact

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
;Jump Medium Kick (neutral)
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 610 && movecontact 
trigger4 = stateno = 615 && movecontact 
trigger5 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
;Jump Medium Kick (in move)
[State -1, Jump Medium Kick]
type = ChangeState
value = 645
triggerall = command = "b"
triggerall = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact 
trigger3 = stateno = 610 && movecontact 
trigger4 = stateno = 615 && movecontact 
trigger5 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick (neutral)
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 615 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 625 && movecontact
trigger7 = stateno = 630 && movecontact
trigger8 = stateno = 640 && movecontact
trigger9 = stateno = 645 && movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick (in move)
[State -1, Jump Strong Kick]
type = ChangeState
value = 655
triggerall = command = "c"
triggerall = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 615 && movecontact
trigger5 = stateno = 620 && movecontact
trigger6 = stateno = 625 && movecontact
trigger7 = stateno = 630 && movecontact
trigger8 = stateno = 640 && movecontact
trigger9 = stateno = 645 && movecontact
