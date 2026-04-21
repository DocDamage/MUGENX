;-| Super Motions |--------------------------------------------------------

[Command]
name = "qcb_hcf_x"
command = ~D, DB, B, DB, D, DF, F, x
time = 120

[Command]
name = "qcb_hcf_y"
command = ~D, DB, B, DB, D, DF, F, y
time = 120

[Command]
name = "qcf_qcf_x"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "qcf_qcf_y"
command = ~D, DF, F, D, DF, F, y
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "qcf_x"
command = ~D, DF, F, x

[Command]
name = "qcf_y"
command = ~D, DF, F, y

[Command]
name = "qcb_x"
command = ~D, DB, B, x

[Command]
name = "qcb_y"
command = ~D, DB, B, y

[Command]
name = "qcb_a"
command = ~D, DB, B, a

[Command]
name = "qcb_b"
command = ~D, DB, B, b

[Command]
name = "hcf_a"
command = ~B, DB, D, DF, F, a

[Command]
name = "hcf_b"
command = ~B, DB, D, DF, F, b

[Command]
name = "dp_x"
command = ~F, D, DF, x

[Command]
name = "dp_y"
command = ~F, D, DF, y

[Command]
name = "dp_a"
command = ~F, D, DF, a

[Command]
name = "dp_b"
command = ~F, D, DF, b

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
name = "recovery"
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------

[Command]
name = "fwd_y"
command = /F,y

[Command]
name = "back_y"
command = /B,y

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b

[Command]
name = "back_b"
command = /B,b

[Command]
name = "fwd_x"
command = /F,x

[Command]
name = "knockdown"
command = y+b
time = 1

[Command]
name = "dodge"
command = x+a
time = 1

;-| Single Button |---------------------------------------------------------

[Command]
name = "hold_s"
command = /s
time = 1

[Command]
name = "taunt"
command = s
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "z"
command = z
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

;-|Commands|------------------------------------------------------------------------------
[Statedef -1]

; Burning Shingo (low on life)
[State -1]
type = ChangeState
value = 2100
triggerall = power >= 3000
triggerall = life <= 100
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "qcb_hcf_x"
trigger2 = command = "qcb_hcf_y"
trigger3 = command = "qcb_hcf_x"
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = command = "qcb_hcf_x"
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = command = "qcb_hcf_x"
trigger5 = stateno = 211
trigger5 = movecontact = 1
trigger6 = command = "qcb_hcf_x"
trigger6 = stateno = 221
trigger6 = movecontact = 1
trigger7 = command = "qcb_hcf_x"
trigger7 = stateno = 231
trigger7 = movecontact = 1
trigger8 = command = "qcb_hcf_x"
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = command = "qcb_hcf_x"
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = command = "qcb_hcf_x"
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = command = "qcb_hcf_y"
trigger11 = stateno = 200
trigger11 = movecontact = 1
trigger12 = command = "qcb_hcf_y"
trigger12 = stateno = 201
trigger12 = movecontact = 1
trigger13 = command = "qcb_hcf_y"
trigger13 = stateno = 211
trigger13 = movecontact = 1
trigger14 = command = "qcb_hcf_y"
trigger14 = stateno = 221
trigger14 = movecontact = 1
trigger15 = command = "qcb_hcf_y"
trigger15 = stateno = 231
trigger15 = movecontact = 1
trigger16 = command = "qcb_hcf_y"
trigger16 = stateno = 400
trigger16 = movecontact = 1
trigger17 = command = "qcb_hcf_y"
trigger17 = stateno = 420
trigger17 = movecontact = 1
trigger18 = command = "qcb_hcf_y"
trigger18 = stateno = 430
trigger18 = movecontact = 1

