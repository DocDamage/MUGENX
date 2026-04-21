; SonSon's CMD file
;
;-| Hypers |-----------------------------------------------------------
[Command]
name = "DoubleDragon"
command = ~D, DF, F, c+z

[Command]
name = "DoubleDragonCounter"
command = ~B, DB, D, c+z
time = 10

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+y

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+z

[Command]
name = "qcf_2p"
command = ~D, DF, F, y+z

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+y+z

;*****
[Command]
name = "qcb_2p"
command = ~D, DB, B, x+y

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, y+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+y+z

;*****
[Command]
name = "qcf_2k"
command = ~D, DF, F, a+b

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+c

[Command]
name = "qcf_2k"
command = ~D, DF, F, b+c

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+b+c

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

;-| Specials |-----------------------------------------------------------
[Command]
name = "hcb_x"
command = ~F, D, B, x

[Command]
name = "hcb_y"
command = ~F, D, B, y

[Command]
name = "hcb_z"
command = ~F, D, B, z

[Command]
name = "qcf_x"
command = ~D, DF, F, x

[Command]
name = "qcf_y"
command = ~D, DF, F, y

[Command]
name = "qcf_z"
command = ~D, DF, F, z

[Command]
name = "anti_x"
command = ~F, D, DF, x

[Command]
name = "anti_y"
command = ~F, D, DF, y

[Command]
name = "anti_z"
command = ~F, D, DF, z

[Command]
name = "qcf_a"
command = ~D, DF, F, a

[Command]
name = "qcf_b"
command = ~D, DF, F, b

[Command]
name = "qcf_c"
command = ~D, DF, F, c

[Command]
name = "qcb_a"
command = ~D, DB, B, a

[Command]
name = "qcb_b"
command = ~D, DB, B, b

[Command]
name = "qcb_c"
command = ~D, DB, B, c

[Command]
name = "qcb_x"
command = ~D, DB, B, x

[Command]
name = "qcb_y"
command = ~D, DB, B, y

[Command]
name = "qcb_z"
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

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| MvC S-Jump |------------
[Command]
name = "DU"
command = D, U
time = 15

[Command]
name = "DUF"
command = D, UF
time = 15

[Command]
name = "DUB"
command = D, UB
time = 15

[Command]
name = "ChargedDU"
command = ~10$D, $U

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
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

[Command]
name = "3P"
command = x+y+z
time = 1

[Command]
name = "3K"
command = a+b+c
time = 1

[Command]
name = "LKWeak2"
command = x, x
time = 25

[Command]
name = "LKWeak"
command = x, x, x
time = 25

[Command]
name = "LKmed"
command = y, y, y
time = 20

[Command]
name = "LKhard"
command = z, z, z
time = 20

;-| PartnerChange |-----------------------------------------------
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

[Command]
name = "hold-start"
command = /s
time = 1

[Command]
name = "release-start"
command = ~s
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
name = "hold_z"
command = /$z
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_x"
command = /$x
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

;---------------------------------------------------------------------------
[Statedef -1]


;===========================================================================

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
value = 600 + 30 * (P2bodyDist x < 43 || var(3) > 1)
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4; && time > 7
triggerall = (!movecontact && ctrl)
trigger1 = statetype = A && var(3) < 3
trigger1 = P2BodyDist X <= 67 + vel x * 3
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = stateno= 9850
ignorehitpause=1

[State -1];	médios aéreos
type = ChangeState
value = 610 + 30 * (P2bodyDist x < 59 || var(3) >= 7)
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype = A && var(3) < 12 && roundstate = 2
triggerall = (!movecontact && ctrl) 
trigger1 = P2BodyDist X <= 89 + vel x * 3
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = stateno = 600 || stateno = 630
trigger2 = var(3) >= 3
ignorehitpause=1

[State -1];	Fortes aéreos
type = ChangeState
value = 620 + 30 * (P2bodyDist x < 61)
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype = A && var(3) < 16 && roundstate = 2
triggerall = stateno != 620 && stateno < 650
triggerall = (!movecontact && ctrl) 
trigger1 = P2BodyDist X <= 99 + vel x * 3
trigger1 = abs(p2bodydist Y) < abs(const(size.head.pos.y))
trigger2 = stateno = [600,640]
trigger2 = var(3) >= 12
ignorehitpause=1

;AI Ground Combo 1
[State -1];	fracos em pé
type = ChangeState
value = 200 + 30 * (P2StateType != A || var(3) > 1)
triggerall = roundstate = 2
triggerall = var(20) = 1 && time > 7
triggerall = random > life && time % 4 && ctrl
trigger1 = StateType != A
trigger1 = P2BodyDist X <= 61
trigger1 = P2Movetype != A
trigger1 = P2StateType != C;A
trigger1 = p2bodydist Y > -20
ignorehitpause=1

