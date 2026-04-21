
;===========================================================================
; CPUアルゴリズム用コマンド
;===========================================================================

[Command]
name = "cpu1"
command = a,U,D,F,F,B,B,D,U,U
time = 1
[Command]
name = "cpu2"
command = b,U,D,F,B,F,B,D,U,D
time = 1
[Command]
name = "cpu3"
command = c,U,D,B,F,B,F,D,U,B
time = 1
[Command]
name = "cpu4"
command = x,U,D,B,F,F,B,D,U,F
time = 1
[Command]
name = "cpu5"
command = y,U,D,F,F,B,B,D,U,a
time = 1
[Command]
name = "cpu6"
command = z,U,D,F,B,F,B,D,U,b
time = 1
[Command]
name = "cpu7"
command = s,U,D,B,F,B,F,D,U,c
time = 1
[Command]
name = "cpu8"
command = b,U,D,B,F,F,B,D,U,x
time = 1
[Command]
name = "cpu9"
command = c,U,D,F,B,F,B,D,U,y
time = 1
[Command]
name = "cpuA"
command = y,U,D,B,F,B,F,D,U,z
time = 1
[Command]
name = "cpuB"
command = z,U,D,B,F,F,B,D,U,s
time = 1
[Command]
name = "cpuC"
command = U,D,F,F,B,B,D,U,a+x
time = 1
[Command]
name = "cpuD"
command = U,D,F,B,F,B,D,U,b+y
time = 1
[Command]
name = "cpuE"
command = U,D,B,F,B,F,D,U,c+z
time = 1
[Command]
name = "cpuF"
command = U,D,s,B,F,F,B,s,D,U
time = 1

[Command] ;同じコマンド名を使えば後が楽になる
name = "cpu1"
command = a,U,D,F,F,B,B,D,U,U,s
time = 1
[Command]
name = "cpu2"
command = b,U,D,F,B,F,B,D,U,D,s
time = 1
[Command]
name = "cpu3"
command = c,U,D,B,F,B,F,D,U,B,s
time = 1
[Command]
name = "cpu4"
command = x,U,D,B,F,F,B,D,U,F,s
time = 1
[Command]
name = "cpu5"
command = y,U,D,F,F,B,B,D,U,a,s
time = 1
[Command]
name = "cpu6"
command = z,U,D,F,B,F,B,D,U,b,s
time = 1
[Command]
name = "cpu7"
command = s,U,D,B,F,B,F,D,U,c,s
time = 1
[Command]
name = "cpu8"
command = b,U,D,B,F,F,B,D,U,x,s
time = 1
[Command]
name = "cpu9"
command = c,U,D,F,B,F,B,D,U,y,s
time = 1
[Command]
name = "cpuA"
command = y,U,D,B,F,B,F,D,U,z,s
time = 1
[Command]
name = "cpuB"
command = z,U,D,B,F,F,B,D,U,s,z
time = 1
[Command]
name = "cpuC"
command = U,D,F,F,B,B,D,U,a+x,s
time = 1
[Command]
name = "cpuD"
command = U,D,F,B,F,B,D,U,b+y,s
time = 1
[Command]
name = "cpuE"
command = U,D,B,F,B,F,D,U,c+z,s
time = 1
[Command]
name = "cpuF"
command = U,D,s,B,F,F,B,s,D,U,z
time = 1

;===========================================================================
; コマンド
;===========================================================================

;===========================================================================
; 超必殺技
;===========================================================================

;---------------------------------------------------------------------------
; あきら乱舞
;---------------------------------------------------------------------------
[Command]
name = "Akira_ranbu"
command = ~D, B, D, F, x+y
time = 20

[Command]
name = "Akira_ranbu"
command = ~D, B, D, F, z
time = 20

;---------------------------------------------------------------------------
; ファルコンアロー
;---------------------------------------------------------------------------
[Command]
name = "TripleKFPalm"
command = ~D, F, D, F, x
time = 20

[Command] 
name = "TripleKFPalm"
command = ~D, F, D, F, y
time = 20

;---------------------------------------------------------------------------
; バーニングハンマー
;---------------------------------------------------------------------------
[Command]
name = "SmashKFUpper"
command = ~D, B, D, B, x
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, B, D, B, y
time = 20

