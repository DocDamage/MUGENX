
;-| Special Motions |------------------------------------------------------


[Command]
name = "15combo"
command =~B, DB, D, DF, F, c
time = 20

[Command]
name = "15combo"
command = ~F, DF, D, DB, B, c
time = 20

[Command]
name = "final_power"
command = ~B, DB, D, DF, F, x
time = 20

[Command]
name = "final_power"
command = ~F, DF, D, DB, B, x
time = 15

[Command]
name = "supercombo2"
command = ~B, DB, D, DF, F, a
time = 20

[Command]
name = "supercombo2"
command = ~F, DF, D, DB, B, a
time = 20

[Command]
name = "supercombo3"
command = ~B, DB, D, DF, F, c
time = 20

[Command]
name = "supercombo3"
command = ~F, DF, D, DB, B, c
time = 20

[Command]
name = "upper_x"
command = ~D, DB, B, a

;[Command]
;name = "Inteligencia"
;command = a+y

[Command]
name = "stronger_punch"
command = ~D, DF, F, a


[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "giromortal"
command = c+x



[Command]
name = "combodoble2"
command = ~D, DF, F, x


[Command]
name = "combodoble2"
command = ~D, DB, B, x


[Command]
name = "supercombo"
command = ~D, DF, F, b
time = 15

[Command]
name = "taewondo"
command = ~D, DF, F, c
time = 15


[Command]
name = "taewondo"
command = ~D, DB, B, c
time = 15

[Command]
name = "golpeb"
command = ~D, DB, B, b
time = 15

[Command]
name = "combodoble"
command = ~D, DF, F, b
time = 15


[Command]
name = "supercombo"
command = ~D, DB, B, b
time = 15


[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_a"
command = ~D, DF, F, a

[Command]
name = "QCB_b"
command = ~D, DF, F, b

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

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

[Command]
name = "cx";Required (do not remove)
command = c+x
time = 1


[Command]
name = "baile";Required (do not remove)
command = b+x
time = 1

[Command]
name = "superheroe"
command = a+b+c
time= 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,x
time = 1



[Command]
name = "down_b"
command = /$D,b
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
name = "back_b"
command = /B,b
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
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$b
time = 1



[Command]
name = "salto_adelante-b"
command = /UF,b
time = 1

[Command]
name = "salto_adelante-c"
command = /UF,c
time = 1

[Command]
name = "salto_adelante-x"
command = /UF,x
time = 1


[Command]
name = "salto_atras-b"
command = /UB,b
time = 1

[Command]
name = "salto_atras-c"
command = /UB,c
time = 1

[Command]
name = "salto_atras-x"
command = /UB,x
time = 1


[Command]
name = "q_fwd"
Command = z
time = 1

[Command]
name = "q_fwd"
Command = /F,z
time = 1

[Command]
name = "q_back"
Command = /B,z
time = 1

[Command]
name = "az"
Command = a+z
time = 1

[Command]
name = "barrido"
command = DF,b


[Command]
name = "cubriendose"
command = F,a

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
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

; Codigo creado por mi gran amigo Kain muchas gracias eres un amigo

[State -1, Standing Strong Kick]
type = ChangeState
value = 9020
triggerall = p2stateno !=5110
triggerall = p2stateno !=5120
triggerall = p2stateno !=800
triggerall = p2stateno !=900
triggerall = power >=2000
trigger1 = statetype != A
triggerall = var(59)=1
triggerall = command = "15combo"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,giromortal]
type = ChangeState
value = 643
trigger1 = statetype != S
triggerall = var(59)= 1
triggerall = command = "giromortal"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, golpe]
type = ChangeState
value = 4990
triggerall = statetype !=A
triggerall = p2stateno !=5110
triggerall = p2stateno !=5120
triggerall = p2stateno !=800
triggerall = p2stateno !=900
triggerall = var(59)= 1
triggerall = command = "golpeb"
trigger1 = statetype = S
trigger1 = ctrl



[State -1, golpe]
type = ChangeState
value = 4200
triggerall = p2stateno !=5110
triggerall = p2stateno !=5120
triggerall = p2statetype !=A
triggerall = statetype !=A
triggerall = var(59)= 1
triggerall = power>=2000
triggerall = command = "supercombo2"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, golpe]
type = ChangeState
value = 3600
triggerall = statetype !=A
triggerall = p2stateno !=5110
triggerall = p2stateno !=5120
triggerall = p2stateno !=800
triggerall = p2stateno !=900
triggerall = var(59)= 1
triggerall = command = "combodoble2"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Stand Strong Punch]
type = ChangeState
value = 7000
triggerall = p2statetype !=A
triggerall = statetype !=A
triggerall = p2stateno !=5110
triggerall = p2stateno !=5120
triggerall = power>=2000
triggerall = var(59)= 2
triggerall = command = "supercombo3"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Strong Punch]
type = ChangeState
value = 3500
triggerall = p2stateno !=5110
triggerall = p2stateno !=5120
triggerall = statetype !=A
triggerall = var(59)= 1
triggerall = command = "taewondo"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Stand Strong Punch]
type = ChangeState
value = 2046
triggerall = p2stateno !=5110
triggerall = p2stateno !=5120
triggerall = statetype !=A
triggerall = var(59)= 2
triggerall = command = "upper_x"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, bailecito]
type = ChangeState
value = 219
trigger1 = statetype != A
triggerall = var(59)= 1
triggerall = command = "baile"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, combodoble]
type = ChangeState
value = 3400
triggerall = p2stateno !=5110
triggerall = p2stateno !=5120
trigger1 = statetype != A
triggerall = var(59)= 1
triggerall = command = "combodoble"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Stand Strong Punch]
type = ChangeState
value = 4000
triggerall = p2stateno !=5110
triggerall = p2stateno !=5120
triggerall = statetype !=A
triggerall = var(59)= 2
trigger1 = command = "stronger_punch"
trigger1 = statetype = S
trigger1 = ctrl


