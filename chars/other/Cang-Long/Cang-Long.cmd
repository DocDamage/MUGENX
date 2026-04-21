ww; The CMD file.

; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.

; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted


;-|AI Command |--------------------------------------------------------
[Command]
name = "CPU_1"
command = U,U,a,F,D
time = 1
[Command]
name = "CPU_2"
command = U,D,U,F,F
time = 1
[Command]
name = "CPU_3"
command = B,B,D,F,U
time = 1
[Command]
name = "CPU_4"
command = F,F,a,a,U,F
time = 1
[Command]
name = "CPU_5"
command = D,F,U,B
time = 1
[Command]
name = "CPU_6"
command = D,D,U,U,U,B
time = 1
[Command]
name = "CPU_7"
command = B,B,U,U,U,D
time = 1
[Command]
name = "CPU_8"
command = U,U,D,D,B,B
time = 1
[Command]
name = "CPU_9"
command = U,D,F,B,B,B,B
time = 1
[Command]
name = "CPU_10"
command = D,U,F,F,F,F
time = 1
[Command]
name = "CPU_11"
command = F,D,B,D,D,F
time = 1
[Command]
name = "CPU_12"
command = F,F,F,D,D,D
time = 1
[Command]
name = "CPU_13"
command = F,F,D,D,F,U,U
time = 1
[Command]
name = "CPU_14"
command = U,D,F,U,U,U,D
time = 1
[Command]
name = "CPU_15"
command = F,c,U,F,U,D,F
time = 1
[Command]
name = "CPU_16"
command = D,D,U,F,B,B
time = 1
[Command]
name = "CPU_17"
command = F,F,F,F,F,F
time = 1
[Command]
name = "CPU_18"
command = D,D,D,D,D,D,D,D
time = 1
[Command]
name = "CPU_19"
command = U,D,F,U,U,F,F,D,B
time = 1
[Command]
name = "CPU_20"
command = U,D,F,D,D,F,F,D,B
time = 1
[Command]
name = "CPU_21"
command = U,D,F,B,B,D,F,D,B
time = 1
[Command]
name = "CPU_22"
command = U,D,F,F,B,B
time = 1
[Command]
name = "CPU_23"
command = U,D,F,F,B,F
time = 1
[Command]
name = "CPU_24"
command = U,D,F,F,B,F
time = 1
[Command]
name = "CPU_25"
command = U,D,F,F,B,U
time = 1
[Command]
name = "CPU_26"
command = U,D,F,F,U,B
time = 1
[Command]
name = "CPU_27"
command = U,D,F,F,D,B
time = 1
[Command]
name = "CPU_28"
command = U,D,F,F,F,B
time = 1
[Command]
name = "CPU_29"
command = U,D,U,F,B,B
time = 1
[Command]
name = "CPU_30"
command = U,D,D,F,B,B
time = 1
[Command]
name = "CPU_31"
command = D,D,F,F,B,B
time = 1
[Command]
name = "CPU_32"
command = U,U,F,F,B,B
time = 1
[Command]
name = "CPU_33"
command = U,B,F,F,B,B
time = 1
[Command]
name = "CPU_34"
command = U,B,F,F,U,U,B,B
time = 1
[Command]
name = "CPU_35"
command = U,B,F,F,F,B,U,D,F
time = 1
;====================================================================
;Â®É½ÉýÁú°Ô
[Command]
name = "The mountain of rises the dragon"
command = ~D, F, D, $DF, F
time = 45

;°ÙÁúÖ®Éñ
[Command]
name = "100 the absolute being of dragons"
command =  ~D,$DF, F, D, $DF,F,c
time = 35

;Ä§Áú¸ÖÁÑÈ­
[Command]
name = "Evil dragon steel"
command = ~D, B, D, $DB,B
time = 33

;ÁúÈ­(¿Õ)x
[Command]
name = "The dragon recruits air x"
command = ~D,DF, F, D, F, x
time = 30

;ÁúÈ­(¿Õ)y
[Command]
name = "The dragon recruits air y"
command =  ~D,DF, F, D, F, y
time = 30

;ÁúÑÀÖ®Îè
[Command]
name = "The dance of the dragon tooth"
command =  ~D, $DF,F,DF,$D,B,x
time = 45

;ÁúÑÀÖ®Îè
[Command]
name = "The dance of the dragon tooth"
command =  ~D, $DF,F,DF,$D,B,y
time = 45

;ÁúÑÀÖ®Îè(Äæ)
[Command]
name = "The dance of the dragon tooth back"
command =  ~D, $DB,B,DB,$D,F,x
time = 45

;ÁúÑÀÖ®Îè(Äæ)
[Command]
name = "The dance of the dragon tooth back"
command =  ~D, $DB,B,DB,$D,F,y
time = 45

;ÁúÑÀÖ®Îè(³õ)
[Command]
name = "The dance of the dragon tooth beginning"
command =  ~D, $DF,F,DF,$D,B
time = 35

;ÁúÑÀÖ®Îè(Äæ)(³õ)
[Command]
name = "The dance of the dragon tooth back beginning"
command =  ~D, $DB,B,DB,$D,F
time = 35

;-| Special    |----------------------------------------
;ÆÆÌìÖ®¹â
[Command]
name = "Break the light of the day"
command = ~F, $D, DF
time = 15

;ÆÆÌìÖ®¹â1
[Command]
name = "Break the light of the day1"
command = ~F, $D, DF,x
time = 18

;ÆÆÌìÖ®¹â2
[Command]
name = "Break the light of the day2"
command = ~F, $D, DF,y
time = 18

;ÉÁ¹âÌìÀ×»÷
[Command]
name = "The bridge of the flashlight"
command = ~D,$DB,F
time = 14

;ÉÁ¹âÌìÀ×»÷(Äæ)
[Command]
name = "The bridge of the flashlight back"
command = ~D,$DB,F
time = 14

;µ¹ÐýÕ¶
[Command]
name = "Pouring the beats"
command = ~B, $D, DB
time = 14

;Ä§»ÃÖ®È­
[Command]
name = "The hand of the evil dragon"
command = ~D,$DB,B
time = 15

;Ä§»ÃÖ®È­1
[Command]
name = "The hand of the evil dragon1"
command = ~D,$DB,B,x
time = 15

;Ä§»ÃÖ®È­2
[Command]
name = "The hand of the evil dragon2"
command = ~D,$DB,B,y
time = 15

;»Ã
[Command]
name = "evil dragon"
command = ~$DB,$D
time = 13

;Æø¶¯
[Command]
name = "The spirit moves"
command = ~$DF,$D
time = 13

;ÁúÑÀÒ§
[Command]
name = "The dragon tooth bites"
command =~D,$DF,F
time = 11

;ÁúÁÑËéÌúÈ­(½ü)
[Command]
name = "broken up iron in dragon near"
command =  ~35$B,F,x
;time = 18

;ÁúÁÑËéÌúÈ­(Ô¶)
[Command]
name = "Broken up iron in dragon far"
command =  ~35$B,F,y
;time = 18

;ÄæÏ¼»ØÐý²ù
[Command]
name = "The wave of the roseate clouds"
command = ~B,$D,F
time = 15

;ÄæÏ¼»ØÐý²ù(Äæ)
[Command]
name = "The wave of the roseate clouds back"
command =  ~F,$D,B
time = 15
;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "dodge"
command = x+y
time = 1

[Command]
name = "Avoid"
command = x+a
time = 1
;-----------------------------------------------------
[Command]
name = "c"
command = c
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;------------------------------------------------------
[Command]
name = "A"
command = x
time = 1

[Command]
name = "B"
command = a
time = 1

[Command]
name = "C"
command = y
time = 1

[Command]
name = "D"
command = b
time = 1

; - [Hold button] - 
;-------------------------------------------------
[Command]
name = "hold_A"
command = /$x
time = 1

[Command]
name = "hold_B"
command = /$a
time = 1

[Command]
name = "hold_C"
command = /$y
time = 1

[Command]
name = "hold_D"
command = /$b
time = 1

