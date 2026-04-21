;--------------------------------------------------------------
; Q's CMD file...
;--------------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

;-| Super Motions |--------------------------------------------
[Command]
name = "critical_combo"
command = ~D, DF, F, D, DF, x
time = 30
[Command]
name = "critical_combo"
command = ~D, DF, F, D, DF, y
time = 30
[Command]
name = "critical_combo"
command = ~D, DF, F, D, DF, z
time = 30

[Command]
name = "dd_combo"
command = ~D, DB, B, D, DB, x
time = 30
[Command]
name = "dd_combo"
command = ~D, DB, B, D, DB, y
time = 30
[Command]
name = "dd_combo"
command = ~D, DB, B, D, DB, z
time = 30

[Command]
name = "total_destruction"
command = ~B, D, DB, D, DB, a
time = 30
[Command]
name = "total_destruction"
command = ~B, D, DB, D, DB, b
time = 30
[Command]
name = "total_destruction"
command = ~B, D, DB, D, DB, c
time = 30

;-| Special Motions |------------------------------------------
[Command]
name = "dash_x"
command = ~30$B, F, x
time = 15
[Command]
name = "dash_y"
command = ~30$B, F, y
time = 15
[Command]
name = "dash_z"
command = ~30$B, F, z
time = 15

[Command]
name = "dash_a"
command = ~30$B, F, a
time = 15
[Command]
name = "dash_b"
command = ~30$B, F, b
time = 15
[Command]
name = "dash_c"
command = ~30$B, F, c
time = 15

[Command]
name = "dash_ex"
command = ~30$B, F, x+y
time = 20
[Command]
name = "dash_ex"
command = ~30$B, F, x+z
time = 20
[Command]
name = "dash_ex"
command = ~30$B, F, y+z
time = 20

[Command]
name = "r_swipe_x"
command = ~D, DB, B, x
time = 15
[Command]
name = "r_swipe_y"
command = ~D, DB, B, y
time = 15
[Command]
name = "r_swipe_z"
command = ~D, DB, B, z
time = 15

[Command]
name = "r_swipe_ex"
command = ~D, DB, B, x+y
time = 20
[Command]
name = "r_swipe_ex"
command = ~D, DB, B, x+z
time = 20
[Command]
name = "r_swipe_ex"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "cdb_a"
command = ~F, DF, D, DB, B, a
time = 25
[Command]
name = "cdb_b"
command = ~F, DF, D, DB, B, b
time = 25
[Command]
name = "cdb_c"
command = ~F, DF, D, DB, B, c
time = 25

;-| Double Tap |-----------------------------------------------
[Command]
name = "FF"         ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"         ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------
[Command]
name = "recovery"   ;Required (do not remove)
command = a+b
time = 1

[Command]
name = "grab1"
command = /F, a+x
time = 1

[Command]
name = "grab2"
command = /B, a+x
time = 1

[Command]
name = "grab3"
command = a+x
time = 1

[Command]
name = "taunt"
command = c+z
time = 1

;-| Dir + Button |---------------------------------------------
[Command]
name = "down_a"
command = /$D, a
time = 1

[Command]
name = "down_b"
command = /$D, b
time = 1

;-| Single Button |-------------------------------------------
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
name = "taunt"
command = s
time = 1

[Command]
name = "block"
command = F
time = 1
[Command]
name = "block2"
command = D
time = 1

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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"  ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"   ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
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
; Don't remove the following line. It's required by the CMD standard.

;--------------------------------------------------------------

[Statedef -1]

;--------------------------------------------------------------
[State -1, Critical Combo Attack]
type = ChangeState
value = 3000
triggerall = command = "critical_combo"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,200]) || (stateno = [215,215]) || (stateno = [230,230]) || (stateno = [240,240]) || (stateno = [245,245])
trigger3 = (stateno = [400,410]) || (stateno = [430,440]) || (stateno = [100,102])

;--------------------------------------------------------------
[State -1, Deadly Double Combo]
type = ChangeState
value = 3100
triggerall = command = "dd_combo"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,200]) || (stateno = [215,215]) || (stateno = [230,230]) || (stateno = [240,240]) || (stateno = [245,245])
trigger3 = (stateno = [100,102]) || (stateno = [1000,1050]) || (stateno = [1200,1250])

;--------------------------------------------------------------
[State -1, Total Destruction]
type = ChangeState
value = 3200
triggerall = command = "total_destruction"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,200]) || (stateno = [215,215]) || (stateno = [230,230]) || (stateno = [240,240]) || (stateno = [245,245])
trigger3 = (stateno = [100,102]) || (stateno = [400,410]) || (stateno = [1200,1250])

;--------------------------------------------------------------
; Run Fwd
[State -1, run_fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;--------------------------------------------------------------
; Run Back
[State -1, run_back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;--------------------------------------------------------------
; Taunt
[State -1, taunt]
type = ChangeState
value = 195
trigger1 = command = "taunt"
trigger1 = statetype = S
trigger1 = ctrl

;--------------------------------------------------------------
[State -1, Throw1]
type = ChangeState
value = 800
trigger1 = command = "grab1" || command = "grab2" 
trigger1 = statetype = S 
trigger1 = ctrl

;--------------------------------------------------------------
[State -1, Throw2]
type = ChangeState
value = 850
trigger1 = command = "grab3" && statetype = S && ctrl

;---------------------------------------------------------------
[State -1, Dash Straight X]
type = ChangeState
value = 1000
triggerall = command = "dash_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,200]) || (stateno = [215,215]) || (stateno = [230,230]) || (stateno = [240,240]) || (stateno = [245,245])
trigger3 = (stateno = [400,410]) || (stateno = [430,440]) || (stateno = [100,102])

;---------------------------------------------------------------
[State -1, Dash Straight Y]
type = ChangeState
value = 1010
triggerall = command = "dash_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,200]) || (stateno = [215,215]) || (stateno = [230,230]) || (stateno = [240,240]) || (stateno = [245,245])
trigger3 = (stateno = [400,410]) || (stateno = [430,440]) || (stateno = [100,102])

;---------------------------------------------------------------
[State -1, Dash Straight Z]
type = ChangeState
value = 1020
triggerall = command = "dash_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,200]) || (stateno = [215,215]) || (stateno = [230,230]) || (stateno = [240,240]) || (stateno = [245,245])
trigger3 = (stateno = [400,410]) || (stateno = [430,440]) || (stateno = [100,102])

;---------------------------------------------------------------
[State -1, Dash Leg Attack A]
type = ChangeState
value = 1030
triggerall = command = "dash_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,200]) || (stateno = [215,215]) || (stateno = [230,230]) || (stateno = [240,240]) || (stateno = [245,245])
trigger3 = (stateno = [400,410]) || (stateno = [430,440]) || (stateno = [100,102])

;---------------------------------------------------------------
[State -1, Dash Leg Attack B]
type = ChangeState
value = 1035
triggerall = command = "dash_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,200]) || (stateno = [215,215]) || (stateno = [230,230]) || (stateno = [240,240]) || (stateno = [245,245])
trigger3 = (stateno = [400,410]) || (stateno = [430,440]) || (stateno = [100,102])

;---------------------------------------------------------------
[State -1, Dash Leg Attack C]
type = ChangeState
value = 1040
triggerall = command = "dash_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,200]) || (stateno = [215,215]) || (stateno = [230,230]) || (stateno = [240,240]) || (stateno = [245,245])
trigger3 = (stateno = [400,410]) || (stateno = [430,440]) || (stateno = [100,102])

;---------------------------------------------------------------
[State -1, Dash Straight EX]
type = ChangeState
value = 1050
triggerall = command = "dash_ex"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,200]) || (stateno = [215,215]) || (stateno = [230,230]) || (stateno = [240,240]) || (stateno = [245,245])
trigger3 = (stateno = [100,102])

;---------------------------------------------------------------
[State -1, Capture and Deadly Blow A]
type = ChangeState
value = 1100
triggerall = command = "cdb_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,200]) || (stateno = [215,215]) || (stateno = [230,230]) || (stateno = [240,240]) || (stateno = [245,245])
trigger3 = (stateno = [100,102])

;---------------------------------------------------------------
[State -1, Capture and Deadly Blow B]
type = ChangeState
value = 1110
triggerall = command = "cdb_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,200]) || (stateno = [215,215]) || (stateno = [230,230]) || (stateno = [240,240]) || (stateno = [245,245])
trigger3 = (stateno = [100,102])

;---------------------------------------------------------------
[State -1, Capture and Deadly Blow C]
type = ChangeState
value = 1120
triggerall = command = "cdb_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,200]) || (stateno = [215,215]) || (stateno = [230,230]) || (stateno = [240,240]) || (stateno = [245,245])
trigger3 = (stateno = [100,102])

;---------------------------------------------------------------
[State -1, Rapid Swipes X]
type = ChangeState
value = 1200
triggerall = command = "r_swipe_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,200]) || (stateno = [215,215]) || (stateno = [230,230]) || (stateno = [240,240]) || (stateno = [245,245])
trigger3 = (stateno = [100,102])

;---------------------------------------------------------------
[State -1, Rapid Swipes Y]
type = ChangeState
value = 1210
triggerall = command = "r_swipe_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,200]) || (stateno = [215,215]) || (stateno = [230,230]) || (stateno = [240,240]) || (stateno = [245,245])
trigger3 = (stateno = [100,102])

;---------------------------------------------------------------
[State -1, Rapid Swipes Z]
type = ChangeState
value = 1220
triggerall = command = "r_swipe_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,200]) || (stateno = [215,215]) || (stateno = [230,230]) || (stateno = [240,240]) || (stateno = [245,245])
trigger3 = (stateno = [100,102])

;---------------------------------------------------------------
[State -1, Rapid Swipes EX]
type = ChangeState
value = 1250
triggerall = command = "r_swipe_ex"
triggerall = power >= 500
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,200]) || (stateno = [215,215]) || (stateno = [230,230]) || (stateno = [240,240]) || (stateno = [245,245])
trigger3 = (stateno = [100,102])

;--------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = P2bodydist X > 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 && time > 12

;--------------------------------------------------------------
[State -1, Close Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
trigger1 = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl

;--------------------------------------------------------------
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1

;--------------------------------------------------------------
[State -1, Stand Medium Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1

;--------------------------------------------------------------
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100 && time > 12

;--------------------------------------------------------------
[State -1, Stand Hard Punch]
type = ChangeState
value = 225
triggerall = command = "z"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100 && time > 12
trigger3 = (stateno = [400,410]) || (stateno = [430,440]) 

;--------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 && time > 12

;--------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 && time > 12

;--------------------------------------------------------------
[State -1, Stand Medium Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100 && time > 12

;--------------------------------------------------------------
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 && time > 12

;--------------------------------------------------------------
[State -1, Stand Hard Kick]
type = ChangeState
value = 255
triggerall = command = "c"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100 && time > 12

;--------------------------------------------------------------
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;--------------------------------------------------------------
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;--------------------------------------------------------------
[State -1, Crouch Hard Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;--------------------------------------------------------------
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;--------------------------------------------------------------
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;--------------------------------------------------------------
[State -1, Crouch Hard Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;--------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = Vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;--------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 605
triggerall = command = "x"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;--------------------------------------------------------------
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;--------------------------------------------------------------
[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;--------------------------------------------------------------
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;--------------------------------------------------------------
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;--------------------------------------------------------------
[State -1, Jump Hard Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;--------------------------------------------------------------