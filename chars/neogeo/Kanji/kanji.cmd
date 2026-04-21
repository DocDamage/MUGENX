;-| AI |--------------------------------------------------------
[Command]
name = "CPU01"
command = U,U,U
time = 1

[Command]
name = "CPU02"
command = U,U,U
time = 1

[Command]
name = "CPU03"
command = U,U,U
time = 1

[Command]
name = "CPU04"
command = U,U,U
time = 1

[Command]
name = "CPU05"
command = U,U,U
time = 1

[Command]
name = "CPU06"
command = U,U,U
time = 1

[Command]
name = "CPU07"
command = U,U,U
time = 1

[Command]
name = "CPU08"
command = U,U,U
time = 1

[Command]
name = "CPU09"
command = U,U,U
time = 1

[Command]
name = "CPU10"
command = U,U,U
time = 1

[Command]
name = "CPU11"
command = U,U,U
time = 1

[Command]
name = "CPU12"
command = U,U,U
time = 1

[Command]
name = "CPU13"
command = U,U,U
time = 1

[Command]
name = "CPU14"
command = U,U,U
time = 1

[Command]
name = "CPU15"
command = U,U,U
time = 1

[Command]
name = "CPU16"
command = U,U,U
time = 1

[Command]
name = "CPU17"
command = U,U,U
time = 1

[Command]
name = "CPU18"
command = U,U,U
time = 1

[Command]
name = "CPU19"
command = U,U,U
time = 1

[Command]
name = "CPU20"
command = U,U,U
time = 1

[Command]
name = "CPU21"
command = U,U,U
time = 1

[Command]
name = "CPU22"
command = U,U,U
time = 1

[Command]
name = "CPU23"
command = U,U,U
time = 1

[Command]
name = "CPU24"
command = U,U,U
time = 1

[Command]
name = "CPU25"
command = U,U,U
time = 1

[Command]
name = "CPU26"
command = U,U,U
time = 1

[Command]
name = "CPU27"
command = U,U,U
time = 1

[Command]
name = "CPU28"
command = U,U,U
time = 1

[Command]
name = "CPU29"
command = U,U,U
time = 1

[Command]
name = "CPU30"
command = U,U,U
time = 1

[Command]
name = "CPU31"
command = U,U,U
time = 1

[Command]
name = "CPU32"
command = U,U,U
time = 1

[Command]
name = "CPU33"
command = U,U,U
time = 1

[Command]
name = "CPU34"
command = U,U,U
time = 1

[Command]
name = "CPU35"
command = U,U,U
time = 1

[Command]
name = "CPU36"
command = U,U,U
time = 1

[Command]
name = "CPU37"
command = U,U,U
time = 1

[Command]
name = "CPU38"
command = U,U,U
time = 1

[Command]
name = "CPU39"
command = U,U,U
time = 1

[Command]
name = "CPU40"
command = U,U,U
time = 1

[Command]
name = "CPU41"
command = U,U,U
time = 1

[Command]
name = "CPU42"
command = U,U,U
time = 1

[Command]
name = "CPU43"
command = U,U,U
time = 1

[Command]
name = "CPU44"
command = U,U,U
time = 1

[Command]
name = "CPU45"
command = U,U,U
time = 1

[Command]
name = "CPU46"
command = U,U,U
time = 1

[Command]
name = "CPU47"
command = U,U,U
time = 1

[Command]
name = "CPU48"
command = U,U,U
time = 1

[Command]
name = "CPU49"
command = U,U,U
time = 1

[Command]
name = "CPU50"
command = U,U,U
time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "CB"
command = a+b, a, a, b
time = 60

[Command]
name = "BF_ab"
command = ~20$B, F, a+b

;-| Special Motions |------------------------------------------------------
[Command]
name = "HCB_x"
command = F, D, B, x
time = 24

[Command]
name = "HCB_y"
command = F, D, B, y
time = 24

[Command]
name = "HCF_a"
command = B, D, F, a
time = 24

[Command]
name = "HCF_b"
command = B, D, F, b
time = 24

[Command]
name = "FHCF_x"
command = F, B, D, F, x
time = 35

[Command]
name = "FHCF_y"
command = F, B, D, F, y
time = 35

[Command]
name = "QCB_a"
command = D, DB, B, a
time = 24

