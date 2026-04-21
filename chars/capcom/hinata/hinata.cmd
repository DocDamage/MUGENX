
;---------------------------------------------------------------------------;
;                            [ Hyper Moves ]                               ;
;---------------------------------------------------------------------------;
[Command]
name = "Hisshou Rengekiken_x"
command = ~D, DF, F, D ,DF, F, x
time = 20

[Command]
name = "Hisshou Rengekiken_y"
command = ~D, DF, F, D ,DF, F, y
time = 20

[Command]
name = "Hisshou Rengekiken_z"
command = ~D, DF, F, D ,DF, F, z
time = 20

[Command]
name = "Air Buster_x"
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]
name = "Air Buster_y"
command = ~D, DB, B, D, DB, B, y
time = 20

[Command]
name = "Air Buster_z"
command = ~D, DB, B, D, DB, B, z
time = 20

[Command]
name = "Rasen Enbukyaku_a"
command = ~D, DB, B, D, DB, B, a
time = 20

[Command]
name = "Rasen Enbukyaku_b"
command = ~D, DB, B, D, DB, B, b
time = 20

[Command]
name = "Rasen Enbukyaku_c"
command = ~D, DB, B, D, DB, B, c
time = 20

[Command]
name = "Itadaki Scoop"
command = ~D, DF, F, x+a
time = 20

[Command]
name = "Double Kiaidan"
command = ~D, DF, F, y+b
time = 20

;---------------------------------------------------------------------------;
;                              [ Special Moves ]                             ;
;---------------------------------------------------------------------------;
[Command]
name = "Shouyouken"
command = ~F, D, DF, x

[Command]
name = "Shouyouken"
command = ~F, D, DF, y

[Command]
name = "Shouyouken_z"
command = ~F, D, DF, z

[Command]
name = "Rengekiken_x"     
command = ~D, DF, F, x

[Command]
name = "Rengekiken"
command = ~D, DF, F, y

[Command]
name = "Rengekiken"
command = ~D, DF, F, z

[Command]
name = "Renyakudan"
command = ~D, DF, F, a

[Command]
name = "Renyakudan"
command = ~D, DF, F, b

[Command]
name = "Renyakudan"
command = ~D, DF, F, c

[Command]
name = "Enbukyaku_a"
command = ~D, DB, B, a 

[Command]
name = "Enbukyaku"
command = ~D, DB, B, b 

[Command]
name = "Enbukyaku"
command = ~D, DB, B, c 

[Command]
name = "xxx"     
command = x, x 

[Command]
name = "xxx"     
command = y, y 

[Command]
name = "xxx"     
command = z, z 

;---------------------------------------------------------------------------;
;                              [ Long Jump ]                               ;
;---------------------------------------------------------------------------;

[Command]
name = "longjump"
command = ~$D,$U
time = 20

;---------------------------------------------------------------------------;
;                              [ Double Tap ]                               ;
;---------------------------------------------------------------------------;

[Command]
name                = "FF"     
command             = F, F
time                = 10

[Command]
name                = "BB"     
command             = B, B
time                = 10

;---------------------------------------------------------------------------;
;                       | 2/3 Button Combination |                          ;
;---------------------------------------------------------------------------;
[Command]
name                = "recovery"
command             = a+x
time                = 1

[Command]
name                = "Roll"
command             = a+x
time                = 1

[Command]
name                = "Dodge"
command             = b+y
time                = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name                = "down_a"
command             = /$D,a
time                = 1

[Command]
name                = "down_b"
command             = /$D,b
time                = 1

;-| Single Button |---------------------------------------------------------
[Command]
name                = "a"
command             = a
time                = 1

[Command]
name                = "b"
command             = b
time                = 1

[Command]
name                = "c"
command             = c
time                = 1

[Command]
name                = "x"
command             = x
time                = 1

[Command]
name                = "y"
command             = y
time                = 1

