;====================================================================
;=											  =
;=				  URIEN'S COMMANDS				  =
;=											  =
;=										        =
;====================================================================
;-| Super Motions |--------------------------------------------------------
; Aegis Reflector
[Command]
name = "Aegis Reflector_2P"
command = ~D, F, D, F, x+y
time = 25
[Command]
name = "Aegis Reflector_2P"
command = ~D, F, D, F, x+z
time = 25
[Command]
name = "Aegis Reflector_2P"
command = ~D, F, D, F, y+z
time = 25
[Command]
name = "Aegis Reflector_X"
command = ~D, F, D, F, x
time = 25
[Command]
name = "Aegis Reflector_Y"
command = ~D, F, D, F, y
time = 25
[Command]
name = "Aegis Reflector_Z"
command = ~D, F, D, F, z
time = 25

;---------------------------------------------------------------------------
; Jupiter Thunder
[Command]
name = "Jupiter Thunder"
command = ~D, B, D, B, x
time = 25
[Command]
name = "Jupiter Thunder"
command = ~D, B, D, B, y
time = 25
[Command]
name = "Jupiter Thunder"
command = ~D, B, D, B, z
time = 25

;---------------------------------------------------------------------------
; Tyrant Punish
[Command]
name = "Tyrant Punish"
command = ~D, F, D, F, a
time = 25
[Command]
name = "Tyrant Punish"
command = ~D, F, D, F, b
time = 25
[Command]
name = "Tyrant Punish"
command = ~D, F, D, F, c
time = 25

;-|EX Special Motions |------------------------------------------------------
; Violence Knee Drop
[Command]
name = "Violence Knee Drop_2K"
command = ~45$D, $U, a+b
time = 10
[Command]
name = "Violence Knee Drop_2K"
command = ~45$D, $U, b+c
time = 10
[Command]
name = "Violence Knee Drop_2K"
command = ~45$D, $U, a+c
time = 10

;---------------------------------------------------------------------------
; Metallic Sphere
[Command]
name = "Metallic Sphere_2P"
command = ~D, F, x+y
time = 10
[Command]
name = "Metallic Sphere_2P"
command = ~D, F, y+z
time = 10
[Command]
name = "Metallic Sphere_2P"
command = ~D, F, x+z
time = 10

;---------------------------------------------------------------------------
; Chariot Tackle
[Command]
name = "Chariot Tackle_2K"
command = ~45$B, F, a+b
time = 10
[Command]
name = "Chariot Tackle_2K"
command = ~45$B, F, b+c
time = 10
[Command]
name = "Chariot Tackle_2K"
command = ~45$B, F, a+c
time = 10

;---------------------------------------------------------------------------
; Dangerous Headbutt
[Command]
name = "Dangerous Headbutt_2P"
command = ~45$D, $U, x+y
time = 10
[Command]
name = "Dangerous Headbutt_2P"
command = ~45$D, $U, y+z
time = 10
[Command]
name = "Dangerous Headbutt_2P"
command = ~45$D, $U, x+z
time = 10

;-| Special Motions |------------------------------------------------------
; Violence Knee Drop
[Command]
name = "Violence Knee Drop_A"
command = ~45$D, $U, a
time = 10
[Command]
name = "Violence Knee Drop_B"
command = ~45$D, $U, b
time = 10
[Command]
name = "Violence Knee Drop_C"
command = ~45$D, $U, c
time = 10

;---------------------------------------------------------------------------
; Metallic Sphere
[Command]
name = "Metallic Sphere_X"
command = ~D, F, x
time = 10
[Command]
name = "Metallic Sphere_Y"
command = ~D, F, y
time = 10
[Command]
name = "Metallic Sphere_Z"
command = ~D, F, z
time = 10

;---------------------------------------------------------------------------
; Chariot Tackle
[Command]
name = "Chariot Tackle_A"
command = ~45$B, F, a
time = 10
[Command]
name = "Chariot Tackle_B"
command = ~45$B, F, b
time = 10
[Command]
name = "Chariot Tackle_C"
command = ~45$B, F, c
time = 10

;---------------------------------------------------------------------------
; Dangerous Headbutt
[Command]
name = "Dangerous Headbutt_X"
command = ~45$D, $U, x
time = 10
[Command]
name = "Dangerous Headbutt_Y"
command = ~45$D, $U, y
time = 10
[Command]
name = "Dangerous Headbutt_Z"
command = ~45$D, $U, z
time = 10

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "DU"
command = $D, $U
time = 10