[State -1]
type = ChangeState
value = 3200
trigger1 = statetype != S
triggerall = var(59)= 2
trigger1 = command = "down_b"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 5210
triggerall = var(59)=1
triggerall = canrecover = 1
triggerall = Var(9) = 1
triggerall = random < 999
triggerall = life > 0
trigger1 = time > 30
trigger1 = stateno = 5050

[State -1]
type = ChangeState
value = 5201
triggerall = var(59)=1
triggerall = canrecover = 1
triggerall = Var(9) = 1
triggerall = random < 999
triggerall = life > 0
trigger1 = stateno = 5100
trigger1 = Pos Y < -20
persistent = 0


[State -1]
type = ChangeState
value = 130
triggerall = var(59)=1
triggerall = Var(9) = 1 
triggerall = random < 999
triggerall = P2movetype = A
triggerall = statetype != A
triggerall = P2statetype != C
trigger1 = ctrl
trigger2 = stateno = 52

[State -1]
type = ChangeState
value = 131
triggerall = var(59)=1
triggerall = Var(9) = 1
triggerall = random < 999
triggerall = P2movetype = A
triggerall = statetype != A
triggerall = P2statetype = C
trigger1 = ctrl
trigger2 = stateno = 52
[State -1]
type = ChangeState
value = 132
triggerall = var(59)=1
triggerall = Var(9) = 1 
triggerall = random < 999
triggerall = P2movetype = A
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 5210

[State -1]
type = ChangeState
value = 152
triggerall = var(59)=1
triggerall = var(9) = 1
triggerall = Statetype != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = stateno = 150
trigger2 = stateno = 151

[State -1]
type = ChangeState
value = 150
triggerall = var(59)=1
triggerall = var(9) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = stateno = 152
trigger2 = stateno = 153

[State -1]
type = ChangeState
value = 150
triggerall = var(59)=1
triggerall = var(9) = 1
triggerall = Statetype != A
triggerall = Pos Y > -1
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = stateno = 154
trigger2 = stateno = 155

[State -1]
type = ChangeState
value = 152
triggerall = var(59)=1
triggerall = var(9) = 1
triggerall = Statetype != A
triggerall = Pos Y > -1
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = stateno = 154
trigger2 = stateno = 155



[State -1, Standing Strong Kick]
type = ChangeState
value = 3111
triggerall = p2stateno !=5110
triggerall = p2stateno !=5120
triggerall = p2stateno !=800
triggerall = p2stateno !=900
triggerall = power >=2000
trigger1 = statetype != A
triggerall = var(59)=2
triggerall = command = "supercombo"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Standing Strong Kick]
type = ChangeState
value = 3000
triggerall = p2stateno !=5110
triggerall = p2stateno !=5120
triggerall = p2stateno !=800
triggerall = p2stateno !=900
trigger1 = statetype != A
triggerall = power >=1000
triggerall = var(59)= 2
triggerall = command = "cx"
trigger1 = statetype = S
trigger1 = ctrl





[state -1, SHeros]
type = ChangeState
value = 99999+1*(var(59)=2)
trigger1 = statetype != A
trigger1 = command = "superheroe"
trigger1 = ctrl


[State -1, Crouching Light Punch]
type = ChangeState
value = 404
triggerall = statetype != A
triggerall = var(59)=2
triggerall = command = "barrido"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Jump Strong Kick]
type = ChangeState
value = 645
triggerall = var(59)=1
triggerall = command = "salto_adelante-x" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

[State -1, Jump Strong Kick]
type = ChangeState
value = 645
triggerall = var(59)=1
triggerall = command = "salto_atras-x" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact


[State -1, Jump Strong Punch]
type = ChangeState
value = 635
triggerall = var(59)=1
triggerall = command = "salto_adelante-c" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact


[State -1, Jump Strong Punch]
type = ChangeState
value = 635
triggerall = var(59)=1
triggerall = command = "salto_atras-c" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) = 1
triggerall = command = "salto_adelante-b" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact


[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) = 1
triggerall = command = "salto_atras-b" 
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact

[State -1, Stand Strong Punch]
type = ChangeState
value = 3990
triggerall = p2stateno !=5110
triggerall = p2stateno !=5120
triggerall = p2stateno !=800
triggerall = p2stateno !=900
triggerall = p2bodydist  X >= 40
triggerall = var(59)= 1
triggerall = command = "cx"
trigger1 = statetype = S
trigger1 = ctrl


[State -1]
type = ChangeState
value = 215
triggerall = var(59)= 1
triggerall = p2bodydist X < 10
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
[State -1]
Type = ChangeState
Value = 214
triggerall = var(59)= 1
Triggerall = Command = "fwd_b" 
triggerall = Command != "holddown"
Triggerall = Statetype = S
Trigger1 = Ctrl 

;---------------------------------------------------------------------------
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
;---------------------------------------------------------------------------



[State -1]
type = ChangeState
value = 4500
triggerall = power >= 1000
triggerall = var(59)=2
triggerall = statetype = S
triggerall = ctrl 
triggerall = p2bodydist X < 40
triggerall = stateno != 100
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = command = "final_power"


[State -1]
type = ChangeState
value = 800
triggerall = var(59)=1
triggerall = statetype = S
triggerall = ctrl 
triggerall = p2bodydist X < 2
triggerall = stateno != 100
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = command = "holdfwd"
triggerall = command = "c"
trigger2 = command = "holdback"


[State -1]
type = ChangeState
value = 960
triggerall = var(59)=2
triggerall = statetype = S
triggerall = ctrl 
triggerall = p2bodydist X < 4
triggerall = stateno != 100
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = command = "x"

[State -1]
type = ChangeState
value = 900
triggerall = var(59)=1
triggerall = statetype = S
triggerall = ctrl 
triggerall = p2bodydist X < 2
triggerall = stateno != 100
triggerall = p2statetype != A
triggerall = p2movetype != H
triggerall = command = "x"
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"


[State -1, Stand Strong Punch]
type = ChangeState
value = 208
triggerall = var(59)=2
triggerall = command = "cubriendose"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl



[State -1, Stand Strong Punch]
type = ChangeState
value = 270
triggerall = var(59)=2
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && time > 5
;---------------------------------------------------------------------
; Golpe sencillo
[State -1]
type = ChangeState
triggerall = var(59)=1
value = IfElse(P2BodyDist X < 13,201,200) ; Un sencillo trigger dos opciones
triggerall = command = "a" && Command != "holddown"
trigger1 = (Ctrl = 1 || StateNo = 100) && StateType = S
trigger2 = stateno = 200
trigger2 = time > 9
;---------------------------------------------------------------------

[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(59)=1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && time > 5


[State -1, Stand Strong Punch]
type = ChangeState
value = 217
triggerall = var(59)=2
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 217) && time > 3

;---------------------------------------------------------------------------

[State -1, Stand Light Kick]
type = ChangeState
triggerall = var(59)= 2
value = 227
triggerall = command = "c" && Command != "holddown"
trigger1 = (Ctrl = 1 || StateNo = 100) && StateType = S

[State -1, Stand Light Kick]
type = ChangeState
triggerall = var(59)= 1
value = IfElse(P2BodyDist X < 20,245,240)
triggerall = command = "c" && Command != "holddown"
trigger1 = (Ctrl = 1 || StateNo = 100) && StateType = S


;---------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
triggerall = var(59)= 1
value = IfElse(P2BodyDist X < 13,260,230)
triggerall = command = "x" && Command != "holddown"
trigger1 = (Ctrl = 1 || StateNo = 100) && StateType = S

[State -1, Standing Strong Kick]
type = ChangeState
triggerall = var(59)= 2
value = 248
triggerall = command = "x" && Command != "holddown"
trigger1 = (Ctrl = 1 || StateNo = 100) && StateType = S

[State -1]
type = ChangeState
value = 990
triggerall = var(59)= 1
triggerall = Command = "q_fwd" && !Command = "holdback"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

[State -1]
type = ChangeState
value = 991
triggerall = var(59)= 1
triggerall = Command = "q_back" && !Command = "holdfwd"
trigger1 = StateType = S && (Ctrl = 1 || StateNo = 100)

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
triggerall = var(59)=1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Crouching Light Punch]
type = ChangeState
value = 402
triggerall = var(59)=2
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = var(59) = 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, Crouching Strong Punch]
type = ChangeState
triggerall = var(59) = 2
value = 411
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59)= 1
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Crouching Light Kick]
type = ChangeState
value = 438
triggerall = var(59)= 2
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = var(59)= 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Crouching Strong Kick]
type = ChangeState
value = 448
triggerall = var(59)= 2
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Punch


[State -1, Jump Light Punch]
type = ChangeState
value = 601
triggerall = stateno != 2046
triggerall = var(59)= 2
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Punch]
type = ChangeState
triggerall = var(59)= 1
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch

[State -1, Jump Strong Punch]
type = ChangeState
value = 618
triggerall = var(59)= 2
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact


[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = var(59)= 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------


;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59)= 1
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Kick]
type = ChangeState
value = 638
triggerall = var(59)= 2
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59)= 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

[State -1, Jump Strong Kick]
type = ChangeState
value = 648
triggerall = var(59)= 2
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