; Burning Shingo
[State -1]
type = ChangeState
value = 2000
triggerall = power >= 3000
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "qcb_hcf_x"
trigger2 = command = "qcb_hcf_y"
trigger3 = command = "qcb_hcf_x"
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = command = "qcb_hcf_x"
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = command = "qcb_hcf_x"
trigger5 = stateno = 211
trigger5 = movecontact = 1
trigger6 = command = "qcb_hcf_x"
trigger6 = stateno = 221
trigger6 = movecontact = 1
trigger7 = command = "qcb_hcf_x"
trigger7 = stateno = 231
trigger7 = movecontact = 1
trigger8 = command = "qcb_hcf_x"
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = command = "qcb_hcf_x"
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = command = "qcb_hcf_x"
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = command = "qcb_hcf_y"
trigger11 = stateno = 200
trigger11 = movecontact = 1
trigger12 = command = "qcb_hcf_y"
trigger12 = stateno = 201
trigger12 = movecontact = 1
trigger13 = command = "qcb_hcf_y"
trigger13 = stateno = 211
trigger13 = movecontact = 1
trigger14 = command = "qcb_hcf_y"
trigger14 = stateno = 221
trigger14 = movecontact = 1
trigger15 = command = "qcb_hcf_y"
trigger15 = stateno = 231
trigger15 = movecontact = 1
trigger16 = command = "qcb_hcf_y"
trigger16 = stateno = 400
trigger16 = movecontact = 1
trigger17 = command = "qcb_hcf_y"
trigger17 = stateno = 420
trigger17 = movecontact = 1
trigger18 = command = "qcb_hcf_y"
trigger18 = stateno = 430
trigger18 = movecontact = 1

; Ge shiki kake hou rin (low on life)
[State -1]
type = ChangeState
value = 2300
triggerall = power >= 3000
triggerall = life <= 100
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "qcf_qcf_x"
trigger2 = command = "qcf_qcf_y"
trigger3 = command = "qcf_qcf_x"
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = command = "qcf_qcf_x"
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = command = "qcf_qcf_x"
trigger5 = stateno = 211
trigger5 = movecontact = 1
trigger6 = command = "qcf_qcf_x"
trigger6 = stateno = 221
trigger6 = movecontact = 1
trigger7 = command = "qcf_qcf_x"
trigger7 = stateno = 231
trigger7 = movecontact = 1
trigger8 = command = "qcf_qcf_x"
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = command = "qcf_qcf_x"
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = command = "qcf_qcf_x"
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = command = "qcf_qcf_y"
trigger11 = stateno = 200
trigger11 = movecontact = 1
trigger12 = command = "qcf_qcf_y"
trigger12 = stateno = 201
trigger12 = movecontact = 1
trigger13 = command = "qcf_qcf_y"
trigger13 = stateno = 211
trigger13 = movecontact = 1
trigger14 = command = "qcf_qcf_y"
trigger14 = stateno = 221
trigger14 = movecontact = 1
trigger15 = command = "qcf_qcf_y"
trigger15 = stateno = 231
trigger15 = movecontact = 1
trigger16 = command = "qcf_qcf_y"
trigger16 = stateno = 400
trigger16 = movecontact = 1
trigger17 = command = "qcf_qcf_y"
trigger17 = stateno = 420
trigger17 = movecontact = 1
trigger18 = command = "qcf_qcf_y"
trigger18 = stateno = 430
trigger18 = movecontact = 1

; Ge shiki kake hou rin
[State -1]
type = ChangeState
value = 2200
triggerall = power >= 3000
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "qcf_qcf_x"
trigger2 = command = "qcf_qcf_y"
trigger3 = command = "qcf_qcf_x"
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = command = "qcf_qcf_x"
trigger4 = stateno = 201
trigger4 = movecontact = 1
trigger5 = command = "qcf_qcf_x"
trigger5 = stateno = 211
trigger5 = movecontact = 1
trigger6 = command = "qcf_qcf_x"
trigger6 = stateno = 221
trigger6 = movecontact = 1
trigger7 = command = "qcf_qcf_x"
trigger7 = stateno = 231
trigger7 = movecontact = 1
trigger8 = command = "qcf_qcf_x"
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = command = "qcf_qcf_x"
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = command = "qcf_qcf_x"
trigger10 = stateno = 430
trigger10 = movecontact = 1
trigger11 = command = "qcf_qcf_y"
trigger11 = stateno = 200
trigger11 = movecontact = 1
trigger12 = command = "qcf_qcf_y"
trigger12 = stateno = 201
trigger12 = movecontact = 1
trigger13 = command = "qcf_qcf_y"
trigger13 = stateno = 211
trigger13 = movecontact = 1
trigger14 = command = "qcf_qcf_y"
trigger14 = stateno = 221
trigger14 = movecontact = 1
trigger15 = command = "qcf_qcf_y"
trigger15 = stateno = 231
trigger15 = movecontact = 1
trigger16 = command = "qcf_qcf_y"
trigger16 = stateno = 400
trigger16 = movecontact = 1
trigger17 = command = "qcf_qcf_y"
trigger17 = stateno = 420
trigger17 = movecontact = 1
trigger18 = command = "qcf_qcf_y"
trigger18 = stateno = 430
trigger18 = movecontact = 1