[Command]
name = "ChargedDU"
command = ~30$D, $U
time = 10

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

[Command]
name = "UOH"
command = y+b
time = 1

[Command]
name = "throw"
command = x+a
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

[Command]
name = "parryhigh"
command = F
time = 1

[Command]
name = "parrylow"
command = D
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

;-| CPU Commands |----------------------------------------------------------
[command]
name = "CPU1"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU11"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU12"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU2"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU13"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU14"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU3"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU15"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU16"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU4"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU17"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU18"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU5"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU19"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU20"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU6"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU21"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU22"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU7"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU23"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU24"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU8"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU25"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU26"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU9"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU27"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU28"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU10"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU29"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU30"
command = s, s, s, s, s, s, s, s
time = 1

;====================================================================
;=											  =
;=			    URIEN'S STATEDEF -1					  =
;=											  =
;=										        =
;====================================================================
; SUPER ART
;---------------------------------------------------------------------------
[Statedef -1]
; Aegis Reflector
[State -1, Aegis Reflector]
type = ChangeState
value = 3010
;triggerall = palno = 1 || palno = 4 || palno >= 7
triggerall = command = "Aegis Reflector_2P"
triggerall = power >= 1000
triggerall = var(7) != 2
trigger1 = Statetype != A
trigger1 = ctrl
trigger2 = StateNo = [1100,1250]
[State -1, Aegis Reflector]
type = ChangeState
value = 3000
;triggerall = palno = 1 || palno = 4 || palno >= 7
triggerall = command = "Aegis Reflector_X"
triggerall = power >= 1000
triggerall = var(7) != 2
trigger1 = Statetype != A
trigger1 = ctrl
trigger2 = StateNo = [1100,1250]
[State -1, Aegis Reflector]
type = ChangeState
value = 3020
;triggerall = palno = 1 || palno = 4 || palno >= 7
triggerall = command = "Aegis Reflector_Y"
triggerall = power >= 1000
triggerall = var(7) != 2
trigger1 = Statetype != A
trigger1 = ctrl
trigger2 = StateNo = [1100,1250]
[State -1, Aegis Reflector]
type = ChangeState
value = 3030
;triggerall = palno = 1 || palno = 4 || palno >= 7
triggerall = command = "Aegis Reflector_Z"
triggerall = power >= 1000
triggerall = var(7) != 2
trigger1 = Statetype != A
trigger1 = ctrl
trigger2 = StateNo = [1100,1250]

;---------------------------------------------------------------------------
; Jupiter Thunder
[State -1, Jupiter Thunder]
type = ChangeState
value = 3100
;triggerall = palno = 2 || palno = 5 || palno >= 7
triggerall = command = "Jupiter Thunder"
triggerall = power >= 1000
triggerall = var(7) != 2
trigger1 = Statetype != A
trigger1 = ctrl
trigger2 = StateNo = [1100,1118]
trigger3 = StateNo = [1200,1250]

;---------------------------------------------------------------------------
; Tyrant Punish
[State -1, Tyrant Punish]
type = ChangeState
value = 3200
;triggerall = palno = 3 || palno = 6 || palno >= 7
triggerall = command = "Tyrant Punish"
triggerall = power >= 1000
triggerall = var(7) != 2
trigger1 = Statetype != A
trigger1 = ctrl
trigger2 = StateNo = [1100,1250]

;---------------------------------------------------------------------------
; EX MOVES
;---------------------------------------------------------------------------
; Violence Knee Drop
[State -1, Violence Knee Drop]
type = ChangeState
value = 1050
triggerall = command = "Violence Knee Drop_2K"
triggerall = power >= 500
triggerall = var(7) != 2
trigger1 = Statetype != A
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = StateNo = 420
trigger3 = movecontact && hitcount < 2 && animelem = 4, <0

;---------------------------------------------------------------------------
; Metallic Sphere
[State -1, Metallic Sphere]
type = ChangeState
value = 1150
triggerall = command = "Metallic Sphere_2P"
triggerall = power >= 500
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = StateNo = 210
trigger2 = movecontact
trigger3 = StateNo = 420
trigger3 = movecontact && hitcount < 2 && animelem = 4, <0

