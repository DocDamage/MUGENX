
;-| Super Motions |--------------------------------------------------------
; Phonix Call
[Command]
name = "pcall"
command = ~D, DF, F, x+y

; Shaken Shootin Star
[Command]
name = "shooting"
command = ~D, DF, F, a+b

n; Shoryu Reppa (Again ??? De novo ???)
[Command]
name = "reppa"
command = ~D, DB, B, a+b

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "fenix_a"
command = ~D, DF, F, a

[Command]
name = "fenix_b"
command = ~D, DF, F, b

[Command]
name = "shaken_a"
command = ~D, DB, B, a

[Command]
name = "upp_a"
command = ~F, D, DF, a
time = 20

[Command]
name = "upp_b"
command = ~F, D, DF, b
time = 20

[Command]
name = "smoke"
command = ~D, DB, B, x

[Command]
name = "tele1"
command = B,F,a
time = 30

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

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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

;-| AI |---------------------------------------------------------------

[Command]
name = "AI1"
command = a, a, a
time = 1

[Command]
name = "AI2"
command = b, b, b
time = 1

[Command]
name = "AI3"
command = c, c, c
time = 1

[Command]
name = "AI4"
command = x, x, x
time = 1

[Command]
name = "AI5"
command = y, y, y
time = 1

[Command]
name = "AI6"
command = z, z, z
time = 1

[Command]
name = "AI7"
command = a, b, c
time = 1

[Command]
name = "AI8"
command = a, c, b
time = 1

[Command]
name = "AI9"
command = b, a, c
time = 1

[Command]
name = "AI10"
command = b, c, a
time = 1

[Command]
name = "AI11"
command = c, b, a
time = 1

[Command]
name = "AI12"
command = c, a, b
time = 1

[Command]
name = "AI13"
command = x, y, z
time = 1

[Command]
name = "AI14"
command = x, z, y
time = 1

[Command]
name = "AI15"
command = y, z, x
time = 1

[Command]
name = "AI16"
command = y, x, z
time = 1

[Command]
name = "AI17"
command = z, y, x
time = 1

[Command]
name = "AI18"
command = z, x, y
time = 1

[Command]
name = "AI19"
command = a, b, a
time = 1

[Command]
name = "AI20"
command = a, c, a
time = 1

[Command]
name = "AI21"
command = b, a, b
time = 1

[Command]
name = "AI22"
command = b, c, b
time = 1

[Command]
name = "AI23"
command = c, a, c
time = 1

[Command]
name = "AI24"
command = c, b, c
time = 1

[Command]
name = "AI25"
command = x, y, x
time = 1

[Command]
name = "AI26"
command = x, z, x
time = 1

[Command]
name = "AI27"
command = y, x, y
time = 1

[Command]
name = "AI28"
command = y, z, y
time = 1

[Command]
name = "AI29"
command = z, x, z
time = 1

[Command]
name = "AI30"
command = z, y, z
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
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------

[Statedef -1]

;===========================================================================
; AI
[State -1, Aciona AI]
type = Varset
trigger1 = command = "AI1"
trigger2 = command = "AI2"
trigger3 = command = "AI3"
trigger4 = command = "AI4"
trigger5 = command = "AI5"
trigger6 = command = "AI6"
trigger7 = command = "AI7"
trigger8 = command = "AI8"
trigger9 = command = "AI9"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
trigger16 = command = "AI16"
trigger17 = command = "AI17"
trigger18 = command = "AI18"
trigger19 = command = "AI19"
trigger20 = command = "AI20"
trigger21 = command = "AI21"
trigger22 = command = "AI22"
trigger23 = command = "AI23"
trigger24 = command = "AI24"
trigger25 = command = "AI25"
trigger26 = command = "AI26"
trigger27 = command = "AI27"
trigger28 = command = "AI28"
trigger29 = command = "AI29"
trigger30 = command = "AI30"
v = 59
value = 1

;------------------------ Defesa ----------------------
[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (p2movetype = A) && (ctrl)
trigger1 = (p2bodydist X <= 140) && (random <=699) 
value = 130 

[State -1]
Triggerall = roundstate = 2
type = changestate
triggerall = (var(59) != 0) && (statetype = C) && (p2movetype = A) && (ctrl)
trigger1 = (p2bodydist X <= 140) && (random <=699)
value = 131 

[State -1]
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = A) && (p2movetype = A) && (ctrl)
trigger1 = (p2bodydist X <= 140) && (random <=699)
value = 132

