; (THANKS TO: Ribeiro) 
; (THANKS TO: Mr_Karai's Jin Saotome)
; (THANKS TO: Zero Gravity Studios)
;-| Super Motions |------------

[Command]
name = "DoubleDragon"
command = ~D, DF, F, c+z

[Command]
name = "DoubleDragonCounter"
command = ~B, DB, D, c+z
time = 10

[Command]
name = "RASETSU_ZAN"
command = ~D, DF, F, x+y

[Command]
name = "RASETSU_ZAN"
command = ~D, DF, F, x+z

[Command]
name = "RASETSU_ZAN"
command = ~D, DF, F, y+z

[Command]
name = "ENGETSU"
command = ~D, DF, F, a+b

[Command]
name = "ENGETSU"
command = ~D, DF, F, b+c

[Command]
name = "ENGETSU"
command = ~D, DF, F, a+c

[Command]
name = "Plasma_Field"
command = ~D, DB, B, a+b

[Command]
name = "Plasma_Field"
command = ~D, DB, B, b+c

[Command]
name = "Plasma_Field"
command = ~D, DB, B, a+c

[Command]
name = "bhayato"
command = ~x, z, B, a, c
time = 105

[Command]
name = "bhayato"
command = ~y, z, B, b, c
time = 105

[Command]
name = "bhayato"
command = ~x, y, B, a, b
time = 105
;--------------------------------
;Counter 1 & Recovery Roll (BACK)
[Command]
name = "Counter1"
command = ~B, DB, D, z
time = 15

[Command]
name = "Counter1"
command = ~B, DB, D, y
time = 15

[Command]
name = "Counter1"
command = ~B, DB, D, x
time = 15

;Counter 2 & Recovery Roll (Foward)
[Command]
name = "Counter2"
command = ~B, DB, D, c
time = 15

[Command]
name = "Counter2"
command = ~B, DB, D, b
time = 15

[Command]
name = "Counter2"
command = ~B, DB, D, a
time = 15

;-| Special Motions |------------

[Command]
name = "GUREN_x"
command = ~F, D, DF, x

[Command]
name = "GUREN_y"
command = ~F, D, DF, y

[Command]
name = "GUREN_z"
command = ~F, D, DF, z

[Command]
name = "SHIDEN_X"
command = ~D, DF, F, x

[Command]
name = "SHIDEN_Y"
command = ~D, DF, F, y

[Command]
name = "SHIDEN_Z"
command = ~D, DF, F, z

[Command]
name = "BYAKKO_HOU"
command = B, F, z+x
time=20

[Command]
name = "BYAKKO_HOU"
command = B, F, x+y
time=20

[Command]
name = "BYAKKO_HOU"
command = B, F, y+z
time=20

; -| CPU Commands |------

[Command]
name = "CPU1"
command = D, D, U, U, D, U
time = 1

[Command]
name = "CPU2"
command = D, U, U, D, D, U
time = 1

[Command] 
name = "CPU3"
command = U, D, D, U, U, D
time = 1

;-| Double Tap |------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| MvC S-Jump |------------
[Command]
name = "DU"
command = D, U
time = 20

[Command]
name = "DUF"
command = D, UF
time = 20

[Command]
name = "DUB"
command = D, UB
time = 20

;-| 2/3 Button Combination |------------
[Command]
name = "recovery"
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

;-| PartnerChange |------------
[Command]
name = "troca"
command = z+c
time = 1

[Command] 
name = "Assist"
command = y+b
time = 1

;-| ADVGUARD |------------
[Command] 
name = "AdvGuard"
command = y+z
time = 10

[Command] 
name = "AdvGuard"
command = x+y
time = 10

[Command] 
name = "AdvGuard"
command = x+z
time = 10

;-| Dir + Button |------------
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

[Command]
name = "back_c"
command = /B,c
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
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
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

;-| Single Button |------------
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

;-| Hold Dir |------------
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
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

;====================================
; Commands
[Statedef -1]

;--------------------------------
;Recovery Roll
[State -1, Falling]
type = VarSet
trigger2 = command = "Counter2"
trigger1 = command = "Counter1"
triggerall = alive = 1
triggerall = (stateno = 5050) || (stateno = 5071) || (stateno = 5100)
var(3) = 1 + (command = "Counter2")

[State -1, Rolling]
type = ChangeState
value = 5123
triggerall = Var(3) != 0
triggerall = alive = 1
triggerall = (stateno = 5050) || (stateno = 5071) || (stateno = 5100)
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;====================================
;AI AIR Combo
[State -1];	fracos aéreos
type = ChangeState
value = 600 + 30 * (P2bodyDist x < 71 || var(3) > 1)
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = (!movecontact && ctrl)
trigger1 = statetype = A && var(3) < 3
trigger1 = P2BodyDist X <= 77 + vel x * 3
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = stateno= 9850

[State -1];	médios aéreos
type = ChangeState
value = 610 + 30 * (P2bodyDist x < 76 || var(3) >= 7)
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype = A && var(3) < 12 && roundstate = 2
triggerall = (!movecontact && ctrl) 
trigger1 = P2BodyDist X <= 102 + vel x * 3
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = stateno = 600 || stateno = 630
trigger2 = var(3) >= 3

[State -1];	Fortes aéreos
type = ChangeState
value = 620 + 30 * (P2bodyDist x > 83)
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype = A && var(3) < 16 && roundstate = 2
triggerall = stateno != 620 && stateno < 650
triggerall = (!movecontact && ctrl) 
trigger1 = P2BodyDist X <= 102 + vel x * 3
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = stateno = [600,640]
trigger2 = var(3) >= 12

;AI Ground Combo 1
[State -1];	fracos abaixados
type = ChangeState
value = 430 - (P2Movetype = A) * 30
triggerall = var(20) = 1
triggerall = random > life && time % 4 && ctrl
triggerall = roundstate = 2
triggerall = stateno = 100 && P2BodyDist X <= 53 
triggerall = StateType != A
trigger1 = P2Movetype != A
trigger1 = P2StateType != A
trigger2 = P2Movetype = A && P2StateType = S
trigger2 = P2life < life
trigger3 = p2stateno != 400
trigger4 = p2stateno != 430

[State -1];	fracos
type = ChangeState
value = 200 + 30 * (P2StateType = A || P2BodyDist X <= 54) + 200 * (P2StateType != A && P2StateType != S)
triggerall = roundstate = 2
triggerall = var(20) = 1 && time > 7
triggerall = random > life && time % 4 && ctrl
triggerall = StateType != A
trigger1 = P2BodyDist X <= 64
trigger1 = P2Movetype != A
trigger1 = P2StateType != C
trigger1 = p2bodydist Y > -20
trigger2 = stateno = [130,140]
trigger3 = p2stateno != 200
trigger3 = p2stateno != 230

[State -1];	médios abaixados
type = ChangeState
value = 440 - (P2BodyDist X <= 46) * 30
triggerall = roundstate = 2
triggerall = var(20) = 1
triggerall = stateno = 400 || stateno = 430 || stateno = 200 || stateno = 230
triggerall = StateType != A
trigger1 = movecontact && ctrl
trigger1 = random > life && time % 4
trigger1 = P2BodyDist X < 48

[State -1];	gancho abaixado
type = ChangeState
value = 420
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = movecontact && ctrl
triggerall = P2BodyDist X <= 55
triggerall = P2Dist Y <= -125
triggerall = StateType != A
trigger1 = stateno != 420 && stateno = [400,440]
trigger2 = stateno != 220 && stateno = [200,240]
trigger3 = stateno = 430 && movehit

[State -1];	médios em pé
type = ChangeState
value = 240 - (p2statetype != C || P2BodyDist X >= 66) * 30
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype = S && roundstate = 2
triggerall = (movecontact || ctrl)
trigger1 = stateno = 100
trigger2 = stateno = 400 || stateno = 430
trigger3 = stateno = 200 || stateno = 230

[State -1];	fortes em pé
type = ChangeState
value = 220 + 30 * (P2BodyDist X >= 74)
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = (movecontact || ctrl)
triggerall = P2StateType != C && StateType != A
trigger1 = stateno != 420 && stateno = [400,440]
trigger2 = stateno != 220 && stateno = [200,240]

[State -1];	rasteira
type = ChangeState
value = 450 - 205 * (p2statetype=c); corta-rasteira
triggerall = roundstate = 2 && StateType != A
triggerall = var(20) = 1 && random > life && time % 4
triggerall = (movecontact || ctrl)
trigger1 = P2BodyDist X <= 98
trigger1 = stateno != 420 && stateno = [400,440]
trigger2 = stateno != 220 && stateno = [200,240]

;--------------------------------
;Jump Strong Kick - hayato pierce
[State -1, Jump Strong Kick - hayato pierce]
type = ChangeState
value = 645
triggerall = roundstate = 2 && StateType = A
triggerall = var(20) = 1 && random > life && time % 4
triggerall = (movecontact || ctrl)
trigger1 = stateno != 620 && stateno = [600,640]
trigger1 = P2BodyDist x <= 0 && P2BodyDist y > 0
trigger2 = var(6) != 0
trigger2 = P2BodyDist X <= 5 && P2BodyDist y > 0

;------------------------------
[State -1]
type = ChangeState
value = 9800
triggerall = roundstate = 2 && pos y = 0 && P2MoveType!=A
triggerall = var(20) = 1 && random > life && time % 4 && ctrl
trigger1 = p2bodydist Y < -120
trigger2 = p2StateNo >= 5000 && (enemynear, vel y < 0)
trigger3 = stateno = 420 && movehit
trigger4 = P2BodyDist X > 120 && stateno = [150,151]
trigger4 = (var(6) != 0) || p2stateno = [3000,4999]

;-------------------------------
;Normal Jump
[State -1]
type = ChangeState
value = 40
triggerall = statetype!=A && var(20) = 1 && pos y >= 0
triggerall = random > life && (Command = "holdfwd" || time % 5) && ctrl
triggerall = var(6) != 0
trigger1 = p2bodydist X > 80
trigger2 = stateno = [130,140]

[State -1];	médios em pé
type = ChangeState
value = 390  
triggerall = var(20) = 1 && random > life
triggerall = statetype != A && roundstate = 2
triggerall = ctrl && (stateno=[130,140])
trigger1 = P2BodyDist X < 126
trigger2 = p2bodydist x < 80 && (enemy,animtime < -5)
;---------
;GUREN < Red Lotus >
[State -1]
type = ChangeState
value = 2020 - 5*(p2bodydist x<65 && p2bodydist x>40)- 5*(p2bodydist x<130 && p2bodydist x>100)
triggerall = var(20) = 1 && NumHelper(2000) = 0
trigger1 = P2StateType = A && random > life && stateno < 2000
trigger1 = enemynear, vel y < 2
trigger1 = P2BodyDist x<130 + vel x * 3
triggerall = ctrl || (stateno!=350 && stateno = [200,450])
triggerall = p2bodydist y < const(size.mid.pos.y)

; Auto Combo
[State -1]
type = ChangeState 
triggerall = movehit && var(3)> 8 && stateno!=350 && stateno < 1000
trigger1 = p2life > life && var(20)= 1
trigger1 = p2bodydist x  < 20
value = 2020

; Auto Combo
[State -1]
type = ChangeState 
triggerall = (power>=1000 || var(9)>0) && pos y = 0 && var(20)= 1 && p2life != 0
triggerall = p2bodydist y  > const(size.head.pos.y) && (enemy, vel y > -2)
trigger1 = p2life > life && random > life && ctrl
trigger2 = movehit && (stateno = 1000 || stateno = [1425,2999])
trigger3 = (enemynear, facing) = facing && random > life && ctrl && (enemynear, animtime < -20)
value = 3000 + 1000 * (var(6) > 0)

;--------------------------------
;Double Hyper Combo
[State -1]
type = ChangeState
value = 4460
triggerall = Numpartner = 1
triggerall = power >= 2000
triggerall = command = "DoubleDragon"
triggerall = Roundstate = 2
trigger1 = (partner, stateno = 4404) && statetype != A && ctrl
trigger2 = (partner, stateno = 4404) && stateno = [3000,4400]
trigger3 = (partner, stateno = 4404) && stateno = [4500,4999]
trigger4 = (partner, stateno = 4404) && statetype !=A && stateno = [200,1200]
trigger5 = (partner, alive=1) && statetype !=A && stateno = [1600,2000]
ignorehitpause=1

;Double Dragon Counter
[State -1]
type = ChangeState
value = 4420
triggerall = Numpartner = 1
triggerall = command = "DoubleDragonCounter"
triggerall = Roundstate = 2 && statetype !=A && power >= 1000 
trigger1 = (partner, stateno = 4404) && StateNo = [150,151]
ignorehitpause=1

;partner Change
[State -1]
type = ChangeState
value = 4410
triggerall = Numpartner = 1
triggerall = command = "troca"
triggerall = Roundstate = 2 && statetype !=A
trigger1 = statetype = S
trigger1 = (partner, stateno = 4404) && ctrl

;partner Assist
[State -1]
type = ChangeState
value = 4480
triggerall = Numpartner = 1
triggerall = command = "Assist"
triggerall = Roundstate = 2 && statetype !=A
trigger1 = (partner, stateno = 4404) && ctrl

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = statetype != A && ctrl && anim!=100
trigger1 = command = "FF"
trigger2 = (P2Movetype = H || var(6)=0) && P2BodyDist X = [70,170]
trigger2 = pos y =0 && var(20) = 1 && random > life && time % 4
trigger2 = stateno != 100 && (enemynear, alive = 1)
trigger3 = var(20) = 1 && p2life > life && p2StateNo = [5100,5110]
trigger3 = stateno != 100 && (enemynear, alive = 1)
trigger4 = var(20) = 1 && numhelper(2630)=1
trigger4 = P2Movetype = H && stateno != 100

;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
triggerall = statetype != A
triggerall = ctrl
trigger2 = stateno = 150 && P2Movetype = A && P2life < life
trigger2 = pos y =0 && var(20) = 1

; AUTO AI

[State -1, Activate AI] 
type = VarSet 
triggerall = var(20) != 1 
trigger1 = IsHomeTeam = 1 && matchno > 1
trigger2 = command = "CPU1" || command = "CPU2" || command = "CPU3"
v = 20
value = 1

; Reset Air combo

[State -1, reset] 
type = VarSet 
trigger1 = var(3) != 0 && statetype != A
trigger1 = stateNo != [5000,5125]
v = 3
value = 0
;====================================

; Hyper: Black Hayato
[State -1]
type = ChangeState
value = 4500
triggerall = StateType != A && (power>=3000 || var(9)>0) && (Command = "bhayato" || var(20)=1) && var(38) != 3
triggerall =(stateno < 3000) && (stateno != [800,999]) && p2life != 0 && random < p2life
trigger1 = (ctrl && var(20)!=1) || movecontact
trigger2 = ((enemynear, facing) = facing || p2stateno = [5050,5072])
trigger2 = random > life && p2bodydist y > -90 && p2bodydist x < 218

; Hyper: RASETSU ZAN < Justice Slash >
[State -1]
type = ChangeState
value = 3000
triggerall = (power>=1000 || var(9)>0) && var(38) != 3 && stateno < 3000
triggerall = command = "RASETSU_ZAN"
triggerall = statetype != A && p2life != 0
trigger1 = ctrl || (stateno = [200,650])
trigger2 = stateno = 1000
trigger3 = pos y = 0 && stateno = [2000,2001]
trigger4 = !movecontact && stateno = 1400

; Hyper: PLASMA FIELD
[State -1]
type = ChangeState
value = 3500
triggerall = (power>=1000 && var(9)=0) && var(38) != 3 && stateno < 3000 && p2life != 0
triggerall = (command = "Plasma_Field" && var(20)=0) || (random > life && (p2stateno!=[5100,5120]) && var(20)=1 && abs(p2dist x) < 100 && abs(p2dist y) < 100)
trigger1 = ctrl || (stateno = [200,650])
trigger2 = stateno = 1000
trigger3 = stateno = [2000,2002]
trigger4 = !movecontact && stateno = 1400
trigger5 = MoveContact && var(20)=1 && random > life && time % 4

; Hyper: ENGETSU < Crescent Moon >
[State -1]
type = ChangeState
value = 4000
triggerall = (power>=1000 || var(9)>0) && var(38) != 3 && stateno < 3000
triggerall = command = "ENGETSU"
triggerall = statetype != A && p2life != 0
trigger1 = ctrl || (stateno = [200,450])
trigger2 = stateno = 1000
trigger3 = pos y = 0 && stateno = [2000,2001]
trigger4 = MoveContact && var(20)=1 && random > life && time % 4
trigger5 = var(20) = 1 && (Command = "holdfwd" || time % 5) && ctrl
trigger5 = var(6) > 0
trigger5 = p2bodydist X > 60

;--------------------------------

; Counter: SHIDEN / GUREN
[State -1]
type = ChangeState
value = 3300 + 10 * (command="Counter2")
triggerall = (power>=1000 || var(9)>0)
triggerall = statetype != A
trigger1 = var(20) = 0 && (command="Counter1" || command="Counter2")
triggerall = stateno = [150,152]
trigger2 = var(20) = 1 && P2life > life && time % 4
ignorehitpause=1

;--------------------------------

;GUREN < Red Lotus > Z
[State -1]
type = ChangeState
value = 2020
triggerall = command = "GUREN_z"
triggerall = ctrl || (stateno = [200,650])
trigger1 = var(20) = 1 && P2BodyDist X < 130 && P2StateType != A && movecontact && P2BodyDist Y < 50
trigger2 = var(20) != 1

;GUREN < Red Lotus > Y
[State -1]
type = ChangeState
value = 2015
triggerall = command = "GUREN_y"
triggerall = ctrl || (stateno = [200,650])
trigger1 = var(20) = 1 && P2BodyDist X < 65 && P2StateType != A && movecontact && P2BodyDist Y < 50
trigger2 = var(20) != 1

;GUREN < Red Lotus > X
[State -1]
type = ChangeState
value = 2010
triggerall = command = "GUREN_x"
triggerall = ctrl || (stateno = [200,650])
trigger1 = var(20) = 1 && P2BodyDist X < 15 && P2StateType != A && movecontact && P2BodyDist Y < 50
trigger2 = var(20) != 1

;--------------------------------
; SHIDEN < Violet Lightning >
[State -1]
type = ChangeState
value = 1010 + 5 * (command = "SHIDEN_Y") + 10 * (command = "SHIDEN_Z") 
triggerall = command = "SHIDEN_X" || command = "SHIDEN_Y" || command = "SHIDEN_Z"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [200,450])
trigger2 = MoveContact && var(20)=1 && random > life && time % 4
trigger2 = stateno = [200,450]