;===========================================================================
; 必殺技
;===========================================================================

;---------------------------------------------------------------------------
; あきらパンチ
;---------------------------------------------------------------------------
[Command]
name = "QCF_x"
command = ~D, F, x

[Command]
name = "QCF_y"
command = ~D, F, y

[Command]
name = "QCF_xy"
command = ~D, F, x+y

[Command]
name = "QCF_xy"
command = ~D, F, z

;---------------------------------------------------------------------------
; あきらアッパー
;---------------------------------------------------------------------------
[Command]
name = "upper_x"
command = ~D, B, x

[Command]
name = "upper_y"
command = ~D, B, y

[Command]
name = "upper_xy"
command = ~D, B, x+y

[Command]
name = "upper_xy"
command = ~D, B, z

;---------------------------------------------------------------------------
; あきらキック
;---------------------------------------------------------------------------
[Command]
name = "QCB_a"
command = ~D, F, a

[Command]
name = "QCB_b"
command = ~D, F, b

[Command]
name = "FF_ab"
command = ~D, F, a+b

[Command]
name = "FF_a"
command = ~D, F, a

[Command]
name = "FF_b"
command = ~D, F, b

[Command]
name = "FF_ab"
command = ~D, F, c

;===========================================================================
; 特殊動作
;===========================================================================

;---------------------------------------------------------------------------
; ハイジャンプ
;---------------------------------------------------------------------------
[Command]
name = "jump"    
command = ~D,$U
time = 18

;---------------------------------------------------------------------------
; 前避け
;---------------------------------------------------------------------------
[Command]
name = "away-f"    
command = /F,x+a
time = 10

;---------------------------------------------------------------------------
; 後ろ避け
;---------------------------------------------------------------------------
[Command]
name = "away-b"    
command = /B,x+a
time = 10

;---------------------------------------------------------------------------
; ダッシュ
;---------------------------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 15

;---------------------------------------------------------------------------
; バックステップ
;---------------------------------------------------------------------------
[Command]
name = "BB"     
command = B, B
time = 10

;---------------------------------------------------------------------------
; 受け身
;---------------------------------------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = z
time = 1

;---------------------------------------------------------------------------
; カウンター
;---------------------------------------------------------------------------
[Command]
name = "GC"
command = b+y
time = 3

;---------------------------------------------------------------------------
; 
;---------------------------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;===========================================================================
; ボタン設定（いじらない）
;===========================================================================

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
name = "holdx"
command = /$y
time = 1

[Command]
name = "holdy"
command = /$b
time = 1

;===========================================================================
;押しっぱなし設定（いじらない）
;===========================================================================

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

;===========================================================================
[Statedef -1]
;===========================================================================

;===========================================================================
; CPU用
;===========================================================================

[State -1]
type       = VarSet
triggerall = var(20) >= -1  
trigger1   = (command="cpu1")||(command="cpu2")
trigger2   = (command="cpu3")||(command="cpu4")
trigger3   = (command="cpu5")||(command="cpu6")
trigger4   = (command="cpu7")||(command="cpu8")
trigger5   = (command="cpu9")||(command="cpuA")
trigger6   = (command="cpuB")||(command="cpuC")
trigger7   = (command="cpuD")||(command="cpuE")
trigger8   = (command="cpuF")
var(20)    = 1

;---------------------------------------------------------------------------
; 立ちガード
;---------------------------------------------------------------------------
[State -1, 対地 立ちガード]
type  = ChangeState
value = 130
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = p2movetype = A
triggerall = p2statetype = S

trigger1   = P2BodyDist X = [40,90]
trigger1   = Random < 200  
       
trigger2   = P2BodyDist X = [-15,39]
trigger2   = enemy,hitdefattr = S, NA,SA,HA 
trigger2   = Random < 300    
               
trigger3   = enemy, numproj >= 1
trigger3   = P2BodyDist X > 70
trigger3   = Random < 400

;---------------------------------------------------------------------------
; しゃがみガード
;---------------------------------------------------------------------------
[State -1, しゃがみガード]
type  = ChangeState
value = 131
triggerall = p2movetype = A
triggerall = statetype != A
triggerall = var(20) = 1
triggerall = ctrl
trigger1   = p2statetype = C
trigger1   = P2BodyDist X = [40,85]
trigger1   = Random < 150
trigger2   = P2BodyDist X = [-20,39]
trigger2   = enemy,hitdefattr = C, NA,SA,HA 
trigger2   = Random < 450

;---------------------------------------------------------------------------
; 立ちガード対空
;---------------------------------------------------------------------------
[State -1, 対空 立ちガード]
type  = ChangeState
value = 130
triggerall = p2movetype = A
triggerall = statetype != A
triggerall = var(20) = 1
triggerall = ctrl
triggerall = p2statetype = A

trigger1   = P2BodyDist X = [40,90]
trigger1   = Random < 150

trigger2   = P2BodyDist X = [-40,39] 
trigger2   = Random < 200

trigger3   = P2BodyDist X = [-40,39]
trigger3   = enemy,hitdefattr = A, NA,SA,HA 
trigger3   = Random < 400

trigger4   = enemy, numproj >= 1
trigger4   = P2BodyDist X > 70
trigger4   = Random < 400

;---------------------------------------------------------------------------
; 空中ガード
;---------------------------------------------------------------------------
[State -1, 空中ガード]
type  = ChangeState
value = 132
triggerall = p2movetype = A          
triggerall = statetype = A           
triggerall = var(20) = 1             
triggerall = ctrl                    
triggerall = p2statetype = A         
trigger1   = P2BodyDist X = [40,80]  
trigger1   = Random < 150        
trigger2   = P2BodyDist X = [-20,39] 
trigger2   = Random < 200        

;---------------------------------------------------------------------------
; あきら乱舞（ゲージレベル3）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3100
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = P2bodydist X = [0,80]
triggerall = P2bodydist Y > -10
triggerall = p2statetype != L 
    
trigger1   = StateNo      = 210    
trigger1   = movecontact 
trigger1   = power >= 3000   
trigger1   = random <= 60

trigger2   = P2movetype != H
trigger2   = power >= 3000
trigger2   = random <= 40

trigger3   = stateno = 1010
trigger3   = power >= 3000
trigger3   = random <= 50


;---------------------------------------------------------------------------
; ファルコンアロー（ゲージレベル１）
;---------------------------------------------------------------------------
[State -1,01]
type       = ChangeState
value      = 3000
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = P2bodydist X = [0,80]
triggerall = P2bodydist Y > -10

trigger1   = p2statetype != L    
trigger1   = StateNo      = 210    
trigger1   = movecontact 
trigger1   = power >= 1500   
trigger1   = random <= 60

trigger2   = P2movetype != H
trigger2   = power >= 2000
trigger2   = random <= 40

trigger3   = stateno = 1010
trigger3   = power >= 1000
trigger3   = random <= 50

;---------------------------------------------------------------------------
; バーニングハンマー（ゲージレベル１）
;---------------------------------------------------------------------------
[State -1,02]
type       = ChangeState
value      = 3050
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = P2bodydist Y = [-80,0]

trigger1   = p2statetype != L 
trigger1   = P2bodydist X = [0,50]   
trigger1   = StateNo      = 410    
trigger1   = movecontact 
trigger1   = power > 1000   
trigger1   = random < 900

trigger2   = P2movetype != H
trigger2   = P2bodydist X = [0,20]
trigger2   = power > 2000
trigger2   = random < 80

trigger3   = p2movetype = A && ctrl
trigger3   = P2bodydist X = [0,20]
trigger3   = power >= 1500
trigger3   = random < 90
       
trigger4   = hitdefattr = SC, NA, SA
trigger4   = P2bodydist X = [0,20]
trigger4   = movehit && stateno != [3050,3100)
trigger4   = power > 1000
trigger4   = random < 100

;---------------------------------------------------------------------------
; 高速あきらキック（ゲージレベル１／３）
;---------------------------------------------------------------------------
[State -1,03]
type = ChangeState
value = 1070
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = power >= 800 
triggerall = p2bodydist X < 80
triggerall = P2BodyDist Y < -100
triggerall = random <= 50
triggerall = P2statetype != L

trigger1   = movetype != H

trigger2   = p2statetype = A

;---------------------------------------------------------------------------
; あきらキック（弱）
;---------------------------------------------------------------------------
[State -1,04]
type = ChangeState
value = 1050
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = prevstateno != [1050,1075]
triggerall = P2statetype != L

trigger1   = p2bodydist X = [0,19]
trigger1   = p2statetype = A
trigger1   = random < 300

;trigger2 = p2bodydist Y = [-30,0]

;---------------------------------------------------------------------------
; あきらキック（強）
;---------------------------------------------------------------------------
[State -1,05]
type = ChangeState
value = 1060
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = prevstateno != [1050,1075]
triggerall = P2statetype != L

trigger1   = p2bodydist X = [20,90]
trigger1   = P2statetype = A
trigger1   = p2movetype! = A
trigger1   = random < 100

trigger2   = StateNo      = 410 || stateno = 430  || stateno = 1020 
trigger2   = movehit = 1 
trigger2   = random < 500

trigger3   = p2bodydist X = [-20,80]
trigger3   = P2BodyDist Y = [-80,-15]
trigger3   = p2movetype! = A
trigger3   = random < 200

trigger4 = stateno = 240
trigger4 = movehit = 1 
trigger4 = random < 500

;---------------------------------------------------------------------------
; 高速あきらパンチ（ゲージレベル１／３）
;---------------------------------------------------------------------------
[State -1,06]
type = ChangeState
value = 1020
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = power >= 1000
triggerall = random <= 30
triggerall = P2statetype != L

trigger1   = movetype != H 
trigger1   = P2bodydist X < 80
trigger1   = power >= 1500

trigger2   = p2bodydist X < 85
trigger2   = p2bodydist Y > -10
trigger2   = movetype != A 

;---------------------------------------------------------------------------
; あきらパンチ（弱）
;---------------------------------------------------------------------------
[State -1,07]
type = ChangeState
value = 1000
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = random < 100

trigger1   = StateNo      = 200 || stateno = 210
trigger1   = movehit = 1 

;------------中距離対空
[State -1]
type = ChangeState
value = 1000
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = p2bodydist X < 50
triggerall = P2statetype != L
triggerall = random < 200

trigger1 = stateno = 430
trigger1 = movehit = 1

trigger2 = stateno = 230
trigger2 = movehit = 1

trigger3 = stateno = [200,450]
trigger3 = stateno != 440 
trigger3 = movecontact = 1
trigger3 = Enemy,Hitover = 0
trigger3 = random <= 400 + (movehit * 180)

trigger4 = P2movetype! = H

trigger5 = stateno = 225
trigger5 = movehit

trigger6 = stateno = [150,153]
trigger7 = enemy,Numproj 

;---------------------------------------------------------------------------
; あきらパンチ（強）
;---------------------------------------------------------------------------
[State -1,08]
type = ChangeState
value = 1010
triggerall = var(20) = 1 && roundstate = 2
triggerall = movecontact && prevstateno != [200,499]
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = random <= 100

trigger1 = stateno = 200 || stateno = 210 || stateno = 230 ||stateno = 400 || stateno = 410 || stateno = 430 
trigger2 = stateno = 130 || stateno = 131


[State -1,08]
type = ChangeState
value = 1010
triggerall = var(20) = 1
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = p2stateno != 130 || p2stateno != 131|| p2stateno != 132
triggerall = p2bodydist X < 70
triggerall = ctrl
triggerall = P2statetype != L
triggerall = random <= 100

trigger1 = stateno = 210
trigger1 = movehit = 1

trigger2 = stateno = 240
trigger2 = movehit = 1

trigger3 = stateno = [200,450]
trigger3 = stateno != 440 
trigger3 = stateno != 450 
trigger3 = movecontact = 1
trigger3 = Enemy,Hitover = 0
trigger3 = random >= 600 + (movehit * 180)

trigger4 = P2movetype! = H

;---------------------------------------------------------------------------
; 高速あきらアッパー (1/3 super bar)
;---------------------------------------------------------------------------
[State -1,09]
type = ChangeState
value = 1120
triggerall = var(20) = 1 && roundstate = 2
triggerall = power >= 1000 
triggerall = movetype != H
triggerall = ctrl
triggerall = P2statetype != L
triggerall = statetype != A
   
trigger1 = random < 100
trigger1 = P2dist X < 30
trigger1 = P2dist Y = [-10,0]

;---------------------------------------------------------------------------
; あきらアッパー（弱）
;---------------------------------------------------------------------------
[State -1,10]
type = ChangeState
value = 1100
triggerall = var(20) = 1 && roundstate = 2
triggerall = movecontact && prevstateno != [200,499]
triggerall = movetype != H
triggerall = ctrl
triggerall = P2statetype != L
triggerall = statetype != A

trigger1 = stateno = 200 || stateno = 210 || stateno = 230 ||stateno = 400 || stateno = 410 || stateno = 430 
trigger1 = random < 250

trigger2 = P2statetype = A
trigger2 = P2dist X < 30
trigger2 = random < 100

[State -1,10]
type = ChangeState
value = 1100
triggerall = var(20) = 1
triggerall = p2bodydist X < 50
triggerall = ctrl
triggerall = statetype != A
triggerall = movetype != H
triggerall = P2statetype != L
triggerall = random < 100

trigger1 = P2Movetype = A
trigger1 = P2stateno < 3000
trigger1 = P2BodyDist Y < -30

trigger2 = stateno = 2000
trigger2 = P2Movetype = A

trigger3 = stateno = [150,153]

trigger4 = stateno = 5120
trigger4 = P2Movetype = A

;---------------------------------------------------------------------------
; あきらアッパー（強）
;---------------------------------------------------------------------------
[State -1,11]
type = ChangeState
value = 1110
triggerall = var(20) = 1 && roundstate = 2 
triggerall = movecontact && prevstateno != [200,499]
triggerall = movetype != H
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = random <= 100

trigger1 = stateno = 200 || stateno = 210 || stateno = 230 ||stateno = 400 || stateno = 410 || stateno = 430 

trigger2 = P2statetype = A
trigger2 = P2dist X < 50

[State -1,11]
type = ChangeState
value = 1120
triggerall = var(20) = 1
triggerall = p2bodydist X < 50
triggerall = p2stateno != 130 || p2stateno != 131|| p2stateno != 132
triggerall = ctrl
triggerall = statetype != A
triggerall = movetype != H
triggerall = P2statetype != L
triggerall = random < 100

trigger1 = P2Movetype = A
trigger1 = P2stateno < 3000
trigger1 = P2BodyDist Y < -70

;---------------------------------------------------------------------------
; ダッシュ
;---------------------------------------------------------------------------
[State -1,12]
type = ChangeState
value = 100
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = stateno != 100
triggerall = life > 300

trigger1 = p2statetype = L
trigger1 = P2bodydist X > 50
trigger1 = random < 500

trigger2 = P2bodydist X > 80
trigger2 = random < 10

trigger3 = p2movetype! = A
trigger3 = random < 50

;---------------------------------------------------------------------------
; バックステップ
;---------------------------------------------------------------------------
[State -1,13]
type = ChangeState
value = 105
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype = S
triggerall = ctrl
triggerall = random <= 10
triggerall = statetype != A

trigger1 = p2movetype = A

;---------------------------------------------------------------------------
; 前回避
;---------------------------------------------------------------------------
[State -1,14]
type = ChangeState
value = 2200
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype = S
triggerall = ctrl
triggerall = random <= 3

trigger1 = p2movetype = A
trigger1 = P2bodydist X <= 50
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
; 後ろ回避
;---------------------------------------------------------------------------
[State -1,15]
type = ChangeState
value = 2250
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype = S
triggerall = ctrl
triggerall = random <= 3

trigger1 = p2movetype = A
trigger1 = P2bodydist X <= 80
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
; 投げ
;---------------------------------------------------------------------------
[State -1,16]
type = ChangeState
value = 800
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist X < 3
triggerall = random < 50

trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = stateno = 2000

;===========================================================================

;---------------------------------------------------------------------------
; 立ち弱パンチ
;---------------------------------------------------------------------------
[State -1,17]
type = ChangeState
value = 200
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2statetype = S

trigger1 = P2Movetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random < 75

trigger2 = stateno = 640
trigger2 = movehit = 1 
trigger2 = random < 80

;------------
[State -1,17]
type = ChangeState
value = 200
triggerall = var(20) = 1
triggerall = movecontact && prevstateno != [200,499]
triggerall = P2statetype != L
triggerall = p2statetype = S

trigger1 = (stateno = 200) && time > 6
trigger1 = random < 500

;---------------------------------------------------------------------------
; 立ち強パンチ
;---------------------------------------------------------------------------
[State -1,18]
type = ChangeState
value = 210
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2statetype = S

trigger1 = P2Movetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [150,225]

;------------
[State -1,18]
type = ChangeState
value = 210
triggerall = var(20) = 1
triggerall = movecontact && prevstateno != [200,499]
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2statetype = S

trigger1 = (stateno = 200) && time > 5 || (stateno = 230) && time > 6
trigger1 = random < 500

;---------------------------------------------------------------------------
; 立ち弱キック
;---------------------------------------------------------------------------
[State -1,19]
type = ChangeState
value = 230
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2statetype = S

trigger1 = P2Movetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [75,150]

trigger2 = stateno = 640
trigger2 = movehit = 1 
trigger2 = random < 100

;------------
[State -1,19]
type = ChangeState
value = 230
triggerall = var(20) = 1
triggerall = movecontact && prevstateno != [200,499]
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2statetype = S

trigger1 = (stateno = 200) && time > 7 || (stateno = 230) && time > 9
trigger1 = random < 500

;---------------------------------------------------------------------------
; 立ち強キック
;---------------------------------------------------------------------------
[State -1,20]
type = ChangeState
value = 240
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2statetype = S

trigger1 = P2Movetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [225,300]

trigger2 = (stateno = 200) || (stateno = 230)
trigger2 = movehit = 1 
trigger2 = random < 150

;------------
[State -1,20]
type = ChangeState
value = 240
triggerall = var(20) = 1
triggerall = movecontact && prevstateno != [200,499]
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L
triggerall = p2statetype = S

trigger1 = (stateno = 200) && time > 5 || (stateno = 230) && time > 6 
trigger1 = random < 500

;---------------------------------------------------------------------------
; しゃがみ弱パンチ
;---------------------------------------------------------------------------
[State -1,21]
type = ChangeState
value = 400
triggerall = var(20) = 1 && roundstate = 2
triggerall = p2statetype != A
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L

trigger1 = P2Movetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [300,375]

;---------------------------------------------------------------------------
; しゃがみ強パンチ
;---------------------------------------------------------------------------
[State -1,22]
type = ChangeState
value = 410
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L

trigger1   = p2bodydist X = [-20,20]
trigger1   = P2statetype = A
trigger1   = random < 300

trigger2   = p2bodydist X = [-15,15]
trigger2   = P2statetype = S
trigger2   = P2Movetype != A
trigger2   = random < 200

;------------
[State -1,22]
type = ChangeState
value = 410
triggerall = var(20) = 1
triggerall = movecontact && prevstateno != [200,499]
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L

trigger1 = (stateno = 400) || (stateno = 430)
trigger1 = (time > 9) || (movecontact && time > 5)
trigger1 = random < 200

;---------------------------------------------------------------------------
; しゃがみ弱キック
;---------------------------------------------------------------------------
[State -1,23]
type = ChangeState
value = 430
triggerall = var(20) = 1 && roundstate = 2
triggerall = p2statetype != A
triggerall = ctrl
triggerall = statetype != A
triggerall = P2BodyDist X < 40

trigger1 = random = [450,525]

trigger2 = P2movetype = A

;------------
[State -1,23]
type = ChangeState
value = 430
triggerall = var(20) = 1
triggerall = movecontact && prevstateno != [200,499]
triggerall = ctrl
triggerall = statetype != A
triggerall = P2statetype != L

trigger1 = (stateno = 400) || (stateno = 430)
trigger1 = (time > 9) || (movecontact && time > 5)  
trigger1 = random < 500

;---------------------------------------------------------------------------
; しゃがみ強キック
;---------------------------------------------------------------------------
[State -1,24]
type = ChangeState
value = 440
triggerall = var(20) = 1 && roundstate = 2
triggerall = p2statetype != A
triggerall = ctrl
triggerall = statetype != A

trigger1 = P2Movetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [525,600]

trigger2 = P2BodyDist X <= 20
trigger2 = P2statetype = L
trigger2 = random < 50

;------------
[State -1,24]
type = ChangeState
value = 440
triggerall = var(20) = 1
triggerall = movecontact && prevstateno != [200,499]
triggerall = ctrl
triggerall = statetype != A

