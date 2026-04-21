
;================================
;Ramon X CMD FILE 
;================================

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
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------

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

;-| Hold Button |----------------------------------------------------------

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holds"
command = /s
time = 1

;-| CPU |--------------------------------------------------------------

[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "s2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holds2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+a
time = 1

;=================[Other Stuff]======================

[Command]
name = "taunt"
command = s
time = 1

[Command]
name = "shingo"
command = a+y
time = 1

;=====================[SHORTCUTS]======================
;NOTE: DELETE THIS GROUP OF CMDS TO REMOVE SHORTCUT DMS
;      OR MODIFY THEM TO USE ROLL/STRIKER/CD.

[Command]
name = "tigerx"
command = z
time = 1

[Command]
name = "tiger"
command = z
time = 1

[Command]
name = "elx"
command = c
time = 1

[Command]
name = "el1"
command = c
time = 1


;=================[Hyper Moves]======================


[Command]
name = "tigerx"
command = ~DF, B, DF, B, x+y
time = 60

[Command]
name = "tigerx"
command = ~F,DF,D,DB,B,F,DF,D,DB,B, x+y
time = 60

[Command]
name = "tiger"
command = ~DF, B, DF, B, x
time = 60

[Command]
name = "tiger"
command = ~DF, B, DF, B, y
time = 60

[Command]
name = "tiger"
command = ~F,DF,D,DB,B,F,DF,D,DB,B, x
time = 60

[Command]
name = "tiger"
command = ~F,DF,D,DB,B,F,DF,D,DB,B, y
time = 60

[Command]
name = "el1"
command = ~D,DB,B,D,DF,F, a
time = 30

[Command]
name = "el2"
command = ~D,DB,B,D,DF,F, b
time = 30

[Command]
name = "elx"
command = ~D,DB,B,D,DF,F, a+b
time = 30

;=================[Special Moves]====================

[Command]
name = "load"
command = B,D,DB, a
time = 25

[Command]
name = "load"
command = B,D,DB, b
time = 25

[Command]
name = "knife1"
command = D,DB,B, a
time = 25

[Command]
name = "knife2"
command = D,DB,B, b
time = 25

[Command]
name = "sobat1"
command = F,D,DF, a
time = 25

[Command]
name = "sobat2"
command = F,D,DF, b
time = 25

[Command]
name = "step1"
command = ~D,DB,B, x
time = 25

[Command]
name = "step2"
command = ~D,DB,B, y
time = 25

[Command]
name = "chance"
command = ~B,DB,D,DF,F,x
time = 30

[Command]
name = "chance"
command = ~DB,F,x
time = 20

[Command]
name = "chance"
command = ~B,DB,D,DF,F,y
time = 30

[Command]
name = "chance"
command = ~DB,F,y
time = 20

[Command]
name = "sault1"
command = ~B,DB,D,DF,F,a
time = 30

[Command]
name = "sault1"
command = ~DB,F,a
time = 20

[Command]
name = "sault2"
command = ~B,DB,D,DF,F,b
time = 30

[Command]
name = "sault2"
command = ~DB,F,b
time = 20

[Command]
name = "stop"
command = x+y
time = 1

[Command]
name = "elbow"
command = ~D,DB,B, a
time = 25

[Command]
name = "elbow"
command = ~D,DB,B, b
time = 25

[Command]
name = "pick"
command = ~D,D, x
time = 25

[Command]
name = "pick"
command = ~D,D, y
time = 25

;=================[Special Moves]==================

;--------------------------------------------
;RUN 
[Command]
name = "FF"
command = F, F
time = 15

;Back
[Command]
name = "BB"
command = B, B
time = 10

;-|Button Combination|-----------------------------------------------

[Command]
name = "max"
command = x+y+a
time = 1

[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "dodge"
command = x+y
time = 1

[Command]
name = "knockdown"
command = y+b
time = 1

[Command]
name = "roll"
command = x+a
time = 1

[Command]
name = "schange"
command = x+b
time = 1

[Command]
name = "ac"
command = a+c
time = 1

[Command]
name = "bc"
command = b+c
time = 1

[Command]
name = "abc"
command = a+b+c
time = 1

[Command]
name = "yb"
command = y+b
time = 1

[Command]
name = "xa"
command = x+a
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "xz"
command = x+z
time = 1

[Command]
name = "yz"
command = y+z
time = 1

;POWER UP
[Command]
name = "xyz"
command = x+y+z
time = 1

[Command]
name = "armor"
command = a+b+y
time = 1

[Command]
name = "counter"
command = x+y+b
time = 1

;------------------------------------------------------------------------------
;HOLD BUTTONS

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
name = "hold_s"
command = /$s
time = 1

;==================================================================================
;DIR

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

;==================================================================================
;HOLD DIR

[Command]
name = "/DB"
command = /DB
time = 1

;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;HOLD DIR + BUTTON

[Command]
name = "holdfwd_x"
command = /$F, x
time = 1

[Command]
name = "holdfwd_y"
command = /$F, y
time = 1

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_x"
command = /F,x

[Command]
name = "fwd_z"
command = /F,z

[Command]
name = "back_z"
command = /B,z

[Command]
name = "back_a"
command = /B,a

[Command]
name = "back_x"
command = /B,x

[Command]
name = "fwd_y"
command = /F,y

[Command]
name = "back_y"
command = /B,y

[Command]
name = "down_y"
command = /D, y

[Command]
name = "down_b"
command = /D, b

[Command]
name = "down_z"
command = /D, z

;=========================================================
; -----------------<> COMMAND CODES <>------------------
;=========================================================

[Statedef -1]

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742

;=========================
; COMBO VAR 
;=========================

;========================================
[State -1, Combo1]
type = Varset
trigger1 = 1
var(39) = 0

[State -1, Combo2]
type = Varset
trigger1 = stateno = 200 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger2 = stateno = 210 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger3 = stateno = 230 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger4 = stateno = 250 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger5 = stateno = 270 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger6 = stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0
trigger7 = stateno = 440 && animelemtime(3) > 0 && animelemtime(4) < 0
trigger8 = stateno = 460 && animelemtime(6) > 0 && animelemtime(7) < 0
trigger9 = stateno = 470 && animelemtime(5) > 0 && animelemtime(7) < 0
ignorehitpause = 1
var(39) = var(39) | 1

;======================
;COUNTER MODE COMBO VAR
;======================

[State -1, C.Combo1]
type = Varset
triggerall = var(40) > 0 || var(21) = 0
trigger1 = 1
var(42) = 0

[State -1, C.Combo2]
type = Varset
triggerall = var(40) > 0 || var(21) = 0
triggerall = movecontact
trigger1 = stateno = 1000 && animelemtime(10) > 0 
trigger2 = stateno = 1010 && animelemtime(10) > 0
trigger3 = stateno = 2500 && animelemtime(2) > 0 && animelemtime(5) < 0
trigger4 = stateno = 3100 && animelemtime(7) > 0
ignorehitpause = 1
var(42) = var(42) | 1

[State -1, C.Combo3]
type = Varset
triggerall = var(40) > 0 || var(21) = 0
trigger1 = stateno = 1100 && animelemtime(2) > 0 
trigger2 = stateno = 1150 && animelemtime(2) > 0
ignorehitpause = 1
var(42) = var(42) | 1

[State -1, KOF2K1 Special Cancel]
type = Varset
trigger1 = var(42) = 1
;trigger1 = var(21) = 5
ignorehitpause = 1
var(45) = var(45)|1

[State -1, KOF2K1 Special Cancel]
type = Varset
trigger1 = var(42) = 0
var(45) = 0


;====================================================
;------|HYPER MOVES|-----
;========================
;SDM Tiger Spin
[State -1, SDM Tiger Spin]
type = ChangeState
value = 1900
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "tigerx"
trigger1 = power >= 2000
trigger1 = statetype != A && ctrl
trigger2 = power >= 2000
trigger2 = var(39) = 1
trigger3 = power >= 3000
trigger3 = var(42) = 1


;Tiger Spin
[State -1, Tiger Spin]
type = ChangeState
value = 1700
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "tiger"
trigger1 = power >= 1000 || var(40) > 0
trigger1 = statetype != A && ctrl
trigger2 = power >= 1000 || var(40) > 0
trigger2 = var(39) = 1
trigger3 = var(40) > 0 && var(42) = 1
trigger4 = var(42) = 1 && power >= 2000

; El Diablo Amarillo Ramon SDM
[State -1, AmarilloX]
type = ChangeState
value = 2600
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "elx"
trigger1 = power >= 2000
trigger1 = statetype != A && ctrl
trigger2 = power >= 2000
trigger2 = var(39) = 1
trigger3 = power >= 3000
trigger3 = var(45) = 1

; El Diablo Amarillo Ramon 1
[State -1, Amarillo1]
type = ChangeState
value = 2100
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "el1"
trigger1 = power >= 1000 || var(40) > 0
trigger1 = statetype != A && ctrl
trigger2 = power >= 1000 || var(40) > 0
trigger2 = var(39) = 1
trigger3 = var(40) > 0 && var(42) = 1
trigger4 = var(42) = 1 && power >= 2000

; El Diablo Amarillo Ramon 2
[State -1, Amarillo2]
type = ChangeState
value = 2200
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "el2"
trigger1 = power >= 1000 || var(40) > 0
trigger1 = statetype != A && ctrl
trigger2 = power >= 1000 || var(40) > 0
trigger2 = var(39) = 1
trigger3 = var(40) > 0 && var(42) = 1
trigger4 = var(42) = 1 && power >= 2000

;============================================
; SPECIAL MOVES
;============================================

;Tiger Load
[State -1, Tiger Load]
type = ChangeState
value = 3100
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "load"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1

;Rolling Sobat 1
[State -1, SOBAT 1]
type = ChangeState
value = 1000
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "sobat1"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1

;Rolling Sobat 2
[State -1, SOBAT 2]
type = ChangeState
value = 1010
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "sobat2"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1

;Feint Step 1
[State -1, STEP 1]
type = ChangeState
value = 1100
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "step1"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1

;Feint Step 2
[State -1, STEP 2]
type = ChangeState
value = 1150
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "step2"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1

;Tiger Neck Chancery
[State -1, Chancery]
type = ChangeState
value = 1200
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "chance"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1

;SomerSault1
[State -1, Sault1]
type = ChangeState
value = 1500
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "sault1"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1

;SomerSault2
[State -1, Sault2]
type = ChangeState
value = 1505
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "sault2"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1

;Jack Knife1
[State -1, Knife1]
type = ChangeState
value = 2550
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "knife1"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1

;Jack Knife2
[State -1, Knife2]
type = ChangeState
value = 2570
ctrl = 0
triggerall = var(9) != 1
triggerall = command = "knife2"
trigger1 = statetype != A && ctrl
trigger2 = var(39) = 1

;Sentom Bomb
[State -1, Bomb]
type = ChangeState
triggerall = command = "a" || command =  "b"
trigger1 = statetype = A && ctrl
trigger1 = command = "holdback"
trigger1 = BackEdgeBodyDist <= 0
trigger2 = statetype = A && ctrl
trigger2 = command = "holdfwd"
trigger2 = FrontEdgeBodyDist <= 10
value = 2580
ctrl = 0


;========================
; GROOVE CMDS
;========================

;COUNTER
[State -1]
type = ChangeState
value = 4850
;triggerall = var(9) != 1
triggerall = command = "holdx" && command = "holdy" && command = "holda"
triggerall = numhelper(4805) <= 0 && power >= 3000
triggerall = var(40) <= 0
trigger1 = (stateno = [0,12]) && ctrl

;ARMOR
[State -1]
type = ChangeState
value = 4800
;triggerall = var(9) != 1
triggerall = command = "holdy" && command = "holdb" && command = "holda"
triggerall = numhelper(4705) <= 0 && power >= 3000
triggerall = var(40) <= 0
trigger1 = (stateno = [0,12]) && ctrl

;---------------------------------
[State -1,rollB Counter]
type = ChangeState
value = 710
;triggerall = var(9) != 1
triggerall = command = "roll" && command = "holdback"
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,RollF counter]
type = ChangeState
value = 711
;triggerall = var(9) != 1
triggerall = command = "roll" && command = "holdfwd"
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,CD counter]
type = ChangeState
value = 712
;triggerall = var(9) != 1
triggerall = command = "knockdown"
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