; BYAKKO HOU < White Tiger Cannon >
[State -1]
type = ChangeState
value = 1400
triggerall = command = "BYAKKO_HOU"
triggerall = statetype!=A
trigger1 = ctrl
trigger2 = movecontact && stateno = [200,450]
trigger3 = MoveContact && var(20)=1 && random > life && time % 4
trigger3 = stateno = [200,450]


;--------------------------------
;Aerial Rave Jump
[State -1]
type = ChangeState
value = 9800
triggerall = Command = "holdup" && movehit
trigger1 = StateNo = 420 

;--------------------------------
;Stand_Throw
[State -1]
type = ChangeState
value = 800
triggerall = statetype = S && p2statetype != A
triggerall = stateno != 100 && p2bodydist X <= 20 && ctrl
trigger1 = command = "fwd_c"
trigger2 = command = "fwd_b"
trigger3 = command = "fwd_z"
trigger4 = command = "fwd_y"
trigger5 = command = "back_c"
trigger6 = command = "back_b"
trigger7 = command = "back_z"
trigger8 = command = "back_y"
trigger9 = var(20)=1 && random < (p2life - life) && vel x = 0

;Air_Throw
[State -1]
type = ChangeState
value = 800
triggerall = statetype = A && p2statetype = A
triggerall = p2bodydist X <= 20 && ctrl && (p2movetype != H && stateno!=620 && stateno!=650)
trigger1 = command = "fwd_c"
trigger2 = command = "fwd_b"
trigger3 = command = "fwd_z"
trigger4 = command = "fwd_y"
trigger5 = command = "back_c"
trigger6 = command = "back_b"
trigger7 = command = "back_z"
trigger8 = command = "back_y"
trigger9 = var(20)=1 && random < (p2life - life) && abs(p2bodydist y) < 20