[Command]
name = "taunt"
command =  s
time = 1

[Command]
name = "justfwd"
command = F
time = 1

[Command]
name = "justback"
command = B
time = 1

[Command]
name = "justup"
command = U
time = 1

[Command]
name = "justdown"
command = D
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

;longjump
[Command]
name = "longjump"
command = D, $U
time = 18
;=======================================
; cpu
;=======================================
;±ØÉ±¼¼====================
[Statedef -1]
[State -1]
type = ChangeState
value = 1150
triggerall = var(59) = 1 
triggerall = var(58) = 1 
triggerall = statetype != A
trigger1 = P2bodydist X >= 90
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 410
triggerall = var(59) = 1
triggerall = var(55) = 1 
triggerall = statetype != A
triggerall = P2stateno = [3960,4000]
trigger1 = P2bodydist X = [-80,80]
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3700
triggerall = Var(59) = 1 
triggerall = P2stateno = [5030,5070]
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = ifelse(backedgedist <= 40,112,117)
triggerall = var(59) = 1 && ctrl
triggerall = statetype != A
triggerall = p2movetype = I 
triggerall = P2bodydist X = [-80,80]
triggerall = p2stateno = [1000,4999]
trigger1 = (enemy,numhelper > 0) && (EnemyNear,statetype != L)
trigger2 = (enemy,numproj > 0) && (EnemyNear,statetype != L)

[State -1]
type = ChangeState
value = 4500
triggerall = var(59) = 1 
triggerall = statetype != A
triggerall = power >= 3000
triggerall = P2bodydist X = [0,110]
triggerall = P2movetype = A
triggerall = life <= 300
trigger1 = statetype != A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3500
triggerall = var(59) = 1 && ctrl  
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = P2bodydist X = [30,85]
trigger1 = p2life > 450
trigger1 = P2movetype = A
trigger1 = p2statetype != A

[State -1]
type = ChangeState
value = 3000
triggerall = var(59) = 1 && ctrl  
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = P2bodydist X = [50,85]
trigger1 = P2movetype = A
trigger1 = p2statetype != A

[State -1]
type = ChangeState
value = 3150
triggerall = var(59) = 1 && ctrl  
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = stateno != 116
trigger1 = P2bodydist X > 85
trigger1 = enemy,numproj = 1
trigger1 = enemy,projhits <= 3
trigger1 = p2statetype != A

[State -1]
type = ChangeState
value = ifelse(power >= 2000,4897,3650)
triggerall = var(59) = 1 && ctrl 
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = p2life > 140
trigger1 = life < p2life
trigger1 = P2bodydist X = [0,49)
trigger1 = P2movetype = A
trigger2 = random < 300
trigger2 = life < p2life
trigger2 = P2bodydist X = [0,49)
trigger2 = P2movetype = A

[State -1]
type = ChangeState
value = ifelse((random>400),112,116)
triggerall = var(59) = 1 && ctrl
triggerall = statetype != A
trigger1 = p2stateno != [0,152] 
trigger1 = (enemy,numproj > 0) && (EnemyNear,statetype != L)
trigger1 = p2BodyDist x >= 80
trigger2 = (var(25) != 1)
trigger2 = p2stateno != [0,152]
trigger2 = (enemy,numhelper > 0) && (EnemyNear,statetype != L)
trigger2 = p2BodyDist x >= 80
trigger3 = p2stateno != [5000,5300] 
trigger3 = (enemy,numproj > 0) && (EnemyNear,statetype != L)
trigger3 = p2BodyDist x >= 80
trigger4 = (var(25) != 1)
trigger4 = p2stateno != [5000,5300]
trigger4 = (enemy,numhelper > 0) && (EnemyNear,statetype != L)
trigger4 = p2BodyDist x >= 80
trigger5 = P2movetype = I
trigger5 = p2stateno != [0,200] 
trigger5 = stateno = 5120
trigger5 = time = [32,38]
trigger6 = var(25) = 1
trigger6 = p2stateno != [0,152]
trigger6 = (enemy,numhelper > var(35)) && (EnemyNear,statetype != L)
trigger6 = p2BodyDist x >= 80
trigger7 = var(25) = 1
trigger7 = p2stateno != [5000,5300]
trigger7 = (enemy,numhelper > var(35)) && (EnemyNear,statetype != L)
trigger7 = p2BodyDist x >= 80

[State -1]
type = ChangeState
value = 116
triggerall = var(59) = 1 && ctrl 
triggerall = statetype != A
trigger1 = (enemy,numproj > 0) && (EnemyNear,statetype != L)
trigger1 = p2BodyDist x = (50,90)
trigger2 = frontedgedist > 50 
trigger2 = p2stateno = [5100,5160]
trigger2 = P2bodydist X = [0,4]
trigger3 = p2movetype = A
trigger3 = P2bodydist X = (50,100)
trigger3 = random < 300
trigger4 = random < 30
trigger4 = P2bodydist X > 65
trigger5 = stateno = [5001,5210]
trigger5 = animtime = 0
trigger5 = P2bodydist X > 65
trigger6 = stateno = [120,152]
trigger6 = animtime = 0
trigger6 = P2bodydist X > 65
trigger7 = (var(25) != 1)
trigger7 = (enemy,numhelper > 0) && (EnemyNear,statetype != L) 
trigger7 = p2BodyDist x = (50,90)
trigger8 = var(25) = 1
trigger8 = (enemy,numhelper > var(35)) && (EnemyNear,statetype != L) 
trigger8 = p2BodyDist x = (50,90)



[State -1]
type = ChangeState
value = ifelse((random>500)&&(P2bodydist y =[-40,0]),2150,ifelse(p2stateno>3000,2150,1000))
triggerall = random>500
triggerall = var(59) = 1 
triggerall = p2life != 0
triggerall = statetype != A
triggerall = life >= 450
triggerall = P2bodydist X =[-30,40]
trigger1 = P2movetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 2150
triggerall = random>500
triggerall = var(59) = 1 
triggerall = statetype != A
triggerall = P2bodydist X = (40,80]
triggerall = P2bodydist y =[-40,0]
trigger1 = P2movetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = ifelse(p2stateno>3000,2150,1003)
triggerall = var(59) = 1 && ctrl
triggerall = p2life != 0
triggerall = statetype != A
triggerall = backedgedist >= 50
trigger1 = random>500
trigger1 = P2bodydist X = [0,40]
trigger1 = life < 450
trigger1 = P2movetype = A
trigger2 = random>700
trigger2 = P2movetype != H
trigger2 = enemy,vel y >= 0
trigger2 = P2bodydist X = [10,60]
trigger2 = P2dist Y <= -10
trigger2 = P2statetype = A

[State -1]
type = ChangeState
trigger1 = Var(59) = 1
trigger1 = Ctrl
trigger1 = StateType = S
trigger1 = P2StateType = C
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 200
value = 10

[State -1]
type = ChangeState
trigger1 = Var(59) = 1
trigger1 = Ctrl
trigger1 = StateType = C
trigger1 = P2StateType = A
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 200
value = 12

[State -1]
type = ChangeState
trigger1 = Var(59) = 1
trigger1 = Ctrl
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 200
trigger1 = PrevStateNo != 151
trigger1 = PrevStateNo != 152
trigger1 = PrevStateNo != 153
value = 120

[State -1]
type = ChangeState
value = 28
triggerall = var(59) = 1 && ctrl
triggerall = p2life != 0
triggerall = statetype != A 
trigger1 = p2stateno = [5035,5160]
trigger1 = P2bodydist X = [26,75)

[State -1]
type = ChangeState
value = 29
triggerall = var(59) = 1 && ctrl
triggerall = p2life != 0
triggerall = statetype != A
trigger1 = frontedgedist <= 50 
trigger1 = p2stateno = [5100,5160]
trigger1 = P2bodydist X = [0,10]

[State -1]
type = ChangeState
value = 1415
triggerall = var(59) = 1 && ctrl
triggerall = statetype != A
triggerall = life >= 450
triggerall = P2bodydist X = (0,35)
triggerall = FrontEdgeDist > 50
triggerall = P2movetype = A
triggerall = stateno != 1000 || stateno != 1003
trigger1 = P2statetype != A
trigger2 = P2dist Y = (-50,-40)
trigger2 = P2statetype = A
trigger2 = (PrevStateNo = [151,153]) || (PrevStateNo = 140)
trigger3 = stateno = [5120,5122] 
trigger3 = AnimTIme = 0

[State -1]
type = ChangeState
value = 1465
triggerall = Random <= 300
triggerall = var(59) = 1 && ctrl
triggerall = statetype != A
triggerall = backEdgeDist < 50
trigger1 = P2bodydist X = [0,35]
trigger1 = life < 450
trigger1 = P2statetype != A
trigger2 = P2bodydist X = [10,55]
trigger2 = P2dist Y = [-100,-20]
trigger2 = P2statetype = A

[State -1]
type = ChangeState
trigger1 = Var(59) = 1
trigger1 = Ctrl
trigger1 = StateType = S
trigger1 = P2StateType = C
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 200
value = 10

[State -1]
type = ChangeState
trigger1 = Var(59) = 1
trigger1 = Ctrl
trigger1 = StateType = C
trigger1 = P2StateType = A
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 200
value = 12

[State -1]
type = ChangeState
trigger1 = Var(59) = 1
trigger1 = Ctrl
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 200
trigger1 = PrevStateNo != 151
trigger1 = PrevStateNo != 152
trigger1 = PrevStateNo != 153
value = 120

[State -1,27]
type = ChangeState
value = ifelse(random>700,100,ifelse(random>400,1150,1702))
triggerall = Var(59) = 1 && ctrl
triggerall = p2life != 0
triggerall = statetype != A
triggerall = (enemy,numproj > 0) && (EnemyNear,statetype != L)
triggerall = (enemy,numhelper > 0) && (EnemyNear,statetype != L)
trigger1 = random <= 650
trigger1 = p2statetype != A
trigger1 = p2movetype != A 
trigger1 = P2BodyDist X = (150,75)

[State -1,27]
type = ChangeState
value = ifelse(random>400,100,ifelse(random>400,1150,1200))
triggerall = Var(59) = 1 && ctrl 
triggerall = (enemy,numproj > 0) && (EnemyNear,statetype != L)
triggerall = (enemy,numhelper > 0) && (EnemyNear,statetype != L)
triggerall = statetype != A
triggerall = p2statetype != A
triggerall = p2movetype != A
trigger1 = P2BodyDist X = [250,150]

[State -1,27]
type = ChangeState
value = 100
triggerall = var(58) != 1
triggerall = random>500
triggerall = Var(59) = 1 && ctrl
triggerall = statetype != A 
trigger1 = P2BodyDist X > 75

[State -1,27]
type = ChangeState
value = ifelse(random>700,1100,ifelse(random>400,1150,1702))
triggerall = Var(59) = 1 && ctrl
triggerall = statetype != A
trigger1 = random < 600
trigger1 = p2statetype !=A
trigger1 = p2movetype != H
trigger1 = P2BodyDist X = (65,120)

[State -1,27]
type = ChangeState
value = 1150
triggerall = Var(59) = 1 && ctrl
triggerall = p2life != 0
triggerall = statetype != A
triggerall = numhelper(1309) = 0
trigger1 = random < 300
trigger1 = stateno != 1702
trigger1 = p2statetype != A 
trigger1 = P2BodyDist X >= 120

[State -1,27]
type = ChangeState
value = 1200
triggerall = Var(59) = 1 && ctrl
triggerall = p2life != 0 
triggerall = numhelper(1309) = 0
triggerall = statetype != A
trigger1 = random > 700
trigger1 = stateno != 1702
trigger1 = p2statetype = A
trigger1 = P2BodyDist X >= 100
trigger2 = stateno != 1150
trigger2 = p2statetype != A 
trigger2 = P2BodyDist X >= 120 

[State -1,27]
type = ChangeState
value = 1650
triggerall = Var(59) = 1
triggerall = p2life != 0
trigger1 = statetype != A
trigger1 = p2movetype = A
trigger1 = p2statetype != A 
trigger1 = ctrl = 1
trigger1 = P2BodyDist X = (55,90)

[State -1,27]
type = ChangeState
value = 1350
triggerall = Var(59) = 1
triggerall = p2life != 0
trigger1 = statetype != A
trigger1 = p2movetype != A 
trigger1 = ctrl = 1
trigger1 = p2stateno !=[5040,5122]
trigger1 = P2BodyDist X = (65,80)

[State -1]
type = ChangeState
value = 980
triggerall = var(59) = 1 
triggerall = random < 300
triggerall = p2life != 0
triggerall = (stateno != [5000,5172])&&(stateno != [120,154])
triggerall = statetype != A
triggerall = p2statetype != A
;triggerall = P2stateno =[0,900]
triggerall = P2bodydist X =[-30,30]
trigger1 = ctrl = 1
;ÆÕÍ¨¼¼====================
[State -1,27]
type = ChangeState
value = ifelse(random>600,900,ifelse(random>500,280,260))
triggerall = Var(59) = 1
triggerall = statetype != A && ctrl
triggerall = Random < 1000
triggerall = p2statetype = C
triggerall = p2movetype != A
triggerall = P2BodyDist X = (35,75]
trigger1 = p2stateno != 5120 || p2stateno = [5001,5017]
trigger2 = p2stateno != 5121 || p2stateno = [5001,5017]
trigger3 = p2stateno != 5122 || p2stateno = [5001,5017]

[State -1]
type = ChangeState
value = 690
triggerall = statetype = A
triggerall = var(59) = 1 && ctrl
triggerall= p2statetype = S
trigger1 = p2bodydist x = (19,38)
trigger2 = p2movetype = A
trigger2 = p2bodydist x = (-20,75) ; [-20,60]
trigger3 = p2bodydist X = [40,90]
trigger4 = vel x = 0

[State -1,27]
type = ChangeState
value = 40
triggerall = var(58) != 1
triggerall = p2life != 0
triggerall = Var(59) = 1 && ctrl
triggerall = statetype != A
trigger1 = p2stateno = [40,50] 
trigger1 = P2BodyDist X = [30,200]

[State -1,27]
type = ChangeState
value = ifelse(random>600,225,ifelse(random>400,410,400))
triggerall = Var(59) = 1 && ctrl
triggerall = Random <= 1000
triggerall = p2life != 0 
triggerall = statetype != A 
trigger1 = p2stateno != [5100,5122] 
trigger1 = p2movetype != A 
trigger1 = P2BodyDist X = [5,35]
trigger2 = p2stateno != [5100,5170]
trigger2 = p2movetype != A
trigger2 = p2BodyDist x < 5
trigger3 = p2stateno = [5000,5027]
trigger3 = p2BodyDist x <= 35

[State -1,27]
type = ChangeState
value = ifelse(random>20,0,ifelse(random>500,117,40))
triggerall = Var(59) = 1 && ctrl
triggerall = Random <= 1000
triggerall = p2life != 0 
triggerall = statetype != A 
trigger1 = p2stateno = [5100,5122]  
trigger1 = P2BodyDist X = [10,35]

[State -1,27]
type = ChangeState
value = 255
triggerall = Var(59) = 1
triggerall = p2life != 0
triggerall = statetype != A && ctrl
trigger1 = P2statetype = A
trigger1 = P2BodyDist X = (0,55)
trigger1 = P2BodyDist y = (-40,-95)

[State -1,27]
type = ChangeState
value = 410
triggerall = Var(59) = 1 && ctrl
triggerall = p2life != 0
triggerall = statetype = S
trigger1 = P2statetype = S
trigger1 = P2BodyDist X <= 65
trigger2 = p2stateno != [5100,5170]
trigger2 = p2BodyDist x = [35,65]

[State -1,27]
type = ChangeState
value = 420
triggerall = Var(59) = 1
triggerall = p2life != 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2statetype = S
trigger1 = P2BodyDist X = (65,80)

[State -1,27]
type = ChangeState
value = ifelse(vel x >0 ,611 ,ifelse(vel x <0 ,639 ,610))
triggerall = Var(59) = 1 && ctrl
triggerall = statetype = A
trigger1 = P2BodyDist X = [0,100]

;Auto Guard 
[State -1]
type = ChangeState
triggerall = Var(59) = 1 && ctrl
triggerall = StateType != A
trigger1 = P2StateType = C
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 150
trigger2 = stateno != 116
trigger2 = (enemy,numproj > 0) && (EnemyNear,statetype != L)
trigger3 = stateno != 116
trigger3 = (enemy,numhelper > 0) && (EnemyNear,statetype != L)
value = 120

[State -1]
type = ChangeState
trigger1 = Var(59) = 1
trigger1 = Ctrl
trigger1 = StateType = C
trigger1 = P2StateType = A
trigger1 = P2MoveType = A
trigger1 = P2BodyDist X <= 150
value = 121

;Hide--AI
[State -1]
type = ChangeState
value = 116
triggerall = Var(59) = 1
trigger1 = P2MoveType = A
trigger1 = Random = [0,300]
trigger1 = (PrevStateNo != 116)||(PrevStateNo != 117)||(PrevStateNo != 112)||(PrevStateNo != 151) ||(PrevStateNo != 152) ||(PrevStateNo != 153)
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = ctrl = 1
;-|Commands|-----------------------------------------------------------------------------
;³öÕÐÖ¸Áî³õÊ¼»¯
;***********************************************************************
[state -1]
type=varset
triggerall = power >=1000
trigger1 = var(10) = 0
trigger1=command= "Evil dragon steel"
trigger2 = var(10) > 0
trigger2=command= "The mountain of rises the dragon"
v=12
value=1
ignorehitpause=1
pausemovetime = 99

[state -1]
type=varset
triggerall = power >=1000
trigger1 = var(10) = 0
trigger1=command= "The mountain of rises the dragon"
trigger2 = var(10) > 0
trigger2=command= "Evil dragon steel"
v=12
value=43
ignorehitpause=1
pausemovetime = 99

[state -1]
type=varset
trigger1 = var(14) != [12,71]
trigger1=command= "Break the light of the day"
v=12
value=101
ignorehitpause=1
pausemovetime = 99

[state -1]
type=varset
trigger1 = var(14) != [12,71]
trigger1=command= "Pouring the beats"
v=12
value=114
ignorehitpause=1
pausemovetime = 99

[state -1]
type=varset
triggerall = var(14) <= 0
trigger1 = command= "The dragon tooth bites"
v=12
value=172
ignorehitpause=1
pausemovetime = 99

[state -1]
type=varset
trigger1 = var(14) <= 0
trigger1=(command= "The hand of the evil dragon")||(command= "The wave of the roseate clouds back")
v=12
value=185
ignorehitpause=1
pausemovetime = 99

[state -1]
type=varset
triggerall = var(14) <= 0
trigger1 = var(10) = 0
trigger1=command= "The wave of the roseate clouds"
trigger2 = var(10) > 0
trigger2=command= "The wave of the roseate clouds back"
v=12
value=156
ignorehitpause=1
pausemovetime = 99

[state -1]
type=varset
triggerall = var(14) <= 0
trigger1 = var(10) = 0
trigger1=command= "The bridge of the flashlight"
trigger2 = var(10) > 0
trigger2=command= "The bridge of the flashlight back"
v=12
value=140
ignorehitpause=1
pausemovetime = 99
;***********************************************************************
;³öÕÐÖ¸ÁîÉè¶¨
;***********************************************************************
;Ä§Áú¸ÖÁÑÈ­.°Ô *******************************
[state -1]
type=varset
triggerall = power >= 3000
triggerall = var(12) =[1,9]
trigger1=command= "c"
trigger2=command= "dodge"
v=13
value=501
ignorehitpause=1
;Ä§Áú¸ÖÁÑÈ­.³å *******************************
[state -1]
type=varset
triggerall = var(12) =[1,9]
triggerall=command!= "dodge"
trigger1=command= "C"
v=13
value=541
ignorehitpause=1
pausemovetime = 99
;Ä§Áú¸ÖÁÑÈ­.Ò§*******************************
[state -1]
type=varset
triggerall = var(12) =[1,9]
triggerall=command!= "dodge"
trigger1=command= "A"
v=13
value=561
ignorehitpaus 99
pausemovetime = 99

[state -1]
type=varset
trigger1=command="100 the absolute being of dragons"
v=13
value=521
ignorehitpause=1
;Â®É½ÉýÁú°Ô *******************************
[state -1]
type=varset
triggerall = (command != "B") || (command != "D")
triggerall = var(12) =[43,54]
trigger1=command="B"
trigger2=power < 2000
trigger2=command="D"
v=13
value=481
ignorehitpause=1
;Â®É½ÉýÁú°Ô *******************************
[state -1]
type=varset
triggerall = (command != "B") || (command != "D")
triggerall = var(12) =[43,54]
trigger1=power >= 2000
trigger1=command="D"
v=13
value=781
ignorehitpause=1
;Â®É½ÉýÁú°Ô *******************************
[state -1]
type=varset
triggerall = var(12) =[43,54]
triggerall=power >= 3000
trigger1 = (command = "B") && (command = "D")
trigger2 = (command = "z") 
v=13
value=801
ignorehitpause=1
;Â®É½¿ºÁú°Ô *******************************
[state -1]
type=varset
triggerall = power >=1000
trigger1 = var(10) = 0
trigger1=command= "The dance of the dragon tooth back"
trigger2 = var(10) > 0
trigger2=command= "The dance of the dragon tooth"
v=13
value=461
ignorehitpause=1
;ÁúÑÀÖ®Îè *******************************
[state -1]
type=varset
triggerall = power >=2000
trigger1 = var(10) = 0
trigger1=command= "The dance of the dragon tooth"
trigger2 = var(10) > 0
trigger2=command= "The dance of the dragon tooth back"
v=13
value=441
ignorehitpause=1
;Ä§»ÃÖ®È­£¨Âý£©*******************************
[state -1]
type=varset
triggerall = var(14) <= 0
trigger1 = var(10) = 0
trigger1 = var(12) = [185,194]
trigger1=command="C"
trigger2 = var(10) > 0
trigger2 = var(12) = [172,181]
trigger2=command="C"
v=13
value=321
ignorehitpause=1
;Ä§»ÃÖ®È­£¨¿ì£©*******************************
[state -1]
type=varset
triggerall = var(14) <= 0
trigger1 = var(10) = 0
trigger1 = var(12) = [185,194]
trigger1=command="A"
trigger2 = var(10) > 0
trigger2 = var(12) = [172,181]
trigger2=command="A"
v=13
value=341
ignorehitpause=1
;ÂÒ¶·£©*******************************
[state -1]
type=varset
triggerall = var(14) <= 0
triggerall = p2bodydist x <= 30
triggerall = p2stateno != [150,154]
triggerall = var(12) = [156,166]
trigger1=command="A"
trigger2=command="C"
v=13
value=701
ignorehitpause=1
;ÁúÑÀÒ§£¨Âý£©*******************************
[state -1]
type=varset
triggerall = var(14) <= 0
trigger1 = var(10) = 0
trigger1 = var(12) = [172,181]
trigger1=command="A"
trigger2 = var(12) = [185,194]
trigger2 = var(10) > 0
trigger2=command="A"
trigger3 = (p2bodydist x > 30) || (p2stateno = [150,154])
trigger3 = var(12) = [156,166]
trigger3=command="A"
v=13
value=141
ignorehitpause=1
;ÁúÑÀÒ§£¨¿ì£©*******************************
[state -1]
type=varset
triggerall = var(14) <= 0
trigger1 = var(10) = 0
trigger1 = var(12) = [172,181]
trigger1=command="C"
trigger2 = var(12) = [185,194]
trigger2 = var(10) > 0
trigger2=command="C"
trigger3 = (p2bodydist x > 30) || (p2stateno = [150,154])
trigger3 = var(12) = [156,166]
trigger3=command="C"
v=13
value=161
ignorehitpause=1
;ÁúÑÀÒ§£¨¶à¶ÎÍ»£©*******************************
[state -1]
type=varset
trigger1 = var(10) = 0
trigger1 = var(12) = [172,181]
trigger1=(command="C")&&(command="D")
trigger2 = var(12) = [185,194]
trigger2 = var(10) > 0
trigger2=(command="C")&&(command="D")
v=13
value=221
ignorehitpause=1
;ÁúÁÑËéÌúÈ­£¨Ô¶£©*******************************
[state -1]
type=varset
triggerall=var(14)<=0
trigger1=command= "Broken up iron in dragon far"
trigger1=var(4)<=0
v=13
value=361
ignorehitpause=1
;ÁúÁÑËéÌúÈ­£¨½ü£©*******************************
[state -1]
type=varset
triggerall=var(14)<=0
trigger1=command= "broken up iron in dragon near"
trigger1=var(4)<=0
v=13
value=381
ignorehitpause=1
;ÆÆÌìÖ®¹â£¨¸ß£©*******************************
[state -1]
type=varset
trigger1 = var(10) = 0
trigger1 = var(12) = [101,111]
trigger1=command="C"
trigger2 = var(12) = [114,124]
trigger2 = var(10) > 0
trigger2=command="C"
v=13
value=121
ignorehitpause=1
;ÆÆÌìÖ®¹â£¨µÍ£©*******************************
[state -1]
type=varset
trigger1 = var(10) = 0
trigger1 = var(12) = [101,111]
trigger1=command="A"
trigger2 = var(10) > 0
trigger2 = var(12) = [114,124]
trigger2=command="A"
v=13
value=101
ignorehitpause=1
;ÉÁ¹âÌìÀ×»÷(Ô¶)*******************************
[state -1]
type=varset
triggerall=var(12)!=[1,9]
triggerall=command="C"
trigger1 = var(10) = 0
trigger1 = var(12) = [114,124]
trigger2 = var(10) > 0
trigger2 = var(12) = [101,111]
v=13
value=261
ignorehitpause=1
;ÉÁ¹âÌìÀ×»÷(½ü)*******************************
[state -1]
type=varset
triggerall=var(12)!=[1,9]
triggerall=command="A"
trigger1 = var(10) = 0
trigger1 = var(12) = [114,124]
trigger2 = var(10) > 0
trigger2 = var(12) = [101,111]
v=13
value=241
ignorehitpause=1
;µ¹ÐýÕ¶£¨¸ß£©*******************************
[state -1]
type=varset
trigger1 = var(10) = 0
trigger1 = var(12) = [114,124]
trigger1=command="B"
trigger2 = var(12) = [101,111]
trigger2 = var(10) > 0
trigger2=command="B"
v=13
value=301
ignorehitpause=1
;µ¹ÐýÕ¶£¨µÍ£©*******************************
[state -1]
type=varset
trigger1 = var(10) = 0
trigger1 = var(12) = [114,124]
trigger1=command="D"
trigger2 = var(12) = [101,111]
trigger2 = var(10) > 0
trigger2=command="D"
v=13
value=281
ignorehitpause=1
;ÄæÏ¼»ØÐý²ù*******************************
[state -1]
type=varset
triggerall = var(12) =[156,166]
trigger1=command="B"
trigger2=command="B"
v=13
value=401
ignorehitpause=1
;ÄæÏ¼»ØÐý²ù *******************************
[state -1]
type=varset
triggerall = var(12) =[156,166]
trigger1=command="D"
trigger2=command="D"
v=13
value=421
ignorehitpause=1

[state -1]
type=varset
trigger1 = command = "The dragon recruits air x" || command = "The dragon recruits air y"
v=13
value=181
ignorehitpause=1

[state -1]
type=varset
trigger1 = stateno = 5120
trigger1=p2bodydist x < -13
v=10
value=7
ignorehitpause=1

[state -1]
type=varadd
trigger1 = stateno != 5120
trigger1 = var(10) > 0
v=10
value=-1
ignorehitpause=1

[state -1]
type=varset
trigger1=command= "Avoid"
v=13
value=601
ignorehitpause=1

[state -1]
type=varset
triggerall=var(14)<=0
triggerall = command != "holddown"
trigger1=command= "C"
trigger1=var(4)<=0
v=13
value=621
ignorehitpause=1

[state -1]
type=varset
triggerall=var(14)<=0
triggerall = command != "holddown"
trigger1=command= "D"
trigger1=var(4)<=0
v=13
value=641
ignorehitpause=1

[state -1]
type=varset
triggerall=var(14)<=0
triggerall = command = "holddown"
trigger1=command= "C"
trigger1=var(4)<=0
v=13
value=661
;ignorehitpause=1

[state -1]
type=varset 
triggerall=var(14)<=0
triggerall = command = "holddown"
trigger1=command= "D"
trigger1=var(4)<=0
v=13
value=681
ignorehitpause=1

[state -1]
type=varset
trigger1=(command="evil dragon") || (command="The dragon tooth bites") || (command="The hand of the evil dragon") || (command="The spirit moves")
v=4
value=1
ignorehitpause=1

[state -1]
type=varadd
trigger1=var(4)>=1
var(4)=1
ignorehitpause=1

[state -1]
type=varset
trigger1=var(4)=16
v=4
value=0
ignorehitpause=1

[state -1]
type=varset
trigger1=(command="Break the light of the day") || (command="The bridge of the flashlight") || (command="Pouring the beats")
v=14
value=1
ignorehitpause=1

[state -1]
type=varset
triggerall = power >= 1000
trigger1=command="The dance of the dragon tooth beginning"
trigger2=command="Evil dragon steel"
trigger3=command="The dance of the dragon tooth back beginning"
v=14
value=12
ignorehitpause=1

[state -1]
type=varadd
trigger1=var(14)>=1
trigger1=var(14)!=11
trigger1=var(14)!=72
var(14)=1
ignorehitpause=1

[state -1]
type=varset
trigger1=var(14)=11
trigger2=var(14)=72
v=14
value=0
ignorehitpause=1

[state -1]
type = varadd
trigger1=var(13) > 100
trigger1=var(13)!=100&&var(13)!=120&&var(13)!=140&&var(13)!=160&&var(13)!=180&&var(13)!=200
trigger1=var(13)!=220&&var(13)!=240&&var(13)!=260&&var(13)!=280&&var(13)!=300&&var(13)!=320
trigger1=var(13)!=340&&var(13)!=360&&var(13)!=380&&var(13)!=400&&var(13)!=420&&var(13)!=440
trigger1=var(13)!=460&&var(13)!=480&&var(13)!=500&&var(13)!=520&&var(13)!=540&&var(13)!=560
trigger1=var(13)!=600&&var(13)!=620&&var(13)!=640&&var(13)!=660&&var(13)!=680&&var(13)!=700
trigger1=var(13)!=720&&var(13)!=740&&var(13)!=760&&var(13)!=780&&var(13)!=800&&var(13)!=820
v=13
value=1
ignorehitpause=1

[state -1]
type = varadd
trigger1=var(12) > 0
trigger1=var(12)!=13&&var(12)!=36&&var(12)&&var(12)!=55&&var(12)!=68
trigger1=var(12)!=71&&var(12)!=84&&var(12)!=97&&var(12)!=100&&var(12)!=113&&var(12)!=126
trigger1=var(12)!=78&&var(12)!=360&&var(12)!=380&&var(12)!=400&&var(12)!=420&&var(12)!=440
trigger1=var(12)!=139&&var(12)!=155&&var(12)!=168&&var(12)!=171&&var(12)!=184
trigger1=var(12)!=197&&var(12)!=620&&var(12)!=640&&var(12)!=660&&var(12)!=680&&var(12)!=700
v=12
value=1
ignorehitpause=1
;***********************************************************************
;ÕÐÊ½¿ØÖÆ
;***********************************************************************
[State -1]
type = ChangeState
value = 4500 
triggerall = Var(59) != 1
triggerall = (var(13) = [521,529])||command="100 the absolute being of dragons" 
triggerall = statetype != A
triggerall = power >= 2000 && var(40) > 0
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 225
trigger3 = movecontact = 1
trigger4 = stateno = 260
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 420
trigger7 = movecontact = 1
trigger8 = stateno = 425
trigger8 = movecontact = 1
trigger9 = stateno = 205
trigger9 = movecontact = 1
trigger10 = stateno = 215
trigger10 = movecontact = 1
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1

[State -1]
type = ChangeState
value = 4500 
triggerall = Var(59) != 1
triggerall = (var(13) = [521,529])||command="100 the absolute being of dragons" 
triggerall = statetype != A
triggerall = power >= 3000 && life <= 300
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 225
trigger3 = movecontact = 1
trigger4 = stateno = 260
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 420
trigger7 = movecontact = 1
trigger8 = stateno = 425
trigger8 = movecontact = 1
trigger9 = stateno = 205
trigger9 = movecontact = 1
trigger10 = stateno = 215
trigger10 = movecontact = 1
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
[State -1]
type = ChangeState
value = 3500 
triggerall = Var(59) != 1
triggerall = (var(13) = [501,515]);||command="ÕæÂ®É½°ÙÁú°Ô"
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = ctrl = 1 
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 225
trigger3 = movecontact = 1
trigger4 = stateno = 260
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 420
trigger7 = movecontact = 1
trigger8 = stateno = 425
trigger8 = movecontact = 1
trigger9 = stateno = 205
trigger9 = movecontact = 1
trigger10 = stateno = 215
trigger10 = movecontact = 1
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
[State -1]
type = ChangeState
value = 3700
triggerall = Var(59) != 1 
triggerall = command = "The dragon recruits air x" || command = "The dragon recruits air y"
triggerall = power >= 1000
trigger1 = ctrl = 1 && statetype != S && statetype !=C
;--------------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3700
triggerall = Var(59) != 1 
triggerall = var(29) = 4
triggerall = power >= 3000
trigger1 = ctrl = 1 && statetype != S && statetype !=C
;--------------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3150
triggerall = Var(59) != 1
triggerall = (var(13) = [561,575])
triggerall = power >= 1000
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger3 = stateno = 225
trigger4 = stateno = 260
trigger5 = stateno = 400
trigger6 = stateno = 410
trigger7 = stateno = 420
trigger8 = stateno = 425
trigger9 = stateno = 205
trigger10 = stateno = 215
trigger11 = stateno = 900
trigger12 = stateno = 280
trigger12 = movecontact = 1
trigger13 = stateno = 955
;----------------------------------------------------
[State -1]
type = ChangeState
value = 3000
triggerall = Var(59) != 1
triggerall = (var(13) = [541,555])
triggerall = power >= 1000
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger3 = stateno = 225
trigger4 = stateno = 260
trigger5 = stateno = 400
trigger6 = stateno = 410
trigger7 = stateno = 420
trigger8 = stateno = 425
trigger9 = stateno = 205
trigger10 = stateno = 215
trigger11 = stateno = 900
trigger12 = stateno = 280
trigger12 = movecontact = 1
trigger13 = stateno = 955
;----------------------------------------------------
[State -1]
type = ChangeState
value = 4600
triggerall = Var(59) != 1
triggerall = var(13) = [461,475] 
triggerall = power >= 1000
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
[State -1]
type = ChangeState
value = 3400
triggerall = Var(59) != 1
triggerall = var(13) = [481,495] 
triggerall = power >= 1000
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
[State -1]
type = ChangeState
value = 3650
triggerall = Var(59) != 1
triggerall = var(13) = [781,795] 
triggerall = power >= 1000
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
[State -1]
type = ChangeState
value = 3900
triggerall = Var(59) != 1
triggerall = var(13) = [801,815] 
triggerall = power >= 3000
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;--------------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 4897
triggerall = Var(59) != 1
triggerall = var(13) = [441,455] 
triggerall = power >= 2000
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;--------------------------------------------------------------------------------------
[State -1,RollFRUN]
type = ChangeState
value = 116
triggerall = var(59) != 1
triggerall = (var(13) = [601,615]) && command = "holdfwd"
trigger1 = statetype = S && ctrl
;--------------------------------------------------------------------------------------
[State -1,RollFRUN]
type = ChangeState
value = 117
triggerall = var(59) != 1
triggerall = (var(13) = [601,615]) && command = "holdback"
;triggerall = var(21) = 0 || var(21) = 2 || var(21) = 3 || var(21) = 4 || var(21) = 5
trigger1 = statetype = S && ctrl

;[State -1]
;type = ChangeState
;value = 117
;triggerall = var(59) >= 1 && ctrl 
;triggerall = statetype != A
;trigger1 = p2stateno = (5100,5160)
;trigger1 = P2bodydist X = (0,10)
;--------------------------------------------------------------------------------------
[State -1,RollFRUN]
type = ChangeState
value = 112
triggerall = var(59) != 1
triggerall = var(13) = [601,615]
trigger1 = statetype = S && ctrl
;--------------------------------------------------------------------------------------
[State -1,RUN]
type = ChangeState
value = 100
triggerall = var(59) != 1
triggerall = command = "FF"
;triggerall = var(21) = 0 || var(21) = 2 || var(21) = 3 || var(21) = 4 || var(21) = 5
trigger1 = statetype = S && ctrl
;--------------------------------------------------------------------------------------
[State -1,RUN]
type = ChangeState
value = 105
triggerall = var(59) != 1
triggerall = command = "BB"
;triggerall = var(21) = 0 || var(21) = 2 || var(21) = 3 || var(21) = 4 || var(21) = 5
trigger1 = statetype = S && ctrl
;--------------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 195
triggerall = Var(59) != 1
triggerall = command = "taunt"
trigger1 = ctrl = 1
trigger1 = statetype = S && ctrl
;----------------------------------------------------  
;ÆÆÌìÖ®¹â(µÍ)
;----------------------------------------------------                    
[State -1]
type = ChangeState
value = 1000
triggerall = Var(59) != 1
triggerall = (var(13) = [101,115]) || (command = "Break the light of the day1")
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
;ÆÆÌìÖ®¹â(¸ß) 
;----------------------------------------------------
[State -1]
type = ChangeState
value = 1003
triggerall = Var(59) != 1
triggerall = (var(13) = [121,135]) || (command = "Break the light of the day2")
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
;µ¹ÐýÕ¶(¸ß)
;----------------------------------------------------
[State -1]
type = ChangeState
value = 1415
triggerall = Var(59) != 1
triggerall = var(13) = [301,315]
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
;µ¹ÐýÕ¶(µÍ)
;----------------------------------------------------
[State -1]
type = ChangeState
value = 1465
triggerall = Var(59) != 1
triggerall = var(13) = [281,295]
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
;ÁúÑÀÒ§(¶à¶ÎÍ»)
;----------------------------------------------------
[State -1]
type = ChangeState
value = 1100
triggerall = Var(59) != 1
triggerall = Var(13) != 1
triggerall = var(13) = [221,231]
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
;ÁúÑÀÒ§(¿ì)
;----------------------------------------------------
[State -1]
type = ChangeState
value = 1150
triggerall = Var(59) != 1
triggerall = var(13) = [161,171]
triggerall = numhelper(1309) = 0
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
;ÁúÑÀÒ§(Âý)
;----------------------------------------------------
[State -1]
type = ChangeState
value = 1200
triggerall = Var(59) != 1
triggerall = var(13) = [141,151]
triggerall = numhelper(1309) = 0
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
;ÂÒ¶·
;----------------------------------------------------
[State -1]
type = ChangeState
value = 980
triggerall = Var(59) != 1
triggerall = var(13) = [701,715]
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
;----------------------------------------------------
;ÄæÏ¼»ØÐý²ù(ÎÞ²Ê)
;----------------------------------------------------
[State -1]
type = ChangeState
value = 1700
triggerall = Var(59) != 1
triggerall = var(13) = [401,411]
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
;ÄæÏ¼»ØÐý²ù
;----------------------------------------------------
[State -1]
type = ChangeState
value = 1702
triggerall = Var(59) != 1
triggerall = var(13) = [421,431]
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
;ÉÁ¹âÌìÀ×»÷(½ü)
;----------------------------------------------------
[State -1]
type = ChangeState
value = 1250
triggerall = Var(59) != 1
triggerall = (var(13) = [241,255])
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
;ÉÁ¹âÌìÀ×»÷(Ô¶)
;----------------------------------------------------
[State -1]
type = ChangeState
value = 1350
triggerall = Var(59) != 1
triggerall = (var(13) = [261,275])
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
;Ä§»ÃÖ®È­(½ü)
;----------------------------------------------------
[State -1]
type = ChangeState
value = 2150
triggerall = Var(59) != 1
triggerall = Var(14) <= 0
triggerall = (var(13) = [341,355]) || command= "The hand of the evil dragon1"
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
;Ä§»ÃÖ®È­(Ô¶)
;----------------------------------------------------
[State -1]
type = ChangeState
value = 2250
triggerall = Var(59) != 1
triggerall = Var(14) <= 0
triggerall = (var(13) = [321,335])
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
;ÁúÑÀ¼ý
;----------------------------------------------------
[State -1]
type = ChangeState
value = 2205
triggerall = Var(59) != 1 
triggerall = (var(13) = [321,326])||(var(13) = [341,346])
trigger1 = ctrl = 1 && statetype != S && statetype !=C