[State -1,rollB]
type = ChangeState
value = 701
;triggerall = var(9) != 1
triggerall = command = "roll" && command = "holdback"
triggerall = life > 0 && statetype != A
trigger1 = ctrl

[State -1,RollF] 
type = ChangeState
value = 700
;triggerall = var(9) != 1
triggerall = command = "roll"
triggerall = life > 0 && statetype != A
trigger1 = ctrl

;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;-----------------
;STRIKER CALLS
;-------------------
[State -1,Striker '99]
type = ChangeState
value = 3900
;triggerall = var(9) != 1
triggerall = command = "shingo"
triggerall = var(31) = 1 && var(34) > 0 && roundstate = 2 && numhelper(4000) <= 0
trigger1   = statetype != A && ctrl

[State -1, A_iori]
type = Helper
;triggerall = var(9) != 1
triggerall = command = "shingo"
triggerall = var(43) = 0 && var(31) = 1 && var(34) > 0
trigger1 = roundstate = 2 && numhelper(4000) <= 0
trigger1 = (stateno != [300,350]) && (stateno != [1700,2205]) && (stateno != [2600,2800])
trigger1 = (stateno != [700,711]) && stateno != 195 && (stateno != [4800, 4850]) 
trigger1 = movetype != H && stateno != 0
ignorehitpause = 1
helpertype = normal
id      = 4000
stateno = 4000
name = "Aiori '2K"
postype = p1
pos = -300,floor(-(pos y))
keyctrl = 0
ownpal = 1

[State -1, Vanessa]
type = Helper
;triggerall = var(9) != 1
triggerall = command = "shingo"
triggerall = var(43) = 1 && var(31) = 1 && var(34) > 0
trigger1 = roundstate = 2 && numhelper(4000) <= 0
trigger1 = (stateno != [300,350]) && (stateno != [1700,2205]) && (stateno != [2600,2800])
trigger1 = (stateno != [700,711]) && stateno != 195  && (stateno != [4800, 4850]) 
trigger1 = movetype != H && stateno != 0
ignorehitpause = 1
helpertype = normal
id      = 4000
stateno = 7000
name = "Vanessa"
postype = back
pos = -60,0
keyctrl = 0
ownpal = 1

[State -1, Seth]
type = Helper
;triggerall = var(9) != 1
triggerall = command = "shingo"
triggerall = var(43) = 2 && var(31) = 1 && var(34) > 0
trigger1 = roundstate = 2 && numhelper(4000) <= 0
trigger1 = (stateno != [300,350]) && (stateno != [1700,2205]) && (stateno != [2600,2800])
trigger1 = (stateno != [700,711]) && stateno != 195  && (stateno != [4800, 4850]) 
trigger1 = movetype != H && stateno != 0
ignorehitpause = 1
helpertype = normal
id      = 4000
stateno = 7500
name = "Seth"
postype = back
pos = -20,-80
keyctrl = 0
ownpal = 1

;=======================================
;Striker Change
[State -1, A. Striker]
type = Helper
trigger1 = command = "schange"
trigger1 = numhelper(7110) <= 0 && (stateno != [4800,4850]) && stateno != 707 && movetype != H 
ignorehitpause = 1
helpertype = normal
id      = 7110
stateno = 7110
name = "Striker Change"
postype = p1
pos = -999,-999
keyctrl = 0
ownpal = 1
;=======================================

;=============================================================================
;-------------[Throws]------------------------
;===========================================================================
;GrabY
[State -1, GrabY ]
type = ChangeState
value = 300
triggerall = command = "y"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 5 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;GrabB
[State -1, GrabB ]
type = ChangeState
value = 310
triggerall = command = "b"
triggerall = statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 3 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 5 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)
;===========================================================================

