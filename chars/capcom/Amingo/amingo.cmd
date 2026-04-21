; (THANKS TO: Ribeiro, Mr_Karai's Jin Saotome, Zero Gravity Studios)
;-| Super Motions |------------

[Command]
name = "DoubleDragon"
command = ~D, DF, F, c+z

[Command]
name = "DoubleDragonCounter"
command = ~B, DB, D, c+z
time = 10

[Command]
name = "SnapBack"
command = ~D, DF, F, y+b

[Command]
name = "HVbeam"
command = ~D, DF, F, x+y

[Command]
name = "HVbeam"
command = ~D, DF, F, x+z

[Command]
name = "HVbeam"
command = ~D, DF, F, y+z

[Command]
name = "RCKLaucher"
command = ~D, DF, F, a+b

[Command]
name = "RCKLaucher"
command = ~D, DF, F, b+c

[Command]
name = "RCKLaucher"
command = ~D, DF, F, a+c

[Command]
name = "CODE_T002"
command = ~D, DB, B, a+b

[Command]
name = "CODE_T002"
command = ~D, DB, B, b+c

[Command]
name = "CODE_T002"
command = ~D, DB, B, a+c

[Command]
name = "maracas"
command = ~D, DB, B, x+y

[Command]
name = "maracas"
command = ~D, DB, B, y+z

[Command]
name = "maracas"
command = ~D, DB, B, x+z

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
name = "Vbeam_X"
command = ~D, DF, F, x

[Command]
name = "Vbeam_Y"
command = ~D, DF, F, y

[Command]
name = "Vbeam_Z"
command = ~D, DF, F, z

[Command]
name = "GUREN_x"
command = ~D, DB, B, x

[Command]
name = "GUREN_y"
command = ~D, DB, B, y

[Command]
name = "GUREN_z"
command = ~D, DB, B, z

[Command]
name = "Dog_A"
command = ~D, DF, F, a

[Command]
name = "corvo_B"
command = ~D, DF, F, b

[Command]
name = "hunter_C"
command = ~D, DF, F, c

[Command]
name = "zumbi_A"
command = ~D, DB, B, a

[Command]
name = "zumbi_B"
command = ~D, DB, B, b

[Command]
name = "zumbi_C"
command = ~D, DB, B, c

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

;--------------------------------
;AI AIR Combo
[State -1];	fracos aéreos
type = ChangeState
value = 600 + 30 * (P2bodyDist x < 50 || var(3) > 1)
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4; && time > 7
triggerall = (!movecontact && ctrl)
trigger1 = statetype = A && var(3) < 3
trigger1 = P2BodyDist X <= 80 + vel x * 3
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = stateno= 9850

[State -1];	médios aéreos
type = ChangeState
value = 610 + 30 * (P2bodyDist x > 31 || var(3) >= 7)
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype = A && var(3) < 12 && roundstate = 2
triggerall = (!movecontact && ctrl) 
trigger1 = P2BodyDist X <= 80 + vel x * 3
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = stateno = 600 || stateno = 630
trigger2 = var(3) >= 3

[State -1];	Fortes aéreos
type = ChangeState
value = 620 + 30 * (P2bodyDist x > 75)
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype = A && var(3) < 16 && roundstate = 2
triggerall = stateno != 620 && stateno < 650
triggerall = (!movecontact && ctrl) 
trigger1 = P2BodyDist X <= 80 + vel x * 3
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = stateno = [600,640]
trigger2 = var(3) >= 12

;AI Ground Combo 1
[State -1];	fracos em pé
type = ChangeState
value = 200 + 30 * (P2StateType != A)
triggerall = roundstate = 2
triggerall = var(20) = 1 && time > 7
triggerall = random > life && time % 4 && ctrl
trigger1 = StateType != A
trigger1 = P2BodyDist X <= 80
trigger1 = P2Movetype != A
trigger1 = P2StateType != C;A
trigger1 = p2bodydist Y > -20

[State -1];	fracos abaixados
type = ChangeState
value = 430 - 30 * (P2StateType = A)
triggerall = var(20) = 1
triggerall = random > life && time % 4 && ctrl
triggerall = roundstate = 2 && stateno = 100; && 
triggerall = P2BodyDist X <= 83 
trigger1 = P2Movetype != A
trigger1 = P2StateType != A
trigger2 = P2Movetype = A && P2StateType = S
trigger2 = P2life < life

[State -1];	médios abaixados
type = ChangeState
value = 440 - (P2Movetype = A) * 30
triggerall = roundstate = 2
triggerall = var(20) = 1
triggerall = stateno = 400 || stateno = 430 || stateno = 200 || stateno = 230
trigger1 = movecontact || ctrl; && numtarget=1;&& 
trigger1 = random > life && time % 4
trigger1 = P2BodyDist X < 100
trigger2 = P2Dist Y <= -125;-130
trigger3 = stateno = 430 && movehit;vel x != 0

[State -1];	médios em pé
type = ChangeState
value = 240 - (p2statetype != C || P2BodyDist X <= 90) * 30
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype != C && roundstate = 2
triggerall = movecontact || ctrl
triggerall = P2BodyDist X <= 120
trigger1 = stateno = 100
trigger2 = stateno = 400 || stateno = 430
trigger3 = stateno = 200 || stateno = 230

;------------------------------
[State -1]
type = ChangeState
value = 9800
triggerall = roundstate = 2 && pos y = 0 && P2MoveType!=A
triggerall = var(20) = 1 && random > life && time % 4 && ctrl
trigger1 = p2bodydist Y < -150
trigger2 = p2StateNo > 5000 && (enemynear, vel y < 0)
trigger3 = (stateno = 410 || stateno = 440) && movehit
trigger4 = P2BodyDist X > 120 && stateno = [150,151]
trigger4 = (enemy, numproj != 0) || p2stateno = [3000,4000]

[State -1];	fortes em pé
type = ChangeState
value = 220 + 30 * (P2BodyDist X < 50 || P2Dist y < 0)
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = movecontact || ctrl
triggerall = P2StateType != C && StateType != A
triggerall = P2BodyDist X <= 155
trigger1 = stateno != 420 && stateno = [400,440]
trigger2 = stateno != 220 && stateno = [200,240]

[State -1];	gancho abaixado
type = ChangeState
value = 420 + (P2BodyDist X <= 85) * 30
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = movecontact || ctrl
triggerall = P2BodyDist X <= 190
trigger1 = stateno != 420 && stateno = [400,440]
trigger2 = stateno != 220 && stateno = [200,240]

;-------------------------------
;Normal Jump
[State -1]
type = ChangeState
value = 40
triggerall = Command = "holdfwd" && statetype!=A && ctrl
trigger1 = enemynear, numproj != 0; && stateno = [1000,1500]
trigger1 = var(20) = 1 && random > life && time % 5
trigger1 = p2bodydist X > 220
;-------------------------------
;Grenade Launcher
[State -1]
type = changeState
value = 2020 - 5*(p2bodydist x>100)- 5*(p2bodydist x>250)
triggerall = var(20) = 1 && statetype = S; && NumHelper(2000) = 0
trigger1 = P2StateType = A && random > life && stateno < 2000
trigger1 = enemynear, vel y < 2
triggerall = ctrl || stateno = [210,450]
triggerall = p2bodydist y < const(size.mid.pos.y)
triggerall = stateno != 410 && stateno != 440 && movehit

; Chama Zumbi agarrador & Flamejante
[State -1]
type = changeState
value = 2530
triggerall = statetype!=A && NumHelper(2630)=0
triggerall = ctrl && random > life && roundstate = 2
triggerall = var(20) = 1 && stateno != 100;p2life > life && 
trigger1 = p2StateNo = [5100,5120]
trigger2 = p2bodydist y < -120

; Chama cão
[State -1]
type = ChangeState
value = 2520 + 5 * ceil(random / 499)
triggerall = statetype!=A && NumHelper(2620)=0
triggerall = ctrl && random > life && roundstate = 2
triggerall = var(20) = 1 && stateno != 100
triggerall = backedgebodydist < abs(random/6)
trigger1 = enemy, numproj != 0
trigger2 = p2movetype = A

; Auto Combo
[State -1]
type = changeState 
triggerall = movehit && var(3)> 8 && stateno < 1000
trigger1 = p2life > life && var(20)= 1
value = 1520

; Auto Combo
[State -1]
type = changeState 
triggerall = animtime=0 && anim = 1005 && power>=1000
trigger1 = p2life > life && var(20)= 1 && statetype!=A
value = 3000

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
trigger4 = var(20) = 1 && (numhelper(2630)=1||numhelper(2620)=1)
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

; Hyper Elbow Tackle
[State -1]
type = ChangeState
value = 3500
triggerall = statetype != A && stateNO!=[800,999];
triggerall = power >= 1000 && var(38) != 3 && stateno < 3000
triggerall = command = "RCKLaucher" && NumHelper(3600) = 0
trigger1 = ctrl || (stateno = [200,450])
trigger2 = stateno = 1500
trigger3 = stateno = 2000
;trigger4 = !movecontact && stateno = 1400

; Hyper "CODE_T002"
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000 && var(38) != 3 && stateno < 3000
triggerall = command = "HVbeam";  && NumHelper(3600) = 0
triggerall = statetype != A; && p2bodydist x > (var(20)-1)
triggerall = var(20)=0 || (var(20)=1 && p2dist x = [80,125])
trigger1 = ctrl || (stateno = [200,450])
trigger2 = stateno = 1500
trigger3 = stateno = 2000
:trigger4 = !movecontact && stateno = 1400
trigger5 = MoveContact && var(20)=1 && random > life && time % 4

; Hyper Rocket Launcher
[State -1]
type = ChangeState
value = 4000
triggerall = power >= 1000 && var(38) != 3 && stateno < 3000
triggerall = command = "CODE_T002"; && NumHelper(3600) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [200,450])
trigger2 = stateno = 1500
trigger3 = stateno = 2000
;trigger4 = !movecontact && stateno = 1400
trigger5 = MoveContact && var(20)=1 && random > life && time % 4