[Command]
name = "QCB_b"
command = D, DB, B, b
time = 24

[Command]
name = "Tap_x"
command = x, x, x
time = 24

[Command]
name = "Tap_y"
command = y, y, y
time = 24

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
;-| Single Button |---------------------------------------------------------
[Command]
name = "up"
command = $U
time = 1

[Command]
name = "up2"
command = ~$U
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
name = "start"
command = s
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

;---------------------------------------------------------------------------
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
; AI
[State -1]
type = Varset
trigger1 = command = "CPU01"
trigger2 = command = "CPU02"
trigger3 = command = "CPU03"
trigger4 = command = "CPU04"
trigger5 = command = "CPU05"
trigger6 = command = "CPU06"
trigger7 = command = "CPU07"
trigger8 = command = "CPU08"
trigger9 = command = "CPU09"
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
trigger27 = command = "CPU26"
trigger29 = command = "CPU27"
trigger28 = command = "CPU28"
trigger29 = command = "CPU29"
trigger30 = command = "CPU30"
trigger31 = command = "CPU31"
trigger32 = command = "CPU32"
trigger33 = command = "CPU33"
trigger34 = command = "CPU34"
trigger35 = command = "CPU35"
trigger36 = command = "CPU36"
trigger37 = command = "CPU37"
trigger38 = command = "CPU38"
trigger39 = command = "CPU39"
trigger40 = command = "CPU40"
trigger41 = command = "CPU41"
trigger42 = command = "CPU42"
trigger43 = command = "CPU43"
trigger44 = command = "CPU44"
trigger45 = command = "CPU45"
trigger46 = command = "CPU46"
trigger47 = command = "CPU47"
trigger48 = command = "CPU48"
trigger49 = command = "CPU49"
trigger50 = command = "CPU50"
var(10) = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
; AI Stand Guard
[State -1]
type = ChangeState
triggerall = var(10) = 1
triggerall = p2statetype != C && p2movetype = A && random < 500
trigger1 = statetype != A
trigger1 = ctrl
value = 130

; AI Crouch Guard
[State -1]
type = ChangeState
triggerall = var(10) = 1
triggerall = p2statetype = C && p2movetype = A && random < 500
trigger1 = Statetype != A
trigger1 = ctrl
value = 131

; AI Air Guard
[State -1]
type = ChangeState
triggerall = var(10) = 1
triggerall = p2statetype = A && p2movetype = A && random < 500
trigger1 = Statetype = A
trigger1 = ctrl
value = 132

; AI Air Recover
[State -1]
type = ChangeState
triggerall = var(10) = 1
triggerall = canrecover && alive && random < 250
trigger1 = movetype = H && statetype = A
value = 5210

;---------------------------------------------------------------------------
; AI Crumbling Bushido
[State -1]
type = ChangeState
value = 3100
triggerall = var(10) = 1
triggerall = power >= 2000
triggerall = p2bodydist x <= 120 && (p2statetype = S || p2statetype = C) && (p2stateno < 120 && p2stateno > 155) && random = [500,749]
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,460]

;---------------------------------------------------------------------------
; AI Combo Rush
[State -1]
type = ChangeState
value = 3000
triggerall = var(10) = 1
triggerall = power >= 2000
triggerall = p2bodydist x <= 200 && (p2statetype = S || p2statetype = C) && (p2stateno < 120 && p2stateno > 155) && random >= 750
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 220 && (time <= 23 || (time >=30 && time <=41) || time = [48,53])
trigger10 = movecontact
trigger11 = stateno = 250 && time <= 25
trigger11 = movecontact
trigger12 = stateno = 260 && time <= 19
trigger12 = movecontact
trigger13 = stateno = 400 && time <= 8
trigger13 = movecontact
trigger14 = stateno = 410 && time <= 23
trigger14 = movecontact
trigger15 = stateno = 430 && time <= 9
trigger15 = movecontact
trigger16 = stateno = 440 && time <= 21
trigger16 = movecontact
trigger17 = stateno = 460 && time <= 24
trigger17 = movecontact

;---------------------------------------------------------------------------
; AI Headbutt (run)
[State -1]
type = ChangeState
value = 1360
triggerall = var(10) = 1
triggerall = p2statetype != A && random = [200,399]
trigger1 = stateno = 220 && time = [48,53]
trigger1 = movehit