[State -1,Knockdown]
type = ChangeState
value = 280
;triggerall = var(9) != 1
triggerall = command = "knockdown" 
trigger1 = statetype = S && ctrl 
;-------------------------------------------
[State -1,JCD]
type = ChangeState
value = 660
;triggerall = var(9) != 1
triggerall = command = "knockdown"
trigger1 = statetype = A && ctrl
;-------------------------------------------

;========================[BASIC ATTACKS ]==================================

;Lp Close
[State -1,Low Punch CLose]
type = ChangeState
value = 210
triggerall = var(9) != 1
triggerall = command = "x"
triggerall = p2bodydist x < 15
trigger1 = statetype = S && ctrl
trigger2 = stateno = 210 && animelemtime(2) > 1 
trigger2 = command != "holddown"
trigger3 = stateno = 400 && animelemtime(2) >= 0 
trigger3 = command != "holddown"

;Lp
[State -1,Lowpunch]
type = ChangeState
value = 200
triggerall = var(9) != 1
triggerall = command = "x"
triggerall = p2bodydist x >= 15
trigger1 = statetype = S && ctrl
trigger2 = stateno = 210 && animelemtime(2) > 2 
trigger2 = command != "holddown"
trigger3 = stateno = 200 && animelemtime(3) > 1 
trigger3 = command != "holddown"
trigger4 = stateno = 400 && animelemtime(2) >= 0 
trigger4 = command != "holddown"