[Command]
name                = "z"
command             = z
time                = 1

[Command]
name                = "s"
command             = s
time                = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name                = "holdfwd";Required (do not remove)
command             = /$F
time                = 1

[Command]
name                = "holdback";Required (do not remove)
command             = /$B
time                = 1

[Command]
name                = "holdup" ;Required (do not remove)
command             = /$U
time                = 1

[Command]
name                = "holddown";Required (do not remove)
command             = /$D
time                = 1

[Command]
name                = "hold_x"
command             = /x
time                = 1

[Command]
name                = "hold_y"
command             = /y
time                = 1

[Command]
name                = "hold_z"
command             = /z
time                = 1

[Command]
name                = "hold_a"
command             = /a
time                = 1

[Command]
name                = "hold_b"
command             = /b
time                = 1

[Command]
name                = "hold_c"
command             = /c
time                = 1

;---------------------------------------------------------------------------;

[Statedef -1]

;---------------------------------------------------------------------------;
;                            [ Hyper Moves ]                           ;
;---------------------------------------------------------------------------;
;---------------------------------------------------------------------------;
; Hisshou Rengekiken
[State -1, Hisshou Rengekiken]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Hisshou Rengekiken_x" && power >= 1000|| command = "Hisshou Rengekiken_y" && power >= 2000|| command = "Hisshou Rengekiken_z" && power >= 3000
triggerall = Statetype != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
trigger2 = movecontact && stateno = 200 && time = [3,7]
trigger3 = movecontact && stateno = 215 && time = [3,8]
trigger4 = movecontact && stateno = 225 && time = [4,8]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 255 && time = [4,7]
trigger7 = movecontact && stateno = 300 && time = [4,8]
trigger8 = movecontact && stateno = 310 && time = [4,8]
trigger9 = movecontact && stateno = 320 && time = [8,11]
trigger10 = movecontact && stateno = 330 && time = [5,10]
trigger11 = movecontact && stateno = 340 && time = [4,8]
trigger12 = var(2) = 1 && movecontact && stateno = 3000
trigger13 = var(2) = 1 && var(5) = 1 && movecontact && stateno = 1100 && time <= 6
value = 3000

;---------------------------------------------------------------------------;
; Air Buster
[State -1, Air Buster]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Air Buster_x" && power >= 1000 || command = "Air Buster_y" && power >= 2000 || command = "Air Buster_z" && power >= 3000
triggerall = Statetype != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
trigger2 = movecontact && stateno = 200 && time = [3,7]
trigger3 = movecontact && stateno = 215 && time = [3,8]
trigger4 = movecontact && stateno = 225 && time = [4,8]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 255 && time = [4,7]
trigger7 = movecontact && stateno = 300 && time = [4,8]
trigger8 = movecontact && stateno = 310 && time = [4,8]
trigger9 = movecontact && stateno = 320 && time = [8,11]
trigger10 = movecontact && stateno = 330 && time = [5,10]
trigger11 = movecontact && stateno = 340 && time = [4,8]
trigger12 = var(2) = 1 && movecontact && stateno = 3000
trigger13 = var(2) = 1 && var(5) = 1 && movecontact && stateno = 1100 && time <= 6
value = 3100

;---------------------------------------------------------------------------;
;Rasen Enbukyaku
[State -1, Rasen Enbukyaku]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Rasen Enbukyaku_a" && power >= 1000 || command = "Rasen Enbukyaku_b" && power >= 2000 || command = "Rasen Enbukyaku_c" && power >= 3000
triggerall = Statetype != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
trigger2 = movecontact && stateno = 200 && time = [3,7]
trigger3 = movecontact && stateno = 215 && time = [3,8]
trigger4 = movecontact && stateno = 225 && time = [4,8]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 255 && time = [4,7]
trigger7 = movecontact && stateno = 300 && time = [4,8]
trigger8 = movecontact && stateno = 310 && time = [4,8]
trigger9 = movecontact && stateno = 320 && time = [8,11]
trigger10 = movecontact && stateno = 330 && time = [5,10]
trigger11 = movecontact && stateno = 340 && time = [4,8]
trigger12 = var(2) = 1 && movecontact && stateno = 3000
trigger13 = var(2) = 1 && var(5) = 1 && movecontact && stateno = 1100 && time <= 6
value = 3200

;---------------------------------------------------------------------------;
;Air Rasen Enbukyaku
[State -1, Air Rasen Enbukyaku]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Rasen Enbukyaku_a" && power >= 1000 || command = "Rasen Enbukyaku_b" &&  power >= 2000 || command = "Rasen Enbukyaku_c" && power >= 3000
triggerall = power >= 1000
trigger1 = Statetype = A
trigger1 = ctrl
trigger2 = movehit && stateno = 500
trigger3 = movehit && stateno = 520
trigger4 = movehit && stateno = 530
trigger5 = movehit && stateno = 540
trigger6 = var(2) = 1 && var(5) = 1 && movecontact && stateno = 1100 && time > 6
trigger7 = var(2) = 1 && movecontact && stateno = 3103
trigger8 = var(2) = 1 && movecontact && stateno = 3211
value = 3220

;---------------------------------------------------------------------------;
; Itadaki Scoop (Ran Team Up)
[State -1, Itadaki Scoop]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Itadaki Scoop"
triggerall = power >= 2000
triggerall = Statetype != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
trigger2 = movecontact && stateno = 200 && time = [3,7]
trigger3 = movecontact && stateno = 215 && time = [3,8]
trigger4 = movecontact && stateno = 225 && time = [4,8]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 255 && time = [4,7]
trigger7 = movecontact && stateno = 300 && time = [4,8]
trigger8 = movecontact && stateno = 310 && time = [4,8]
trigger9 = movecontact && stateno = 320 && time = [8,11]
trigger10 = movecontact && stateno = 330 && time = [5,10]
trigger11 = movecontact && stateno = 340 && time = [4,8]
value = 3300

;---------------------------------------------------------------------------;
; Double Kiaidan (Bastu Team Up)
[State -1, Double Kiaidan]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Double Kiaidan"
triggerall = power >= 2000
triggerall = Statetype != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
trigger2 = movecontact && stateno = 200 && time = [3,7]
trigger3 = movecontact && stateno = 215 && time = [3,8]
trigger4 = movecontact && stateno = 225 && time = [4,8]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 255 && time = [4,7]
trigger7 = movecontact && stateno = 300 && time = [4,8]
trigger8 = movecontact && stateno = 310 && time = [4,8]
trigger9 = movecontact && stateno = 320 && time = [8,11]
trigger10 = movecontact && stateno = 330 && time = [5,10]
trigger11 = movecontact && stateno = 340 && time = [4,8]
value = 3400


;---------------------------------------------------------------------------;
;                             [ Special Moves ]                                 ;
;---------------------------------------------------------------------------;

;----------------------------------------------------------------------------
; Shouyouken
[State -1, Shouyouken]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Shouyouken"
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
trigger2 = movecontact && stateno = 200 && time = [3,7]
trigger3 = movecontact && stateno = 215 && time = [3,8]
trigger4 = movecontact && stateno = 225 && time = [4,8]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 255 && time = [4,7]
trigger7 = movecontact && stateno = 300 && time = [4,8]
trigger8 = movecontact && stateno = 310 && time = [4,8]
trigger9 = movecontact && stateno = 320 && time = [8,11]
trigger10 = movecontact && stateno = 330 && time = [5,10]
trigger11 = movecontact && stateno = 340 && time = [4,8]
value = 1100

