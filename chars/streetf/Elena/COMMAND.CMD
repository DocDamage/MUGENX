
; Elena's commands file

;-| Hyper-Arts Motions |--------------------------------------------------------
; Spinning Beat
[Command]
name = "2xQCF_a"
command = ~D, DF, F, D, DF, F, a
time = 25
[Command]
name = "2xQCF_b"
command = ~D, DF, F, D, DF, F, b
time = 25
[Command]
name = "2xQCF_b"
command = ~F, D, DF, b, F, b
time = 60
[Command]
name = "2xQCF_c"
command = ~D, DF, F, D, DF, F, c
time = 25
[Command]
name = "2xQCF_c"
command = ~F, D, DF, c, F, c
time = 60

; Brave Dance
[Command]
name = "2xQCF_x"
command = ~D, DF, F, D, DF, F, x
time = 25
[Command]
name = "2xQCF_y"
command = ~D, DF, F, D, DF, F, y
time = 25
[Command]
name = "2xQCF_y"
command = ~F, D, DF, b, F, y
time = 60
[Command]
name = "2xQCF_z"
command = ~D, DF, F, D, DF, F, z
time = 25
[Command]
name = "2xQCF_z"
command = ~F, D, DF, c, F, z
time = 60

; Healing
[Command]
name = "2xQCB_x"
command = ~D, DB, B, D, DB, B, x
time = 25
[Command]
name = "2xQCB_y"
command = ~D, DB, B, D, DB, B, y
time = 25
[Command]
name = "2xQCB_y"
command = ~F, D, DF, b, B, y
time = 60
[Command]
name = "2xQCB_z"
command = ~D, DB, B, D, DB, B, z
time = 25
[Command]
name = "2xQCB_z"
command = ~F, D, DF, c, B, z
time = 60

;-| Special Motions |------------------------------------------------------
; Lynx Tail
[Command]
name = "ZZB_a"
command = ~B, D, DB, a
[Command]
name = "ZZB_b"
command = ~B, D, DB, b
[Command]
name = "ZZB_c"
command = ~B, D, DB, c
[Command]
name = "ZZB_EX"
command = ~B, D, DB, a+b
[Command]
name = "ZZB_EX"
command = ~B, D, DB, b+c
[Command]
name = "ZZB_EX"
command = ~B, D, DB, a+c

; Mallet Smash
[Command]
name = "HCB_x"
command = ~F, DF, D, DB, B, x
[Command]
name = "HCB_y"
command = ~F, DF, D, DB, B, y
[Command]
name = "HCB_z"
command = ~F, DF, D, DB, B, z
[Command]
name = "HCB_EX"
command = ~F, DF, D, DB, B, x+y
[Command]
name = "HCB_EX"
command = ~F, DF, D, DB, B, y+z
[Command]
name = "HCB_EX"
command = ~F, DF, D, DB, B, x+z

; Spinning Scythe
[Command]
name = "QCB_a"
command = ~D, DB, B, a
[Command]
name = "QCB_b"
command = ~D, DB, B, b
[Command]
name = "QCB_c"
command = ~D, DB, B, c
[Command]
name = "QCB_EX"
command = ~D, DB, B, a+b
[Command]
name = "QCB_EX"
command = ~D, DB, B, b+c
[Command]
name = "QCB_EX"
command = ~D, DB, B, a+c

; Rhino Horn
[Command]
name = "HCF_a"
command = ~B, DB, D, DF, F, a
[Command]
name = "HCF_b"
command = ~B, DB, D, DF, F, b
[Command]
name = "HCF_c"
command = ~B, DB, D, DF, F, c
[Command]
name = "HCF_EX"
command = ~B, DB, D, DF, F, a+b
[Command]
name = "HCF_EX"
command = ~B, DB, D, DF, F, b+c
[Command]
name = "HCF_EX"
command = ~B, DB, D, DF, F, a+c

; Scratch Wheel
[Command]
name = "ZZF_a"
command = ~F, D, DF, a
[Command]
name = "ZZF_b"
command = ~F, D, DF, b
[Command]
name = "ZZF_c"
command = ~F, D, DF, c
[Command]
name = "ZZF_EX"
command = ~F, D, DF, a+b
[Command]
name = "ZZF_EX"
command = ~F, D, DF, b+c
[Command]
name = "ZZF_EX"
command = ~F, D, DF, a+c