;lk close
[State -1,LKClose]
type = ChangeState
value = 230
triggerall = var(9) != 1
triggerall = command = "a"
triggerall = p2bodydist x <= 22
trigger1 = statetype = S && ctrl

;lk
[State -1,LK]
type = ChangeState
value = 220
triggerall = var(9) != 1
triggerall = command = "a"
triggerall = p2bodydist x > 20
trigger1 = statetype = S && ctrl
trigger2 = stateno = 230 && animelemtime(2) > 1 
trigger2 = command !=  "holddown"
trigger3 = stateno = 220 && animelemtime(5) > 1 
trigger3 = command != "holddown"
trigger4 = stateno = 400 && animelemtime(2) > 0
trigger4 = command != "holddown"

;Hp close
[State -1,HPClose]
type = ChangeState
value = 250
triggerall = var(9) != 1
triggerall = command = "y"
triggerall = p2bodydist x <= 30
trigger1 = statetype = S && ctrl

;Hp 
[State -1,HP]
type = ChangeState
value = 240
triggerall = var(9) != 1
triggerall = command = "y"
triggerall = p2bodydist x > 30
triggerall = stateno != 250 && stateno != 240
trigger1 = statetype = S && ctrl

;Hk close
[State -1,HKClose]
type = ChangeState
value = 270
triggerall = var(9) = 0
triggerall = command = "b"
triggerall = p2bodydist x <= 30
trigger1 = statetype = S && ctrl

