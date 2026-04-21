[Command]
Name= "Tantrum"
command = ~D, DF, F,x+y+z

[Command]
Name= "SDash"
command = ~D, DF, F,z+c

[Command]
Name= "TankGun"
command = ~D, DB, B,z+c

[Command]
Name= "TankThrow"
command =~D, DF, F,a+b+c


[command]
Name= "TriJumpF"
command = /UF

[command]
Name= "TriJumpB"
command = /UB

[Command]
Name= "QCF_a"
command = ~D, DF, F, a

[Command]
Name= "QCF_b"
command = ~D, DF, F, b

[Command]
Name= "QCF_c"
command = ~D, DF, F, c

[Command]
Name= "QCF_x"
command = ~D, DF, F, x

[Command]
Name= "QCF_y"
command = ~D, DF, F, y

[Command]
Name= "QCF_z"
command = ~D, DF, F, z

[Command]
Name= "QCB_a"
command = ~D, DB, B, a

[Command]
Name= "QCB_b"
command = ~D, DB, B, b

[Command]
Name= "QCB_c"
command = ~D, DB, B, c

[Command]
Name= "QCB_x"
command = ~D, DB, B, x

[Command]
Name= "QCB_y"
command = ~D, DB, B, y

[Command]
Name= "QCB_z"
command = ~D, DB, B, z

[Command]
Name= "uppercut_a"
command = ~F, D, DF, a

[Command]
Name= "uppercut_b"
command = ~F, D, DF, b

[Command]
Name= "uppercut_c"
command = ~F, D, DF, c

[Command]
Name= "uppercut_x"
command = ~F, D, DF, x

[Command]
Name= "uppercut_y"
command = ~F, D, DF, y

[Command]
Name= "uppercut_z"
command = ~F, D, DF, z

[Command]
Name= "chargedownup_a"
command = ~60$D, U, a
time = 10
[Command]
Name= "chargedownup_b"
command = ~60$D, U, b
time = 10
[Command]
Name= "chargedownup_c"
command = ~60$D, U, c
time = 10
[Command]
Name= "chargedownup_x"
command = ~60$D, U, x
time = 10
[Command]
Name= "chargedownup_y"
command = ~60$D, U, y
time = 10
[Command]
Name= "chargedownup_z"
command = ~60$D, U, z
time = 10
[Command]
Name= "chargebackfwd_a"
command = ~60$B, F, a
time = 10
[Command]
Name= "chargebackfwd_b"
command = ~60$B, F, b
time = 10
[Command]
Name= "chargedownup_c"
command = ~60$D, U, c
time = 10
[Command]
Name= "chargedownup_x"
command = ~60$D, U, x
time = 10
[Command]
Name= "chargedownup_y"
command = ~60$D, U, y
time = 10
[Command]
Name= "chargedownup_z"
command = ~60$D, U, z
time = 10
[Command]
Name= "FF"
command = F, F
time = 10
[Command]
Name= "BB"
command = B, B
time = 10
[Command]
Name= "recovery"
command = a+b
time = 1
[Command]
Name= "ab"
command = a+b
time = 1
[Command]
Name= "fwd_a"
command = /F,a
time = 1
[Command]
Name= "fwd_b"
command = /F,b
time = 1
[Command]
Name= "fwd_c"
command = /F,c
time = 1
[Command]
Name= "fwd_x"
command = /F,x
time = 1
[Command]
Name= "fwd_y"
command = /F,y
time = 1
[Command]
Name= "fwd_z"
command = /F,z
time = 1
[Command]
Name= "back_a"
command = /B,a
time = 1
[Command]
Name= "back_b"
command = /B,b
time = 1
[Command]
Name= "back_c"
command = /B,c
time = 1
[Command]
Name= "back_x"
command = /B,x
time = 1
[Command]
Name= "back_y"
command = /B,y
time = 1
[Command]
Name= "back_z"
command = /B,z
time = 1
[Command]
Name= "down_a"
command = /$D,a
time = 1
[Command]
Name= "down_b"
command = /$D,b
time = 1
[Command]
Name= "down_c"
command = /$D,c
time = 1
[Command]
Name= "fwd_ab"
command = /F, a+b
time = 1
[Command]
Name= "back_ab"
command = /B, a+b
time = 1
[Command]
Name= "a"
command = a
time = 1
[Command]
Name= "b"
command = b

[Command]
Name= "c"
command = c
time = 1
[Command]
Name= "x"
command = x
time = 1
[Command]
Name= "y"
command = y
time = 1
[Command]
Name= "z"
command = z

[Command]
Name= "holdfwd"
command = /$F
time = 1
[Command]
Name= "holdback"
command = /$B
time = 1
[Command]
Name= "holdup"
command = /$U
time = 1
[Command]
Name= "holddown"
command = /$D
time = 1


[Statedef -1]

[State -1]
type = ChangeState
value = 100
trigger1=command="FF"
trigger1 = statetype = S
trigger1 = ctrl = 1













[State -1]
type = ChangeState
value = 105
trigger1=command="BB"
trigger1 = statetype = S
trigger1 = ctrl = 1












