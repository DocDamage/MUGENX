;-| HSDM Motions |---------------------------------------------------------

[Command]
name = "Dragon_Breath"     
command = D,B,x+y+a+b
time = 60

[Command]
name = "Dragon_Breath"     
command = D,B,z+c
time = 60

;-| Super Motions |--------------------------------------------------------
[Command]
name = "Blazing_Flash_DM"     
command = ~D,DF,F,D,DF,F,x
time = 30

[Command]
name = "Blazing_Flash_DM"     
command = ~D,DF,F,D,DF,F,y
time = 30

[Command]
name = "Blazing_Flash_SDM"     
command = ~D,DF,F,D,DF,F,x+y
time = 30

[Command]
name = "FollowUp1"
command = ~D,DB,B,x

[Command]
name = "FollowUp1"
command = ~D,DB,B,y

[Command]
name = "Burn!!!_DM"
command = ~D,DB,B,D,DB,B,x
time = 30

[Command]
name = "Burn!!!_DM"
command = ~D,DB,B,D,DB,B,y
time = 30

[Command]
name = "Burn!!!_SDM"
command = ~D,DB,B,D,DB,B,x+y
time = 30

[Command]
name = "Saber_Beam_DM"
command = ~F,B,D,F,x
time = 30

[Command]
name = "Saber_Beam_DM"
command = ~F,B,D,F,y
time = 30

[Command]
name = "Saber_Beam_SDM"
command = ~F,B,D,F,x+y
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"     ;Required (do not remove)
command = ~D,DB,B,x
time = 15

[Command]
name = "upper_y"     ;Required (do not remove)
command = ~D,DB,B,y
time = 15

[Command]
name = "fire_x"
command = ~D,DF,F,x
time = 15

[Command]
name = "fire_y"
command = ~D,DF,F,y
time = 15

[Command]
name = "illusion_a"
command = ~D,DB,B,a
time = 15

[Command]
name = "illusion_b"
command = ~D,DB,B,b
time = 15

[Command]
name = "comet_kick_a"
command = ~D,DB,B,a
time = 15

[Command]
name = "comet_kick_b"
command = ~D,DB,B,b
time = 15

[Command]
name = "fallen_leaf"
command = ~D,DF,F,a
time = 15

[Command]
name = "fallen_leaf"
command = ~D,DF,F,b
time = 15

[Command]
name = "fallen_leafB"
command = ~D,DB,B,a
time = 15

[Command]
name = "fallen_leafB"
command = ~D,DB,B,b
time = 15

[Command]
name = "fallen_leafC"
command = /$F,a
time = 15

[Command]
name = "fallen_leafC"
command = /$F,b
time = 15

[Command]
name = "fallen_leafAB"
command = ~D,DB,B,x
time = 15

[Command]
name = "fallen_leafAB"
command = ~D,DB,B,y
time = 15

[Command]
name = "honouryudan_x"
command = ~F,D,DF,x
time = 15

[Command]
name = "honouryudan_y"
command = ~F,D,DF,y
time = 15

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
name = "striker"
command = a+y
time = 1

[Command]
name = "dodge"
command = a+x
time = 1

[Command]
name = "powerup"
command = a+b
time = 1

[Command]
name = "holdpowerup"
command = /$a+b
time = 1

[Command]
name = "dodge"
command = z
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

;-| Hold But |--------------------------------------------------------------
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
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1




[Statedef -1]



;-|SUPER DESPERATION MOVES|-

[State -1,]
type = ChangeState
value = 3210
triggerall = command = "Saber_Beam_SDM"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 220
trigger2 = stateno != 440
trigger2 = stateno != 1202
trigger2 = movecontact 

[State -1,]
type = ChangeState
value = 3010
triggerall = command = "Blazing_Flash_SDM"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 220
trigger2 = stateno != 440
trigger2 = stateno != 1202
trigger2 = movecontact 

[State -1,]
type = null;ChangeState
value = 3110
triggerall = command = "Burn!!!_SDM"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA,SA
trigger2 = stateno != 220
trigger2 = stateno != 440
trigger2 = stateno != 1202
trigger2 = movecontact 

;-|HIDDEN SUPER DESPERATION MOVE|-

[State -1,]
type = ChangeState
value = 3500
triggerall = command = "Dragon_Breath"
triggerall = (power >= 2000) && (life < 300)
trigger1 = statetype = S
trigger1 = ctrl

;-|DESPERATION MOVES|-

[State -1,]
type = ChangeState
value = 3200
triggerall = command = "Saber_Beam_DM"
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 220
trigger2 = stateno != 440
trigger2 = stateno != 1202
trigger2 = movecontact 
trigger3 = power >= 2000
trigger3 = stateno = [1200,1205]
trigger3 = movehit
trigger3 = stateno != 1202
trigger4 = power >= 2000
trigger4 = stateno = 1250 || stateno = 1260
trigger4 = movehit

[State -1,]
type = ChangeState
value = 3100
triggerall = command = "Burn!!!_DM"
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 220
trigger2 = stateno != 440
trigger2 = stateno != 1202
trigger2 = movecontact 
trigger3 = power >= 2000
trigger3 = stateno = [1200,1205]
trigger3 = movehit
trigger3 = stateno != 1202
trigger4 = power >= 2000
trigger4 = stateno = 1250 || stateno = 1260
trigger4 = movehit

[State -1,]
type = ChangeState
value = 3000
triggerall = command = "Blazing_Flash_DM"
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = power >= 1000
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 220
trigger2 = stateno != 440
trigger2 = stateno != 1202
trigger2 = movecontact 
trigger3 = power >= 2000
trigger3 = stateno = [1200,1205]
trigger3 = movehit
trigger3 = stateno != 1202
trigger4 = power >= 2000
trigger4 = stateno = 1250 || stateno = 1260
trigger4 = movehit

;-|SPECIAL ATTACKS|-

[State -1,]
type = ChangeState
value = 1250
triggerall = command = "honouryudan_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 220
trigger2 = stateno != 440
trigger2 = movecontact  

[State -1,]
type = ChangeState
value = 1260
triggerall = command = "honouryudan_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 220
trigger2 = stateno != 440
trigger2 = movecontact  


[State -1,]
type = ChangeState
value = 1200
triggerall = command = "fallen_leaf"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 220
trigger2 = stateno != 440
trigger2 = movecontact  


[State -1,]
type = ChangeState
value = 1150
triggerall = command = "comet_kick_a"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = hitdefattr = A,NA
trigger2 = stateno != 420
trigger2 = movecontact 

[State -1,]
type = ChangeState
value = 1160
triggerall = command = "comet_kick_b"
triggerall = stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = hitdefattr = A,NA
trigger2 = stateno != 420
trigger2 = movecontact 

[State -1,]
type = ChangeState
value = 1050
triggerall = command = "illusion_a"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 1060
triggerall = command = "illusion_b"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 1100
triggerall = command = "fire_x"
triggerall = numprojID(1100) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 220
trigger2 = stateno != 440
trigger2 = movecontact 

[State -1,]
type = ChangeState
value = 1110
triggerall = command = "fire_y"
triggerall = numprojID(1100) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 220
trigger2 = stateno != 440
trigger2 = movecontact

[State -1,]
type = ChangeState
value = 1000
triggerall = command = "upper_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 220
trigger2 = stateno != 440
trigger2 = movecontact 

[State -1,]
type = ChangeState
value = 1010
triggerall = command = "upper_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 220
trigger2 = stateno != 440
trigger2 = movecontact 

;-|STRIKER ATTACK|-

[State -1,]
type = ChangeState
value = 3999
triggerall = command = "striker"
triggerall = var(15) > 0
triggerall = numhelper(4000) = 0
trigger1 = statetype = S
trigger1 = ctrl

;-|ROLLS & POWER UP|-

[State -1, Roll Back]
type = ChangeState
value = 701
triggerall = command = "dodge"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 150
trigger2 = power >= 1000

[State -1, Roll Forward]
type = ChangeState
value = 700
triggerall = command = "dodge"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 150
trigger2 = power >= 1000

[State -1, Power Up]
type = ChangeState
value = 750
triggerall = command = "powerup"
triggerall = power < 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno !=751

[State -1, Throw]
type = ChangeState
value = 800
triggerall = P2bodydist X <= 2
triggerall = p2movetype != H
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = statetype = S
triggerall = p2stateno != 5120
triggerall = ctrl
trigger1 = stateno != 100
trigger1 = (command = "y") && (command = "holdfwd")

[State -1, Throw]
type = ChangeState
value = 850
triggerall = P2bodydist X <= 2
triggerall = p2movetype != H
triggerall = (p2statetype = S) || (p2statetype = C)
triggerall = statetype = S
triggerall = p2stateno != 5120
triggerall = ctrl
trigger1 = stateno != 100
trigger1 = (command = "b") && (command = "holdfwd")

;-|NORMAL ATTACKS|-

[State -1,]
type = ChangeState
value = 200
trigger1 = command = "x"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 210+5*(p2bodydist X < 3)
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 220
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 150
trigger2 = power >= 1000

[State -1,]
type = ChangeState
value = 230+5*(p2bodydist X < 5)
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 240+5*(p2bodydist X < 5)
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl

;Crouch Attacks

[State -1,]
type = ChangeState
value = 400
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 410
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 430
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 440
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl

;Air Attacks
[State -1,]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 195
trigger1 = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, ]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl






