;Hk 
[State -1,HK]
type = ChangeState
value = 260
triggerall = var(9) != 1
triggerall = command = "b"
trigger1 = statetype = S && ctrl

[State -1,CLP]
type = ChangeState
value = 400
;triggerall = var(9) != 1
triggerall = command = "x"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 && animelemtime(2) > 0
trigger2 = command = "holddown"

[State -1,CFLK]
type = ChangeState
value = 475
;triggerall = var(9) != 1
triggerall = command = "a" && command = "holdfwd"
trigger1 = statetype = C && ctrl

[State -1,CFLK]
type = ChangeState
value = 470
triggerall = var(9) != 1
triggerall = command = "a" && command = "holdfwd"
trigger1 = stateno = 200 && animelemtime(3) > 0 && animelemtime(4) < 0 && command = "holddown"
trigger2 = stateno = 210 && animelemtime(2) > 0 && animelemtime(3) < 0 && command = "holddown"
trigger3 = stateno = 230 && animelemtime(2) > 0 && animelemtime(3) < 0 && command = "holddown"
trigger4 = stateno = 250 && animelemtime(3) > 0 && animelemtime(4) < 0 && command = "holddown"
trigger5 = stateno = 270 && animelemtime(3) > 0 && animelemtime(4) < 0 && command = "holddown"
trigger6 = stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0 && command = "holddown"
trigger7 = stateno = 440 && animelemtime(3) > 0 && animelemtime(4) < 0 && command = "holddown"
trigger8 = stateno = 460 && animelemtime(6) > 0 && animelemtime(8) < 0 && command = "holddown"

[State -1,CLK]
type = ChangeState
value = 420
;triggerall = var(9) != 1
triggerall = command = "a"
trigger1 = statetype = C && ctrl

[State -1,CHP]
type = ChangeState
value = 440
triggerall = var(9) != 1
triggerall = command = "y"
trigger1 = statetype = C && ctrl

[State -1,CHK]
type = ChangeState
value = 460
;triggerall = var(9) != 1
triggerall = command = "b"
trigger1 = statetype = C && ctrl

;----------------------------------------

[State -1,JLKD]
type = ChangeState
value = 620
triggerall = var(9) != 1
triggerall = command = "a"
triggerall = statetype = A
trigger1 = vel x != 0 && ctrl
trigger2 = stateno = 201 && ctrl

[State -1,JHKD]
type = ChangeState
value = 650
triggerall = var(9) != 1
triggerall = command = "b"
triggerall = statetype = A
trigger1 = vel x != 0 && ctrl
trigger2 = stateno = 201 && ctrl

[State -1,JLPD]
type = ChangeState
value = 605
triggerall = var(9) != 1
triggerall = command = "x"
triggerall = statetype = A
trigger1 = vel x != 0 && ctrl
trigger2 = stateno = 201 && ctrl

[State -1,JHPD]
type = ChangeState
value = 635
triggerall = var(9) != 1
triggerall = command = "y"
triggerall = statetype = A
trigger1 = vel x != 0 && ctrl
trigger2 = stateno = 201 && ctrl

[State -1,JLP]
type = ChangeState
value = 600
triggerall = var(9) != 1
triggerall = command = "x"
trigger1 = vel x = 0 && ctrl
trigger1 = statetype = A && ctrl

[State -1,JHPV]
type = ChangeState
value = 630
triggerall = var(9) != 1
triggerall = command = "y"
trigger1 = vel x = 0 && statetype = A && ctrl

[State -1,JLKV]
type = ChangeState
value = 610
;triggerall = var(9) != 1
triggerall = command = "a"
triggerall = vel x = 0
trigger1 = statetype = A && ctrl