;---------------------------------------------------------------------------
; Chariot Tackle
[State -1, Chariot Tackle]
type = ChangeState
value = 1250
triggerall = command = "Chariot Tackle_2K"
triggerall = power >= 500
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl
trigger3 = StateNo = 420
trigger3 = movecontact && hitcount < 2 && animelem = 4, <0
trigger4 = StateNo = 210
trigger4 = movecontact

;---------------------------------------------------------------------------
; Dangerous Headbutt
[State -1, Dangerous Headbutt]
type = ChangeState
value = 1350
triggerall = command = "Dangerous Headbutt_2P"
triggerall = power >= 500
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = StateNo = [400,410]
trigger3 = movecontact
trigger3 = StateNo = 420
trigger3 = movecontact && hitcount < 2 && animelem = 4, <0

;===========================================================================
; SPECIAL MOVES
;---------------------------------------------------------------------------
; Violence Knee Drop
[State -1, Violence Knee Drop]
type = ChangeState
value = 1000
triggerall = command = "Violence Knee Drop_A"
triggerall = var(7) != 2
trigger1 = Statetype != A
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = StateNo = 420
trigger3 = movecontact && hitcount < 2 && animelem = 4, <0
[State -1, Violence Knee Drop]
type = ChangeState
value = 1001
triggerall = command = "Violence Knee Drop_B"
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = movecontact && hitcount < 2 && animelem = 4, <0
[State -1, Violence Knee Drop]
type = ChangeState
value = 1002
triggerall = command = "Violence Knee Drop_C"
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = movecontact && hitcount < 2 && animelem = 4, <0

;---------------------------------------------------------------------------
; Metallic Sphere
[State -1, Metallic Sphere]
type = ChangeState
value = 1100
triggerall = command = "Metallic Sphere_X"
triggerall = NumHelper(1105) = 0
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = StateNo = 210
trigger2 = movecontact
trigger3 = StateNo = 420
trigger3 = movecontact && hitcount < 2 && animelem = 4, <0
[State -1, Metallic Sphere]
type = ChangeState
value = 1101
triggerall = command = "Metallic Sphere_Y"
triggerall = NumHelper(1105) = 0
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = StateNo = 210
trigger2 = movecontact
trigger3 = StateNo = 420
trigger3 = movecontact && hitcount < 2 && animelem = 4, <0
[State -1, Metallic Sphere]
type = ChangeState
value = 1102
triggerall = command = "Metallic Sphere_Z"
triggerall = NumHelper(1105) = 0
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = StateNo = 210
trigger2 = movecontact
trigger3 = StateNo = 420
trigger3 = movecontact && hitcount < 2 && animelem = 4, <0

;---------------------------------------------------------------------------
; Chariot Tackle
[State -1, Chariot Tackle]
type = ChangeState
value = 1200
triggerall = command = "Chariot Tackle_A"
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = StateNo = 420
trigger2 = movecontact && hitcount < 2 && animelem = 4, <0
trigger3 = StateNo = 210
trigger3 = movecontact
[State -1, Chariot Tackle]
type = ChangeState
value = 1201
triggerall = command = "Chariot Tackle_B"
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = StateNo = 420
trigger2 = movecontact && hitcount < 2 && animelem = 4, <0
trigger3 = StateNo = 210
trigger3 = movecontact
[State -1, Chariot Tackle]
type = ChangeState
value = 1202
triggerall = command = "Chariot Tackle_C"
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = StateNo = 420
trigger2 = movecontact && hitcount < 2 && animelem = 4, <0
trigger3 = StateNo = 210
trigger3 = movecontact

;---------------------------------------------------------------------------
; Dangerous Headbutt
[State -1, Dangerous Headbutt]
type = ChangeState
value = 1300
triggerall = command = "Dangerous Headbutt_X"
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = StateNo = [400,410]
trigger3 = movecontact
trigger4 = StateNo = 420
trigger4 = movecontact && hitcount < 2 && animelem = 4, <0
[State -1, Dangerous Headbutt]
type = ChangeState
value = 1301
triggerall = command = "Dangerous Headbutt_Y"
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = StateNo = [400,410]
trigger3 = movecontact
trigger4 = StateNo = 420
trigger4 = movecontact && hitcount < 2 && animelem = 4, <0
[State -1, Dangerous Headbutt]
type = ChangeState
value = 1302
triggerall = command = "Dangerous Headbutt_Z"
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = StateNo = 40
trigger3 = StateNo = [400,410]
trigger3 = movecontact
trigger4 = StateNo = 420
trigger4 = movecontact && hitcount < 2 && animelem = 4, <0

