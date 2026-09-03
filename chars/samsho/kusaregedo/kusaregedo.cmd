;=====================================================================
;  CMD File For "kusaregedo"	                                Made By H"
;                                       Ver. 1.00           
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================
;
;-| CPU |---------------------------------------------------
[Command]
name = "CPU"
command = D, D, D, D, D, D
time = 0
[Command]
name = "CPU"
command = U, U, U, U, U, U
time = 0
[Command]
name = "CPU"
command = F, F, F, F, F, F
time = 0
[Command]
name = "CPU"
command = B, B, B, B, B, B
time = 0
[Command]
name = "CPU"
command = a, a, a, a, a, a
time = 0
[Command]
name = "CPU"
command = b, b, b, b, b, b
time = 0
[Command]
name = "CPU"
command = c, c, c, c, c, c
time = 0
[Command]
name = "CPU"
command = x, x, x, x, x, x
time = 0
[Command]
name = "CPU"
command = y, y, y, y, y, y
time = 0
[Command]
name = "CPU"
command = z, z, z, z, z, z
time = 0

;-| Super Motions |---------------------------------------------------
[Command]
name = "Heretic Hunt_Easy"
command = ~F, D, B, F, D, B, y+b
time = 32

[Command]
name = "Heretic Hunt"
command = ~F, U, B, D
time = 20

[Command]
name = "Flying Head Butt"
command = ~D, DF, F, y+b

;-| Special Motions |-------------------------------------------------
[Command]
name = "unko"
command = ~DF, B, D, F, B, D, DB, a+y
time = 55

[Command]
name = "Heretic Brand_Easy"
command = ~F, DF, D, DB, B, y
time = 25

[Command]
name = "Meat Lifter"
command = ~B, D, DF, y

[Command]
name = "Evil Spirit Summons"
command = ~D, DF, F, x

[Command]
name = "Evil Spirit Summons"
command = ~D, DF, F, a

[Command]
name = "Gastrorrhea"
command = ~D, DB, B, x

[Command]
name = "Gastrorrhea"
command = ~D, DB, B, a

[Command]
name = "Heretic Brand"
command = ~F, B, D

[Command]
name = "Suicide"
command = ~B, F, D, s
time = 20

[Command]
name = "Power Defense"
command = ~D, DB, B, F, b
time = 20

[Command]
name = "Circumstance of Nothing"
command = ~D, DB, B,y+b
time = 20

;-| Double Tap |------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |------------------------------------------
[Command]
name = "Pow-MAX"
command = x+y+a
time = 1

[Command]
name = "yab"
command = y+a+b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+x
time = 1

[Command]
name = "ay"
command = a+y
time = 1

;-| Dir + Button |----------------------------------------------------
[Command]
name = "up_ay"
command = /U,a+y
time = 1

[Command]
name = "downfwd_ay"
command = /DF,a+y
time = 1

[Command]
name = "downback_b"
command = /DB,b
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "down_b"
command = /D,b
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "up_yb"
command = /U,yb
time = 1

[Command]
name = "up_y"
command = /U,y
time = 1

;-| Single Button |---------------------------------------------------
[Command]
name = "x"
command = x
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "y"
command = y
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
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

;-| Hold Button |-----------------------------------------------------
[Command]
name = "Meditation"
command = /b
time = 1

;-| Hold Dir |--------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holdupfwd"
command = /UF
time = 1

;=====================================================================
; State Entry for Commands
;=====================================================================

[Statedef -1]

;=====================================================================
; CPU Function
;=====================================================================
;
;---------------------------------------------------------------------
; O̊l
[State -1]
type = ChangeState
value = 3000
triggerall = random <= 25
triggerall = Var(45) = 1
triggerall = roundstate = 2
triggerall = Alive = 1
triggerall = p2bodydist X < 40
triggerall = P2MoveType != A && P2MoveType != H
triggerall = P2StateType != A
triggerall = NumHelper(7510) || var(38) = 100
trigger1 = StateType != A && (Ctrl || StateNo = 100)
trigger2 = StateNo = 200 && AnimElemNo(0) = 1
trigger3 = StateNo = 210 && AnimElemNo(0) = 1
trigger4 = StateNo = 220 && Animelem = 2,>=4 && Animelem = 4,<0
trigger5 = (StateNo = 621 || StateNo = 631) && AnimElemNo(0) = [3,5]
trigger6 = StateNo = 2000 && AnimElemNo(0) = 5
trigger7 = StateNo = 2010 && AnimElemNo(0) = [2,6]
trigger8 = StateNo = [5120,5121]
trigger9 = (StateNo = 225 || StateNo = 405) && AnimElemNo(0) = 1
trigger10 = (StateNo = 245 || StateNo = 425 || StateNo = 445) && AnimElemNo(0) = [1,2]
trigger11 = StateNo = 5130 && AnimElem = 2,<0
trigger12 = StateNo = 52