[State -1,JHKV]
type = ChangeState
value = 640
;triggerall = var(9) != 1
triggerall = command = "b"
triggerall = vel x = 0
trigger1 = statetype = A && ctrl

[State -1,TAUNT]
type = ChangeState
value = 195
triggerall = var(9) != 1
trigger1 = command = "taunt"
trigger1 = statetype != A && stateno != 805 && ctrl

[State -1,RUN]
type = ChangeState
value = 100
triggerall = var(9) != 1
triggerall = command = "FF"
trigger1 = statetype = S && ctrl

[State -1,HOPBACK]
type = ChangeState
value = 105
triggerall = var(9) != 1
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl

;=====================================================================================
;-----[ AI MODIFICATION ]-----
;=====================================================================================
;Rolling Sobat 
[State -1, SOBAT ]
type = ChangeState
value = 1010
ctrl = 0
triggerall = var(9) = 1
trigger1 = frontedgebodydist <= 90 && stateno = 470 && animelemtime(5) > 0 && animelemtime(7) < 0 && movehit
trigger2 = (p2bodydist x = [0,70]) && random <= 500 && (p2stateno = [1030,1040]) && statetype != A && ctrl

;Tiger Spin SDM
[State -1, SpinX]
type = ChangeState
value = 1900
ctrl = 0
triggerall = var(9) = 1
triggerall = (power >= 2000 && statetype != A) 
triggerall = ifelse(p2movetype = H, p2stateno != 2505, 1)
trigger1 = p2bodydist x <= 15 && p2statetype != A && p2statetype != L
trigger1 = statetype != A && ctrl && var(5) <= 0
trigger2 = p2bodydist x <= 30 && p2statetype != A && p2statetype != L
trigger2 = stateno = 470 && animelemtime(5) > 0 && animelemtime(7) < 0 && movehit
trigger3 = p2bodydist x <= 15 && p2statetype != A && p2statetype != L
trigger3= stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0 && movehit
trigger4 = p2bodydist x <= 20 && p2statetype != A && p2statetype != L
trigger4= stateno = 440 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit
trigger5 = power >= 3000 && stateno = 3100 && animelemtime(7) > 0

;Tiger Spin
[State -1, Spin]
type = ChangeState
value = 1700
ctrl = 0
triggerall = var(9) = 1
triggerall = ((power >= 1000 || var(40) >0) && statetype != A) 
triggerall = ifelse(p2movetype = H, p2stateno != 2505, 1)
trigger1 = p2bodydist x <= 15 && p2statetype != A && p2statetype != L
trigger1 = statetype != A && ctrl && var(5) <= 0
trigger2 = p2bodydist x <= 30 && p2statetype != A && p2statetype != L
trigger2 = stateno = 470 && animelemtime(5) > 0 && animelemtime(7) < 0 && movehit
trigger3 = p2bodydist x <= 15 && p2statetype != A && p2statetype != L
trigger3= stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0 && movehit
trigger4 = p2bodydist x <= 20 && p2statetype != A && p2statetype != L
trigger4= stateno = 440 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit
trigger5 = (power >= 2000 || var(40) > 0) && stateno = 3100 && animelemtime(7) > 0

;Tiger Neck Chancery
[State -1, Chancery]
type = ChangeState
value = 1200
ctrl = 0
triggerall = var(9) = 1
triggerall = ifelse(p2movetype = H, p2stateno != 2505, 1)
trigger1 = p2bodydist x <= 15 && p2statetype != A && p2statetype != L
trigger1 = statetype != A && ctrl && var(5) <= 0
trigger2 = p2bodydist x <= 30 && p2statetype != A && p2statetype != L
trigger2 = stateno = 470 && animelemtime(5) > 0 && animelemtime(7) < 0 && movehit
trigger3 = p2bodydist x <= 15 && p2statetype != A && p2statetype != L
trigger3= stateno = 400 && animelemtime(2) > 0 && animelemtime(3) < 0 && movehit
trigger4 = p2bodydist x <= 20 && p2statetype != A && p2statetype != L
trigger4= stateno = 440 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit

;---------------------------------------------------------------------------
; High percent air guard
[State -1]
type = ChangeState
value = 132
triggerall = p2movetype = A;access only when opponent attack
triggerall = P2bodydist X <= 40;access only when near
triggerall = P2life != 0;don't player when opponent had die
triggerall = statetype = A;perform when in air
triggerall = random <= 500;high percent
triggerall = var(9) = 1;only AI can access
triggerall = ctrl;make sure AI had control
triggerall = stateno != 132
trigger1 = p2statetype = A