trigger1 = (stateno = 400) || (stateno = 430)
trigger1 = (time > 9) || (movecontact && time > 5) 
trigger1 = random < 500

;---------------------------------------------------------------------------
; 空中強キック
;---------------------------------------------------------------------------
[State -1,25]
type = ChangeState
value = 640
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype = A
triggerall = random < 500

trigger1 = P2BodyDist X = [-20,50]

;---------------------------------------------------------------------------
; 空中弱パンチ
;---------------------------------------------------------------------------
[State -1,26]
type = ChangeState
value = 600
triggerall = var(20) = 1 && roundstate = 2
triggerall = ctrl
triggerall = statetype = A
triggerall = stateno = 600
triggerall = statetime >= 50

trigger1 = P2Movetype != A
trigger1 = P2BodyDist X <= 50
trigger1= random < 50

;------------
;[State -1,26]
;type = ChangeState
;value = 600
;triggerall = var(20) = 1
;triggerall = movecontact 

;trigger1 = stateno = 600
;trigger1 = random < 200

;---------------------------------------------------------------------------
; 空中強パンチ
;---------------------------------------------------------------------------
[State -1,27]
type = ChangeState
value = 610
triggerall = var(20) = 1 && roundstate = 2
triggerall = statetype = A
triggerall = ctrl
triggerall = random < 50

trigger1 = P2statetype = A
trigger1 = P2BodyDist X <= 50

;---------------------------------------------------------------------------
; 空中弱キック
;---------------------------------------------------------------------------
[State -1,28]
type = ChangeState
value = 630
triggerall = var(20) = 1 && roundstate = 2

trigger1 = P2Movetype != A
trigger1 = ctrl
trigger1 = statetype = A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [150,300]

;---------------------------------------------------------------------------
; パワー溜め
;---------------------------------------------------------------------------
[State -1,29]
type = ChangeState
value = 2000
triggerall = var(20) = 1 && roundstate = 2
triggerall = power < 3000
triggerall = Frontedgebodydist > 200
triggerall = Pos y = 0
triggerall = p2statetype != A || p2statetype != S || p2statetype != C
triggerall = p2movetype != A
triggerall = P2bodydist X > 200
triggerall = statetype != A
triggerall = ctrl

trigger1 = random < 80
trigger1 = statetype = S
trigger1 = P2MoveType = H
trigger1 = p2life >= 500
trigger1 = life >= 500

;---------------------------------------------------------------------------
; 挑発
;---------------------------------------------------------------------------
[State -1,30]
type = ChangeState
value = 195
triggerall = var(20) = 1 && roundstate = 2
triggerall = Frontedgebodydist > 130
triggerall = Pos y = 0
triggerall = statetype != A
triggerall = ctrl

trigger1 = statetype = S
trigger1 = P2MoveType = H
trigger1 = p2life >= 500
trigger1 = life >= 500
trigger1 = random < 10



;===========================================================================
; 人間用
;===========================================================================

;---------------------------------------------------------------------------
; あきら乱舞（ゲージレベル3）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3100
triggerall = command = "Akira_ranbu"
triggerall = power >= 3000
triggerall = var(20) = 0

trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050]
trigger2 = stateno != [3060,3061]
trigger2 = movecontact

;---------------------------------------------------------------------------
; ファルコンアロー（ゲージレベル１）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3000
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
triggerall = var(20) = 0

trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050]
trigger2 = stateno != [3060,3061]
trigger2 = movecontact

;---------------------------------------------------------------------------
; バーニングハンマー（ゲージレベル１）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 3050
triggerall = command = "SmashKFUpper"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(20) = 0

trigger1 = statetype = S
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050]
trigger2 = stateno != [3060,3061]
trigger2 = movecontact

;===========================================================================
;連続技を決める変数。変数にすると便利みたいです。
;使いたい人は使うと良いでしょう。

[State -1] ;初期化
type = VarSet
trigger1 = 1
var(1) = 0

[State -1] ;キャンセル可なステートナンバーを決定
type = VarSet
triggerall = movetype != H        
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440
trigger2 = movecontact
var(1) = 1
ignorehitpause = 1

;===========================================================================