;---------------------------------------------------------------------------
; AI Headbutt
[State -1]
type = ChangeState
value = ifelse(random<900,1300,1350)
triggerall = var(10) = 1
triggerall = p2bodydist x <= 60 && p2bodydist y >= -50 && p2statetype = A && p2movetype != H && random < 500
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 260 && time <= 19
trigger10 = movecontact
trigger11 = stateno = 400 && time <= 8
trigger11 = movecontact
trigger12 = stateno = 410 && time <= 23
trigger12 = movecontact
trigger13 = stateno = 430 && time <= 9
trigger13 = movecontact
trigger14 = stateno = 440 && time <= 21
trigger14 = movecontact
trigger15 = stateno = 460 && time <= 24
trigger15 = movecontact

;---------------------------------------------------------------------------
; AI Loancloth
[State -1]
type = ChangeState
value = ifelse(random<500,1200,1250)
triggerall = var(10) = 1
triggerall = p2bodydist x <= 120 && p2statetype != A && p2statetype != L && p2movetype != A && random < 200
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 220 && time = [48,53]
trigger10 = movecontact
trigger11 = stateno = 250 && time <= 25
trigger11 = movecontact
trigger12 = stateno = 260 && time <= 19
trigger12 = movecontact
trigger13 = stateno = 400 && time <= 8
trigger13 = movecontact
trigger14 = stateno = 410 && time <= 23
trigger14 = movecontact
trigger15 = stateno = 430 && time <= 9
trigger15 = movecontact
trigger16 = stateno = 440 && time <= 21
trigger16 = movecontact
trigger17 = stateno = 460 && time <= 24
trigger17 = movecontact

;---------------------------------------------------------------------------
; AI Old Geezer projectile
[State -1]
type = ChangeState
value = ifelse(random<500 || enemy, numproj>0,1100,1150)
triggerall = numproj = 0
triggerall = var(10) = 1
triggerall = p2bodydist x >= 150 && p2statetype != A && random < 400
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 220 && time = [48,53]
trigger10 = movecontact
trigger11 = stateno = 250 && time <= 25
trigger11 = movecontact
trigger12 = stateno = 260 && time <= 19
trigger12 = movecontact
trigger13 = stateno = 400 && time <= 8
trigger13 = movecontact
trigger14 = stateno = 410 && time <= 23
trigger14 = movecontact
trigger15 = stateno = 430 && time <= 9
trigger15 = movecontact
trigger16 = stateno = 440 && time <= 21
trigger16 = movecontact
trigger17 = stateno = 460 && time <= 24
trigger17 = movecontact

;---------------------------------------------------------------------------
; AI Multi-Cane (run)
[State -1]
type = ChangeState
value = 1060
triggerall = var(10) = 1
triggerall = p2statetype != A && random < 200
trigger1 = stateno = 220 && time = [48,53]
trigger1 = movecontact
trigger2 = stateno = 250 && time <= 25
trigger2 = movecontact

;---------------------------------------------------------------------------
; AI Multi-Cane
[State -1]
type = ChangeState
value = 1000
triggerall = var(10) = 1
triggerall = p2bodydist x <= 80 && p2bodydist y >= -50 && p2statetype != L && random = [200,399]
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 260 && time <= 19
trigger10 = movecontact
trigger11 = stateno = 400 && time <= 8
trigger11 = movecontact
trigger12 = stateno = 410 && time <= 23
trigger12 = movecontact
trigger13 = stateno = 430 && time <= 9
trigger13 = movecontact
trigger14 = stateno = 440 && time <= 21
trigger14 = movecontact
trigger15 = stateno = 460 && time <= 24
trigger15 = movecontact

;---------------------------------------------------------------------------
; AI Provocation
[State -1]
type = ChangeState
value = 520
triggerall = var(10) = 1
triggerall = p2bodydist x <= 120 && p2bodydist y >= -50 && p2movetype = A && random < 500
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; AI Run Fwd
[State -1]
type = ChangeState
value = 100
triggerall = var(10) = 1
triggerall = p2bodydist x >= 180 && random = [400,699]
triggerall = statetype = S
trigger1 = stateno != [120,159]
trigger1 = ctrl

;---------------------------------------------------------------------------
; AI Roll Forward
[State -1]
type = ChangeState
value = 510
triggerall = var(10) = 1
triggerall = p2bodydist x <= 120 && p2movetype=A && random = [500,749]
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; AI Roll Back
[State -1]
type = ChangeState
value = 511
triggerall = var(10) = 1
triggerall = p2bodydist x <= 120 && p2movetype=A && random = [750,999]
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crumbling Bushido
[State -1]
type = ChangeState
value = 3100
triggerall = var(10) != 1
triggerall = power >= 2000
triggerall = command = "CB"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,460]

;---------------------------------------------------------------------------
; Combo Rush
[State -1]
type = ChangeState
value = 3000
triggerall = var(10) != 1
triggerall = power >= 1000
triggerall = command = "BF_ab"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 220 && (time <= 23 || (time >=30 && time <=41) || time = [48,53])
trigger10 = movecontact
trigger11 = stateno = 250 && time <= 25
trigger11 = movecontact
trigger12 = stateno = 260 && time <= 19
trigger12 = movecontact
trigger13 = stateno = 400 && time <= 8
trigger13 = movecontact
trigger14 = stateno = 410 && time <= 23
trigger14 = movecontact
trigger15 = stateno = 430 && time <= 9
trigger15 = movecontact
trigger16 = stateno = 440 && time <= 21
trigger16 = movecontact
trigger17 = stateno = 460 && time <= 24
trigger17 = movecontact

;---------------------------------------------------------------------------
; Headbutt (run)
[State -1]
type = ChangeState
value = 1360
triggerall = var(10) != 1
triggerall = command = "FHCF_x" || command = "FHCF_y"
trigger1 = stateno = 220 && (time <= 23 || (time >=30 && time <=41) || time = [48,53])
trigger1 = movecontact
trigger2 = stateno = 250 && time <= 25
trigger2 = movecontact

;---------------------------------------------------------------------------
; Headbutt (weak)
[State -1]
type = ChangeState
value = 1300
triggerall = var(10) != 1
triggerall = command = "FHCF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 260 && time <= 19
trigger10 = movecontact
trigger11 = stateno = 400 && time <= 8
trigger11 = movecontact
trigger12 = stateno = 410 && time <= 23
trigger12 = movecontact
trigger13 = stateno = 430 && time <= 9
trigger13 = movecontact
trigger14 = stateno = 440 && time <= 21
trigger14 = movecontact
trigger15 = stateno = 460 && time <= 24
trigger15 = movecontact

;---------------------------------------------------------------------------
; Headbutt (strong)
[State -1]
type = ChangeState
value = 1350
triggerall = var(10) != 1
triggerall = command = "FHCF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 260 && time <= 19
trigger10 = movecontact
trigger11 = stateno = 400 && time <= 8
trigger11 = movecontact
trigger12 = stateno = 410 && time <= 23
trigger12 = movecontact
trigger13 = stateno = 430 && time <= 9
trigger13 = movecontact
trigger14 = stateno = 440 && time <= 21
trigger14 = movecontact
trigger15 = stateno = 460 && time <= 24
trigger15 = movecontact

;---------------------------------------------------------------------------
; Loancloth (snap)
[State -1]
type = ChangeState
value = 1200
triggerall = var(10) != 1
triggerall = command = "HCF_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 220 && (time <= 23 || (time >=30 && time <=41) || time = [48,53])
trigger10 = movecontact
trigger11 = stateno = 250 && time <= 25
trigger11 = movecontact
trigger12 = stateno = 260 && time <= 19
trigger12 = movecontact
trigger13 = stateno = 400 && time <= 8
trigger13 = movecontact
trigger14 = stateno = 410 && time <= 23
trigger14 = movecontact
trigger15 = stateno = 430 && time <= 9
trigger15 = movecontact
trigger16 = stateno = 440 && time <= 21
trigger16 = movecontact
trigger17 = stateno = 460 && time <= 24
trigger17 = movecontact

;---------------------------------------------------------------------------
; Loancloth (hit)
[State -1]
type = ChangeState
value = 1250
triggerall = var(10) != 1
triggerall = command = "HCF_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 220 && (time <= 23 || (time >=30 && time <=41) || time = [48,53])
trigger10 = movecontact
trigger11 = stateno = 250 && time <= 25
trigger11 = movecontact
trigger12 = stateno = 260 && time <= 19
trigger12 = movecontact
trigger13 = stateno = 400 && time <= 8
trigger13 = movecontact
trigger14 = stateno = 410 && time <= 23
trigger14 = movecontact
trigger15 = stateno = 430 && time <= 9
trigger15 = movecontact
trigger16 = stateno = 440 && time <= 21
trigger16 = movecontact
trigger17 = stateno = 460 && time <= 24
trigger17 = movecontact

;---------------------------------------------------------------------------
; Old Geezer projectile (weak)
[State -1]
type = ChangeState
value = 1100
triggerall = var(10) != 1
triggerall = numproj = 0
triggerall = command = "HCB_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 220 && (time <= 23 || (time >=30 && time <=41) || time = [48,53])
trigger10 = movecontact
trigger11 = stateno = 250 && time <= 25
trigger11 = movecontact
trigger12 = stateno = 260 && time <= 19
trigger12 = movecontact
trigger13 = stateno = 400 && time <= 8
trigger13 = movecontact
trigger14 = stateno = 410 && time <= 23
trigger14 = movecontact
trigger15 = stateno = 430 && time <= 9
trigger15 = movecontact
trigger16 = stateno = 440 && time <= 21
trigger16 = movecontact
trigger17 = stateno = 460 && time <= 24
trigger17 = movecontact

;---------------------------------------------------------------------------
; Old Geezer projectile (strong)
[State -1]
type = ChangeState
value = 1150
triggerall = var(10) != 1
triggerall = numproj = 0
triggerall = command = "HCB_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 220 && (time <= 23 || (time >=30 && time <=41) || time = [48,53])
trigger10 = movecontact
trigger11 = stateno = 250 && time <= 25
trigger11 = movecontact
trigger12 = stateno = 260 && time <= 19
trigger12 = movecontact
trigger13 = stateno = 400 && time <= 8
trigger13 = movecontact
trigger14 = stateno = 410 && time <= 23
trigger14 = movecontact
trigger15 = stateno = 430 && time <= 9
trigger15 = movecontact
trigger16 = stateno = 440 && time <= 21
trigger16 = movecontact
trigger17 = stateno = 460 && time <= 24
trigger17 = movecontact

;---------------------------------------------------------------------------
; Multi-Cane (run)
[State -1]
type = ChangeState
value = 1060
triggerall = var(10) != 1
triggerall = command = "Tap_x" || command = "Tap_y"
trigger1 = stateno = 220 && (time <= 23 || (time >=30 && time <=41) || time = [48,53])
trigger1 = movecontact
trigger2 = stateno = 250 && time <= 25
trigger2 = movecontact

;---------------------------------------------------------------------------
; Multi-Cane (weak)
[State -1]
type = ChangeState
value = 1000
triggerall = var(10) != 1
triggerall = command = "Tap_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 260 && time <= 19
trigger10 = movecontact
trigger11 = stateno = 400 && time <= 8
trigger11 = movecontact
trigger12 = stateno = 410 && time <= 23
trigger12 = movecontact
trigger13 = stateno = 430 && time <= 9
trigger13 = movecontact
trigger14 = stateno = 440 && time <= 21
trigger14 = movecontact
trigger15 = stateno = 460 && time <= 24
trigger15 = movecontact

;---------------------------------------------------------------------------
; Multi-Cane (strong)
[State -1]
type = ChangeState
value = 1050
triggerall = var(10) != 1
triggerall = command = "Tap_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 260 && time <= 19
trigger10 = movecontact
trigger11 = stateno = 400 && time <= 8
trigger11 = movecontact
trigger12 = stateno = 410 && time <= 23
trigger12 = movecontact
trigger13 = stateno = 430 && time <= 9
trigger13 = movecontact
trigger14 = stateno = 440 && time <= 21
trigger14 = movecontact
trigger15 = stateno = 460 && time <= 24
trigger15 = movecontact