;-----------------------------------------------------------
; High percent stand guard
[State -1]
type = ChangeState
value = 130
triggerall = p2movetype = A;access only when opponent attack
triggerall = P2bodydist X <= 40;access only when near
triggerall = random <= 700;high percent
triggerall = statetype != A;perform when not in air
triggerall = var(9) = 1;only AI can access
triggerall = ctrl;make sure AI had control
triggerall = stateno != 120
trigger1 = p2statetype = S

[State -1]
type = ChangeState
value = 130
triggerall = p2movetype = A;access only when opponent attack
triggerall = P2bodydist X <= 40;access only when near
triggerall = random <= 700;high percent
triggerall = statetype != A;perform when not in air
triggerall = var(9) = 1;only AI can access
triggerall = ctrl;make sure AI had control
triggerall = stateno != 130
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
; High percent crouch guard
[State -1]
type = ChangeState
value = 131
triggerall = p2movetype = A;access only when opponent attack
triggerall = P2bodydist X <= 40;access only when near
triggerall = statetype != A;perform when not in air
triggerall = random <= 700;high percent
triggerall = var(9) = 1;only AI can access
triggerall = ctrl;make sure AI had control
triggerall = stateno != 131
trigger1 = p2statetype = C
;---------------------------------------------------------------------------

; El Diablo Amarillo Ramon SDM
[State -1, AmarilloX]
type = ChangeState
value = 2600
ctrl = 0
triggerall = var(9) = 1
triggerall = power >= 2000 && statetype != A 
trigger1 = p2statetype = A && (p2bodydist x = [30,100])&& ctrl
trigger2 = stateno = 440 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit
trigger3 = p2statetype != A && p2statetype != L
trigger3 = stateno = 470 && animelemtime(5) > 0 && animelemtime(7) < 0 && movehit
trigger4 = power >= 3000 && stateno = 3100 && animelemtime(7) > 0 && movehit
trigger5 = power >= 3000 && stateno = 2500 && animelemtime(2) > 0 && animelemtime(5) < 0

; El Diablo Amarillo Ramon 1
[State -1, Amarillo1]
type = ChangeState
value = 2100
ctrl = 0
triggerall = var(9) = 1
triggerall = power >= 1000 || var(40) > 0
trigger1 = statetype != A && ctrl
trigger1 = p2statetype = A && (p2bodydist x = [30,100])
trigger2 = stateno = 440 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit
trigger3 = (power >= 2000 || var(40) > 0) && stateno = 3100 && animelemtime(7) > 0
trigger4 = p2statetype != A && p2statetype != L
trigger4 = stateno = 470 && animelemtime(5) > 0 && animelemtime(7) < 0 && movehit

[State -1, RollFWD]
type = ChangeState
value = 700
triggerall = var(9) = 1
triggerall = statetype != A && ctrl 
trigger1 = p2movetype = A && P2bodydist X >= 100 && random <= 400 && (p2stateno != [120,152])
trigger2 = p2movetype = A && (p2bodydist x = [40,70]) && random <= 400 

[State -1,ROLL BACK]
type = ChangeState
value = 701
triggerall = var(9) = 1
trigger1 = statetype != A && ctrl
trigger1 = p2bodydist x <= 40 && p2statetype = L && backedgebodydist > 60 && random <= 500

[State -1, JUMP]
type = ChangeState
value = 40
triggerall = var(9) = 1
triggerall = statetype != A && ctrl && p2movetype != H
trigger1 = (p2bodydist x = [0,85]) && p2statetype = C && p2movetype != A && random <= 100
trigger2 = backedgebodydist <= 100 && random <= 500 && p2statetype = A

[State -1,RUN]
type = ChangeState
value = 100
triggerall = var(9) = 1
triggerall = var(21) = 0 || var(21) = 2 || var(21) = 3 || var(21) = 4 || var(21) = 5
trigger1 = p2bodydist x > 15 &&  p2movetype != A && random < 500
trigger1 = stateno != 100 && statetype = S && ctrl

[State -1, HPClose]
type = ChangeState
value = 250
triggerall = var(9) = 1
trigger1 = (p2bodydist x = [15,30]) && p2statetype != A && p2movetype != A
trigger1 = random <= 700 && p2statetype != L
trigger1 = statetype = S && ctrl

;Hk close
[State -1,HKClose]
type = ChangeState
value = 270
triggerall = var(9) = 1
trigger1 = (p2bodydist x = [10,20]) && p2movetype = H && p2statetype != A
trigger1 = random <= 600 && p2statetype != L
trigger1 = statetype = S && ctrl