; Plants Rules!
[State -1]
type = ChangeState
value = 4500
triggerall = power >= 1000 && var(38) != 3 && stateno < 3000
triggerall = command = "maracas"; && NumHelper(3600) = 0
triggerall = statetype != A
trigger1 = ctrl || (stateno = [200,450])
trigger2 = stateno = 1500
trigger3 = stateno = 2000
;trigger4 = !movecontact && stateno = 1400
trigger5 = MoveContact && var(20)=1 && random > life && time % 4

;--------------------------------

; Counter: SHIDEN / GUREN
[State -1]
type = ChangeState
value = 3300 + 10 * (command="Counter2")
triggerall = power>=1000; || var(9)>0)
triggerall = statetype != A
trigger1 = var(20) = 0 && (command="Counter1" || command="Counter2")
triggerall = stateno = [150,152]
trigger2 = var(20) = 1 && P2life > life && time % 4
ignorehitpause=1

;--------------------------------
;Aerial Rave Jump
[State -1]
type = changeState
value = 9800
triggerall = Command = "holdup" && movehit
trigger1 = StateNo = 440 
trigger2 = StateNo = 410 

;--------------------------------

;GUREN < Red Lotus > X
[State -1]
type = ChangeState
value = 2010
triggerall = command = "GUREN_x" && statetype != A
triggerall = ctrl || (stateno = [210,450])
trigger1 = var(20) = 1 && P2BodyDist X < 15 && movecontact && P2BodyDist Y < 50; && P2StateType != A 
trigger1 = random > life && time % 40
trigger1 = enemynear, vel y > 0;2
trigger2 = var(20) != 1

;GUREN < Red Lotus > Y
[State -1]
type = ChangeState
value = 2015
triggerall = command = "GUREN_y" && statetype != A
triggerall = ctrl || (stateno = [210,450])
trigger1 = var(20) = 1 && P2BodyDist X < 65 && movecontact && P2BodyDist Y < 50;P2StateType != A && 
trigger1 = random > life && time % 40
trigger1 = enemynear, vel y > 0;< 2
trigger2 = var(20) != 1

;GUREN < Red Lotus > Z
[State -1]
type = ChangeState
value = 2020
triggerall = command = "GUREN_z" && statetype != A
triggerall = ctrl || (stateno = [210,450])
trigger1 = var(20) = 1 && P2BodyDist X < 130 && P2BodyDist Y < 50;P2StateType != A && 
trigger1 = random > life && time % 40
trigger1 = enemynear, vel y > 0;< 2
trigger2 = var(20) != 1
trigger3 = movecontact && var(20) = 1 && stateno = [210,450]

;--------------------------------
; Elbow Tackle
[State -1]
type = changeState
value = 1510 + 5 * (command = "Vbeam_Y") + 10 * (command = "Vbeam_Z")
triggerall = command = "Vbeam_X" || command = "Vbeam_Y" || command = "Vbeam_Z"
trigger1 = ctrl || (stateno = [210,650])
trigger2 = MoveContact && var(20)=1 && random > life && time % 4
trigger2 = stateno = [210,650]

;--------------------------------
; Summon Dog
[State -1]
type = changeState
value = 2500 + 5 * (command = "corvo_B") + 10 * (command = "hunter_C")
triggerall = command = "Dog_A" || command = "corvo_B" || command = "hunter_C"
triggerall = statetype!=A && NumHelper(2620)=0
trigger1 = ctrl
trigger2 = movecontact && stateno = [210,450]
trigger3 = MoveContact && var(20)=1 && random > life && time % 4
trigger3 = stateno = [210,450]
;--------------------------------

; Chama Zumbi agarrador
[State -1]
type = changeState
value = 2530
triggerall = command = "zumbi_A" || command = "zumbi_B" || command = "zumbi_C"
triggerall = statetype!=A && NumHelper(2630)=0
trigger1 = ctrl
trigger2 = movecontact && stateno = [210,450]
trigger3 = MoveContact && var(20)=1 && random > life && time % 4
trigger3 = stateno = [210,450]

;--------------------------------
;Herb
[State -1]
type = changeState
value = 1000
triggerall = ctrl && Numpartner = 0 && numhelper(1205)=0
triggerall = Roundstate = 2 && statetype !=A && var(9)=0
trigger1 = command = "Assist" && var(20)=0
trigger2 = var(20)=1 && p2life > (life + 80)
trigger2 = numhelper > 1 && backedgebodydist < 60

;--------------------------------
;Stand_Throw
[State -1]
type = ChangeState
value = 800
;triggerall = statetype = S && p2statetype != A
triggerall = stateno != 100 && p2bodydist X <= 20 && ctrl
trigger1 = command = "fwd_c"
trigger2 = command = "fwd_b"
trigger3 = command = "fwd_z"
trigger4 = command = "fwd_y"
trigger5 = command = "back_c"
trigger6 = command = "back_b"
trigger7 = command = "back_z"
trigger8 = command = "back_y"

;--------------------------------
;Standing Light Punch
[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = stateno = 200 && time > 7
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
;Standing Strong Punch
[State -1, Standing Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = movecontact && stateno = [400,410]
trigger3 = movecontact && stateno = [200,210]
trigger4 = movecontact && stateno = [430,440]
trigger5 = movecontact && stateno = [230,240]
trigger6 = moveguarded && stateno = 210
trigger7 = stateno = 105 || stateno = 100

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
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = [600,610]
trigger3 = movecontact && stateno = [630,640]

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
trigger1 = stateno = 410
trigger2 = stateno = 440

;--------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype != A && ctrl
trigger1 = var(20) != 1
trigger2 = random < life && var(20)=1


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
trigger1 = random > (enemynear, movecontact)*500;trigger1 = random > life
value = 131


; AI Crouch to Stand Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = random > life;1
trigger1 = stateno = 152
value = 150


; AI Aerial Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl
triggerall = facing != (enemynear, facing)
trigger1 = random > life;
value = 132