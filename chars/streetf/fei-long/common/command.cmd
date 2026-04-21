;-| Super Motions |--------------------------------------------------------
; Rekka Shinken (Violent Fire Grand Fist)
[Command]
name = "rekkashinken_x"
command = ~D, DF, F, D, DF, F, x
time = 25
[Command]
name = "rekkashinken_y"
command = ~D, DF, F, D, DF, F, y
time = 25
[Command]
name = "rekkashinken_z"
command = ~D, DF, F, D, DF, F, z
time = 25

; Ryu Yassai (Dragon 8-fold Smash)
; Ryu Shin Yassai (Dragon Great 8-fold Smash)
[Command]
name = "ryuyassai_x"
command = ~D, DB, B, D, DB, B, x
time = 25
[Command]
name = "ryuyassai_y"
command = ~D, DB, B, D, DB, B, y
time = 25
[Command]
name = "ryuyassai_z"
command = ~D, DB, B, D, DB, B, z
time = 25

; Shien Renkyaku (Flame Continuous Kick)
[Command]
name = "shienrenkyaku_a"
command = ~D, DB, B, D, DB, B, a
time = 25
[Command]
name = "shienrenkyaku_b"
command = ~D, DB, B, D, DB, B, b
time = 25
[Command]
name = "shienrenkyaku_c"
command = ~D, DB, B, D, DB, B, c
time = 25

; Ultimate Combo
[Command]
name = "ultimate_x"
command = ~B, F, B, F, x
time = 25
[Command]
name = "ultimate_y"
command = ~B, F, B, F, y
time = 25
[Command]
name = "ultimate_z"
command = ~B, F, B, F, z
time = 25

; Shin Dragon Stomp
[Command]
name = "sstomp_a"
command = ~D, D, D, D, a
time = 30
[Command]
name = "sstomp_b"
command = ~D, D, D, D, b
time = 30
[Command]
name = "sstomp_c"
command = ~D, D, D, D, c
time = 30

;-| Special Motions |------------------------------------------------------
; Rekkukyaku (Violent Wind Kick)
[Command]
name = "rekkukyaku_a"
command = ~B, DB, D, DF, F, a
[Command]
name = "rekkukyaku_b"
command = ~B, DB, D, DF, F, b
[Command]
name = "rekkukyaku_c"
command = ~B, DB, D, DF, F, c

; Rekkaken (Violent Fire Fist)
[Command]
name = "rekkaken_x"
command = ~D, DF, F, x
[Command]
name = "rekkaken_y"
command = ~D, DF, F, y
[Command]
name = "rekkaken_z"
command = ~D, DF, F, z

; Shienkyaku (Flame Kick)
[Command]
name = "shienkyaku_a"
command = ~B, D, DB, a
[Command]
name = "shienkyaku_b"
command = ~B, D, DB, b
[Command]
name = "shienkyaku_c"
command = ~B, D, DB, c

; Dragon Kick
[Command]
name = "dragon_a"
command = ~F, D, DF, a
[Command]
name = "dragon_b"
command = ~F, D, DF, b
[Command]
name = "dragon_c"
command = ~F, D, DF, c

; Dragon Stomp
[Command]
name = "stomp_a"
command = ~D, D, a
[Command]
name = "stomp_b"
command = ~D, D, b
[Command]
name = "stomp_c"
command = ~D, D, c

; Flaming Dragon Fist
[Command]
name = "fdragon_x"
command = ~20$B, F, x
[Command]
name = "fdragon_y"
command = ~20$B, F, y
[Command]
name = "fdragon_z"
command = ~20$B, F, z

; One-Inch Fist
[Command]
name = "fist_x"
command = ~B, F, x
[Command]
name = "fist_y"
command = ~B, F, y
[Command]
name = "fist_z"
command = ~B, F, z
 
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| Recovery |-------------------------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "2p"
command = x+y
time = 1

[Command]
name = "2p"
command = y+z
time = 1

[Command]
name = "2p"
command = x+z
time = 1

[Command]
name = "2k"
command = a+b
time = 1

[Command]
name = "2k"
command = b+c
time = 1

[Command]
name = "2k"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_start"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;---------------------------------------------------------------------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
; Super Moves
;---------------------------------------------------------------------------
; Ultimate Combo
[State -1, Ultimate]
type = ChangeState
value = 4000
triggerall = power >= 1000
triggerall = command = "ultimate_x"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Ultimate]
type = ChangeState
value = 4010
triggerall = power >= 2000
triggerall = command = "ultimate_y"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Ultimate]
type = ChangeState
value = 4020
triggerall = power >= 3000
triggerall = command = "ultimate_z"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Rekka Shinken
[State -1, RekkaShinken]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "rekkashinken_x"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, RekkaShinken]
type = ChangeState
value = 3010
triggerall = power >= 2000
triggerall = command = "rekkashinken_y"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, RekkaShinken]
type = ChangeState
value = 3020
triggerall = power >= 3000
triggerall = command = "rekkashinken_z"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Ryu Yassai
[State -1, RyuYassai]
type = ChangeState
value = 3100
triggerall = PalNo < 7
triggerall = power >= 3000
triggerall = command = "ryuyassai_x" || command = "ryuyassai_y" || command = "ryuyassai_z"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, RyuYassai]
type = ChangeState
value = 3110
triggerall = PalNo > 6
triggerall = power >= 1000
triggerall = command = "ryuyassai_x"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, RyuYassai]
type = ChangeState
value = 3120
triggerall = PalNo > 6
triggerall = power >= 2000
triggerall = command = "ryuyassai_y"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, RyuYassai]
type = ChangeState
value = 3130
triggerall = PalNo > 6
triggerall = power >= 3000
triggerall = command = "ryuyassai_z"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Shien Renkyaku
[State -1, ShienRenkyaku]
type = ChangeState
value = 3200
triggerall = power >= 1000
triggerall = command = "shienrenkyaku_a"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, ShienRenkyaku]
type = ChangeState
value = 3210
triggerall = power >= 2000
triggerall = command = "shienrenkyaku_b"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, ShienRenkyaku]
type = ChangeState
value = 3220
triggerall = power >= 3000
triggerall = command = "shienrenkyaku_c"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Shin Dragon Stomp
[State -1, sstomp]
type = ChangeState
value = 3300
triggerall = power >= 1000
triggerall = command = "sstomp_a"
triggerall = statetype != A
trigger1 = ctrl

