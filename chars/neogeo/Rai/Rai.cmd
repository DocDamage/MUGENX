; The CMD file.
;-| Super Motions |--------------------------------------------------------

; Gourai Tempest
[Command]
name = "GT"
command = ~F,B,DB,D,DF,F, y
time = 20


; Chou Chikara Gourai Dengeki Ken
[Command]
name = "CCGDK"
command = ~F,B,DB,D,DF,F, b
time = 20



;-| Hyper Motion |--------------------------------------------------------

;Bukurai Hurricane 
[Command]
name = "BH"
command = D,D, b
time = 15


;-| Special Motions |------------------------------------------------------

;Inazuna cannon light
[Command]
name = "ICAL"
command = ~D, DF, F, x

;Inazuna cannon Hard
[Command]
name = "ICAH"
command = ~D, DF, F, y
time = 8

;Inazuna cannon Upper
[Command]
name = "ICAU"
command = ~D, DF, F, x+y
time =30


;Unazuna Uppers
[Command]
name = "SINAU"
command = ~F, DF,DF, F, x

[Command]
name = "WINAU"
command = ~F, DF,DF, F, y

[Command]
name = "UINAU"
command = ~F, DF,DF, F, x+y
;time =30
;----------------------------
;Inazuna Crash ligth
[Command]
name = "ICL"
command = ~D, DB, B, x

;Inazuna Crash Hard
[Command]
name = "ICH"
command = ~D, DB, B, y

;Inazuna Crash Upper
[Command]
name = "ICU"
command = ~D, DB, B, x+y
time =30

;Renda
[Command]
name = "RENDA"
command = ~x,x,x
time = 20

;Renda
[Command]
name = "RENDA2"
command = ~y,y,y
time = 15


;Hig jump Tougue
[Command]
name = "DHJT"
command = ~F, DF,D,DB,B, b
time= 15


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
command = x+a
time = 1

[Command]
name = "extra"
command = y+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /D,a
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
name = "fwd_y"
command = /F, y
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1


[Command]
name = "up_x"
command = /U,x
time = 1

[Command]
name = "up_y"
command = /U,y
time = 1

[Command]
name = "up_a"
command = /U,a
time = 1

[Command]
name = "up_z"
command = /U,z
time = 1

[Command]
name = "back_x"
command = /F,x
time = 1

[Command]
name = "back_y"
command = /F,y
time = 1

[Command]
name = "back_a"
command = /F,a
time = 1

[Command]
name = "back_z"
command = /F,z
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

[Command]
name = "holddownf";Required (do not remove)
command = /$DF
time = 1

[Command]
name = "holdupf";Required (do not remove)
command = /$UF
time = 1

[Command]
name = "holdupback";Required (do not remove)
command = /$UB
time = 1


[Command]
name = "Higjump"
command = D, $U
time = 11

;--------------------------------------------------------------------------

[Statedef -1]


;===========================================================================

;---------------------------------------------------------------------------
Inazuna Cannon 1
[State -1, Light Inazuna Cannon1]
type = ChangeState
value = 1000
triggerall = command = "ICAL" && !numproj 
triggerall = command != "ICAU"
triggerall = command != "WINAU"
triggerall = command != "SINAU"
triggerall = command != "UINAU"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 210 && time >= 5
trigger2 = Movecontact
trigger3 = stateno = 400 && time >= 2
trigger3 = Movecontact
trigger4 = stateno = 401 && time >= 2
trigger4 = Movecontact
trigger5 = stateno = 410 && time >= 5
trigger5 = Movecontact
trigger6 = stateno = 211 && time >= 3
trigger6 = Movecontact
trigger7 = stateno = 200 && time >= 3
trigger7 = Movecontact
trigger8 = stateno = 201 && time >= 3
trigger8 = Movecontact
trigger9 = ProjHit1004 = 1 && p2bodydist X <= 20 && time >=60
trigger10 = ProjHit1006 = 1 && p2bodydist X <= 20 && time >=60


;---------------------------------------------------------------------------
Inazuna Cannon 2
[State -1, Inazuna Cannon2]
type = ChangeState
value = 1010
triggerall = command = "ICAH" && !numproj 
triggerall = command != "ICAU"
triggerall = command != "WINAU"
triggerall = command != "SINAU"
triggerall = command != "UINAU"
triggerall = command != "GT"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 210 && time >= 5
trigger2 = Movecontact
trigger3 = stateno = 400 && time >= 2
trigger3 = Movecontact
trigger4 = stateno = 401 && time >= 2
trigger4 = Movecontact
trigger5 = stateno = 410 && time >= 5
trigger5 = Movecontact
trigger6 = stateno = 211 && time >= 3
trigger6 = Movecontact
trigger7 = stateno = 200 && time >= 3
trigger7 = Movecontact
trigger8 = stateno = 201 && time >= 3
trigger8 = Movecontact
trigger9 = ProjHit1004 = 1 && p2bodydist X <= 20 && time >=60
trigger10 = ProjHit1006= 1 && p2bodydist X <= 20 && time >=60



;---------------------------------------------------------------------------
;Inazuna Cannon 3
[State -1, Inazuna Cannon3]
type = ChangeState
value = 1020
triggerall = command = "ICAU" && !numproj 
triggerall = command != "UINAU"
triggerall = power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = stateno = 210 && time >= 5
trigger2 = Movecontact
trigger3 = stateno = 400 && time >= 2
trigger3 = Movecontact
trigger4 = stateno = 401 && time >= 2
trigger4 = Movecontact
trigger5 = stateno = 410 && time >= 5
trigger5 = Movecontact
trigger6 = stateno = 211 && time >= 3
trigger6 = Movecontact
trigger7 = stateno = 200 && time >= 3
trigger7 = Movecontact
trigger8 = stateno = 201 && time >= 3
trigger8 = Movecontact
trigger9 = stateno = 1310 
trigger9 = Movecontact

;------------------------------------------------------------------------
;Inazuna cannons air
Inazuna Cannon 1
[State -1, Light Inazuna Cannon1]
type = ChangeState
value = 1030
triggerall = command = "ICAL" && !numproj 
triggerall = command != "ICAU"
triggerall = command != "WINAU"
triggerall = command != "SINAU"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
Inazuna Cannon 2
[State -1, Inazuna Cannon2]
type = ChangeState
value = 1031
triggerall = command = "ICAH" && !numproj 
triggerall = command != "ICAU"
triggerall = command != "WINAU"
triggerall = command != "SINAU"
trigger1 = statetype = A && ctrl


;---------------------------------------------------------------------------
;Inazuna Cannon 3
[State -1, Inazuna Cannon3]
type = ChangeState
value = 1032
triggerall = command = "ICAU" && !numproj 
triggerall = power >= 1000
trigger1 = statetype = A && ctrl



;---------------------------------------------------------------------------
;Inazuna Upper 1
[State -1, Inazuna Upper 1]
type = ChangeState
Value = 1302
triggerall = command = "WINAU"
triggerall = command != "UINAU"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 210 && time >= 3
trigger2 = Movecontact
trigger3 = stateno = 400 && time >= 2
trigger3 = Movecontact
trigger4 = stateno = 401 && time >= 2
trigger4 = Movecontact
trigger5 = stateno = 410 && time >= 5
trigger5 = Movecontact
trigger6 = stateno = 211 && time >= 3
trigger6 = Movecontact
trigger7 = stateno = 200 && time >= 3
trigger7 = Movecontact
trigger8 = stateno = 201 && time >= 3
trigger8 = Movecontact

;---------------------------------------------------------------------------
;Inazuna Upper 2
[State -1, Inazuna Upper 2]
type = ChangeState
Value = 1300
triggerall = command = "SINAU"
triggerall = command != "UINAU"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 210 && time >= 3
trigger2 = Movecontact
trigger3 = stateno = 400 && time >= 2
trigger3 = Movecontact
trigger4 = stateno = 401 && time >= 2
trigger4 = Movecontact
trigger5 = stateno = 410 && time >= 5
trigger5 = Movecontact
trigger6 = stateno = 1310 && time >= 3
trigger6 = Movecontact
trigger7 = stateno = 211 && time >= 3
trigger7 = Movecontact
trigger8 = stateno = 200 && time >= 3
trigger8 = Movecontact
trigger9 = stateno = 201 && time >= 3
trigger9 = Movecontact

;------------------------------
;Inazuna Upper 3
[State -1, Inazuna Upper 3]
type = ChangeState
Value = 1304
triggerall = command = "UINAU"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 210 && time >= 3
trigger2 = Movecontact
trigger3 = stateno = 400 && time >= 2
trigger3 = Movecontact
trigger4 = stateno = 401 && time >= 2
trigger4 = Movecontact
trigger5 = stateno = 410 && time >= 5
trigger5 = Movecontact
trigger6 = stateno = 1310 && time >= 3
trigger6 = Movecontact
trigger7 = stateno = 211 && time >= 3
trigger7 = Movecontact
trigger8 = stateno = 200 && time >= 3
trigger8 = Movecontact
trigger9 = stateno = 201 && time >= 3
trigger9 = Movecontact

;--------------------------------------------------------------------------
;Renda
[State -1, Renda]
type = ChangeState
Value = 1306
triggerall = command = "RENDA"
trigger1 =   stateno = 1301 && anim = 1201 &&  time >= 0
trigger1 = Movecontact 
trigger2 = stateno = 1303 && anim = 1201 && time >= 0
trigger2 = Movecontact 
trigger3 = stateno = 1305 && anim = 1201 && time >= 0
trigger3 = Movecontact


[State -1, Renda2]
type = ChangeState
Value = 1306
triggerall = command = "RENDA2"
trigger1 =   stateno = 1301 && anim = 1201  && time >= 0
trigger1 = Movecontact 
trigger2 = stateno = 1303 && anim = 1201 && time >= 0
trigger2 = Movecontact 


[State -1, Renda3]
type = ChangeState
Value = 1307
triggerall = command = "RENDA2"
trigger1 = stateno = 1305 && anim = 1201 &&  time >= 0
trigger1 = Movecontact



;--------------------------------------------------------------------------
; Inazuna crash light
[State -1, Inazuna crash light]
type = ChangeState
value = 1200
triggerall = command = "ICL"
triggerall = command != "ICU"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 210 && time >= 5
trigger2 = Movecontact
trigger3 = stateno = 400 && time >= 2
trigger3 = Movecontact
trigger4 = stateno = 401 && time >= 2
trigger4 = Movecontact
trigger5 = stateno = 410 && time >= 5
trigger5 = Movecontact


; Inazuna crash Strong
[State -1, Inazuna crash Strong]
type = ChangeState
value = 1201
triggerall = command = "ICH"
triggerall = command != "ICU"
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 210 && time >= 5
trigger2 = Movecontact
trigger3 = stateno = 400 && time >= 2
trigger3 = Movecontact
trigger4 = stateno = 401 && time >= 2
trigger4 = Movecontact
trigger5 = stateno = 410 && time >= 3
trigger5 = Movecontact

; Inazuna crash Upper
[State -1, Inazuna crash Upper]
type = ChangeState
value = 1202
triggerall = command = "ICU"
triggerall = power >= 1000
;triggerall = stateno != 1201
;triggerall = stateno != 1200
trigger1 = statetype != A && ctrl = 1
trigger2 = stateno = 210 && time >= 5
trigger2 = Movecontact
trigger3 = stateno = 400 && time >= 2
trigger3 = Movecontact
trigger4 = stateno = 401 && time >= 2
trigger4 = Movecontact
trigger5 = stateno = 410 && time >= 3
trigger5 = Movecontact

;--------------------------------------------------------------
[State -1, Hurricane]
type = ChangeState
value = 1599
triggerall = command = "BH"
triggerall = power = 3000
trigger1 = statetype != A && ctrl = 1
;----------------------------------------------------------------------
[State -1, tempest]
type = ChangeState
value = 1500
triggerall = command = "GT"
triggerall = power >= 1000
trigger1 = statetype != A && ctrl = 1
;----------------------------------------------------------------------
[State -1, tempest]
type = ChangeState
value = 1400
triggerall = command = "CCGDK"
triggerall = power >= 1000
trigger1 = statetype != A && ctrl = 1

;---------------------------------------------------------------------------
;Dai Kaiten Hig Jump
[State -1, Dai Kaiten Hig Jump]
type = ChangeState
value = 1100
triggerall = command = "DHJT"
triggerall = statetype != A
trigger1 = ctrl
;---Normal moves -----------------------------------------------------------------------
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
;------------------------------------------------------
; caminar agachado
[State -1, camagachado]
type = ChangeState
value = 22
trigger1 = stateno = 11 && command = "holddownf" 

;--------------------------------------------------------------
;Hedabutt and Punch
[State -1, headpuch]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 13
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
; Counter
[State -1, counterdefensa]
type = ChangeState
value = 113
triggerall = Command = "c" 
triggerall = power >= 1000
trigger1 = StateNo = 150 || StateNo = 151 

[State -1, counterdefensa2]
type = ChangeState
value = 113
triggerall = Command = "extra" 
triggerall = power >= 1000
trigger1 = StateNo = 150 || StateNo = 151  
;-------------------------------------------------------------------------
;Escape Adelante
[State -1, escapeade]
type = ChangeState
value = 114
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl = 1

[State -1, escapeade2]
type = ChangeState
value = 114
triggerall = command = "recovery"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Escape Atrás
[State -1, escatras]
type = ChangeState
value = 115
triggerall = command = "z"
triggerall = command = "holdback"
triggerall = statetype != A
trigger1 = ctrl = 1

[State -1, escaatras2]
type = ChangeState
value = 115
triggerall = command = "recovery"
triggerall = command = "holdback"
triggerall = statetype != A
trigger1 = ctrl = 1