;Standing throw
[State -1]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 ;Near P2
trigger1=command="fwd_z";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2=command="fwd_z";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3=command="back_z";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4=command="back_z";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H












;air throw
[State -1]
type =  ChangeState
value = 1719
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1=command="fwd_z"
trigger2=command="back_z"

;'Tantrum' super- level 3
[State -1]
type=Changestate
value = 3020
triggerall=command="Tantrum"
triggerall = statetype = S
triggerall = power >=3000
trigger1 = ctrl = 1
trigger2 = movecontact

;'Tantrum' super- level 2
[State -1]
type=Changestate
value = 3010
triggerall=command="Tantrum"
triggerall = statetype = S
triggerall = power >=2000
triggerall = power < 3000
trigger1 = ctrl = 1
trigger2 = movecontact

;'Tantrum' super- level 1
[State -1]
type=Changestate
value = 3000
triggerall=command="Tantrum"
triggerall = statetype = S
triggerall = power >=1000
triggerall = power < 2000
trigger1 = ctrl = 1
trigger2 = movecontact

;'Schoolbell Dash' super- lvl 3 only!
[State -1]
type = Changestate
value = 3040
triggerall=command="SDash"
triggerall = statetype = S
triggerall = power >=3000
trigger1 = ctrl = 1

;'Ako Tank Gun' super- only 1 level
[State -1]
type = Changestate
value = 3100
triggerall=command="TankGun"
triggerall = statetype = S
triggerall = backedgebodydist < 80
triggerall = power >=1000
trigger1 = ctrl = 1

;'Spider Lift Crash!' super- only 1 level
[State -1]
type= Changestate
value = 3200
triggerall = statetype = S
triggerall = backedgebodydist < 80
triggerall = power >=1000
triggerall = ctrl = 1
trigger1=command="TankThrow"




;Special spider-lift crash trigger Vs. B-ko
[State -1]
type= Changestate
value = 3200
triggerall = statetype = S
triggerall = backedgebodydist < 80
triggerall = power >=1000
triggerall = ctrl = 1
triggerall = p2Name= "Biko Daitokuji"
triggerall = p2stateno = 3400
trigger1=command="a"
trigger2=command="b"
trigger3=command="c"
trigger4=command="x"
trigger5=command="y"
trigger6=command="z"


;Sparkle powerpunch - light
[State -1]
type = Changestate
value = 1650
triggerall = Statetype = S
triggerall=command="uppercut_x"
trigger1 = power > 200
trigger1 = ctrl = 1

;Sparkle powerpunch -medum
[State -1]
type = Changestate
value = 1655
triggerall = Statetype = S
triggerall=command="uppercut_y"
trigger1 = power > 200
trigger1 = ctrl = 1

;Sparkle powerpunch - hard
[State -1]
type = Changestate
value = 1660
triggerall = Statetype = S
triggerall=command="uppercut_z"
trigger1 = power > 200
trigger1 = ctrl = 1

;Ground Slam attack
[State -1]
type = Changestate
value = 1040
triggerall = statetype = S
triggerall = ctrl = 1
trigger1=command="QCF_x"
trigger2=command="QCF_y"
trigger3=command="QCF_z"

;Diving Kick from air
[State -1]
type = Changestate
value = 1070
triggerall = statetype = A
triggerall=command="down_c"
triggerall = Pos Y <-80 
trigger1 = ctrl = 1

;Reversal
[State -1]
type = Changestate
value = 1500
triggerall = Statetype = S
triggerall=command="QCB_z"
trigger1 = ctrl = 1

;Giant Swing
[State -1]
type = Changestate
value = 1600
triggerall = Statetype = S
triggerall=command="QCB_c"
trigger1 = ctrl  = 1

;A-ko Thrust kick, c button
[State -1]
type = Changestate
value = 1700
triggerall = Statetype = S
triggerall=command="uppercut_c"
trigger1 = ctrl  = 1
trigger2 = movecontact
trigger2 = stateno < 400

;A-ko Thrust kick, b button
[State -1]
type = Changestate
value = 1701
triggerall = Statetype = S
triggerall=command="uppercut_b"
trigger1 = ctrl  = 1
trigger2 = movecontact
trigger2 = stateno < 400

;A-ko Thrust kick, a button
[State -1]
type = Changestate
value = 1702
triggerall = Statetype = S
triggerall=command="uppercut_a"
trigger1 = ctrl  = 1
trigger2 = movecontact
trigger2 = stateno < 400


;Flip-sault (c button)
[State -1]
type = Changestate
value = 1710
triggerall = Statetype = S
triggerall=command="QCF_c"
trigger1 = ctrl  = 1

;Flip-sault (b button)
[State -1]
type = Changestate
value = 1711
triggerall = Statetype = S
triggerall=command="QCF_b"
trigger1 = ctrl  = 1

;Flip-sault (a button)
[State -1]
type = Changestate
value = 1712
triggerall = Statetype = S
triggerall=command="QCF_a"
trigger1 = ctrl  = 1

;Flip-sault throw (punch during flip-sault, close)
[State -1]
type = Changestate
value = 1719
triggerall = stateno = 1715
triggerall = P2BodyDist X <= 10
trigger1=command="z"
trigger2=command="y"
trigger3=command="x"