; Light 100 shiki oni yaki mikansei
[State -1]
type = ChangeState
value = 1015
triggerall = command = "dp_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 211
trigger4 = movecontact = 1
trigger5 = stateno = 221
trigger5 = movecontact = 1
trigger6 = stateno = 231
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1

; Hard 100 shiki oni yaki mikansei
[State -1]
type = ChangeState
value = 1020
triggerall = command = "dp_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 211
trigger4 = movecontact = 1
trigger5 = stateno = 221
trigger5 = movecontact = 1
trigger6 = stateno = 231
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1

; 104 Shiki ara gami mikansei
[State -1]
type = ChangeState
value = 1000
triggerall = command = "qcf_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 211
trigger4 = movecontact = 1
trigger5 = stateno = 221
trigger5 = movecontact = 1
trigger6 = stateno = 231
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1

; 105 Shiki doku gami mikansei
[State -1]
type = ChangeState
value = 1005
triggerall = command = "qcf_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 211
trigger4 = movecontact = 1
trigger5 = stateno = 221
trigger5 = movecontact = 1
trigger6 = stateno = 231
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1

; Light hiji otoshi
[State -1]
type = ChangeState
value = 1010
triggerall = command = "qcb_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 211
trigger4 = movecontact = 1
trigger5 = stateno = 221
trigger5 = movecontact = 1
trigger6 = stateno = 231
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1

; Hard hiji otoshi
[State -1]
type = ChangeState
value = 1011
triggerall = command = "qcb_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 211
trigger4 = movecontact = 1
trigger5 = stateno = 221
trigger5 = movecontact = 1
trigger6 = stateno = 231
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1

; Light 101 shiki oboroguruma mikansei
[State -1]
type = ChangeState
value = 1040
triggerall = command = "qcb_a"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 211
trigger4 = movecontact = 1
trigger5 = stateno = 221
trigger5 = movecontact = 1
trigger6 = stateno = 231
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1

; Hard 101 shiki oboroguruma mikansei
[State -1]
type = ChangeState
value = 1045
triggerall = command = "qcb_b"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 201
trigger3 = movecontact = 1
trigger4 = stateno = 211
trigger4 = movecontact = 1
trigger5 = stateno = 221
trigger5 = movecontact = 1
trigger6 = stateno = 231
trigger6 = movecontact = 1
trigger7 = stateno = 400
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1

; Light Shingo kick
[State -1]
type = ChangeState
value = 1030
trigger1 = command = "hcf_a"
trigger1 = statetype != A
trigger1 = ctrl = 1

; Hard Shingo kick
[State -1]
type = ChangeState
value = 1035
trigger1 = command = "hcf_b"
trigger1 = statetype != A
trigger1 = ctrl = 1

; Shingo kinsei ore shiki ka togi
[State -1]
type = ChangeState
value = 1025
triggerall = statetype != A
triggerall = ctrl = 1
triggerall = P2StateType != L
triggerall = P2StateType != A
triggerall = P2BodyDist X <= 15
trigger1 = command = "dp_a"
trigger2 = command = "dp_b"

; Power up
[State -1]
type = ChangeState
value = 730
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "hold_x"
trigger1 = command = "hold_a"
trigger1 = command = "hold_y"

; Guard cancel roll (forward)
[State -1]
type = ChangeState
value = 750
triggerall = command = "holdfwd"
triggerall = power >= 1500
triggerall = stateno >= 150
triggerall = stateno <= 153
trigger1 = command = "z"
trigger2 = command = "dodge"

; Guard cancel roll (backwards)
[State -1]
type = ChangeState
value = 755
triggerall = command = "holdback"
triggerall = power >= 1500
triggerall = stateno >= 150
triggerall = stateno <= 153
trigger1 = command = "z"
trigger2 = command = "dodge"