;----------------------------------------------------
;ÁúÁÑËéÌúÈ­(½ü)
;----------------------------------------------------
[State -1]
type = ChangeState
value = 1600
triggerall = Var(59) != 1
triggerall = var(13) = [381,395]
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
;ÁúÁÑËéÌúÈ­(Ô¶)
;----------------------------------------------------
[State -1]
type = ChangeState
value = 1650
triggerall = Var(59) != 1
triggerall = (var(13) = [361,375]) || (command= "Broken up iron in dragon far")
trigger1 = ctrl = 1 && statetype != A
trigger2 = stateno = 210
trigger2 = animelemtime(4) < 0
trigger3 = stateno = 225
trigger3 = animelemtime(4) < 0
trigger4 = stateno = 260
trigger4 = animelemtime(7) > 0 && animelemtime(8) < 0
trigger5 = stateno = 400
trigger5 = animelemtime(3) < 0
trigger6 = stateno = 410
trigger6 = animelemtime(4) < 0
trigger7 = stateno = 420
trigger7 = animelemtime(4) < 0
trigger8 = stateno = 425
trigger8 = animelemtime(4) < 0
trigger9 = stateno = 205
trigger9 = animelemtime(4) < 0
trigger10 = stateno = 215
trigger10 = animelemtime(3) < 0
trigger11 = stateno = 900
trigger11 = movecontact = 1
trigger12 = stateno = 280
trigger12 = movecontact = 1
;----------------------------------------------------
; Stand"dodge"
[State -1]
type = ChangeState
value = 280
triggerall = var(59) != 1
triggerall = Var(12) != [1,9]
triggerall = command = "dodge"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 225
trigger3 = movecontact = 1
trigger4 = stateno = 255
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 420
trigger7 = movecontact = 1
trigger8 = stateno = 425
trigger8 = movecontact = 1
trigger9 = stateno = 205
trigger9 = movecontact = 1
trigger10 = stateno = 215
trigger10 = movecontact = 1
trigger11 = stateno = 245
trigger11 = movecontact = 1
;----------------------------------------------------
;Throw Attack D
[State -1]
type = ChangeState
value = 370 + (var(59) = 1 && BackEdgeDist < 140)*10
triggerall = P2bodydist X <= 9
triggerall = p2movetype != H && p2statetype != A
triggerall = statetype = S && ctrl
triggerall = p2stateno != [5120,5122]
triggerall = stateno != 100
trigger1 = (command = "holdfwd") && ((var(13) = [641,647]) || (command = "D"))
trigger2 = var(59) = 1
trigger2 = Random <= 100
trigger2 = (p2bodydist X <= 9) && (p2stateno < 100)
trigger3 = var(50) = 1 && Random <= 800
; Standing close attacks
;--------------------------------------------------------------------------------------
;Throw Attack D
[State -1]
type = ChangeState
value = 370 + (var(59) = 1 && BackEdgeDist < 140)*10
triggerall = P2bodydist X <= 10
triggerall = p2movetype != H && p2statetype != A
triggerall = statetype = S && ctrl
triggerall = p2stateno != [5120,5122]
triggerall = stateno != 100
trigger1 = (command = "holdback") && ((var(13) = [641,647]) || (command = "D"))
trigger2 = var(59) = 1
trigger2 = Random <= 100
trigger2 = (p2bodydist X <= 10) && (p2stateno < 100)
trigger3 = var(59) = 1 && Random <= 800
; Standing close attacks
;--------------------------------------------------------------------------------------
;----------------------------------------------------
;Throw Attack C
[State -1]
type = ChangeState
value = 380 + (var(59) = 1 && BackEdgeDist < 140)*10
triggerall = P2bodydist X <= 9
triggerall = p2movetype != H && p2statetype != A
triggerall = statetype = S && ctrl
triggerall = p2stateno != [5120,5122]
triggerall = stateno != 100
trigger1 = (command = "holdfwd") && ((var(13) = [621,627]) || (command = "C"))
trigger2 = var(59) = 1
trigger2 = Random <= 1000
trigger2 = (p2bodydist X <= 9) && (p2stateno < 100)
trigger3 = var(59) = 1 && Random <= 800
; Standing close attacks
;--------------------------------------------------------------------------------------
;Throw Attack C
[State -1]
type = ChangeState
value = 380 + (var(59) = 1 && BackEdgeDist < 140)*10
triggerall = P2bodydist X <= 10
triggerall = p2movetype != H && p2statetype != A
triggerall = statetype = S && ctrl
triggerall = p2stateno != [5120,5122]
triggerall = stateno != 100
trigger1 = (command = "holdback") && ((var(13) = [621,627]) || (command = "C"))
trigger2 = var(59) = 1
trigger2 = Random <= 1000
trigger2 = (p2bodydist X <= 5) && (p2stateno < 100)
trigger3 = var(59) = 1 && Random <= 800
;--------------------------------------------------------------------------------------
;Ç° B
[State -1]
type = ChangeState
value = 260
triggerall = Var(59) != 1
triggerall=var(14)!=2
triggerall = command = "holdfwd" && command = "B"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 225
trigger3 = movecontact = 1
trigger4 = stateno = 255
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 420
trigger7 = movecontact = 1
trigger8 = stateno = 425
trigger8 = movecontact = 1
trigger9 = stateno = 205
trigger9 = movecontact = 1
trigger10 = stateno = 215
trigger10 = movecontact = 1

;Ç° B
[State -1]
type = ChangeState
value = 270
triggerall = Var(59) != 1
triggerall=var(14)!=2
triggerall = command = "holdfwd" && command = "B"
triggerall = statetype != A
trigger1 = stateno = 280
trigger1 = movecontact = 1
trigger2 = stateno = 900
trigger2 = movecontact = 1
;----------------------------------------------------
;Ç° A
[State -1]
type = ChangeState
value = 900
triggerall = Var(59) != 1
triggerall = var(14)<=0
triggerall = command = "holdfwd" && command = "A"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 225
trigger3 = movecontact = 1
trigger4 = stateno = 255
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 420
trigger7 = movecontact = 1
trigger8 = stateno = 425
trigger8 = movecontact = 1
trigger9 = stateno = 205
trigger9 = movecontact = 1
trigger10 = stateno = 215
trigger10 = movecontact = 1

;Ëé¶îÆÆ
;----------------------------------------------------
[State -1]
type = ChangeState
value = 950
triggerall = Var(59) != 1 
triggerall = ((command = "holdfwd")&&(command = "holddown")) && command = "B"
trigger1 = ctrl = 1 && statetype != S && statetype !=C && (vel x >= 0)
trigger2 = ctrl = 1 && statetype != S && statetype !=C && (vel x < 0) && (vel y > -2)
trigger3 = stateno = [600,610]
trigger3 = movecontact = 1
trigger4 = stateno = 2206
;----------------------------------------------------
; Jumping hard kick
[State -1]
type = ChangeState
value = 645
triggerall = var(59) != 1
triggerall = vel x =0
triggerall = (command = "B") && (command = "C")
trigger1 = statetype = A
trigger1 = ctrl = 1
;----------------------------------------------------
; Jumping hard kick
[State -1]
type = ChangeState
value = 690
triggerall = var(59) != 1
trigger1 = ((command = "C")&&(command = "D"))||(command = "c")
trigger1 = statetype = A
trigger1 = ctrl = 1
;----------------------------------------------------
;hard kick
[State -1]
type = ChangeState
value = 295
triggerall = var(59) != 1
trigger1 = ((command = "C")&&(command = "D"))||(command = "c")
trigger1 = statetype != A
trigger1 = ctrl = 1
;----------------------------------------------------
; Crouching attacks

; Crouching A
[State -1]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "holddown" && command = "A"
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = [400,410]
trigger2 = (time >= 6) || (movecontact && time >= 4)
;----------------------------------------------------
; Crouching B
[State -1]
type = ChangeState
value = 410
triggerall = var(59) != 1
triggerall = command = "holddown" && command = "B"
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = [400,410]
trigger2 = (time >= 6) || movecontact
;trigger2 = p2bodydist X >= 0
trigger3 = stateno = 400
trigger3 = time >= 8
trigger4 = var(59)
trigger4 = hitcount = 1
trigger4 = stateno = 410 && movecontact
;----------------------------------------------------
; Crouching C
[State -1]
type = ChangeState
value = 425
triggerall = var(59) != 1
triggerall = (var(13) = [661,667]) || (command = "C")
triggerall = statetype = C
trigger1 = ctrl = 1
;----------------------------------------------------
; Crouching D
[State -1]
type = ChangeState
value = 420
triggerall = var(59) != 1
triggerall = (var(13) = [681,687]) || (command = "D")
triggerall = statetype = C
trigger1 = ctrl = 1
;----------------------------------------------------
; Standing close attacks
; Stand_A (close)
[State -1]
type = ChangeState
value = 215
triggerall = var(59) != 1
triggerall = command = "A"
triggerall = p2bodydist x <= 18
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = animelemtime(2) >= 4 || animelemtime(3) <= 3
trigger3 = stateno = 205
trigger3 = time >= 7
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = time >= 6
trigger4 = movecontact = 1
trigger5 = stateno = 410
trigger5 = time >= 7
trigger5 = movecontact = 1

;[State -1,27]
;type = ChangeState
;value = 215
;triggerall = Var(59) = 1
;trigger1 = statetype != A
;trigger1 = ctrl = 1
;;trigger1 = P2statetype != A
;trigger1 = P2BodyDist X = (0,10)
;trigger1 = p2bodydist y = (0,-20)
;----------------------------------------------------
; Stand_B (close)
[State -1]
type = ChangeState
value = 205
triggerall = var(59) != 1
triggerall = command = "B"
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = p2bodydist x <= 25
trigger1 = ctrl = 1
trigger2 = stateno = 205
trigger2 = time >= 6
trigger2 = movecontact = 1
trigger3 = stateno = 215
trigger3 = time >= 7
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger4 = time >= 6
trigger5 = stateno = 410
trigger5 = time >= 7
trigger5 = movecontact = 1
;----------------------------------------------------
; Stand_C (close)
[State -1]
type = ChangeState
value = 225
triggerall = var(59) != 1
triggerall = (var(13) = [622,627]) || (command = "C")
trigger1 = P2bodydist X <= 30
trigger1 = p2statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = P2bodydist X <= 40
trigger2 = p2statetype = A
trigger2 = statetype = S
trigger2 = ctrl = 1
;----------------------------------------------------
; Stand_D (close)
[State -1]
type = ChangeState
value = 255
triggerall = var(59) != 1
triggerall = (var(13) = [642,647]) || (command = "D")
triggerall = p2bodydist x <= 30
trigger1 = statetype = S
trigger1 = ctrl = 1
;----------------------------------------------------
; Standing (far) attacks

; Stand_A (far)
[State -1]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "A"
triggerall = p2bodydist x > 18
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = (time >= 6) || (movecontact && (time >= 4))
trigger3 = stateno = 205
trigger3 = movecontact = 1
trigger3 = time >= 8
trigger4 = stateno = 215
trigger4 = time >= 7
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger5 = time >= 6
trigger6 = stateno = 410
trigger6 = time >= 7
trigger6 = movecontact = 1
;----------------------------------------------------
; Stand_B (far)
[State -1]
type = ChangeState
value = 235
triggerall = var(59) != 1
triggerall = command = "B"
triggerall = p2bodydist x > 25
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time >= 8
trigger3 = stateno = 250
trigger3 = movecontact = 1
trigger3 = time >= 8
trigger4 = stateno = 215
trigger4 = time >= 7
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger5 = time >= 6
trigger6 = stateno = 410
trigger6 = time >= 7
trigger6 = movecontact = 1
;----------------------------------------------------
; Stand_C (far)
[State -1]
type = ChangeState
value = 220 - (var(59) = 1 && p2statetype = L)*180 ; = 40
triggerall = var(59) != 1
triggerall = (var(13) = [622,627]) || (command = "C")
trigger1 = P2bodydist X > 30
trigger1 = p2statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = P2bodydist X > 40
trigger2 = p2statetype = A
trigger2 = statetype = S
trigger2 = ctrl = 1
;----------------------------------------------------
; ±¬Æø
[State -1]
type = ChangeState
value = 700
triggerall = var(12) !=[43,54]
triggerall = var(59) != 1
triggerall = command = "z"
trigger1 = var(40) <= 0
trigger1 = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
;----------------------------------------------------
; Stand_D (far)
[State -1]
type = ChangeState
value = 245
triggerall = var(59) != 1
triggerall = (var(13) = [642,647]) || (command = "D")
triggerall = P2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl = 1
;------------------------------------------------
; Jumping light punch
[State -1]
type = ChangeState
value = 600
triggerall = var(59) != 1
trigger1 = command = "A"
trigger1 = statetype = A
trigger1 = ctrl = 1
;----------------------------------------------------
; Jumping light kick
[State -1]
type = ChangeState
value = ifelse(vel x =0 ,606 ,605)
triggerall = var(59) != 1
trigger1 = command = "B"
trigger1 = statetype = A
trigger1 = ctrl = 1
;----------------------------------------------------
; Jumping hard punch
[State -1]
type = ChangeState
value = 615
triggerall = var(59) != 1
triggerall = (var(13) = [621,627]) || (command = "C")
trigger1 = statetype = A
trigger1 = ctrl = 1
;----------------------------------------------------
; Jumping hard kick
[State -1]
type = ChangeState
value = ifelse(vel x >0 ,611 ,ifelse(vel x <0 ,ifelse(((command = "holdfwd") && (command = "holdup")),611,639) ,610))
triggerall = var(59) != 1
triggerall = (command != "holdback") || (command != "holddown")
triggerall = (var(13) = [641,647]) || (command = "D")
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping hard kick
[State -1]
type = ChangeState
value = 639
triggerall = var(59) != 1
triggerall = (command = "holdback") && (command = "holddown")
triggerall = (var(13) = [641,647]) || (command = "D")
trigger1 = statetype = A
trigger1 = ctrl = 1
;----------------------------------------------------
[State -1,116]
type = SelfState
trigger1 = stateno > 9999
trigger1 = movetype = H
value = 5200
;----------------------------------------------------

;======================================================================

;======================================================================