;===========================================================================
; Personal Action
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "z" && command = "c"
trigger1 = Statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Long Jump
[State -1, Run Back]
type = ChangeState
value = 48
triggerall = Statetype != A
triggerall = var(7) != 2
triggerall = ctrl
trigger1 = command = "DU"
trigger1 = command != "ChargedDU"

;---------------------------------------------------------------------------
; Quarrel Kick
[State -1, Quarrel Kick]
type = ChangeState
value = 245
triggerall = command = "fwd_b"
triggerall = command != "holddown"
triggerall = var(7) != 2
trigger1 = Statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Quarrel Punch
[State -1, Quarrel Punch]
type = ChangeState
value = 215
triggerall = command = "fwd_y"
triggerall = command != "holddown"
triggerall = var(7) != 2
trigger1 = Statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Terrible Smash
[State -1, Terrible Smash]
type = ChangeState
value = 226
triggerall = command = "fwd_z"
triggerall = command != "holddown"
triggerall = var(7) != 2
trigger1 = Statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Universal Over Head
[State -1, Universal Over Head]
type = ChangeState
value = 709
triggerall = command = "UOH"
triggerall = command != "holddown"
triggerall = var(7) != 2
trigger1 = Statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = var(7) != 2
trigger1 = Statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(7) != 2
trigger1 = Statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(7) != 2
trigger1 = Statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = var(7) != 2
trigger1 = Statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(7) != 2
trigger1 = Statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(7) != 2
trigger1 = Statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = var(7) != 2
trigger1 = Statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = var(7) != 2
trigger1 = Statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = var(7) != 2
trigger1 = Statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = var(7) != 2
trigger1 = Statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = var(7) != 2
trigger1 = Statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = var(7) != 2
trigger1 = Statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
triggerall = var(7) != 2
trigger1 = Statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; CPU Commands
[State -1]
type = VarSet
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
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
trigger26 = command = "CPU26"
trigger27 = command = "CPU27"
trigger28 = command = "CPU28"
trigger29 = command = "CPU29"
trigger30 = command = "CPU30"
v = 7
value = 1