;---------------------------------------------------------------------
; O󉟂
[State -1]
type = ChangeState
value = 1100
triggerall = random <= 25
triggerall = Var(45) = 1
triggerall = roundstate = 2
triggerall = Alive = 1
triggerall = p2bodydist X < 40
triggerall = P2MoveType != A && P2MoveType != H
triggerall = P2StateType != A
triggerall = !NumHelper(7510) && var(38) != 100
trigger1 = StateType != A && (Ctrl || StateNo = 100)
trigger2 = StateNo = 200 && AnimElemNo(0) = 1
trigger3 = StateNo = 210 && AnimElemNo(0) = 1
trigger4 = StateNo = 220 && Animelem = 2,>=4 && Animelem = 4,<0
trigger5 = (StateNo = 621 || StateNo = 631) && AnimElemNo(0) = [3,5]
trigger6 = StateNo = 2000 && AnimElemNo(0) = 5
trigger7 = StateNo = 2010 && AnimElemNo(0) = [2,6]
trigger8 = StateNo = [5120,5121]
trigger9 = (StateNo = 225 || StateNo = 405) && AnimElemNo(0) = 1
trigger10 = (StateNo = 245 || StateNo = 425 || StateNo = 445) && AnimElemNo(0) = [1,2]
trigger11 = StateNo = 5130 && AnimElem = 2,<0
trigger12 = StateNo = 52

;---------------------------------------------------------------------
; ij
[State -1]
type = ChangeState
value = 1000
triggerall = random <= 150
triggerall = Var(45) = 1
triggerall = RoundState = 2
triggerall = Alive = 1
triggerall = statetype != A
triggerall = P2MoveType != A
triggerall = P2bodydist X > 200
triggerall = P2StateType != A
triggerall = life > P2life+floor(const(Data.life)/2)
trigger1 = StateType != A && (Ctrl || StateNo = 100)
trigger2 = StateNo = [5120,5121]
trigger3 = StateNo = 5130 && AnimElem = 2,<0