; Roll forward
[State -1]
type = ChangeState
value = 720
triggerall = command = "holdfwd"
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "z"
trigger2 = command = "dodge"

; Roll backwards
[State -1]
type = ChangeState
value = 725
triggerall = command = "holdback"
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "z"
trigger2 = command = "dodge"

; Guard reversal
[State -1]
type = ChangeState
value = 745
triggerall = power >= 1500
triggerall = stateno >= 150
triggerall = stateno <= 153
trigger1 = command = "c"
trigger2 = command = "knockdown"

; Dodge
[State -1]
type = ChangeState
value = 700
triggerall = statetype = S
triggerall = command != "holddown"
triggerall = ctrl = 1
trigger1 = command = "z"
trigger2 = command = "dodge"

; Dodge attack
[State -1]
type = ChangeState
value = 705
triggerall = stateno = 700
triggerall = AnimElem = 3, >= 0
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "a"
trigger4 = command = "b"

; Knockdown attack
[State -1]
type = ChangeState
value = 710
triggerall = statetype = S
triggerall = command != "holddown"
triggerall = ctrl = 1
trigger1 = command = "c"
trigger2 = command = "knockdown"

; Jumping knockdown attack
[State -1]
type = ChangeState
value = 715
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "c"
trigger2 = command = "knockdown"

; Taunt
[State -1]
type = ChangeState
value = 195
trigger1 = command = "taunt"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno != 195
trigger1 = stateno != 196
trigger1 = ctrl = 1

; Run Forward
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1

; Hop backwards
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1

; Y throw
[State -1]
type = ChangeState
value = 800
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = p2bodydist X <= 5
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger1 = command = "fwd_y"

; B throw
[State -1]
type = ChangeState
value = 820
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = p2bodydist X <= 5
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger1 = command = "fwd_b"

; Standing forward A
[State -1]
type = ChangeState
value = 215
trigger1 = command = "fwd_a"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Standing A (close)
[State -1]
type = ChangeState
value = 211
trigger1 = command = "a"
trigger1 = command != "holddown"
trigger1 = command != "fwd_a"
trigger1 = P2bodydist X <= 15
trigger1 = statetype = S
trigger1 = ctrl = 1

; Standing A
[State -1]
type = ChangeState
value = 210
trigger1 = command = "a"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Standing B (close)
[State -1]
type = ChangeState
value = 231
trigger1 = command = "b"
trigger1 = command != "holddown"
trigger1 = P2bodydist X <= 15
trigger1 = statetype = S
trigger1 = ctrl = 1

; Standing B
[State -1]
type = ChangeState
value = 230
trigger1 = command = "b"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Standing X (close)
[State -1]
type = ChangeState
value = 201
trigger1 = command = "x"
trigger1 = command != "holddown"
trigger1 = P2bodydist X <= 15
trigger1 = statetype = S
trigger1 = ctrl = 1

; Standing X
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Standing Y (close)
[State -1]
type = ChangeState
value = 221
trigger1 = command = "y"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = P2bodydist X <= 30
trigger1 = ctrl = 1

; Standing Y
[State -1]
type = ChangeState
value = 220
trigger1 = command = "y"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Crouching A
[State -1]
type = ChangeState
value = 410
trigger1 = command = "a"
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

; Crouching B
[State -1]
type = ChangeState
value = 430
trigger1 = command = "b"
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

; Crouching X
[State -1]
type = ChangeState
value = 400
trigger1 = command = "x"
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

; Crouching Y
[State -1]
type = ChangeState
value = 420
trigger1 = command = "y"
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

; Jumping A
[State -1]
type = ChangeState
value = 610
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = Vel X = 0
trigger1 = ctrl = 1

; Jumping forward A
[State -1]
type = ChangeState
value = 615
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping B
[State -1]
type = ChangeState
value = 630
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = Vel X = 0
trigger1 = ctrl = 1

; Jumping forward B
[State -1]
type = ChangeState
value = 635
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = Vel X != 0
trigger1 = ctrl = 1

; Jumping X
[State -1]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping Y
[State -1]
type = ChangeState
value = 620
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1