[State -1, sstomp]
type = ChangeState
value = 3300
triggerall = power >= 1000
triggerall = command = "sstomp_b"
triggerall = statetype != A
trigger1 = ctrl

[State -1, sstomp]
type = ChangeState
value = 3300
triggerall = power >= 1000
triggerall = command = "sstomp_c"
triggerall = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------
; Alpha Counter
[State -1, Counter]
type = ChangeState
value = 900
triggerall = power >= 1000
triggerall = command = "2k"
triggerall = statetype != A
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153

;---------------------------------------------------------------------------
; Dragon Fist
[State -1, ChangeState]
type = ChangeState
value = 4100
triggerall = Vel X = 0
triggerall = command = "2p"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Dragon Kick
[State -1, Dragon_Kick]
type = ChangeState
value = 4110
triggerall = Vel X = 0
triggerall = command = "2k"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Rekkaken
[State -1, Rekkaken]
type = ChangeState
value = 1000
triggerall = command = "rekkaken_x"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Rekkaken]
type = ChangeState
value = 1010
triggerall = command = "rekkaken_y"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Rekkaken]
type = ChangeState
value = 1020
triggerall = command = "rekkaken_z"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Shienkyaku
[State -1, shienkyaku]
type = ChangeState
value = 1100
triggerall = command = "shienkyaku_a"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, shienkyaku]
type = ChangeState
value = 1110
triggerall = command = "shienkyaku_b"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, shienkyaku]
type = ChangeState
value = 1120
triggerall = command = "shienkyaku_c"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Rekkukyaku
[State -1, shienkyaku]
type = ChangeState
value = 1200
triggerall = command = "rekkukyaku_a"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, shienkyaku]
type = ChangeState
value = 1210
triggerall = command = "rekkukyaku_b"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, shienkyaku]
type = ChangeState
value = 1220
triggerall = command = "rekkukyaku_c"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Dragon Kick
[State -1, dragon]
type = ChangeState
value = 1300
triggerall = command = "dragon_a"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, dragon]
type = ChangeState
value = 1310
triggerall = command = "dragon_b"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, dragon]
type = ChangeState
value = 1320
triggerall = command = "dragon_c"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Dragon Stomp
[State -1, stomp]
type = ChangeState
value = 1400
triggerall = command = "stomp_a"
triggerall = statetype != A
trigger1 = ctrl

[State -1, stomp]
type = ChangeState
value = 1400
triggerall = command = "stomp_b"
triggerall = statetype != A
trigger1 = ctrl

[State -1, stomp]
type = ChangeState
value = 1400
triggerall = command = "stomp_c"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Flaming Dragon Fit
[State -1, fdragon]
type = ChangeState
value = 1600
triggerall = command = "fdragon_x"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, fdragon]
type = ChangeState
value = 1610
triggerall = command = "fdragon_y"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, fdragon]
type = ChangeState
value = 1620
triggerall = command = "fdragon_z"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; One-Inch Fist
[State -1, fist]
type = ChangeState
value = 1500
triggerall = command = "fist_x"
triggerall = statetype != A
trigger1 = ctrl

[State -1, fist]
type = ChangeState
value = 1500
triggerall = command = "fist_y"
triggerall = statetype != A
trigger1 = ctrl

[State -1, fist]
type = ChangeState
value = 1500
triggerall = command = "fist_z"
triggerall = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Recovery Roll Backward
[State -1, Roll_back]
type = ChangeState
value = 5220
triggerall = alive
triggerall = stateno != 5120
triggerall = stateno != 5291
triggerall = command = "holdback"
triggerall = command = "recovery"
trigger1 = statetype = L

; Recovery Roll Forward
[State -1, Roll_fwd]
type = ChangeState
value = 5230
triggerall = alive
triggerall = stateno != 5120
triggerall = stateno != 5291
triggerall = command = "holdfwd"
triggerall = command = "recovery"
trigger1 = statetype = L

;---------------------------------------------------------------------------
; Throw Attack
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command = "2p"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Overhead Throw
[State -1, Throw]
type = ChangeState
value = 810
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command = "2k"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Medium Hop Kick
[State -1, Hop Kick]
type = ChangeState
value = 242
triggerall = command = "fwd_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Strong Hop Kick
[State -1, Hop Kick]
type = ChangeState
value = 252
triggerall = command = "fwd_c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