;---------------------------------------------------------------------------
; 高速あきらキック（ゲージレベル１／３）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1070
triggerall = command = "FF_ab"
triggerall = power >= 330
triggerall = var(20) = 0 
trigger1 = movetype != H
trigger1 = var(1)

;---------------------------------------------------------------------------
; あきらキック（弱）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1050
triggerall = command = "FF_a"
triggerall = var(20) = 0 
trigger1 = movetype != H
trigger1 = var(1)

;---------------------------------------------------------------------------
; あきらキック（強）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1060
triggerall = command = "FF_b"
triggerall = var(20) = 0 
trigger1 = movetype != H
trigger1 = var(1)

;---------------------------------------------------------------------------
; 高速あきらパンチ（ゲージレベル１／３）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1020
triggerall = command = "QCF_xy"
triggerall = power >= 330
triggerall = var(20) = 0   
trigger1 = movetype != H
trigger1 = var(1) 

;---------------------------------------------------------------------------
; あきらパンチ（弱）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
triggerall = var(20) = 0 
trigger1 = movetype != H
trigger1 = var(1)

;---------------------------------------------------------------------------
; あきらパンチ（強）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
triggerall = var(20) = 0 
trigger1 = movetype != H
trigger1 = var(1)

;---------------------------------------------------------------------------
; 高速あきらアッパー (1/3 super bar)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1120
triggerall = command = "upper_xy"
triggerall = power >= 330
triggerall = var(20) = 0    
trigger1 = movetype != H
trigger1 = var(1)

;---------------------------------------------------------------------------
; あきらアッパー（弱）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1100
triggerall = command = "upper_x"
triggerall = var(20) = 0 
trigger1 = movetype != H
trigger1 = var(1)

;---------------------------------------------------------------------------
; あきらアッパー（強）
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1110
triggerall = command = "upper_y"
triggerall = var(20) = 0 
trigger1 = movetype != H
trigger1 = var(1)

;---------------------------------------------------------------------------
; ダッシュ
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = var(20) = 0 
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; バックステップ
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = var(20) = 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; パワー溜め
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2000
triggerall = power != 3000
triggerall = var(20) = 0
trigger1 = command = "holdx"
trigger1 = command = "holdy"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; 挑発
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = var(20) = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; 前回避
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2200
triggerall = command = "away-f"
triggerall = statetype = S
triggerall = var(20) = 0
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
; 後ろ回避
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2250
triggerall = command = "away-b"
triggerall = statetype = S
triggerall = var(20) = 0
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;---------------------------------------------------------------------------
; 投げ
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(20) = 0
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; カウンター
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 2300
triggerall = Command = "GC"
triggerall = Power >= 1000
triggerall = statetype = S
trigger1 = StateNo = 150
trigger2 = StateNo = 151 
trigger3 = stateno = 152
trigger4 = stateno = 153

;===========================================================================

;---------------------------------------------------------------------------
; 立ち弱パンチ
;---------------------------------------------------------------------------
[State -1,p]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = var(20) = 0

trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
; 立ち強パンチ
;---------------------------------------------------------------------------
[State -1,p]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(20) = 0

trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
; 立ち弱キック
;---------------------------------------------------------------------------
[State -1,k]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(20) = 0

trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
; 立ち強キック
;---------------------------------------------------------------------------
[State -1,k]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(20) = 0

trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
; しゃがみ弱パンチ
;---------------------------------------------------------------------------
[State -1,p]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(20) = 0

trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; しゃがみ強パンチ
;---------------------------------------------------------------------------
[State -1,p]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(20) = 0

trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
; しゃがみ弱キック
;---------------------------------------------------------------------------
[State -1,k]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(20) = 0

trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
; しゃがみ強キック
;---------------------------------------------------------------------------
[State -1,k]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(20) = 0

trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
; 空中弱パンチ
;---------------------------------------------------------------------------
[State -1,p]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = var(20) = 0

trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 50

;---------------------------------------------------------------------------
; 空中強パンチ
;---------------------------------------------------------------------------
[State -1,p]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = var(20) = 0

trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

;---------------------------------------------------------------------------
; 空中弱キック
;---------------------------------------------------------------------------
[State -1,k]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = var(20) = 0

trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; 空中強キック
;---------------------------------------------------------------------------
[State -1,k]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = var(20) = 0

trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact


