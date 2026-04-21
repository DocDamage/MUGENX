;-| Super Motions |--------------------------------------------------------

[command]
name = "oshioki"
command = x, x, F, a, z
time = 60 ;35

[command]
name = "oshioki"
command = x, x, F, y, z
time = 60 ;35

;-| Special Motions |------------------------------------------------------
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1
[Command]
name = "recovery";Extra recovery commands (optional)
command = y+z
time = 1
[Command]
name = "recovery";Extra recovery commands (optional)
command = x+z
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
name = "yz"
command = y+z
time = 1

[Command]
name = "abc"
command = a+b+c
time = 1

[Command]
name = "ditch"
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
name = "back_c"
command = /B,c
time = 1
[Command]
name = "back_x"
command = /B,x
time = 1
[Command]
name = "back_y"
command = /B,y
time = 1
[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_a"
command = /D,a
time = 1
[Command]
name = "down_b"
command = /D,b
time = 1
[Command]
name = "down_c"
command = /D,c
time = 1
[Command]
name = "down_x"
command = /D,x
time = 1
[Command]
name = "down_y"
command = /D,y
time = 1
[Command]
name = "down_z"
command = /D,z
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1
[Command]
name = "fwd_bc"
command = /F, b+c
time = 1

[Command]
name = "fwd_xy"
command = /F, x+y
time = 1
[Command]
name = "fwd_yz"
command = /F, y+z
time = 1

[Command]
name = "back_xy"
command = /B, x+y
time = 1
[Command]
name = "back_yz"
command = /B, y+z
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1
[Command]
name = "back_bc"
command = /B, b+c
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
name = "s"
command = s
time = 1

;-| Hold Button |-----------------------------------------------------------
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holddownforward"
command = /$DF
time = 1

;---------------------------------------------------------------------------
; Commands
[Statedef -1]

[state aha]
type = changestate
triggerall = command = "oshioki" && power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA ;&& movecontact
trigger3 = stateno = 52
value = 2000

[state aha]
type = null;changestate
trigger1 = command = "bc" && statetype != A
trigger1 = ctrl
value = 2100
;---------------------------------------------------------------------------
;RunF
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = ctrl = 1
trigger1 = statetype = S

;---------------------------------------------------------------------------
;RunB
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = ctrl = 1
trigger1 = statetype = S

;---------------------------------------------------------------------------

[State -1, Ditch]
type = ChangeState
value = 260
triggerall = command = "ditch"
trigger1 = statetype != a && ctrl
trigger2 = stateno = [100,102]

;---------------------------------------------------------------------------
;Stand_x
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [100,102]

;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 300 && movecontact
trigger5 = stateno = 330 && movecontact
trigger6 = stateno = [100,102]

;---------------------------------------------------------------------------
;Stand_C
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 300
trigger6 = movecontact
trigger7 = stateno = 310
trigger7 = helper(315), movecontact
trigger8 = stateno = 330 && movecontact
trigger9 = stateno = 340 && movecontact
trigger10 = stateno = [100,102]

;---------------------------------------------------------------------------

;Standing Low Kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200 ;Stand_X
trigger2 = movecontact
trigger3 = stateno = 300 && movecontact
trigger4 = stateno = [100,102]

;--------------------------------------------------------------------------
;Standing Medium Kick
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 300
trigger5 = movecontact
trigger6 = stateno = 310
trigger6 = helper(315), movecontact
trigger7 = stateno = 330
trigger7 = movecontact
trigger8 = stateno = [100,102]

;--------------------------------------------------------------------------
;Standing High Kick
[State -1]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = helper(225), movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 300
trigger7 = movecontact
trigger8 = stateno = 310
trigger8 = helper(315), movecontact
trigger9 = stateno = 320
trigger9 = movecontact
trigger10 = stateno = 330
trigger10 = movecontact
trigger11 = stateno = 340
trigger11 = movecontact
trigger12 = stateno = [100,102]

;---------------------------------------------------------------------------
;CrouchING LOW Punch
[State -1]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = [100,102]

;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 310
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 300
trigger4 = movecontact
trigger5 = stateno = 330
trigger5 = movecontact
trigger6 = stateno = [100,102]

;---------------------------------------------------------------------------
;Crouch_C
[State -1]
type = ChangeState
value = 320
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 300
trigger6 = movecontact
trigger7 = stateno = 310
trigger7 = helper(315), movecontact
trigger8 = stateno = 330
trigger8 = movecontact
trigger9 = stateno = 340
trigger9 = movecontact
trigger10 = stateno = [100,102]

;---------------------------------------------------------------------------
;Crouch_X
[State -1]
type = ChangeState
value = 330
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 300
trigger3 = movecontact
trigger4 = stateno = [100,102]

;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 340
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 300
trigger5 = movecontact
trigger6 = stateno = 310
trigger6 = helper(315), movecontact
trigger7 = stateno = 330
trigger7 = movecontact
trigger8 = stateno = [100,102]

;---------------------------------------------------------------------------
;Crouch_Z
[State -1]
type = ChangeState
value = 350
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = helper(225), movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 300
trigger7 = movecontact
trigger8 = stateno = 310
trigger8 = helper(315), movecontact
trigger9 = stateno = 320
trigger9 = helper(325), movecontact
trigger10 = stateno = 330
trigger10 = movecontact
trigger11 = stateno = 340
trigger11 = movecontact
trigger12 = stateno = [100,102]

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 420
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 410 && helper(415), movecontact
trigger4 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400 && movecontact

;---------------------------------------------------------------------------
;Jump_Z
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 410 && helper(415), movecontact
trigger4 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;Jump_Z (moving)
[State -1]
type = ChangeState
value = 450
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 410 && helper(415), movecontact
trigger4 = stateno = 420 && helper(425), movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 440 && movecontact

;---------------------------------------------------------------------------
; Taunt
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1