;--------------------------------
;Standing Light Punch
[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = stateno = 200 && time > 7 && anim = 200
trigger3 = stateno = 105 || stateno = 100

;--------------------------------
;Standing Medium Punch
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = 430) && movecontact
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = stateno = 105 || stateno = 100

;--------------------------------
;Turning Strong punch
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = (command = "fwd_z" && var(20) != 1) || (random < p2life-life && var(20) = 1 && p2statetype=C)
triggerall = stateno != 100 && stateno != 245
trigger1 = statetype !=A  && ctrl 
trigger2 = movecontact && stateno != 420 && stateno = [400,440]
trigger3 = movecontact && stateno != 220 && stateno = [200,240]
trigger4 = stateno = 105

;--------------------------------
;Dashing Strong punch
[State -1, Standing Strong Kick]
type = ChangeState
value = 900
triggerall = (command = "z" && var(20) != 1) || (random < p2life-life && var(20) = 1 && P2BodyDist X = [70,170])
triggerall = stateno = 100 && stateno != 245 && var(6)=0
trigger1 = statetype != A && var(20) != 1 && (p2bodydist y > 30)
trigger2 = ctrl

;--------------------------------
;Standing Strong Punch
[State -1, Standing Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = stateno != 100
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = movecontact && stateno = [400,410]
trigger3 = movecontact && stateno = [200,210]
trigger4 = movecontact && stateno = [430,440]
trigger5 = movecontact && stateno = [230,240]
trigger6 = moveguarded && stateno = 210
trigger7 = stateno = 105 

;--------------------------------
;Standing Light Kick
[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = stateno = 200 && time > 7
trigger3 = p2statetype!=A && stateno=400 && movecontact
trigger4 = stateno = 105 || stateno = 100

;--------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = 430) && movecontact
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = stateno = 105 || stateno = 100

;--------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = movecontact && stateno = [400,410]
trigger3 = movecontact && stateno = [200,210]
trigger4 = movecontact && stateno = [430,440]
trigger5 = movecontact && stateno = [230,240]
trigger6 = stateno = 105 || stateno = 100

;--------------------------------
; PLASMA COMBO (Start)
[State -1, plasma combo]
type = ChangeState
value = 300
triggerall = command = "z" || command = "x" || command = "y"
triggerall = command = "holdback" && var(8)!=0 && statetype != A && ctrl
trigger1 = movecontact && stateno = [200,220]

;--------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "down_x"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl && var(20) != 1
trigger2 = stateno = 400 && time > 7

;--------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "down_y"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl && var(20) != 1
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = 430) && movecontact
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 230) && movecontact

;--------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "down_z"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl && var(20) != 1
trigger2 = movecontact && stateno = [400,410]
trigger3 = movecontact && stateno = [430,440]

;--------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "down_a"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl && var(20) != 1

;--------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "down_b"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl && var(20) != 1
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = 430) && movecontact
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 230) && movecontact

;--------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "down_c"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl && var(20) != 1
trigger2 = movecontact && stateno = [400,410]
trigger3 = movecontact && stateno = [430,440]

;--------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A && var(3) < 3
trigger1 = ctrl
trigger2 = stateno = 9800 && var(20)=1 && P2MoveType=H
trigger3 = (stateno = 630) && movecontact

;--------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A && var(3) < 12
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = movecontact && stateno = [630,640]

;--------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = [600,610]
trigger3 = movecontact && stateno = [630,640]

;--------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A  && var(3) < 3
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = stateno = 9800 && var(20)=1 && P2MoveType=H

;--------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A && var(3) < 12
trigger1 = ctrl
trigger2 = movecontact && stateno = [600,610]
trigger3 = movecontact && stateno = 630

;--------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = [600,610]
trigger3 = movecontact && stateno = [630,640]

;--------------------------------
;Jump Strong Kick - hayato pierce
[State -1, Jump Strong Kick - hayato pierce]
type = ChangeState
value = 645
triggerall = command = "c" && command = "holddown"
trigger1 = StateType = A && ctrl
trigger2 = movecontact && stateno != 620 && stateno = [600,640]

;--------------------------------
;S-Jump UP/FWD
[State -1]
type = ChangeState
value = 9800
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "DU"
trigger2 = command = "DUF"

;S-Jump BWD
[State -1]
type = ChangeState
value = 9900
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "DUB"

;--------------------------------
;Aerial Rave Follow-Jump

[State -1, Aerial Rave]
type = ChangeState
value = 9800
triggerall = command = "holdup"
triggerall = movehit
trigger1 = stateno = 420

;--------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype != A && ctrl
trigger1 = var(20) != 1
trigger2 = random < life && var(20)=1


; AI Aerial Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl
triggerall = facing != (enemynear, facing)
trigger1 = random > life
value = 132

; AI Standing Guard
; ==========================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = Statetype = S
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl
triggerall = facing != (enemynear, facing)
trigger1 = random > (enemynear, movecontact)*500
value = 130 ;Default standing guard state

; AI Stand to Crouch Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

; AI Crouching Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl
triggerall = facing != (enemynear, facing)
trigger1 = random > (enemynear, movecontact)*500
value = 131

; AI Crouch to Stand Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = random > life
trigger1 = stateno = 152
value = 150