[State -1,CFLK]
type = ChangeState
value = 470
triggerall = var(9) = 1
trigger1 = stateno = 250 && animelemtime(3) > 0 && animelemtime(4) < 0 && movecontact && p2statetype != A
trigger2 = stateno = 270 && animelemtime(3) > 0 && animelemtime(4) < 0 && movecontact && p2statetype != A
trigger3 = stateno = 440 && animelemtime(3) > 0 && animelemtime(4) < 0 && movehit

[State -1,CHP]
type = ChangeState
value = 440
ctrl = 0
triggerall = var(9) = 1
trigger1 = random <= 100 && (p2bodydist x = [20,50]) && p2statetype != L
trigger1 = p2movetype != A && p2movetype != H && p2statetype != A && ctrl && statetype != A
trigger2 = p2movetype = H && p2stateno = 2505 && statetype != A && ctrl && random <= 500

[State -1, STEP 1]
type = ChangeState
value = 1100
ctrl = 0
triggerall = var(9) = 1
trigger1 = random <= 500 && p2statetype != A 
trigger1 = stateno = 470 && animelemtime(5) > 0 && animelemtime(7) < 0 && movehit
trigger2 = (p2stateno = [1030,1040]) && statetype != A && ctrl

[State -1, STEP 2]
type = ChangeState
value = 1150
ctrl = 0
triggerall = var(9) = 1
trigger1 = random <= 500
trigger1 = stateno = 470 && animelemtime(5) > 0 && animelemtime(7) < 0 && moveguarded

[State -1,JHKD/JHPD]
type = ChangeState
value = ifelse(random <=500,635,650)
triggerall = var(9) = 1
triggerall = random <= 500 && statetype = A
triggerall = p2bodydist x <= 30 && p2movetype != A
trigger1 = vel x != 0 && vel y > 0 && ctrl
trigger2 = vel y > .45 && stateno = 201 && ctrl

[State -1,JLK]
type = ChangeState
value = ifelse(random <=700,635,620)
triggerall = var(9) = 1
triggerall = random <= 200 && statetype = A
triggerall = p2bodydist x <= 30 && p2movetype = A
trigger1 = vel x != 0 && vel y > 0 && ctrl
trigger2 = vel y > .45 && stateno = 201 && ctrl

[State -1,CD counter]
type = ChangeState
value = 712
triggerall = var(9) = 1
triggerall = backedgebodydist <= 50
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

;Sentom Bomb
[State -1, Bomb]
type = ChangeState
triggerall = var(9) = 1
trigger1 = statetype = A && ctrl
trigger1 = BackEdgeBodyDist <= 0
trigger2 = statetype = A && ctrl
trigger2 = p2statetype = L
trigger2 = FrontEdgeBodyDist <= 10
value = 2580
ctrl = 0

;SomerSault
[State -1, Sault]
type = ChangeState
value = ifelse(random <= 500,1500,1505)
ctrl = 0
Triggerall = var(9) = 1 
trigger1 = random <= 500 && statetype != A && ctrl && p2movetype != A && p2statetype != A
Trigger1 = (p2stateno = [150,153]) ||(p2stateno = [130,131]) || p2stateno = 140 
trigger2 = random <= 500 && p2statetype != A
trigger2 = statetype != A && stateno = 470 && animelemtime(5) > 0 && animelemtime(7) < 0 && moveguarded
trigger3 = random <= 200 && statetype != A && Ctrl && p2movetype != A
trigger3 = p2statetype != A && p2statetype != L && p2bodydist x >= 100

;Tiger Load
[State -1, Tiger Load]
type = ChangeState
value = 3100
ctrl = 0
triggerall = var(9) = 1
trigger1 = p2bodydist x >= 150 && p2movetype = A && p2statetype != A
trigger1 = random <= 500 && statetype != A && ctrl
trigger2 = random <= 100 && (p2stateno = [1030,1040]) && statetype != A && ctrl

;Jack Knife
[State -1, Knife]
type = ChangeState
value = ifelse(random <= 500,2550,2570)
ctrl = 0
triggerall = var(9) = 1
trigger1 = p2statetype = A && p2movetype = A && p2bodydist x = [10,50]
trigger1 = random <= 500 && statetype != A && ctrl

[State -1,Groundrecover]
type = ChangeState
value = 5201
triggerall = var(9) = 1  && canrecover
trigger1 = Vel Y > 0 && Pos Y >= 0 && life >0 && random <= 100 && (stateno = [5050,5060])
