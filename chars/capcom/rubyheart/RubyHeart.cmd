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
name = "HSchwarzaile"
command = ~D, DF, F, x+y

[Command]
name = "HSchwarzaile"
command = ~D, DF, F, x+z

[Command]
name = "HSchwarzaile"
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
name = "MFantomes"
command = ~D, DB, B, a+b

[Command]
name = "MFantomes"
command = ~D, DB, B, b+c

[Command]
name = "MFantomes"
command = ~D, DB, B, a+c

[Command]
name = "TMagie1"
time = 105
command = b, x, D, a, y

[Command]
name = "TMagie1"
command = c, x, D, a, z
time = 105

[Command]
name = "TMagie1"
command = c, y, D, b, z
time = 105

;[Command]
;name = "TMagie2"
;command = b, x, D, a, y
;time = 50

;[Command]
;name = "TMagie2"
;command = c, x, D, a, z
;time = 50

;[Command]
;name = "TMagie2"
;command = c, y, D, b, z
;time = 50
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
name = "Schwarzaile_X"
command = ~D, DF, F, x
time = 15
[Command]
name = "Schwarzaile_Y"
command = ~D, DF, F, y
time = 15
[Command]
name = "Schwarzaile_Z"
command = ~D, DF, F, z
time = 15

[Command]
name = "Sublimation_A"
command = ~D, DF, F, a

[Command]
name = "Sublimation_B"
command = ~D, DF, F, b

[Command]
name = "Sublimation_C"
command = ~D, DF, F, c

[Command]
name = "Fantome_A"
command = ~D, DB, B, a

[Command]
name = "Fantome_B"
command = ~D, DB, B, b

[Command]
name = "Fantome_C"
command = ~D, DB, B, c

[Command]
name = "Canon_X"
command = ~D, DB, B, x

[Command]
name = "Canon_Y"
command = ~D, DB, B, y

[Command]
name = "Canon_Z"
command = ~D, DB, B, z

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

;--------------------------------
;Recovery Roll
[State -1, Falling]
type = VarSet
triggerall = command = "rroll"
triggerall = alive = 1
trigger1 = (stateno = 5050) || (stateno = 5071)
v = 3;0
value = 1

[State -1, Rolling]
type = ChangeState
value = 5123;900
triggerall = Var(3) = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;====================================
; Commands
[Statedef -1]

;AI AIR Combo
[State -1];	fracos aéreos
type = ChangeState
value = 600 + 30 * (P2bodyDist x > 54 || var(3) > 1)
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4; && time > 7
triggerall = (!movecontact && ctrl)
trigger1 = statetype = A && var(3) < 3
trigger1 = P2BodyDist X <= 76 + vel x * 3
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = stateno= 9850
ignorehitpause=1

[State -1];	médios aéreos
type = ChangeState
value = 610 + 30 * (P2bodyDist x < 52 || var(3) >= 7)
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype = A && var(3) < 12 && roundstate = 2
triggerall = (!movecontact && ctrl) 
trigger1 = P2BodyDist X <= 80 + vel x * 3
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = stateno = 600 || stateno = 630
trigger2 = var(3) >= 3
ignorehitpause=1

[State -1];	Fortes aéreos
type = ChangeState
value = 620 + 30 * (P2bodyDist x < 55)
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype = A && var(3) < 16 && roundstate = 2
triggerall = stateno != 620 && stateno < 650
triggerall = (!movecontact && ctrl) 
trigger1 = P2BodyDist X <= 95 + vel x * 3
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = stateno != 620 && stateno = [600,640]
trigger2 = var(3) >= 12
ignorehitpause=1

;AI Ground Combo 1
[State -1];	fracos em pé
type = ChangeState
value = 200 + 30 * (P2StateType != A)
triggerall = roundstate = 2
triggerall = var(20) = 1 && time > 7
triggerall = random > life && time % 4 && ctrl
trigger1 = StateType != A
trigger1 = P2BodyDist X <= 79
trigger1 = P2Movetype != A
trigger1 = P2StateType != C;A
trigger1 = p2bodydist Y > -20
ignorehitpause=1

[State -1];	fracos abaixados
type = ChangeState
value = 430 - 30 * (P2StateType = A)
triggerall = var(20) = 1
triggerall = random > life && time % 4 && ctrl
triggerall = roundstate = 2 && stateno = 100; && 
triggerall = P2BodyDist X <= 67 
trigger1 = P2Movetype != A
trigger1 = P2StateType != A
trigger2 = P2Movetype = A && P2StateType = S
trigger2 = P2life < life
ignorehitpause=1

[State -1];	médios abaixados
type = ChangeState
value = 440 - (P2Movetype = A) * 30
triggerall = roundstate = 2
triggerall = var(20) = 1
triggerall = stateno = 400 || stateno = 430 || stateno = 200 || stateno = 230
trigger1 = movecontact || ctrl; && numtarget=1;&& 
trigger1 = random > life && time % 4
trigger1 = P2BodyDist X < 106
trigger2 = P2Dist Y <= -125;-130
trigger3 = stateno = 430 && movehit;vel x != 0
ignorehitpause=1

[State -1];	médios em pé
type = ChangeState
value = 240 - (p2statetype = A || P2BodyDist X <= 42) * 30
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype != C && roundstate = 2
triggerall = movecontact || ctrl
triggerall = P2BodyDist X <= 95
trigger1 = stateno = 100
trigger2 = stateno = 400 || stateno = 430
trigger3 = stateno = 200 || stateno = 230
ignorehitpause=1

[State -1];	gancho abaixado
type = ChangeState
value = 420 + (P2BodyDist X >= 67) * 30
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = movecontact || ctrl
triggerall = P2BodyDist X <= 182
trigger1 = stateno != 420 && stateno = [400,440]
trigger2 = stateno != 220 && stateno = [200,240]
ignorehitpause=1

[State -1];	fortes em pé
type = ChangeState
value = 220 + 30 * (P2BodyDist X < 94 || p2statetype = A)
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = movecontact || ctrl
triggerall = P2StateType != C && StateType != A
triggerall = P2BodyDist X <= 109
trigger1 = stateno != 420 && stateno = [400,440]
trigger2 = stateno != 220 && stateno = [200,240]
ignorehitpause=1

;------------------------------
[State -1]
type = ChangeState
value = 9800
triggerall = roundstate = 2 && pos y = 0 && P2MoveType!=A
triggerall = var(20) = 1 && random > life && time % 4 && ctrl
trigger1 = p2bodydist Y < -150
trigger2 = p2StateNo > 5000 && (enemynear, vel y < 0)
trigger3 = (stateno = 420 || anim=255) && movehit
trigger4 = P2BodyDist X > 120 && stateno = [150,151]
trigger4 = (enemy, numproj != 0) || p2stateno = [3000,4000]

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
triggerall = var(20) = 1 && statetype != A && NumprojID(2005) = 0
trigger1 = P2StateType = A && random > life && stateno < 800
trigger1 = enemynear, vel y < 2
triggerall = ctrl || stateno = [200,450]
triggerall = p2bodydist y < const(size.mid.pos.y)
triggerall = stateno != 410 && stateno != 440 && movehit

; Chama Zumbi agarrador & Flamejante
[State -1]
type = null;changeState
value = 2500 + 10 * ceil(random / 499)
triggerall = statetype!=A && NumHelper(2630)=0
triggerall = ctrl && random > life && roundstate = 2
triggerall = var(20) = 1 && stateno != 100;p2life > life && 
trigger1 = p2StateNo = [5100,5120]
trigger2 = p2bodydist y < -120

; Auto Combo
[State -1]
type = null;changeState 
triggerall = movehit && var(3)> 8 && stateno < 1000
trigger1 = p2life > life && var(20)= 1
value = 1020

; Auto Combo
[State -1]
type = changeState 
triggerall = var(20)= 1 && stateno = 1210 && power>=1000; && var(4)=3
trigger1 = p2life > life && var(20)= 1 && statetype=A && roundstate=2
trigger2 = (random + life) < p2life && numtarget!=0 && roundstate=2
value = 3000

;--------------------------------
;Double Hyper Combo
[State -1]
type = ChangeState
value = 4460
triggerall = Numpartner = 1 && var(38)!=0
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
triggerall = Numpartner = 1 && var(37)!=0
triggerall = command = "DoubleDragonCounter"
triggerall = Roundstate = 2 && statetype !=A && power >= 1000 
trigger1 = (partner, stateno = 4404) && StateNo = [150,151]
ignorehitpause=1

;partner Change
[State -1]
type = ChangeState
value = 4410
triggerall = Numpartner = 1 && var(37)!=0
triggerall = command = "troca"
triggerall = Roundstate = 2 && statetype !=A
trigger1 = statetype != A
trigger1 = (partner, stateno = 4404) && ctrl

;partner Assist
[State -1]
type = ChangeState
value = 4480
triggerall = Numpartner = 1 && var(37)!=0
triggerall = command = "Assist"
triggerall = Roundstate = 2 && statetype !=A
trigger1 = (partner, stateno = 4404) && ctrl

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = statetype != A && ctrl && anim!=100 && numexplod(110)=0
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
triggerall = statetype != A && numexplod(110)=0
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
trigger1 = stateNo != [200,670]
v = 3
value = 0
;====================================

; Hyper Rocket Launcher
[State -1]
type = ChangeState
value = 4000
triggerall = alive && power >= 1000 && var(38) != 3 && stateno < 3000 && roundstate=2 
triggerall = numhelper(3500)=0 && numhelper(4020)=0 && statetype != A && stateno != [800,999] 
triggerall = (command = "RCKLaucher" && var(20)=0) || (var(20)=1 && (random/5) > life && (gametime%5)=0)
trigger1 = ctrl || (stateno = [200,450])
trigger2 = stateno = 1000
trigger3 = stateno = 2000; || (var(20)=1 && stateno=140)
trigger4 = (MoveContact || var(6)>0) && var(20)=1 && ((random > life && time % 4) || (random + life) < p2life) 
trigger5 = Movehit && var(20)=1 && (stateno=220||stateno=250||stateno=450)
trigger6 = var(20)=1 && Random > life && (var(6) > 0 || (gametime % 15) = 0);command = "RCKLaucher" && 

; Hyper Milles Fantomes
[State -1]
type = ChangeState
value = 3500
triggerall = numhelper(4020)=0 && numhelper(3500)=0 && statetype != A && stateNO!=[800,999];
triggerall = alive && roundstate = 2 && power >= 1000 && var(38) != 3 && stateno < 3000 
triggerall = (command = "MFantomes" && var(20)=0) || (var(20)=1 && (random/5) > life && (gametime%5)=0)
trigger1 = ctrl || (stateno = [200,450])
trigger2 = stateno = 2500
trigger3 = stateno = 2000
trigger4 = enemynear, vel x < -5.5 || enemynear, facing = facing
trigger4 = var(20)=1 && random > life && (time % 4 || var(6)>1)
trigger5 = var(20)=1 && (P2BodyDist Y < -50 || (var(6)!=0 && enemynear, vel y > 0) || (gametime%100)=0)
trigger5 = p2bodydist y < -120 && p2StateNo = [5100,5120]

; Hyper Flan Mer
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000 && var(38) != 3 && stateno < 3000
triggerall = alive && roundstate=2 && stateno != [800,999] 
triggerall = (command = "HSchwarzaile" && var(20)=0) || (var(20)=1 && (random/4) > life && (gametime%9)=0);p2dist x = [80,125])
trigger1 = ctrl || (stateno = [200,650])
trigger2 = stateno = [1200,1210]
trigger3 = stateno = 2000
trigger4 = MoveContact && var(20)=1 && random > life && time % 4

; Hyper: Black Hayato
[State -1]
type = ChangeState
value = 4500
; || Command = "TMagie2"
triggerall = (Command = "TMagie1" && var(20)=0) || (var(20)=1 && p2dist y = 0)
triggerall = var(38) != 3
triggerall = roundstate = 2 && StateType != A && power>=1000 && alive
triggerall =(stateno < 3000) && (stateno != [800,999]) && p2life != 0 && random < p2life
trigger1 = (ctrl && var(20)!=1) || movecontact && random > life && random < p2life
trigger2 = var(20)=1 && (gametime % 40)=0
trigger2 = ((enemynear, facing) = facing || p2stateno = [5050,5072])
trigger2 = random > life && p2bodydist y > -90 && enemynear, vel y > 8 && enemynear, vel X = [1,-1]

;--------------------------------

;Double Hyper Combo (AI)
[State -1]
type = ChangeState
value = 4460
triggerall = Numpartner = 1 && var(38)=1 && var(37)!=0
triggerall = var(20)=1 && power >= 2000 && numtarget!=0
triggerall = stateno != [4400,4499]
triggerall = Roundstate = 2 && stateno != [800,999]
trigger1 = life < var(33) && ctrl && enemynear, movetype = H && p2bodydist y < 0
trigger1 = partner, stateno = 4404
trigger1 = partner, life = var(34) 
trigger3 = life < partner, life && stateno = [3000,4999]
trigger3 = partner, stateno = 4404
trigger3 = partner, life = var(34) 
trigger4 = statetype !=A && stateno < 3000
trigger4 = partner, stateno = 4404
trigger4 = partner, life = var(34) 
trigger5 = statetype !=A && enemynear, movetype = H
trigger5 = partner, stateno = 4404
trigger5 = partner, life = var(34) 
ignorehitpause=1

;Double Dragon Counter (AI)
[State -1]
type = ChangeState
value = 4420
triggerall = power>=1000 && numpartner!=0
triggerall = statetype != A  && roundstate=2
triggerall = stateno = [150,152]
trigger1 = var(34) = (partner, life) && (partner, life)!=0
trigger1 = var(20) = 1 && var(33) > life && time % 4
trigger1 = partner, stateno = 4404
ignorehitpause=1

;--------------------------------

; Counter: SHIDEN / GUREN
[State -1]
type = ChangeState
value = 3300 + 10 * (command="Counter2")
triggerall = power>=1000
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
trigger1 = StateNo = 420 
trigger2 = anim = 255 

;--------------------------------
; Schwarzaile
[State -1]
type = changeState
value = 1220 + 5 * (command = "Schwarzaile_Y") + 10 * (command = "Schwarzaile_Z")
triggerall = command = "Schwarzaile_X" || command = "Schwarzaile_Y" || command = "Schwarzaile_Z"
triggerall = roundstate = 2 && !var(15);!var(3)
trigger1 = ctrl || (stateno = [200,650])
trigger2 = MoveContact && var(20)=1 && random > life && time % 4
trigger2 = stateno = [210,650]

;--------------------------------
; Summon Dog
[State -1]
type = changeState
value = 1500
triggerall = roundstate = 2 && command = "Canon_X"
triggerall = statetype!=A && NumProjID(1520)=0 && Numexplod(1505)=0
trigger1 = ctrl
trigger2 = movecontact && stateno = [200,450]
trigger3 = MoveContact && var(20)=1 && random > life && time % 4
trigger3 = stateno = [200,450]

;--------------------------------
; Summon Dog
[State -1]
type = changeState
value = 1580 + 10 * (command = "Canon_Z")
triggerall = roundstate = 2 && (command = "Canon_Y" || command = "Canon_Z")
triggerall = statetype!=A && NumProjID(1520)=0 && Numexplod(1505)=0
trigger1 = ctrl
trigger2 = movecontact && stateno = [200,450]
trigger3 = MoveContact && var(20)=1 && random > life && time % 4 && P2bodydist y < -50
trigger3 = stateno = [200,450]

;--------------------------------
; Sublimation
[State -1]
type = changeState
value = 2010  + 5 * (command = "Sublimation_B") + 10 * (command = "Sublimation_C")
trigger1 = command = "Sublimation_A" || command = "Sublimation_B" || command = "Sublimation_C"
triggerall = statetype!=A && NumprojID(2005)=0 && roundstate=2
triggerall = ctrl || (movecontact && stateno = [200,450])
trigger3 = MoveContact && var(20)=1 && random > life && time % 4
trigger3 = stateno = [210,450]
trigger2 = var(20)=1 && (P2BodyDist Y < -50 || (var(6)!=0 && enemynear, vel y > 0) || (gametime%100)=0)
trigger2 = P2Dist X > 90 && random > life && time % 8 && frontedgedist > 100

;--------------------------------
; Fantome
[State -1]
type = changeState
value = 2510 + 5 * (command = "Fantome_B") + 10 * (command = "Fantome_C")
trigger1 = command = "Fantome_A" || command = "Fantome_B" || command = "Fantome_C"
triggerall = roundstate = 2 && statetype!=A && NumHelper(2600)=0 && var(16)<=0
triggerall = ctrl || (movecontact && stateno = [200,450])
trigger3 = MoveContact && var(20)=1 && random > life && time % 4
trigger3 = stateno = [220,450]
trigger2 = var(20)=1 && (P2BodyDist Y < -50 || (var(6)!=0 && enemynear, vel y > 0) || (gametime%100)=0)
trigger2 = p2bodydist y < -120 && p2StateNo = [5100,5120]

;--------------------------------
;Herb
[State -1]
type = changeState
value = 1000
triggerall = Numpartner = 0; && numhelper(1205)=0
triggerall = Roundstate = 2 && statetype !=A && var(9)=0
trigger1 = ctrl && command = "Assist" && var(20)=0
trigger2 = (stateno = 4500 || stateno = 4010 || stateno = 2000 || stateno = 852 || anim = 1550)
trigger2 = var(20)=1 && animtime=0; && enemynear, movetype = H
trigger2 = (Random + life) < p2life

;--------------------------------
;Stand_Throw
;--------------------------------
[State -1]
type = ChangeState
value = 800
;triggerall = statetype = S && p2statetype != A
triggerall = stateno != 100 && p2bodydist X <= 10 && ctrl
trigger1 = command = "fwd_c"
trigger2 = command = "fwd_b"
trigger3 = command = "fwd_z"
trigger4 = command = "fwd_y"
trigger5 = command = "back_c"
trigger6 = command = "back_b"
trigger7 = command = "back_z"
trigger8 = command = "back_y"

;--------------------------------
; Ground basics
;--------------------------------
;Crounch Light Punch
[State -1, Crounch Light Punch]
type = ChangeState
value = 200 + 200 * (command = "holddown")
triggerall = command = "x"
triggerall = (statetype != A) && var(3) < 3; && command != "holddown"
trigger1 = ctrl
trigger2 = (stateno = 230) && movecontact
trigger3 = (stateno = 430) && movecontact
ignorehitpause=1

;--------------------------------
;Crounch Light Kick
[State -1, Crounch Light Kick]
type = ChangeState
value = 230 + 200 * (command = "holddown")
triggerall = command = "a"
triggerall = (statetype != A) && var(3) < 3
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact
ignorehitpause=1

;--------------------------------
;Crounch Medium Punch
[State -1, Crounch Medium Punch]
type = ChangeState
value = 210 + 200 * (command = "holddown")
triggerall = command = "y"
triggerall = (statetype != A) && var(3) < 12
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = movecontact && stateno = [230,240]
trigger4 = movecontact && stateno = [430,440]
trigger5 = (stateno = 400) && movecontact
ignorehitpause=1

;--------------------------------
;Crounch Medium Kick
[State -1, Crounch Medium Kick]
type = ChangeState
value = 240 + 200 * (command = "holddown")
triggerall = command = "b"
triggerall = (statetype != A) && var(3) < 12
trigger1 = ctrl
trigger2 = movecontact && stateno = [200,210]
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = [400,410]
trigger5 = movecontact && stateno = 430
ignorehitpause=1

;--------------------------------
;Crounch Strong Punch
[State -1, Crounch Strong Punch]
type = ChangeState
value = 220 + 200 * (command = "holddown")
triggerall = command = "z"
trigger1 = (statetype != A)
trigger1 = ctrl
trigger2 = movecontact && stateno = [400,410]
trigger3 = movecontact && stateno = [430,440]
trigger5 = movecontact && stateno = [200,210]
trigger4 = movecontact && stateno = [230,240]
ignorehitpause=1

;--------------------------------
;Crounch Strong Kick
[State -1, Crounch Strong Kick]
type = ChangeState
value = 250 + 200 * (command = "holddown")
triggerall = command = "c"
trigger1 = (statetype != A)
trigger1 = ctrl
trigger2 = movecontact && stateno = [400,410]
trigger3 = movecontact && stateno = [430,440]
trigger5 = movecontact && stateno = [200,210]
trigger4 = movecontact && stateno = [230,240]
ignorehitpause=1

;--------------------------------
; Air basics
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
ignorehitpause=1

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
ignorehitpause=1

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
ignorehitpause=1

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
ignorehitpause=1

;--------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A && var(3) < 16
trigger1 = ctrl
trigger2 = movecontact && stateno = [600,610]
trigger3 = movecontact && stateno = [630,640]
ignorehitpause=1

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
ignorehitpause=1

;--------------------------------
;S-Jump UP/FWD
[State -1]
type = ChangeState
value = 9800
triggerall = statetype != A
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
trigger2 = anim = 255

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