;---------------------------------------------------------------------------
; Provocation
[State -1]
type = ChangeState
value = 520
triggerall = var(10) != 1
triggerall = command = "QCB_a" || command = "QCB_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time <= 15
trigger2 = movecontact
trigger3 = stateno = 210 && time <= 23
trigger3 = movecontact
trigger4 = stateno = 230 && time <= 12
trigger4 = movecontact
trigger5 = (stateno = 240 || stateno = 236) && time <= 23
trigger5 = movecontact
trigger6 = stateno = 205 && time <= 8
trigger6 = movecontact
trigger7 = stateno = 215 && time <= 14
trigger7 = movecontact
trigger8 = stateno = 235 && time <= 13
trigger8 = movecontact
trigger9 = stateno = 245 && time <= 17
trigger9 = movecontact
trigger10 = stateno = 220 && (time <= 23 || (time >=30 && time <=41) || time = [48,53])
trigger10 = movecontact
trigger11 = stateno = 250 && time <= 25
trigger11 = movecontact
trigger12 = stateno = 260 && time <= 19
trigger12 = movecontact
trigger13 = stateno = 400 && time <= 8
trigger13 = movecontact
trigger14 = stateno = 410 && time <= 23
trigger14 = movecontact
trigger15 = stateno = 430 && time <= 9
trigger15 = movecontact
trigger16 = stateno = 440 && time <= 21
trigger16 = movecontact
trigger17 = stateno = 460 && time <= 24
trigger17 = movecontact

;---------------------------------------------------------------------------
; Run Fwd
[State -1]
type = ChangeState
value = 100
triggerall = var(10) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = stateno != [120,159]
trigger1 = ctrl

;---------------------------------------------------------------------------
; Hop Back
[State -1]
type = ChangeState
value = 105
triggerall = var(10) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Roll back
[State -1]
type = ChangeState
value = 511
triggerall = var(10) != 1
trigger1 = command = "holdback"
trigger1 = (command = "x" && command = "a") || command = "z"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Roll fwd
[State -1]
type = ChangeState
value = 510
triggerall = var(10) != 1
trigger1 = (command = "x" && command = "a") || command = "z"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Cane Bump
[State -1]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = stateno != 100
triggerall = statetype = S
triggerall = ctrl
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = p2bodydist X <= 25

;---------------------------------------------------------------------------
; Guard Counter
[State -1]
type = ChangeState
value = 530
trigger1 = power >= 1000
trigger1 = stateno = 151 || stateno = 153
trigger1 = var(5) = 1

;---------------------------------------------------------------------------
; Standing Knockdown Kick
[State -1]
type = ChangeState
value = 260
triggerall = (command = "y" && command = "b") || command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Running Punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "x" || command = "y"
triggerall = command != "holddown"
triggerall = stateno = [100,101]
trigger1 = ctrl

;---------------------------------------------------------------------------
; Running Kick
[State -1]
type = ChangeState
value = 250
triggerall = command = "a" || command = "b"
triggerall = command != "holddown"
triggerall = stateno = [100,101]
trigger1 = ctrl

;---------------------------------------------------------------------------
; Cane Climb
[State -1]
type = ChangeState
value = 500
triggerall = command = "holdfwd" && command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Close Stand Light Punch
[State -1]
type = ChangeState
value = 205
triggerall = p2bodydist x <= 40
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && time >= 5

;---------------------------------------------------------------------------
; Close Stand Strong Punch
[State -1]
type = ChangeState
value = 215
triggerall = p2bodydist x <= 50
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Close Stand Light Kick
[State -1]
type = ChangeState
value = 235
triggerall = p2bodydist x <= 25
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 235 && time >= 6
trigger2 = prevstateno != 431

;---------------------------------------------------------------------------
; Close Stand Strong Kick
[State -1]
type = ChangeState
value = 245
triggerall = p2bodydist x <= 30
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = p2bodydist x > 40
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && time >= 5

;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1]
type = ChangeState
value = 210
triggerall = p2bodydist x > 50
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = p2bodydist x > 25
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 235 && time >= 6
trigger2 = prevstateno != 431

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1]
type = ChangeState
value = 240
triggerall = p2bodydist x > 30
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Knockdown Kick
[State -1]
type = ChangeState
value = 460
triggerall = (command = "b" && command = "y") || command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time >= 5

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && time >= 6

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Double Jump Strong Punch
[State -1]
type = ChangeState
value = 611
trigger1 = stateno = 610
trigger1 = animelem = 6
trigger1 = var(3) = 1

;---------------------------------------------------------------------------
; Jump Forward Strong Punch
[State -1]
type = ChangeState
value = 615
triggerall = command = "y"
trigger1 = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Forward Strong Kick
[State -1]
type = ChangeState
value = 645
triggerall = command = "b"
trigger1 = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Taunt
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