;Flip-sault kick (c during flip-sault)
[State -1]
type = Changestate
value =1730
triggerall = stateno = 1715
trigger1=command="c"
trigger2=command="b"
trigger3=command="a"

;Triangle jump forwards
[State -1]
type = ChangeState
value = 900
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = Backedgebodydist < 10
triggerall = Vel X < 0
trigger1=command="TriJumpF"

;Triangle jump backwards
[State -1]
type = Changestate
value = 901
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = Frontedgebodydist < 10
triggerall = Vel X > 0
trigger1=command="TriJumpB"


;Close light knee
[State -1]
type = ChangeState
value = 201
triggerall=command="a";Place name of command here
triggerall=command !="holddown";Standing moves should have this line
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2BodyDist X <= 20

[State -1]
type = ChangeState
value = 200
triggerall=command="a";Place name of command here
triggerall=command !="holddown";Standing moves should have this line
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2BodyDist X > 20












[State -1]
type = ChangeState
value = 210
triggerall=command="b"
triggerall=command !="holddown"
triggerall = stateno != 100
triggerall = P2Bodydist X <= 5
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201

;longer-ranged medium back-kick
[State -1]
type = ChangeState
value = 211
triggerall=command="b"
triggerall=command !="holddown"
triggerall = stateno != 100
triggerall = P2Bodydist X > 5
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201






[State -1]
type = ChangeState
value = 220
triggerall=command="c"
triggerall=command !="holddown"
triggerall = stateno != 100
trigger1 = P2BodyDist X > 20
trigger1 = p2bodydist X < 60
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = P2BodyDist X > 20
trigger2 = p2Bodydist X < 60
trigger2 = movecontact
trigger2 = stateno = 210
trigger3 = movecontact
trigger3 = stateno = 221
trigger4 = movecontact
trigger4 = stateno = 211

;Hard close knee
[State -1]
type = ChangeState
value = 221
triggerall=command="c"
triggerall=command !="holddown"
triggerall = stateno != 100
triggerall = P2BodyDist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 210
trigger3 = movecontact
trigger3 = stateno = 211

;Hard flying spinkick
[State -1]
type = ChangeState
value = 222
triggerall=command="c"
triggerall=command !="holddown"
triggerall = stateno != 100
triggerall = P2BodyDist X >= 60
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 210
trigger3 = movecontact
trigger3 = stateno = 221
trigger4 = movecontact
trigger4 = stateno = 211










[State -1]
type = ChangeState
value = 230
triggerall=command="x"
triggerall=command !="holddown"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 249


;short medium punch- only as part of a left-right chain
[State -1]
type = ChangeState
value = 249
triggerall=command="y"
triggerall=command !="holddown"
triggerall = stateno != 100
trigger1 = movecontact
trigger1 = stateno = 230

[State -1]
type = ChangeState
value = 250
triggerall=command="y"
triggerall=command !="holddown"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 249







[State -1]
type = ChangeState
value = 240
triggerall=command="z"
triggerall=command !="holddown"
triggerall = stateno != 100
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 250
trigger3 = movecontact
trigger3 = stateno = 249









[State -1]
type = ChangeState
value = 400
triggerall=command="a"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1













[State -1]
type = ChangeState
value = 410
triggerall=command="b"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 400





[State -1]
type = ChangeState
value = 420
triggerall=command="c"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 410





[State -1]
type = ChangeState
value = 430
triggerall=command="x"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1





[State -1]
type = ChangeState
value = 440
triggerall=command="y"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 430






[State -1]
type = ChangeState
value = 450
triggerall=command="z"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 440





[State -1]
type = ChangeState
value = 600
trigger1=command="a"
trigger1 = statetype = A
trigger1 = ctrl = 1




[State -1]
type = ChangeState
value = 610
trigger1=command="b"
trigger1 = statetype = A
trigger1 = ctrl = 1




[State -1]
type = ChangeState
value = 620
trigger1=command="c"
trigger1 = statetype = A
trigger1 = ctrl = 1



[State -1]
type = ChangeState
value = 630
trigger1=command="x"
trigger1 = statetype = A
trigger1 = ctrl = 1



[State -1]
type = ChangeState
value = 640
triggerall=command="y"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 630



[State -1]
type = ChangeState
value = 650
triggerall=command="z"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 640

;Dash Slide
[State -1]
type = Changestate
value = 1000
triggerall = stateno = 100
triggerall = ctrl = 1
trigger1=command="a"
trigger2=command="b"


;Dashing Flying kick
[State -1]
type = ChangeState
value = 1010
trigger1 = stateno = 100
trigger1=command="c"

;Dash Shoulder
[State -1]
type = ChangeState
value = 1015
triggerall = stateno = 100
trigger1=command="x"


;Dash Straight
[State -1]
type = ChangeState
value = 1020
triggerall = stateno = 100
trigger1=command="y"

;Dash Upper
[State -1]
type = Changestate
value = 1030
trigger1 = stateno = 100
trigger1=command="z"































































































































