;---------------------------------------------------------------------
; グ
[State -1]
type = ChangeState
value = 1200
triggerall = random <= 200
triggerall = Var(45) = 1
triggerall = RoundState = 2
triggerall = Alive = 1
triggerall = statetype != A
triggerall = P2MoveType = A
triggerall = P2bodydist X = [50,150]
triggerall = P2StateType = C
trigger1 = StateType != A && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------------
;K[h
;------------------------ 
[State -1,guard]
type = ChangeState
value = 132
triggerall = Var(45) = 1
triggerall = RoundState = 2
triggerall = Alive = 1
triggerall = statetype = A
triggerall = ctrl
triggerall = Numenemy
trigger1 = enemy,numproj
trigger2 = P2bodydist X < 100
trigger2 = enemy,MoveType=A
trigger2 = enemy,HitDefAttr=SCA,NA,SA,HA,NP,SP,HP

;------------------------ 
[State -1,guard]
type = ChangeState
value = 130
triggerall = Var(45) = 1
triggerall = RoundState = 2
triggerall = Alive = 1
triggerall = statetype != A
triggerall = ctrl
triggerall = Numenemy
trigger1 = enemy,numproj
trigger2 = P2bodydist X < 100
trigger2 = enemy,MoveType=A
trigger2 = enemy,HitDefAttr=SA,NA,SA,HA,NP,SP,HP

;------------------------ Ⴊ
[State -1,guard]
type = ChangeState
value = 131
triggerall = Var(45) = 1
triggerall = RoundState = 2
triggerall = Alive = 1
triggerall = statetype != A
triggerall = ctrl
triggerall = Numenemy
trigger1 = enemy,numproj
trigger2 = P2bodydist X < 100
trigger2 = enemy,MoveType=A
trigger2 = enemy,HitDefAttr=C,NA,SA,HA,NP,SP,HP

;---------------------------------------------------------------------
; h
[State -3]
type = ChangeState
value = IfElse(random <= 500,800,850)
triggerall = random <= 200
triggerall = Var(45) = 1
triggerall = roundstate = 2
triggerall = Alive = 1
triggerall = StateType != A
triggerall = P2MoveType != A && P2MoveType != H
triggerall = P2StateType=S || P2StateType  = C
triggerall = p2bodydist X < 20
trigger1   = Ctrl

;---------------------------------------------------------------------
; ґz
[State -1]
type = ChangeState
value = 2100
triggerall = random <= 100
triggerall = Var(45) = 1
triggerall = roundstate = 2
triggerall = Alive = 1
triggerall = StateType != A
triggerall = P2MoveType != A
triggerall = p2bodydist X > 150
triggerall = fvar(39) < 125 && fvar(6) = 1 && !var(39) && var(38) = [1,62]
trigger1 = Command != "holdback" && Command != "holdfwd" && Command != "holdup" && Command != "holddown"
trigger1 = StateType = S && Ctrl

;=====================================================================
; Super Arts
;=====================================================================

;---------------------------------------------------------------------------
; O̊l
[State -1]
type = ChangeState
value = 3000
triggerall = Var(45) = 0
triggerall = ((var(9)=[-1,-5])&&!Var(20)) || (command = "Heretic Hunt_Easy" && Var(20))
triggerall = (NumHelper(7510) || var(38) = 100)
trigger1 = StateType != A && (Ctrl || StateNo = 100)
trigger2 = StateNo = 200 && AnimElemNo(0) = 1
trigger3 = StateNo = 210 && AnimElemNo(0) = 1
trigger4 = StateNo = 220 && Animelem = 2,>=4 && Animelem = 4,<0
trigger5 = (StateNo = 621 || StateNo = 631) && AnimElemNo(0) = [3,5]
trigger6 = StateNo = 2000 && AnimElemNo(0) = 5
trigger7 = StateNo = 2010 && AnimElemNo(0) = [2,6]
trigger8 = StateNo = [5120,5121]
trigger9 = (StateNo = 225 || StateNo = 405) && AnimElemNo(0) = 1
trigger10 = (StateNo = 245 || StateNo = 425 || StateNo = 445) && AnimElemNo(0) = [1,2]
trigger11 = StateNo = 5130 && AnimElem = 2,<0
trigger12 = StateNo = 52

;---------------------------------------------------------------------------
; ѓ˂
[State -1]
type = ChangeState
value = 3100
triggerall = command = "Flying Head Butt" && (NumHelper(7510)  || var(38) = 100)
trigger1 = StateType != A && (Ctrl || StateNo = 100)
trigger2 = StateNo = 200 && AnimElemNo(0) = 1
trigger3 = StateNo = 210 && AnimElemNo(0) = 1
trigger4 = StateNo = 220 && Animelem = 2,>=4 && Animelem = 4,<0
trigger5 = (StateNo = 621 || StateNo = 631) && AnimElemNo(0) = [3,5]
trigger6 = StateNo = 2000 && AnimElemNo(0) = 5
trigger7 = StateNo = 2010 && AnimElemNo(0) = [2,6]
trigger8 = StateNo = [5120,5121]
trigger9 = (StateNo = 225 || StateNo = 405) && AnimElemNo(0) = 1
trigger10 = (StateNo = 245 || StateNo = 425 || StateNo = 445) && AnimElemNo(0) = [1,2]
trigger11 = StateNo = 5130 && AnimElem = 2,<0

;=====================================================================
; Special Arts 
;=====================================================================

;---------------------------------------------------------------------
; ij
[State -1]
type = ChangeState
value = 1000
triggerall = Var(45) = 0
triggerall = Command = "unko"
trigger1 = StateType != A && (Ctrl || StateNo = 100)
trigger2 = StateNo = 200 && AnimElemNo(0) = 1
trigger3 = StateNo = 210 && AnimElemNo(0) = 1
trigger4 = StateNo = 220 && Animelem = 2,>=4 && Animelem = 4,<0
trigger5 = (StateNo = 621 || StateNo = 631) && AnimElemNo(0) = [3,5]
trigger6 = StateNo = 2000 && AnimElemNo(0) = 5
trigger7 = StateNo = 2010 && AnimElemNo(0) = [2,6]
trigger8 = StateNo = [5120,5121]
trigger9 = (StateNo = 225 || StateNo = 405) && AnimElemNo(0) = 1
trigger10 = (StateNo = 245 || StateNo = 425 || StateNo = 445) && AnimElemNo(0) = [1,2]
trigger11 = StateNo = 5130 && AnimElem = 2,<0

;---------------------------------------------------------------------
; O󉟂
[State -1]
type = ChangeState
value = 1100
triggerall = Var(45) = 0
triggerall = ((var(9)=[1,5]) && !Var(20)) || (Command = "Heretic Brand_Easy" && Var(20))
trigger1 = StateType != A && (Ctrl || StateNo = 100)
trigger2 = StateNo = 200 && AnimElemNo(0) = 1
trigger3 = StateNo = 210 && AnimElemNo(0) = 1
trigger4 = StateNo = 220 && Animelem = 2,>=4 && Animelem = 4,<0
trigger5 = (StateNo = 621 || StateNo = 631) && AnimElemNo(0) = [3,5]
trigger6 = StateNo = 2000 && AnimElemNo(0) = 5
trigger7 = StateNo = 2010 && AnimElemNo(0) = [2,6]
trigger8 = StateNo = [5120,5121]
trigger9 = (StateNo = 225 || StateNo = 405) && AnimElemNo(0) = 1
trigger10 = (StateNo = 245 || StateNo = 425 || StateNo = 445) && AnimElemNo(0) = [1,2]
trigger11 = StateNo = 5130 && AnimElem = 2,<0
trigger12 = StateNo = 52

;---------------------------------------------------------------------
; グ
[State -1]
type = ChangeState
value = 1200
triggerall = Var(45) = 0
triggerall = Command = "Meat Lifter"
trigger1 = StateType != A && (Ctrl || StateNo = 100)
trigger2 = StateNo = 200 && AnimElemNo(0) = 1
trigger3 = StateNo = 210 && AnimElemNo(0) = 1
trigger4 = StateNo = 220 && Animelem = 2,>=4 && Animelem = 4,<0
trigger5 = (StateNo = 621 || StateNo = 631) && AnimElemNo(0) = [3,5]
trigger6 = StateNo = 2000 && AnimElemNo(0) = 5
trigger7 = StateNo = 2010 && AnimElemNo(0) = [2,6]
trigger8 = StateNo = [5120,5121]
trigger9 = (StateNo = 225 || StateNo = 405) && AnimElemNo(0) = 1
trigger10 = (StateNo = 245 || StateNo = 425 || StateNo = 445) && AnimElemNo(0) = [1,2]
trigger11 = StateNo = 5130 && AnimElem = 2,<0

;---------------------------------------------------------------------
; Ă
[State -1]
type = ChangeState
value = 1300
triggerall = Command = "Evil Spirit Summons"
trigger1 = NumHelper(1300)=0
trigger1 = StateType != A && (Ctrl || StateNo = 100)
trigger2 = StateNo = 200 && AnimElemNo(0) = 1
trigger3 = StateNo = 210 && AnimElemNo(0) = 1
trigger4 = StateNo = 220 && Animelem = 2,>=4 && Animelem = 4,<0
trigger5 = (StateNo = 621 || StateNo = 631) && AnimElemNo(0) = [3,5]
trigger6 = StateNo = 2000 && AnimElemNo(0) = 5
trigger7 = StateNo = 2010 && AnimElemNo(0) = [2,6]
trigger8 = StateNo = [5120,5121]
trigger9 = (StateNo = 225 || StateNo = 405) && AnimElemNo(0) = 1
trigger10 = (StateNo = 245 || StateNo = 425 || StateNo = 445) && AnimElemNo(0) = [1,2]
trigger11 = StateNo = 5130 && AnimElem = 2,<0

;---------------------------------------------------------------------
; ݉tf
[State -1]
type = ChangeState
value = 1400
triggerall = Command = "Gastrorrhea"
trigger1 = StateType != A && (Ctrl || StateNo = 100)
trigger2 = StateNo = 200 && AnimElemNo(0) = 1
trigger3 = StateNo = 210 && AnimElemNo(0) = 1
trigger4 = StateNo = 220 && Animelem = 2,>=4 && Animelem = 4,<0
trigger5 = (StateNo = 621 || StateNo = 631) && AnimElemNo(0) = [3,5]
trigger6 = StateNo = 2000 && AnimElemNo(0) = 5
trigger7 = StateNo = 2010 && AnimElemNo(0) = [2,6]
trigger8 = StateNo = [5120,5121]
trigger9 = (StateNo = 225 || StateNo = 405) && AnimElemNo(0) = 1
trigger10 = (StateNo = 245 || StateNo = 425 || StateNo = 445) && AnimElemNo(0) = [1,2]
trigger11 = StateNo = 5130 && AnimElem = 2,<0

;=====================================================================
; Basic Animation
;=====================================================================

;---------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = Command = "FF" && StateType = S && Ctrl = 1 && StateNo != 100

;---------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = Command = "BB" && StateType = S && Ctrl = 1

;=====================================================================
; 2/3 Buttons
;=====================================================================

;=====================================================================
; Basic Throws
;=====================================================================

;---------------------------------------------------------------------
; h
[State -1]
type = ChangeState
value = IfElse(Command = "back_y",850,800)
triggerall = StateType = S && (Ctrl || StateNo = 100)
triggerall = P2MoveType != H && !P2StateType = A && !NumTarget(800)
trigger1 = Command = "fwd_y" && P2BodyDist X < 50
trigger2 = Command = "back_y" && P2BodyDist X < 50

;---------------------------------------------------------------------
; a
[State -1]
type = ChangeState
value = 900
triggerall = Command = "x" || Command = "a"
trigger1 = (StateNo = 810 || StateNo = 860) && AnimElem = 6,> 0

;---------------------------------------------------------------------
; Special Attacks , Moves and so on.
;---------------------------------------------------------------------

;---------------------------------------------------------------------
; 
[State -1]
type = ChangeState
value = 2500
triggerall = Var(45) = 0
triggerall = Command = "Suicide"
trigger1 = StateType != A && (Ctrl || StateNo = 100)
trigger2 = StateNo = 200 && AnimElemNo(0) = 1
trigger3 = StateNo = 210 && AnimElemNo(0) = 1
trigger4 = StateNo = 220 && Animelem = 2,>=4 && Animelem = 4,<0
trigger5 = (StateNo = 621 || StateNo = 631) && AnimElemNo(0) = [3,5]
trigger6 = StateNo = 2000 && AnimElemNo(0) = 5
trigger7 = StateNo = 2010 && AnimElemNo(0) = [2,6]
trigger8 = StateNo = [5120,5121]
trigger9 = (StateNo = 225 || StateNo = 405) && AnimElemNo(0) = 1
trigger10 = (StateNo = 245 || StateNo = 425 || StateNo = 445) && AnimElemNo(0) = [1,2]
trigger11 = StateNo = 5130 && AnimElem = 2,<0

;---------------------------------------------------------------------
; Đgiej
[State -1]
type = ChangeState
value = 2200
triggerall = Command = "Power Defense"
trigger1 = StateType != A && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; ǂ
[State -1]
type = ChangeState
value = 510
triggerall = Command = "up_ay"
triggerall = Ctrl || StateNo = 100
triggerall = P2StateNo = [5100,5120]
trigger1 = Pos Y > -20

;---------------------------------------------------------------------
; ǂ
[State -1]
type = ChangeState
value = 500
triggerall = Command = "downfwd_ay"
triggerall = Ctrl || StateNo = 100
triggerall = P2StateNo = [5100,5120]
trigger1 = StateType != A

;---------------------------------------------------------------------
; {蔚
[State -1]
type = ChangeState
value = 2400
triggerall = Var(45) = 0 || (Var(45) = 1 && life < 300 && random <= 50)
triggerall = Command = "Pow-MAX" && fvar(38) = 0 && !var(39)
triggerall = Alive
trigger1 = StateType != A && (Ctrl || StateNo = 100 || (MoveType = H && (stateno = [5000,5029]))) 

;---------------------------------------------------------------------
; ̋n
[State 3001, Super]
type = Helper
triggerall = Alive
triggerall = Var(45) = 0 || (Var(45) = 1 && fvar(39)>40 && random <= 100)
triggerall = floor(fvar(39)*8) >= life
triggerall = var(37)
triggerall = Command = "Circumstance of Nothing"
triggerall = roundstate = 2 && teamside=1
trigger1 = !NumHelper(7550)
trigger1 = !var(39)
id = 7550
name = "Mu no kyouti"
pos =0,0
postype = Left
stateno = 7550
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 2147483647

[State 3001, Super]
type = Helper
triggerall = Alive
triggerall = Var(45) = 0 || (Var(45) = 1 && fvar(39)>40 && random <= 100)
triggerall = floor(fvar(39)*8) >= life
triggerall = var(37)
triggerall = Command = "Circumstance of Nothing"
triggerall = roundstate = 2 && teamside=2
trigger1 = !NumHelper(7550)
trigger1 = !var(39)
id = 7550
name = "Mu no kyouti"
pos =0,0
postype = Right
stateno = 7550
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 2147483647

;---------------------------------------------------------------------------
; M
[State -1]
type = ChangeState
value = 3500
triggerall = Var(45) = 0 || (Var(45) = 1 && random <= 50)
triggerall = command = "yab" && NumHelper(7550) && var(39) = 2 && fvar(39) > 0
trigger1 = StateType != A && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; sӑł
[State -1]
type = ChangeState
value = 2300
triggerall = Command = "ay"
trigger1 = StateType != A && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; O]
[State -1]
type = ChangeState
value = 2000
triggerall = Command = "downfwd_b"
trigger1 = StateType != A && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; ]
[State -1]
type = ChangeState
value = 2010
triggerall = Command = "downback_b"
trigger1 = StateType != A && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; 
[State -1]
type = ChangeState
value = 2020
triggerall = Command = "down_b"
trigger1 = StateType != A && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; э
[State -1]
type = ChangeState
value = 2030
triggerall = Command = "fwd_b"
trigger1 = StateType != A && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; i
[State -1]
type = ChangeState
value = 2040
triggerall = Command = "back_b"
trigger1 = StateType != A && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; Nオ
;------------------------ NCbNNオ
[State -1]
type = ChangeState
value = 5120
triggerall = alive
trigger1 = Time > 6 && Command = "holdup"
trigger1 = StateNo = 5110 && StateNo != 5120 && StateNo != 5130
triggerall = Alive