;---------------------------------------------------------------------------
; AI
[State -1]
type = ChangeState
triggerall = var(7) = 1
triggerall = power >= 1500
trigger1 = (Random <= 499)
trigger1 = (Statetype != A) && (Ctrl)
trigger1 = (P2BodyDist X >= 40) && (P2Statetype = S)
value = 3030
[State -1]
type = ChangeState
triggerall = var(7) = 1
triggerall = power >= 1500
trigger1 = (Random <= 499)
trigger1 = (Statetype != A) && (Ctrl)
trigger1 = (P2BodyDist X <= 40) && (P2Statetype = A)
value = 3010
[State -1]
type = ChangeState
triggerall = var(7) = 1
triggerall = power >= 1500
trigger1 = (Random <= 499)
trigger1 = (Statetype != A) && (Ctrl)
trigger1 = (P2BodyDist X >= 40) && (P2Statetype = S)
value = 3200
[State -1]
type = ChangeState
triggerall = var(7) = 1
triggerall = (Power >= 1000) && (Random <= 499)
trigger1 = StateNo = 1200
trigger1 = MoveHit
value = 3200
[State -1]
type = changestate
triggerall = var(7) = 1
triggerall = Statetype = A
triggerall = P2movetype = A
triggerall = ctrl
triggerall = Facing != (enemynear, Facing)
trigger1 = random > life
value = 132
[State -1]
type = changestate
triggerall = var(7) = 1
triggerall = Statetype != A
triggerall = P2Statetype != C
triggerall = Statetype = S
triggerall = P2movetype = A
triggerall = pos y != [-1,-999]
triggerall = ctrl
triggerall = Facing != (enemynear, Facing)
trigger1 = random > (enemynear, movecontact)*700
value = 130 
[State -1]
type = changestate
triggerall = var(7) = 1
triggerall = Statetype != A
triggerall = P2Statetype = C
triggerall = P2movetype = A
triggerall = pos y != [-1,-999]
trigger1 = StateNo = 150
trigger1 = 1
value = 152
[State -1]
type = changestate
triggerall = var(7) = 1
triggerall = Statetype != A
triggerall = P2Statetype = C
triggerall = P2movetype = A
triggerall = pos y != [-1,-999]
triggerall = ctrl
triggerall = Facing != (enemynear, Facing)
trigger1 = random > (enemynear, movecontact)*700
value = 131
[State -1]
type = changestate
triggerall = var(7) = 1
triggerall = Statetype != A
triggerall = P2Statetype != C
triggerall = P2movetype = A
trigger1 = random > life
trigger1 = StateNo = 152
value = 150
[State -1]
type = ChangeState
triggerall = var(7) = 1
triggerall = (Statetype != A) && (Ctrl)
triggerall = (Random <= 200)
trigger1 = (P2BodyDist X >= 40) && (P2Statetype = A)
value = 1002
[State -1]
type = ChangeState
triggerall = var(7) = 1
triggerall = (Statetype != A) && (Ctrl)
triggerall = (Random <= 700) && (Power >= 700)
trigger1 = (P2BodyDist X <= 40) && (P2Statetype = A)
value = 1350
[State -1]
type = ChangeState
triggerall = var(7) = 1
triggerall = (Statetype != A) && (Ctrl)
triggerall = (Random <= 700) && (Power >= 1000)
trigger1 = (P2BodyDist X <= 40) && (P2Statetype = A)
value = 3100
[State -1]
type = ChangeState
triggerall = var(7) = 1
triggerall = (Statetype != A) && (Ctrl)
triggerall = Random <= 200
trigger1 = P2Statetype = L
value = 195
[State -1]
type = ChangeState
triggerall = var(7) = 1
triggerall = (Statetype != A) && (Ctrl)
triggerall = Random <= 499
trigger1 = (P2BodyDist X <= 40) && (P2Statetype = C)
value = 709
[State -1]
type = ChangeState
triggerall = var(7) = 1
triggerall = (Statetype != A) && (Ctrl)
triggerall = (Random <= 400)
trigger1 = (P2BodyDist X <= 40) && (P2Statetype = A)
value = 1200
[State -1]
type = ChangeState
triggerall = var(7) = 1
triggerall = (Statetype != A) && (Ctrl)
triggerall = (Random <= 400)
trigger1 = (P2BodyDist X >= 40) && (P2Statetype = A)
value = 1201
[State -1]
type = ChangeState
triggerall = var(7) = 1
triggerall = (Statetype != A) && (Ctrl)
triggerall = (Random <= 400)
trigger1 = (P2BodyDist X >= 40) && (P2Statetype = S)
value = 1202
[State -1]
type = ChangeState
triggerall = var(7) = 1
triggerall = (Power >= 1000) && (Random <= 500)
triggerall = (Statetype != A) && (Ctrl) && (P2Statetype = A) && (P2BodyDist X <= 40)
trigger1 = StateNo = [1200,1202]
trigger1 = movehit
value = 3200
[State -1]
type = ChangeState
triggerall = var(7) = 1
triggerall = (Statetype != A) && (Ctrl)
triggerall = (Random <= 700)
trigger1 = (P2BodyDist X <= 40) && (P2Statetype = S)
value = 420
[State -1]
type = ChangeState
triggerall = var(7) = 1
triggerall = (Statetype != A) && (Ctrl)
triggerall = (Random <= 499)
trigger1 = (P2BodyDist X <= 40) && (P2Statetype = S)
value = 450
[State -1]
type = HitOverride
triggerall = var(7) = 1
triggerall = (StateType = S)
triggerall = Stateno != [195,650]
triggerall = Stateno != [710,5400]
triggerall = P2Statetype = S
triggerall = P2movetype = A
trigger1 = (Command != "holddown") && (Command != "holdback")
slot = 0
Stateno = 700
attr = SA,AA,AP
time = 2
[State -1]
type = HitOverride
triggerall = var(7) = 1
triggerall = (StateType != A) && (StateType = C)
triggerall = Stateno != [195,650]
triggerall = Stateno != [710,5400]
triggerall = P2Statetype = C
triggerall = P2movetype = A
trigger1 = (Command != "holdfwd") && (Command != "holdback")
slot = 0
Stateno = 701
attr = C,AA,AP
time = 2
[State -1]
type = HitOverride
triggerall = var(7) = 1 && (StateType = A)
triggerall = Stateno != [195,650]
triggerall = Stateno != [710,5400]
triggerall = P2Statetype = A
triggerall = P2movetype = A
trigger1 = (Command != "holddown") && (Command != "holdback")
slot = 0
Stateno = 702
attr = SCA,AA,AP
time = 2