;----------------------------------------------------------------------------
;counter movement Adelante
[State -1, cmadelante]
type = ChangeState
value = 118
triggerall = command = "z"
triggerall = command != "holdback"
triggerall = power >= 1000 
triggerall = statetype != A
trigger1 = StateNo = 150 || StateNo = 151  
;trigger1 = ctrl = 1

[State -1, cmadelante2]
type = ChangeState
value = 118
triggerall = command = "recovery"
triggerall = command != "holdback"
triggerall = power >= 1000 
triggerall = statetype != A
trigger1 = StateNo = 150 || StateNo = 151  
;trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;counter movement Atrás
[State -1, cmatras1]
type = ChangeState
value = 119
triggerall = command = "z"
triggerall = command = "holdback"
triggerall = power >= 1000 
triggerall = statetype != A
;trigger1 = ctrl = 1
trigger1 = StateNo = 150 || StateNo = 151  

;counter movement Atrás
[State -1, cmatras2]
type = ChangeState
value = 119
triggerall = command = "recovery"
triggerall = command = "holdback"
triggerall = power >= 1000 
triggerall = statetype != A
;trigger1 = ctrl = 1
trigger1 = StateNo = 150 || StateNo = 151  
;-------------------------------------------
;esc normal
;[State -1]
;type = ChangeState
;value = 116
;triggerall = command = "z"
;triggerall = statetype != A
;trigger1 = ctrl = 1



;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 201 && time >= 5
trigger2 = Movecontact
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 201
triggerall = command = "x" 
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && time >= 5
trigger2 = Movecontact
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall= Command != "extra"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = stateno != 100
triggerall = statetype != A 
trigger1 = ctrl = 1

;-------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punchfwd]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = stateno != 100
triggerall = statetype != A 
trigger1 = ctrl = 1
trigger2 = stateno = 200 && time >= 2
trigger3 = stateno = 201 && time >= 2

;------------------------------------------------
;Rolling knuckle
[State -1, running Strong Punch]
type = ChangeState
value = 212
triggerall = command = "y"
trigger1 = stateno = 100
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall= Command != "extra"
triggerall = stateno != 100
triggerall = statetype != A 
trigger1 = ctrl = 1
;----------------------------------------------------------------

;Futtobe Kyaku
[State -1, Futtobe Kyaku] 
type = ChangeState 
value = 241 
triggerall = command = "fwd_b"
triggerall = command != "holddown"
triggerall = statetype != A 
triggerall = stateno != 100
trigger1 = ctrl = 1
trigger2 = stateno  = 240 && time >= 13

;---------------------------------------------------------------------------
Kaminari da Kyaku
[State -1, running kick]
type = ChangeState
value = 242
triggerall = command = "b"
trigger1 = stateno = 100


;pisoton
[State -1, pisoton]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = A &&  ctrl

;---------------------------------------------------------------------------
;knockdown Attack stand
[State -1, knockstand]
type = ChangeState
value = 613
triggerall = statetype = S
triggerall = Command = "c" 
trigger1 =   ctrl
triggerall = stateno != 212


[State -1 knockstand2]
type = ChangeState
value = 613
triggerall = statetype = S
triggerall = Command = "extra" 
trigger1 =   ctrl
triggerall = stateno != 212

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl =1
trigger2 = stateno = 401 && time >= 5
trigger2 = Movecontact

;--------------------------------------------------------------------------
;Crouching Light Punch(segundo puño)
[State -1, Crouching Light Punch2]
type = ChangeState
value = 401
triggerall = command = "x"
;triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400 && time >= 5
trigger2 = Movecontact


;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall= Command != "extra"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time >= 5) || (movecontact && time >= 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = command != "BH"
triggerall= Command != "extra"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430  &&  time >= 3
trigger2 = Movecontact

;---------------------------------------------------------------------------
;knockdown Attack crouch
[State -1, knockcrouch]
type = ChangeState
value = 612
triggerall = statetype = C
triggerall = Command = "c"  
triggerall = command = "holddown"
trigger1 = ctrl

[State -1, knockcrouch2]
type = ChangeState
value = 612
triggerall = statetype = C
triggerall = Command = "extra"  
triggerall = command = "holddown"
trigger1 = ctrl



;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall= Command != "extra"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && time >= 2

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
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall= Command != "extra"
trigger1 = statetype = A
trigger1 = ctrl
;----------------------------------------
;knockdown Attack Air
[State -1, Stand Light Punch]
type = ChangeState
value = 611
triggerall = statetype = A
triggerall = Command = "c"  
trigger1 = ctrl

;knockdown Attack Air
[State -1, Stand Light Punch]
type = ChangeState
value = 611
triggerall = statetype = A
triggerall= Command = "extra"
trigger1 = ctrl