[State -1];	fracos abaixados
type = ChangeState
value = 430 - 30 * (P2StateType = A || var(3) > 1); < ?
triggerall = var(20) = 1
triggerall = random > life && time % 4 && ctrl
triggerall = roundstate = 2 && stateno = 100; && 
triggerall = P2BodyDist X <= 86 
trigger1 = P2Movetype != A
trigger1 = P2StateType != A
trigger2 = P2Movetype = A && P2StateType = S
trigger2 = P2life < life
ignorehitpause=1

[State -1];	médios abaixados
type = ChangeState
value = 440 - (P2Movetype != A || var(3) >= 7) * 30; < ?
triggerall = roundstate = 2
triggerall = var(20) = 1
triggerall = stateno = 400 || stateno = 430 || stateno = 200 || stateno = 230
trigger1 = movecontact || ctrl; && numtarget=1;&& 
trigger1 = random > life && time % 4
trigger1 = P2BodyDist X <= 81
trigger2 = P2Dist Y <= -125;-130
trigger3 = stateno = 430 && movehit;vel x != 0
ignorehitpause=1

[State -1];	médios em pé
type = ChangeState
value = 240 - (p2statetype != C || P2BodyDist X >= 64 || var(3) >= 7) * 30; < ?
triggerall = var(20) = 1 && random > life && time % 4
triggerall = statetype != C && roundstate = 2
triggerall = movecontact || ctrl
triggerall = P2BodyDist X <= 86
trigger1 = stateno = 100
trigger2 = stateno = 400 || stateno = 430
trigger3 = stateno = 200 || stateno = 230
ignorehitpause=1

[State -1];	gancho abaixado
type = ChangeState
value = 420 + (enemynear,statetype=A || P2BodyDist X <= 50) * 30
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = movecontact || ctrl
triggerall = P2BodyDist X <= 83
trigger1 = stateno != 420 && var(3) >= 12 && stateno = [400,440]
trigger2 = stateno != 220 && var(3) >= 12 && stateno = [200,240]
ignorehitpause=1

[State -1];	fortes em pé
type = ChangeState
value = 220 + 30 * (P2BodyDist X < 103 && P2Dist y != 0)
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = movecontact || ctrl
triggerall = P2StateType != C && StateType != A
triggerall = P2BodyDist X <= 120
trigger1 = stateno != 420 && var(3) >= 12 && stateno = [400,440]
trigger2 = stateno != 220 && var(3) >= 12 && stateno = [200,240]
ignorehitpause=1

;------------------------------
[State -1]
type = ChangeState
value = 9800
triggerall = roundstate = 2 && pos y = 0 && P2MoveType!=A
triggerall = var(20) = 1 && random > life && time % 4 && ctrl
trigger1 = p2bodydist Y < -150
trigger2 = p2StateNo > 5000 && (enemynear, vel y < 0)
trigger3 = (stateno = 450) && movehit
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
;---------------------------------------------------------------------------
; Auto Combo
[State -1]
type = null;ChangeState 
triggerall = movehit && var(4)= 4 && statetype!=A;no < 1000
trigger1 = p2life > life && var(20)= 1
trigger1 = p2bodydist x  < 20 && stateno = [200,450]
value = 1500;2020

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = statetype != A && anim=1000
trigger1 = var(6)=0 && animtime = 0 
trigger1 = var(20) = 1 && random > life && time % 4

; Auto Combo
[State -1]
type = null;ChangeState 
triggerall = (power>=1000 || var(9)>0) && pos y = 0 && var(20)= 1 && p2life != 0
triggerall = p2bodydist y  > const(size.head.pos.y) && (enemy, vel y > -2)
trigger1 = p2life > life && random > life && ctrl
trigger2 = movehit && (stateno = 1000 || stateno = [1425,2999])
trigger3 = (enemynear, facing) = facing && random > life && ctrl && (enemynear, animtime < -20)
value = 3000 + 1000 * (var(6) > 1)

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

;===========================================================================
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
;===========================================================================
; SUPERS

;---------------------------------------------------------------------------
; Stinger Bones: QCF + PP
[State -1, StingerBones]
type = null;ChangeState 
value = 3000
triggerall = command = "qcf_2p"
triggerall = power >= 1000 && var(38) != 3 && stateno < 3000
triggerall = StateType != A
triggerall = stateno != [800,900]
trigger4 = var(20)=0 || (var(20)=1 && Movehit)
trigger1 = ctrl || (stateno = [200,450])
trigger2 = stateno = 1000
trigger3 = stateno = 2000
trigger5 = MoveContact && var(20)=1 && random > life && time % 4

;---------------------------------------------------------------------------
; Bone Buster: QCB + PP (ground)
[State -1, BoneBuster]
type = null;ChangeState 
value = 4000
triggerall = command = "qcb_2p"
triggerall = power >= 1000 && var(38) != 3 && stateno < 3000
triggerall = stateno != [800,900]
trigger1 = ctrl || (stateno = [200,650])
trigger2 = stateno = 1000
trigger3 = stateno = 2000 ;&& hitcount > 3
trigger5 = MoveContact && var(20)=1 && random > life && time % 4

;---------------------------------------------------------------------------
; POW!!
[State -1, BoneBuster]
type = ChangeState 
value = 4500
triggerall = command = "qcf_2k"
triggerall = power >= 1000 && var(38) != 3 && stateno < 3000
triggerall = statetype != A
triggerall = stateno != [800,900]
trigger1 = ctrl || (stateno = [200,450])
trigger2 = stateno = 1000
trigger3 = stateno = 2000 ;&& hitcount > 3
trigger5 = MoveContact && var(20)=1 && random > life && time % 4

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
triggerall = (Command = "holdup" || command = "3K") && movehit
trigger1 = StateNo = 450 
trigger2 = anim = 255 

;===========================================================================
; SPECIALS
;--------------------------------
;GUREN < Red Lotus > Z
[State -1]
type = ChangeState
value = 2020
triggerall = command = "anti_z"
triggerall = ctrl || (stateno = [200,650])
trigger1 = var(20) = 1 && P2BodyDist X < 130 && P2StateType != A && movecontact && P2BodyDist Y < 50
trigger2 = var(20) != 1

;GUREN < Red Lotus > Y
[State -1]
type = ChangeState
value = 2015
triggerall = command = "anti_y"
triggerall = ctrl || (stateno = [200,650])
trigger1 = var(20) = 1 && P2BodyDist X < 65 && P2StateType != A && movecontact && P2BodyDist Y < 50
trigger2 = var(20) != 1

;GUREN < Red Lotus > X
[State -1]
type = ChangeState
value = 2010
triggerall = command = "anti_x"
triggerall = ctrl || (stateno = [200,650])
trigger1 = var(20) = 1 && P2BodyDist X < 15 && P2StateType != A && movecontact && P2BodyDist Y < 50
trigger2 = var(20) != 1

;---------------------------------------------------------------------------
; Ricochet Slash: QCB + K
[State -1, RicochetSlash]
type = ChangeState 
value = 1510 + 5 * (command = "LKmed") + 10 * (command = "LKhard")
trigger2 = (command = "LKWeak") || (command = "LKmed") || (command = "LKhard") || (command = "LKWeak2")
triggerall = ctrl || (stateno = [200,650])
;triggerall = StateType != A
triggerall = roundstate=2 && p2life!=0
trigger1 = var(20) = 1 && (var(6)!=0 || random>life) && P2BodyDist X < 122 && abs(P2BodyDist y) < 70
trigger2 = var(20) != 1

;---------------------------------------------------------------------------
; Boneerang: QCF + P
[State -1, Boneerang]
type = ChangeState 
value = 1210 + 5 * (command = "qcf_y") + 10 * (command = "qcf_z")
trigger2 = (command = "qcf_x") || (command = "qcf_y") || (command = "qcf_z")
triggerall = numprojid(1220)=0 && numhelper(1200)=0 && numhelper(1210)=0
triggerall = roundstate=2 && p2life!=0
triggerall = ctrl || (stateno = [200,650])
trigger1 = var(20) = 1 && (var(6)!=0 || movecontact || random>life) && P2BodyDist X > 50 && abs(P2BodyDist y) < 70
trigger2 = var(20) != 1
trigger3 = var(20) = 1 && var(6)!=0 && anim=100 && frontedgedist > 165;
;---------------------------------------------------------------------------
; Ride & Slash: HCB+P (ground)
[State -1, LetMeRide]
type = null;ChangeState 
value = 2510 + 5 * (command = "qcb_y") + 10 * (command = "qcb_z")
;triggerall = (command = "hcb_x") || (command = "hcb_y") || (command = "hcb_z")
trigger2 = (command = "qcb_x") || (command = "qcb_y") || (command = "qcb_z")
triggerall = ctrl || (stateno = [200,650])
triggerall = roundstate=2 && p2life!=0
trigger1 = var(20) = 1 && (var(6)!=0 || movecontact) && random>life; && P2BodyDist X > 50 && frontedgedist > 165
trigger2 = var(20) != 1
;trigger3 = var(20) = 1 && random > life && (gametime%10)=0 && ((p2bodydist y) / 2) > p2bodydist x; = [10,20] 

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
trigger1 = stateno = 450
;trigger2 = anim = 255

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