; Counter Punch
[Command]
name = "counter_p"
command = x+y
[Command]
name = "counter_p"
command = y+z
[Command]
name = "counter_p"
command = x+z

; Counter Kick
[Command]
name = "counter_k"
command = a+b
[Command]
name = "counter_k"
command = b+c
[Command]
name = "counter_k"
command = a+c

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
name = "sjump"
command = D, $U

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
name = "kickup"
command = a+b
time = 1

[Command]
name = "kickup"
command = b+c
time = 1

[Command]
name = "kickup"
command = a+c
time = 1

[Command]
name = "Throw"
command = x+a
time = 1

[Command]
name = "Overhead"
command = y+b

[Command]
name = "Person"
command = z+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "downfwd_c"
command = /$DF,c

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
name = "s"
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
name = "hold_s"
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

;-| Parrying |--------------------------------------------------------------
[Command]
name = "parryH"
command = F
time = 1

[Command]
name = "parryL"
command = D
time = 1



;===========================================================================
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
; Hyper-Arts Moves
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Spinning Beat
[State -1]
type = ChangeState
value = 3000
triggerall = command = "2xQCF_a" || command = "2xQCF_b" || command = "2xQCF_c"
triggerall = command != "holddown"
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 1801 || stateno = 1802 || stateno = 1850
trigger2 = movecontact && AnimElem = 5, < 0
trigger3 = stateno = 1452
trigger3 = movecontact

;---------------------------------------------------------------------------
; Brave Dance
[State -1]
type = ChangeState
value = 3400
triggerall = command = "2xQCF_x" || command = "2xQCF_y" || command = "2xQCF_z"
triggerall = command != "holddown"
triggerall = power >= 1500
trigger1 = statetype != A && ctrl
trigger2 = stateno = 1801 || stateno = 1802
trigger2 = movecontact && AnimElem = 5, < 0

;---------------------------------------------------------------------------
; Healing
[State -1]
type = ChangeState
value = 3200
triggerall = command = "2xQCB_x" || command = "2xQCB_y" || command = "2xQCB_z"
triggerall = command != "holddown"
triggerall = power >= 3000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 1801 || stateno = 1802
trigger2 = movecontact && AnimElem = 5, < 0

;===========================================================================
;---------------------------------------------------------------------------
; EX Moves
;---------------------------------------------------------------------------
; EX - Lynx Tail
[State -1]
type = ChangeState
value = 1050
triggerall = command = "ZZB_EX"
triggerall = command != "holddown"
triggerall = power >= 500
trigger1 = statetype != A && ctrl
trigger2 = stateno = 430 || stateno = 210
trigger2 = movecontact

;---------------------------------------------------------------------------
; EX - Mallet Smash
[State -1]
type = ChangeState
value = 1250
triggerall = command = "HCB_EX"
triggerall = command != "holddown"
triggerall = power >= 500
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 230
trigger2 = movecontact

;---------------------------------------------------------------------------
; EX - Spinning Scythe
[State -1]
type = ChangeState
value = 1450
triggerall = command = "QCB_EX"
triggerall = command != "holddown"
triggerall = power >= 500
trigger1 = statetype != A && ctrl
trigger2 = stateno = 410 || stateno = 210
trigger2 = movecontact

;---------------------------------------------------------------------------
; EX - Rhino Horn
[State -1]
type = ChangeState
value = 1650
triggerall = command = "HCF_EX"
triggerall = command != "holddown"
triggerall = power >= 500
trigger1 = statetype != A && ctrl
trigger2 = stateno = 430 || stateno = 210
trigger2 = movecontact

;---------------------------------------------------------------------------
; EX - Scratch Wheel
[State -1]
type = ChangeState
value = 1850
triggerall = command = "ZZF_EX"
triggerall = command != "holddown"
triggerall = power >= 500
trigger1 = statetype = S && ctrl
trigger2 = stateno = 410 || stateno = 430 || stateno = 200
trigger2 = movecontact



;===========================================================================
;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------
; Lynx Tail
[State -1]
type = ChangeState
value = 1000
triggerall = command = "ZZB_a" || command = "ZZB_b" || command = "ZZB_c"
triggerall = command != "holddown"
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
; Mallet Smash
[State -1]
type = ChangeState
value = 1200
triggerall = command = "HCB_x" || command = "HCB_y" || command = "HCB_z"
triggerall = command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 430
trigger2 = movecontact

;---------------------------------------------------------------------------
; Spinning Scythe (LK)
[State -1]
type = ChangeState
value = 1400
triggerall = command = "QCB_a"
triggerall = command != "holddown"
trigger1 = statetype != A && ctrl

;---------------------------------------------------------------------------
; Spinning Scythe (MK)
[State -1]
type = ChangeState
value = 1401
triggerall = command = "QCB_b"
triggerall = command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 410
trigger2 = movecontact

;---------------------------------------------------------------------------
; Spinning Scythe (HK)
[State -1]
type = ChangeState
value = 1402
triggerall = command = "QCB_c"
triggerall = command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 410
trigger2 = movecontact

;---------------------------------------------------------------------------
; Rhino Horn
[State -1]
type = ChangeState
value = 1600 
triggerall = command = "HCF_a" || command = "HCF_b" || command = "HCF_c"
triggerall = command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 210  || stateno = 230 || stateno = 410
trigger2 = movecontact

;---------------------------------------------------------------------------
; Scratch Wheel (LK)
[State -1]
type = ChangeState
value = 1800
triggerall = command = "ZZF_a"
triggerall = command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 400 || stateno = 410 || stateno = 430 || stateno = 230 || stateno = 210
trigger2 = movecontact

;---------------------------------------------------------------------------
; Scratch Wheel (MK)
[State -1]
type = ChangeState
value = 1801
triggerall = command = "ZZF_b"
triggerall = command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 400 || stateno = 410 || stateno = 430 || stateno = 230 || stateno = 210
trigger2 = movecontact

;---------------------------------------------------------------------------
; Scratch Wheel (HK)
[State -1]
type = ChangeState
value = 1802
triggerall = command = "ZZF_c"
triggerall = command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 400 || stateno = 410 || stateno = 430 || stateno = 230 || stateno = 210
trigger2 = movecontact


;===========================================================================
;---------------------------------------------------------------------------
; Basic Moves
;---------------------------------------------------------------------------
; Glide Fwd
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && time > 4

;---------------------------------------------------------------------------
; Glide Back
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 105 && AnimElem = 20, > 1 ;caro KAKA

;---------------------------------------------------------------------------
; Getup with Kick
[State -1]
type = ChangeState
value = 5125
triggerall = alive
triggerall = stateno != 5120
triggerall = command = "kickup"
trigger1 = Anim = 5110
trigger1 = statetype = L

;---------------------------------------------------------------------------
; Super Jump
[State -1]
type = ChangeState
value = 40
triggerall = command = "sjump"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && time > 4

;---------------------------------------------------------------------------
; Body Slam
[State -1]
type = ChangeState
value = 800
triggerall = command = "Throw"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && time > 4
trigger3 = stateno = 270 && time < 6

;---------------------------------------------------------------------------
; Overhead
[State -1]
type = ChangeState
value = 810
triggerall = command = "Overhead"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && time > 4
trigger3 = stateno = 210 && movecontact

;---------------------------------------------------------------------------
; Taunt
[State -1]
type = ChangeState
value = 195
triggerall = command = "Person"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && time > 4

;---------------------------------------------------------------------------
; Test
[State -1]
type = ChangeState
value = 5400
triggerall = command = "s"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && time > 4

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && time > 4

;---------------------------------------------------------------------------
; Poke over
[State -1]
type = ChangeState
value = 260
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && time > 4

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && time > 4

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && time > 4
trigger3 = stateno = 230 && time > 10
trigger4 = stateno = 200 && movecontact

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && time > 4

;---------------------------------------------------------------------------
; Standing Almost Hig Kic
[State -1]
type = ChangeState
value = 270
triggerall = command = "fwd_b"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && time > 4

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holdback"
triggerall = command != "holddownfwd"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && time > 4
trigger3 = stateno = 220 && movecontact

;---------------------------------------------------------------------------
; Standing Up Kick
[State -1]
type = ChangeState
value = 280
triggerall = command = "back_c"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101 && time > 4

;---------------------------------------------------------------------------
; Slide Kick
[State -1]
type = ChangeState
value = 290
triggerall = command = "downfwd_c"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 240 && movecontact
trigger3 = stateno = 101 && time > 4

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 101 && time > 4
trigger3 = stateno = 400 && time > 17

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 101 && time > 4

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 101 && time > 4
trigger3 = stateno = 240 && movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 101 && time > 4
trigger3 = stateno = 430 && time > 12

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 101 && time > 4

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 101 && time > 4

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 610 && movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A && ctrl