[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Shouyouken_z"
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
trigger2 = movecontact && stateno = 200 && time = [3,7]
trigger3 = movecontact && stateno = 215 && time = [3,8]
trigger4 = movecontact && stateno = 225 && time = [4,8]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 255 && time = [4,7]
trigger7 = movecontact && stateno = 300 && time = [4,8]
trigger8 = movecontact && stateno = 310 && time = [4,8]
trigger9 = movecontact && stateno = 320 && time = [8,11]
trigger10 = movecontact && stateno = 330 && time = [5,10]
trigger11 = movecontact && stateno = 340 && time = [4,8]
value = 1110

;---------------------------------------------------------------------------;
; Rengekiken
[State -1, Rengekiken]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Rengekiken_x"
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
trigger2 = movecontact && stateno = 200 && time = [3,7]
trigger3 = movecontact && stateno = 215 && time = [3,8]
trigger4 = movecontact && stateno = 225 && time = [4,8]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 255 && time = [4,7]
trigger7 = movecontact && stateno = 300 && time = [4,8]
trigger8 = movecontact && stateno = 310 && time = [4,8]
trigger9 = movecontact && stateno = 320 && time = [8,11]
trigger10 = movecontact && stateno = 330 && time = [5,10]
trigger11 = movecontact && stateno = 340 && time = [4,9]
trigger12 = movecontact && stateno = 350 && time = [4,9]
value = 1000

[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Rengekiken"
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
trigger2 = movecontact && stateno = 200 && time = [3,7]
trigger3 = movecontact && stateno = 215 && time = [3,8]
trigger4 = movecontact && stateno = 225 && time = [4,8]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 255 && time = [4,7]
trigger7 = movecontact && stateno = 300 && time = [4,8]
trigger8 = movecontact && stateno = 310 && time = [4,8]
trigger9 = movecontact && stateno = 320 && time = [8,11]
trigger10 = movecontact && stateno = 330 && time = [5,10]
trigger11 = movecontact && stateno = 340 && time = [4,9]
trigger12 = movecontact && stateno = 350 && time = [4,9]
value = 1010

;---------------------------------------------------------------------------;
;Enbukyaku
[State -1, Enbukyaku]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Enbukyaku_a"
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
trigger2 = movecontact && stateno = 200 && time = [3,7]
trigger3 = movecontact && stateno = 215 && time = [3,8]
trigger4 = movecontact && stateno = 225 && time = [4,8]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 255 && time = [4,7]
trigger7 = movecontact && stateno = 300 && time = [4,8]
trigger8 = movecontact && stateno = 310 && time = [4,8]
trigger9 = movecontact && stateno = 320 && time = [8,11]
trigger10 = movecontact && stateno = 330 && time = [5,10]
trigger11 = movecontact && stateno = 340 && time = [4,9]
value = 1200

[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Enbukyaku"
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
trigger2 = movecontact && stateno = 200 && time = [3,7]
trigger3 = movecontact && stateno = 215 && time = [3,8]
trigger4 = movecontact && stateno = 225 && time = [4,8]
trigger5 = movecontact && stateno = 230 && time = [4,9]
trigger6 = movecontact && stateno = 255 && time = [4,7]
trigger7 = movecontact && stateno = 300 && time = [4,8]
trigger8 = movecontact && stateno = 310 && time = [4,8]
trigger9 = movecontact && stateno = 320 && time = [8,11]
trigger10 = movecontact && stateno = 330 && time = [5,10]
trigger11 = movecontact && stateno = 340 && time = [4,9]
value = 1210

;---------------------------------------------------------------------------;
;Air Enbukyaku
[State -1, Air Enbukyaku]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Enbukyaku_a"
trigger1 = (StateType = A||StateType != S) && (ctrl)
trigger2 = movehit && stateno = 500
trigger3 = movehit && stateno = 520
trigger4 = movehit && stateno = 530
trigger5 = movehit && stateno = 540
value = 1215

[State -1]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Enbukyaku"
trigger1 = (StateType = A||StateType != S) && (ctrl)
trigger2 = movehit && stateno = 500
trigger3 = movehit && stateno = 520
trigger4 = movehit && stateno = 530
trigger5 = movehit && stateno = 540
value = 1220

;---------------------------------------------------------------------------;
; Renyakudan
[State -1, Renyakudan]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Renyakudan"
trigger1 = Statetype = A
trigger1 = ctrl
trigger2 = movehit && stateno = 500
trigger3 = movehit && stateno = 520
trigger4 = movehit && stateno = 530
trigger5 = movehit && stateno = 540
value = 1300

;---------------------------------------------------------------------------;
;                          [ Normal Moves ]                             ;
;---------------------------------------------------------------------------;
; Hinata Throw
[State -1, Hinata Throw]
type = ChangeState
value = 600
triggerall = roundstate = 2
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

; Run Forward
[State -1, Run Forward]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "FF"
trigger1 = (StateType = S||StateType != A) && (ctrl)
value = 100

; Back Dash
[State -1, Back Dash]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "BB"
trigger1 = (StateType = S||StateType != A) && (ctrl)
value = 105

;Guard Cancel (Attack)
[State -1, Guard Cancel (Attack)]
type = ChangeState
value = 4015
triggerall = Command = "Dodge"
triggerall = Power >= 1000 && StateType != A
trigger1 = (stateno = 150 || stateno = 152)

;;Guard Cancel (Roll Forwards)
[State -1, Guard Cancel (Roll Forwards)]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Roll"
triggerall = Power >= 1000 && StateType != A
trigger1 = (stateno = 150 || stateno = 152)
value = 4000

; Roll Backwards
[State -1, Roll Backwards]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "Roll") && (command = "holdback")
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 4005

; Roll Forwards
[State -1, Roll Forwards]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Roll"
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 4000

; Dodge
[State -1, Dodge]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "Dodge"
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 4010

; Power Charge
[State -1, Power Charge]
type = ChangeState
triggerall = roundstate = 2
triggerall = Command = "hold_z" && Command = "hold_c" && power!=3000
trigger1 = statetype != A
trigger1 = Ctrl 
value = 4020

;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = roundstate = 2
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

; Stand Ligh Punch
[State -1, Stand Ligh Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "x") && (command != "holddown")
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
trigger2 = Stateno = 200 && Time > 4
trigger3 = Stateno = 300 && Time > 5
trigger4 = Stateno = 330 && Time > 6
value = 200

; Stand Medium Punch (close)
[State -1, Stand Medium Punch (close)]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "y") && (command != "holddown") && (P2bodydist X <= 12)
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 215

; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "y") && (command != "holddown")
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 210