;------------------------ ړNオ
[State -1]
type = ChangeState
value = 5130
triggerall = alive
trigger1 = Time > 8 && var(11)
trigger1 = StateNo = 5110 && StateNo != 5120 && StateNo != 5130
triggerall = Alive

[State -1]
type = VarSet
trigger1 = StateNo = 5110 && (Command = "holdfwd" || Command = "holdback")
var(11) = IfElse((Command = "holdfwd"),1,-1)

;---------------------------------------------------------------------
; ґz
[State -1]
type = ChangeState
value = 2100
triggerall = Var(45) = 0
triggerall = command = "Meditation" && fvar(39) < 125 && fvar(6) = 1 && !var(39) && var(38) = [1,62]
trigger1 = Command != "holdback" && Command != "holdfwd" && Command != "holdup" && Command != "holddown"
trigger1 = StateType = S && Ctrl

;=====================================================================
; Dir + Button
;=====================================================================

;---------------------------------------------------------------------
; Or߁ij
[State -1]
type = ChangeState
value = 700
triggerall = Command = "downfwd_y"
trigger1 = StateType != A && (Ctrl || StateNo = 100)
trigger2 = StateNo = 200 && AnimElemNo(0) = 1
trigger3 = StateNo = 210 && AnimElemNo(0) = 1
trigger4 = StateNo = 220 && Animelem = 2,>=4 && Animelem = 4,<0
trigger5 = (StateNo = 621 || StateNo = 631) && AnimElemNo(0) = [3,5]
trigger6 = StateNo = 2000 && AnimElemNo(0) = 5
trigger7 = StateNo = 2010 && AnimElemNo(0) = [2,6]
trigger8 = StateNo = [5120,5121]
trigger9 = (StateNo = 225 || StateNo = 405) && AnimElemNo(0) = 1
trigger10 = (StateNo = 245 || StateNo = 425 || StateNo = 445) && AnimElemNo(0) = [1,2]
trigger11 = StateNo = 5130 && AnimElem = 2,<0

;---------------------------------------------------------------------
; OT}\ij
[State -1]
type = ChangeState
value = 710
triggerall = Command = "fwd_y" && (NumTarget(800) || (P2BodyDist X >= 50 && !NumTarget(800)))
trigger1 = StateType != A && (Ctrl || StateNo = 100)
trigger2 = StateNo = 200 && AnimElemNo(0) = 1
trigger3 = StateNo = 210 && AnimElemNo(0) = 1
trigger4 = StateNo = 220 && Animelem = 2,>=4 && Animelem = 4,<0
trigger5 = (StateNo = 621 || StateNo = 631) && AnimElemNo(0) = [3,5]
trigger6 = StateNo = 2000 && AnimElemNo(0) = 5
trigger7 = StateNo = 2010 && AnimElemNo(0) = [2,6]
trigger8 = StateNo = [5120,5121]
trigger9 = (StateNo = 225 || StateNo = 405) && AnimElemNo(0) = 1
trigger10 = (StateNo = 245 || StateNo = 425 || StateNo = 445) && AnimElemNo(0) = [1,2]
trigger11 = StateNo = 5130 && AnimElem = 2,<0

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
; 
[State -1]
type = ChangeState
value = 195
triggerall = Var(45) = 0
triggerall = command = "s"
trigger1 = StateType = S && Ctrl

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
; a
[State -1]
type = ChangeState
value = IfElse(StateNo = 100,320,IfElse(P2BodyDist X <= 80,250,240))
triggerall = Command = "recovery"
trigger1 = StateType = S && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; a
[State -1]
type = ChangeState
value = IfElse(StateNo = 100,300,IfElse(P2BodyDist X <= 120,210,200))
triggerall = Command = "x"
trigger1 = StateType = S && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; a
[State -1]
type = ChangeState
value = IfElse(StateNo = 100,310,IfElse(P2BodyDist X <= 80,230,220))
triggerall = Command = "a"
trigger1 = StateType = S && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; R
[State -1]
type = ChangeState
value = IfElse(StateNo = 100,330,260)
triggerall = Command = "y"
trigger1 = StateType = S && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; Ⴊ݋a
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 60,450,440)
triggerall = Command = "recovery" && Command = "holddown"
trigger1 =  (StateType = C && Ctrl) || StateNo = 100

;---------------------------------------------------------------------
; Ⴊݎa
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 80,410,400)
triggerall = Command = "x" && Command = "holddown"
trigger1 =  (StateType = C && Ctrl) || StateNo = 100

;---------------------------------------------------------------------
; Ⴊݒa
[State -1]
type = ChangeState
value = IfElse(P2BodyDist X <= 100,430,420)
triggerall = Command = "a" && Command = "holddown"
trigger1 = (StateType = C && Ctrl) || StateNo = 100

;---------------------------------------------------------------------
; ႪݏR
[State -1]
type = ChangeState
value = 460
triggerall = Command = "y" && Command = "holddown"
trigger1 = StateType = C && (Ctrl || StateNo = 100)

;---------------------------------------------------------------------
; a
[State -1]
type = ChangeState
value = 620
triggerall = Command = "recovery"
trigger1 = StateType = A && Ctrl
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; Wva
[State -1]
type = ChangeState
value = 600
triggerall = Command = "x" && StateType = A && Ctrl
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; Wva
[State -1]
type = ChangeState
value = 610
triggerall = Command = "a" && StateType = A && Ctrl
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; WvR
[State -1]
type = ChangeState
value = 630
triggerall = Command = "y" && StateType = A && Ctrl
trigger1 = StateNo != 105

;---------------------------------------------------------------------
; |[Yڍs
[State -1]
type = ChangeState
value = 179
triggerall = WinKO
triggerall = RoundState = 3 && StateType != A && StateNo != [179,189]
trigger1 = Ctrl