;--------------------------- Especiais AI -----------------------------------------------------
[State -1]; Reppuken
type = changestate
Triggerall = roundstate = 2
triggerall = (var(59) != 0) && (statetype = S) && (ctrl) && (random = [0, 700])
trigger1 = (P2bodydist X >= 70) && (prevstateno != 5120) && (p2movetype != H) && (numproj = 0)
value = 2000


;===========================================================================

[State -1, Phoenix Call]
type = ChangeState
value = 2010
triggerall = command = "pcall"
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
trigger2 = movecontact

[State -1, Shaken Shooting Star]
type = ChangeState
value = 3000
triggerall = command = "shooting"
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
trigger2 = movecontact

[State -1, Deus do céu, é o Shoryu reppa novamente !]
type = ChangeState
value = 3100
triggerall = command = "reppa"
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) ;Cancel ground moves
trigger2 = movecontact

;===========================================================================
; Tele a
[State -1]
type = ChangeState
value = 2020
trigger1 = command = "a"
trigger1 = command = "x"
trigger1 = statetype = S
trigger1 = ctrl 

; Tele a
[State -1]
type = ChangeState
value = 2021
trigger1 = command = "b"
trigger1 = command = "y"
trigger1 = statetype = S
trigger1 = ctrl 

; Tele c
[State -1]
type = ChangeState
value = 2022
trigger1 = command = "c"
trigger1 = command = "z"
trigger1 = statetype = S
trigger1 = ctrl 

; Uppercut b
[State -1]
type = ChangeState
value = 1000
triggerall = command = "upp_b"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

; Uppercut a
[State -1]
type = ChangeState
value = 1004
triggerall = command = "upp_a"
trigger1 = statetype = S && ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

; Fenix a
[State -1]
type = ChangeState
value = 2013
triggerall = command = "fenix_a"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = stateno = [200,450]
trigger2 = movecontact

; Fenix b
[State -1]
type = ChangeState
value = 2000
triggerall = command = "fenix_b"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = stateno = [200,450]
trigger2 = movecontact

; Shaken a
[State -1]
type = ChangeState
value = 2003
triggerall = command = "shaken_a"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = stateno = [200,450]
trigger2 = movecontact

; Shaken a aerial
[State -1]
type = ChangeState
value = 2007
triggerall = command = "shaken_a"
triggerall = numproj = 0
trigger1 = statetype = A
trigger1 = ctrl 
trigger2 = stateno = [200,450]
trigger2 = movecontact

; Call Ninja
[State -1]
type = ChangeState
value = 9999
triggerall = command = "z" 
triggerall = NumHelper(10000) = 0  
trigger1 = statetype = S && ctrl
trigger2 = stateno = [200,450]
trigger2 = movecontact

; Smoke teleport attack
[State -1]
type = ChangeState
value = 2100
triggerall = command = "smoke"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = stateno = [200,450]
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;Œã‘Þƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

; Chute Correndo
[State -1]
type = ChangeState
value = 211
triggerall = command = "y"
trigger1 = stateno = 100

; Espadada Correndo
[State -1]
type = ChangeState
value = 242
triggerall = command = "b"
trigger1 = stateno = 100

;---------------------------------------------------------------------------
;Kung Fu Throw
;“Š‚°
[State -1, Kung Fu Throw]
type = null;ChangeState
value = 800
triggerall = command = "y"
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


;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;—§‚¿Žãƒpƒ“ƒ`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;Stand Strong Punch
;—§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 8
trigger3 = (stateno = 230) && time > 6

;Standing Strong punch Combo
;—§‚¿‹­ƒLƒbƒN
[State -1, Standing light Punch combo]
type = null;ChangeState
value = 231
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) ;&& time > 5
trigger2 = movecontact
;trigger3 = (stateno = 230) ;&& time > 5
;trigger3 = movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
;—§‚¿ŽãƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 4 && movecontact
trigger3 = (stateno = 230) && time > 4 && movecontact

;---------------------------------------------------------------------------
;Standing Strong Kick
;—§‚¿‹­ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;Standing Strong Kick Combo
;—§‚¿‹­ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 241
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 240) ;&& time > 5
trigger2 = movecontact

;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;‚µ‚á‚ª‚ÝŽãƒpƒ“ƒ`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;‚µ‚á‚ª‚Ý‹­ƒpƒ“ƒ`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
;‚µ‚á‚ª‚ÝŽãƒLƒbƒN
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;‚µ‚á‚ª‚Ý‹­ƒLƒbƒN
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
;‹ó’†Žãƒpƒ“ƒ`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
;‹ó’†‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact



