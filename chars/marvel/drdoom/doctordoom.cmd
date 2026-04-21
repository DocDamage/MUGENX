; ***************************************************************************
 ; DOCTOR DOOM MARVEL SUPERHEROES - DEDICADO A LAS BUENAS PERSONAS DEL MUNDO
; ***************************************************************************

;-| Super Motions |--------------------------------------------------------
[Command]
name = "AI_1"
command = U,D,F,F,B,B
time = 1

[Command]
name = "AI_2"
command = U,D,F,F,B,F
time = 1

[Command]
name = "AI_3"
command = U,D,F,F,B,D
time = 1

[Command]
name = "AI_4"
command = U,D,F,F,B,U
time = 1

[Command]
name = "AI_5"
command = U,D,F,F,U,B
time = 1

[Command]
name = "AI_6"
command = U,D,F,F,D,B
time = 1

[Command]
name = "AI_7"
command = U,D,F,F,F,B
time = 1

[Command]
name = "AI_8"
command = U,D,U,F,B,B
time = 1

[Command]
name = "AI_9"
command = U,D,D,F,B,B
time = 1

[Command]
name = "AI_10"
command = D,D,F,F,B,B
time = 1

[Command]
name = "AI_11"
command = U,U,F,F,B,B
time = 1

[Command]
name = "AI_12"
command = U,B,F,F,B,B
time = 1


[Command]
name = "finalvictory"
command = ~D, DF, F, a+b
time = 15

[Command]
name = "finalvictory"
command = ~D, DB, B, a+b
time = 15

[Command]
name = "super_exploxion"
command = D, DF, F, x+z
time = 15

[Command]
name = "supermisil_4"
command = D, DF, F, c+x
time = 15

[Command]
name = "supermisil_4"
command = D, DB, B, c+x
time = 15

[Command]
name = "super_photom"
command = D, DB, B, x+z
time = 15

[Command]
name = "photom_array"
command = D, DB, B, x+z
time = 15

;-| Special Motions |------------------------------------------------------

[Command]
name = "muralla_piedras"
command =  D, DB, B, a
time = 10


[Command]
name = "combo_aereo"
command = a+b
time = 1

[Command]
name = "muralla_piedras"
command =  D, DF, F, a
time = 10

[Command]
name = "super_misil"
command =  D, DF, F, c
time = 10

[Command]
name = "super_misil"
command =  D, DB, B, c
time = 10
[Command]
name = "super_rayo"
command =  D, DF, F, x


[Command]
name = "super_rayo"
command =  D, DF, F, y


[Command]
name = "super_rayo"
command =  D, DF, F, z

[Command]
name = "photom"
command = ~D, DB,B,y
time = 10


[Command]
name = "photom"
command = ~D, DB,B,z
time = 10


[Command]
name = "photom"
command = ~D, DB,B,x
time = 10

[Command]
name = "combo2"
command = ~D, DB,B,b
time = 10

[Command]
name = "combo2"
command = ~D, DF,F,b
time = 10

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "volar"
command = ~D, B,a

[Command]
name = "volar"
command = ~D, F,a


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "SuperJumpUp"
command = ~D, U


[Command]
name = "SuperJumpFwd"
command =~D, UF


[Command]
name = "SuperJumpBck"
command = ~D, UB



;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1


[Command]
name = "defensatotal"
command = a+b
time = 1

[Command]
name = "ac";Required (do not remove)
command = a+c
time = 1

[Command]
name = "aguarre_inmediato"
command = c+x
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

;-| Dir |--------------------------------------------------------------
[Command]
Name= "fwd"
command = $F
time = 1

[Command]
Name= "back"
command = $B
time = 1

[Command]
Name= "up"
command = $U
time = 1

[Command]
Name= "down"
command = $D
time = 1


[Statedef -1]

[State -1, AI2] ; Una sencilla forma de evitar que en el modo entrenamiento salte
type = Varset
triggerall = roundstate = 2
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
var(39) = 1

[State -1]
type = ChangeState
value = 1300
triggerall = statetype!=A
triggerall = statetype= S
triggerall = command = "defensatotal"
triggerall = ctrl = 1
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 130

[State -1, Final Victory]
type = ChangeState
value = 3800
triggerall = statetype !=A
triggerall = command = "finalvictory"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl


[State -2, cubrirse con misiles]
type = ChangeState
triggerall = var(39) = 1
triggerall = (StateType != A) && (StateType != L)
triggerall = (P2MoveType = A) && (P2StateType != A) && (enemy, NumProj >= 1)
triggerall = StateNo != 40
;triggerall = random >= 400
trigger1 = Ctrl
value = 130



[State -1, Un misil]
type = ChangeState
value = 242
triggerall = power >=1000
triggerall = command = "supermisil_4"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Rafaga 4 misiles]
type = ChangeState
value = 243
triggerall = power >=500
triggerall = command = "super_misil"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Levantarse rapido adelante]
type = ChangeState
value = 6770
trigger1 = command = "holdfwd"
trigger1 = stateno = 5120
trigger1 = Time = 1

[State -1, levantarse rapido hacia atras]
type = ChangeState
value = 6771
trigger1 = command = "holdback"
trigger1 = stateno = 5120
trigger1 = Time = 1

[State -1, A]
type = ChangeState
triggerall = p2life > 0
value = ifelse(Random <= 499, 7690, 8691)
triggerall = var(22)=0
triggerall = numproj = 0
triggerall = power >=1000
triggerall = var(39)=1
trigger1 = P2BodyDist X >=30
trigger1 = statetype = A
trigger1 = ctrl

[State -1, B]
type = ChangeState
triggerall = p2life > 0
value = ifelse(Random >= 499, 7660, 8691)
triggerall = var(22)=0
triggerall = numproj = 0
triggerall = power >=2000
triggerall = var(39)=1
trigger1 = P2BodyDist X >=30
trigger1 = statetype = A
trigger1 = ctrl

[State -1, C]
type = ChangeState
triggerall = p2statetype !=L
triggerall = p2life > 0
value = ifelse(Random <= 499, 3700, 3220)
triggerall = var(22)=0
triggerall = statetype !=L
triggerall = statetype !=A
triggerall = power >=1000
triggerall = var(39) = 1
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = P2BodyDist X >=30


[State -1, D]
type = ChangeState
triggerall = p2life > 0
triggerall = statetype !=A
value = ifelse(Random <= 499, 3705, 370)
triggerall = var(22)=0
triggerall = power >=1000
triggerall = var(39) = 1
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = P2BodyDist X >=30

[State -1, E]
type = ChangeState
triggerall = p2life > 0
value = ifelse(Random <= 499, 800, 900)
triggerall = var(39)=1
triggerall = !Win
triggerall = StateType = S
trigger1 = ctrl
trigger1 = P2BodyDist X < 20
trigger1 = P2StateType = S || P2StateType = C
trigger1 = Random < 20

[State -1, F]
type = ChangeState
value = 240
triggerall = random >=499
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = P2BodyDist X < 20
trigger1 = P2StateType = S || P2StateType = C


[State -1, G]
type = ChangeState
triggerall = p2life > 0
value = ifelse(Random <= 499, 850, 860)
triggerall = var(39)=1
triggerall = !Win
triggerall = StateType = A
trigger1 = ctrl
trigger1 = P2BodyDist X < 20
trigger1 = P2StateType = A
trigger1 = Random < 50

[State -1, H]
type = ChangeState
triggerall = p2life >=200
value = ifelse(Random <= 499, 4700, 100)
triggerall = var(39)=1
triggerall = !Win
triggerall = StateType = S
triggerall = StateNo != 100
trigger1 = ctrl
trigger1 = P2BodyDist X = [100,200]
trigger1 = Random <= (150 - ifelse(Life < 265, 90, 0))
trigger2 = ctrl
trigger2 = P2MoveType = H
trigger2 = Random <= 300


[State -1, I]
type = ChangeState
triggerall = power >=1000
triggerall = p2life <=200
value = ifelse(Random <= 499, 3800, 108)
triggerall = var(39)=1
triggerall = !Win
triggerall = StateType = S
trigger1 = ctrl

[State -1, I]
type = ChangeState
triggerall = p2life > 0
triggerall = power <=1000
value = ifelse(Random <= 499, 100, 108)
triggerall = var(39)=1
triggerall = !Win
triggerall = StateType = S
triggerall = StateNo != 4700
triggerall = StateNo != 4800
trigger1 = ctrl
trigger1 = P2BodyDist X >= 200
trigger1 = Random <= (150 - ifelse(Life < 265, 90, 0))
trigger2 = ctrl
trigger2 = P2MoveType = H
trigger2 = Random <= 300

[State -1,cubrirse]
type = ChangeState
value = 130
triggerall = Var(39) = 1 
triggerall = random < 999
triggerall = P2movetype = A
triggerall = statetype != A
triggerall = P2statetype != C
trigger1 = ctrl
trigger2 = stateno = 52

[State -1,cubrirse]
type = ChangeState
value = 131
triggerall = Var(39) = 1
triggerall = random < 999
triggerall = P2movetype = A
triggerall = statetype != A
triggerall = P2statetype = C
trigger1 = ctrl
trigger2 = stateno = 52


[State -1]
type = ChangeState
value =132
triggerall = Var(39) = 1 
triggerall = random < 999
triggerall = P2movetype = A
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 5210

[State -1]
type = ChangeState
value = 152
triggerall = var(39) = 1
triggerall = Statetype != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = stateno = 150
trigger2 = stateno = 151

[State -1]
type = ChangeState
value = 150
triggerall = var(39) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = stateno = 152
trigger2 = stateno = 153

[State -1]
type = ChangeState
value = 150
triggerall = var(39) = 1
triggerall = Statetype != A
triggerall = Pos Y > -1
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = stateno = 154
trigger2 = stateno = 155

[State -1]
type = ChangeState
value = 152
triggerall = var(39) = 1
triggerall = Statetype != A
triggerall = Pos Y > -1
triggerall = P2statetype = C
triggerall = P2Movetype = A
trigger1 = stateno = 154
trigger2 = stateno = 155

[State -1, 1]
type = ChangeState
value = 200
triggerall = var(39)=1
triggerall = StateType = S || StateType = C
trigger1 = P2BodyDist X <= 60
trigger1 = ctrl
trigger1 = Random <= 25

[State -1]
type = ChangeState
value = 430
triggerall = var(39)=1
triggerall = StateType = S || StateType = C
trigger1 = P2BodyDist X <= 60
trigger1 = ctrl
trigger1 = Random <= (10 + ifelse(P2StateType = S, 40, 5))

[State -1]
type = ChangeState
value = ifelse(Random <= 499, 230, 430)
triggerall = var(39)=1
trigger1 = StateNo = 200
trigger1 = MoveHit
trigger1 = Random <= 499

[State -1]
type = ChangeState
value = ifelse(Random <= 499, 3300, 410)
triggerall = var(39)=1
trigger1 = StateNo = 200
trigger1 = MoveHit
trigger1 = Random <= 500
trigger2 = StateNo = 430 || StateNo = 230
trigger2 = MoveHit
trigger2 = Random <= 200

[State -1]
type = ChangeState
value = ifelse(Random <= 499, 240, 440)
triggerall = var(39)=1
trigger1 = StateNo = 200 || StateNo = 430
trigger1 = MoveHit
trigger1 = Random <= 400
trigger2 = StateNo = 210 || StateNo = 410
trigger2 = MoveHit
trigger2 = Random <= 300

[State -1]
type = ChangeState
value = ifelse(Random <= 499, 220, 420)
triggerall = var(39)=1
trigger1 = StateNo = 200 || StateNo = 430
trigger1 = MoveHit
trigger1 = Random <= 100
trigger2 = StateNo = 240 || StateNo = 440
trigger2 = MoveHit
trigger2 = Random <= 499
trigger3 = StateNo = 210 || StateNo = 410
trigger3 = MoveHit
trigger3 = Random <= 125
trigger4 = StateNo = 230 || StateNo = 430
trigger4 = MoveHit
trigger4 = Random <= 125

[State -1]
type = ChangeState
value = ifelse(P2BodyDist X >= 30, 250, 450)
triggerall = var(39)=1
trigger1 = StateNo = 200 || StateNo = 430
trigger1 = MoveHit
trigger2 = StateNo = 240 || StateNo = 440
trigger2 = MoveHit
trigger3 = StateNo = 210 || StateNo = 410
trigger3 = MoveHit
trigger4 = StateNo = 230 || StateNo = 430
trigger4 = MoveHit


[State -1]
type = ChangeState
value = 3300
triggerall = p2life > 0
triggerall = var(22)=1
triggerall = var(39) = 1
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = P2BodyDist X <= 54
trigger1 = P2StateType = L
trigger1 = P2MoveType = H



[State -1, combo5]
type = ChangeState
value = 4700
triggerall = power >=100
triggerall = statetype = S
triggerall = command = "aguarre_inmediato"
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 500
triggerall = power < 3000
trigger1 = command = "hold_a"
trigger1 = command = "hold_b"
trigger1 = command = "hold_c"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 7690
triggerall = numproj = 0
triggerall = power >=2000
triggerall = command = "photom_array"
trigger1 = statetype = A
trigger1 = ctrl


[State -1]
type = ChangeState
value = 7660
triggerall = power >=1000
triggerall = NumHelper(1110)=0
triggerall = command = "super_rayo"
trigger1 = statetype = A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 7691
triggerall = numproj = 0
triggerall = power >=1000
triggerall = command = "photom"
trigger1 = statetype = A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 3220
triggerall = p2statetype !=L
triggerall = power >=1000
triggerall = numproj = 0
triggerall = command = "super_exploxion"
trigger1 = statetype = S
trigger1 = ctrl


[State -1]
type = ChangeState
value = 3700
triggerall = power>=2000
triggerall = numproj = 0
triggerall = command = "super_photom"
trigger1 = statetype = S
trigger1 = ctrl


[State -1]
type = ChangeState
value = 3300
triggerall = power>=1000
triggerall = command = "super_rayo"
trigger1 = statetype = S
trigger1 = ctrl


[State -1]
type = ChangeState
value = 3705
triggerall = power>=600
triggerall = numproj = 0
triggerall = power >=1000
triggerall = command = "photom"
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 3000
triggerall = power >=1000
trigerall = statetype !=A
triggerall = command = "muralla_piedras"
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 4000
triggerall = command = "volar"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1,]
type = ChangeState
value = 6900
triggerall = var(39) != 1
triggerall = statetype != A
trigger1 = command = "holdup"
trigger1 = stateno = 420 && animelemtime(5) > 0 
trigger1 = enemy, movetype = H
trigger2 = command = "holdup"
trigger2 = enemy, stateno = 423
trigger2 = stateno = 240 
trigger2 = movehit



[State -1]
type = ChangeState
value = 108
trigger1 = p2statetype !=L
trigger1 = p2dist x >=100
trigger1 = command = "combo2"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Coger aire]
type = ChangeState
value = 850
triggerall = (command = "b") || (command = "b")
triggerall = statetype = A
triggerall = ctrl
triggerall = (P2StateType = A) && (P2MoveType != H)
trigger1 = Command = "holdfwd"
trigger1 = (P2BodyDist X < 20) && (P2BodyDist Y = [-40,30])
trigger2 = Command = "holdback"
trigger2 = (P2BodyDist X < 25) && (P2BodyDist Y = [-40,30])

[State -1, Coger aire]
type = ChangeState
value = 860
triggerall = (command = "c") || (command = "c")
triggerall = statetype = A
triggerall = ctrl
triggerall = (P2StateType = A) && (P2MoveType != H)
trigger1 = Command = "holdfwd"
trigger1 = (P2BodyDist X < 20) && (P2BodyDist Y = [-40,30])
trigger2 = Command = "holdback"
trigger2 = (P2BodyDist X < 25) && (P2BodyDist Y = [-40,30])

[State -1, coger normal]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, coger normal2]
type = ChangeState
value = 900
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 15
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
;Puño flojo normal y corriente sin repeticion ninguna
[State -1, Puño flojo]
type = ChangeState
value = 200
triggerall = command = "x" ; a
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------

[State -1, Puño Mediano]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

[State -1]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
[State -1, burla]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


[State -1]
type = ChangeState
value = 600
triggerall = var(39)=1
trigger1 = StateNo = 50
trigger1 = P2BodyDist Y >= -7
trigger1 = P2BodyDist X <= 60

[State -1]
type = ChangeState
triggerall = var(39)=1
value = 630
trigger1 = StateNo = 600
trigger1 = MoveHit

[State -1]
type = ChangeState
triggerall = var(39)=1
value = 610
trigger1 = StateNo = 630
trigger1 = MoveHit

[State -1]
type = ChangeState
triggerall = var(39)=1
value = 660
trigger1 = StateNo = 610
trigger1 = MoveHit


[State -1]
type = ChangeState
triggerall = NumExplod(123)=0
triggerall = power >=1000
triggerall = var(39)=1
value = ifelse(Random >= 499, 6660, 7691)
trigger1 = StateNo = 660
trigger1 = MoveHit

[State -1]
type = ChangeState
triggerall = NumExplod(123)=1
triggerall = power >=1000
triggerall = var(39)=1
value = ifelse(Random >= 499, 7690, 660)
trigger1 = StateNo = 650
trigger1 = MoveHit

[State -1]
type = ChangeState
value = 600
triggerall = var(52)=1
triggerall = PrevStateNo = 460 
trigger1 = StateNo = 50
trigger1 = P2BodyDist Y >= -7
trigger1 = P2BodyDist X <= 60

[State -1]
type = ChangeState
triggerall = var(52)=1
value = 630
trigger1 = StateNo = 600
trigger1 = MoveHit

[State -1]
type = ChangeState
triggerall = var(52)=1
value = 610
trigger1 = StateNo = 630
trigger1 = MoveHit

[State -1]
type = ChangeState
triggerall = var(52)=1
value = 650
trigger1 = StateNo = 610
trigger1 = MoveHit


[State -1]
type = ChangeState
triggerall = NumExplod(123)=0
triggerall = power >=1000
triggerall = var(52)=1
value = ifelse(Random >= 499, 6660, 7691)
trigger1 = StateNo = 650
trigger1 = MoveHit

[State -1]
type = ChangeState
triggerall = NumExplod(123)=1
triggerall = power >=1000
triggerall = var(52)=1
value = ifelse(Random >= 499, 7690, 660)
trigger1 = StateNo = 650
trigger1 = MoveHit

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

[State -1]
type = ChangeState
value = ifelse(var(38)=1, 652, 650)
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 660
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl


[State -1]
type = ChangeState
value = 690
trigger1 = p2stateno = 253
trigger1 = command = "up"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

[State -1]
type = ChangeState
value = 700
trigger1 = command = "SuperJumpUp"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

[State -1]
type = ChangeState
value = 700
trigger1 = command = "SuperJumpFwd"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

[State -1]
type = ChangeState
value = 710
trigger1 = command = "SuperJumpBck"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