; Stand Strong Punch (close)
[State -1, Stand Strong Punch (close)]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "z") && (command != "holddown") && (P2bodydist X <= 15)
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 225

; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "z") && (command != "holddown")
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 220

; Stand Ligh Kick
[State -1, Stand Ligh Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "a") && (command != "holddown")
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
trigger2 = Stateno = 200 && Time > 4
trigger3 = Stateno = 300 && Time > 5
trigger4 = Stateno = 330 && Time > 6
value = 230

; Forward Medium Kick
[State -1, Forward Medium Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "holdfwd") && (command = "b") && (command != "holddown")
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 245

; Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "b") && (command != "holddown")
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 240

; Stand Strong Kick (close)
[State -1, Stand Strong Kick (close)]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "c") && (command != "holddown") && (P2bodydist X <= 10)
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 255

; Stand Strong Kick
[State -1, Stand Strong Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "c") && (command != "holddown")
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 250

; Launcer
[State -1, Launcer]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "holdfwd") && (command = "holddown") && (command = "c")
triggerall = StateType != A
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 256

; Crouch Ligh Punch
[State -1, Crouch Ligh Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "x") && (command = "holddown")
triggerall = (StateType = C||StateType != A)
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
trigger2 = Stateno = 200 && Time > 4
trigger3 = Stateno = 300 && Time > 5
trigger4 = Stateno = 330 && Time > 6
value = 300

; Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "y") && (command = "holddown")
triggerall = (StateType = C||StateType != A)
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 310

; Crouch Strong Punch
[State -1, Crouch Strong Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "z") && (command = "holddown")
triggerall = (StateType = C||StateType != A)
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 320

; Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "a") && (command = "holddown")
triggerall = (StateType = C||StateType != A)
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
trigger2 = Stateno = 200 && Time > 4
trigger3 = Stateno = 300 && Time > 5
trigger4 = Stateno = 330 && Time > 6
value = 330

; Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "b") && (command = "holddown")
triggerall = (StateType = C||StateType != A)
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 340

; Crouch Strong Kick
[State -1, Crouch Strong Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = (command = "c") && (command = "holddown")
triggerall = (StateType = C||StateType != A)
trigger1 = (stateno = 100 && time > 4) || stateno = 104 || ctrl
value = 350


; Launcer Light Punch
[State -1, Launcer Light Punch]
type = ChangeState
triggerall = stateno = 50 && prevstateno = 257
triggerall = roundstate = 2
triggerall = command = "x"
trigger1 = (StaTetype = A||StateType != S) && (ctrl)
value = 500

; Launcer Medium Punch
[State -1, Launcer Medium Punch]
type = ChangeState
triggerall = stateno = 50 && prevstateno = 257
triggerall = roundstate = 2
triggerall = command = "y"
trigger1 = (StaTetype = A||StateType != S) && (ctrl)
value = 520

; Launcer Finish (Punch)
[State -1, Launcer Finish (Punch)]
type = ChangeState
triggerall = stateno = 50 && prevstateno = 257
triggerall = roundstate = 2
triggerall = command = "z"
trigger1 = (StaTetype = A||StateType != S) && (ctrl)
value = 525

; Launcer Light Kick
[State -1, Launcer Light Kick]
type = ChangeState
triggerall = stateno = 50 && prevstateno = 257
triggerall = roundstate = 2
triggerall = command = "a"
trigger1 = (StaTetype = A||StateType != S) && (ctrl)
value = 530

; Launcer Medium Kick
[State -1, Launcer Medium Kick]
type = ChangeState
triggerall = stateno = 50 && prevstateno = 257
triggerall = roundstate = 2
triggerall = command = "b"
trigger1 = (StaTetype = A||StateType != S) && (ctrl)
value = 540

; Launcer Finish (Kick)
[State -1, Launcer Finish (Kick)]
type = ChangeState
triggerall = stateno = 50 && prevstateno = 257
triggerall = roundstate = 2
triggerall = command = "c"
trigger1 = (StaTetype = A||StateType != S) && (ctrl)
value = 555

; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "x"
trigger1 = (StaTetype = A||StateType != S) && (ctrl) 
value = 400

; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "holddown" && command = "y"
trigger1 = (StaTetype = A||StateType != S) && (ctrl)
value = 410

; Jump Medium Punch 2
[State -1, Jump Medium Punch 2]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "y"
trigger1 = (StaTetype = A||StateType != S) && (ctrl)
value = 420

; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "z"
trigger1 = (StaTetype = A||StateType != S) && (ctrl)
value = 425

; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "a"
trigger1 = (StaTetype = A||StateType != S) && (ctrl)
value = 430

; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "b"
trigger1 = (StaTetype = A||StateType != S) && (ctrl)
value = 440

; Jump Forward Strong Kick
[State -1, Jump Forward Strong Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "holddown" && command = "c"
trigger1 = (StaTetype = A||StateType != S) && (ctrl)
value = 455

; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
triggerall = roundstate = 2
triggerall = command = "c"
trigger1 = (StaTetype = A||StateType != S) && (ctrl)
value = 450


