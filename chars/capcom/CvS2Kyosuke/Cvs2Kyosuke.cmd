;====================================
; Command file for Kagami Kyôsuke (Capcom VS SNK 2)
;====================================

;-| AI only |--------------------------------------------------
[Command]
name = "ai1"
command = ~6553B,a+b+c+x+y+z,B,F,B,D,U,F
time = 1

[Command]
name = "ai2"
command = U,D,F,F,B,F
time = 1

[Command]
name = "ai3"
command = U,D,F,F,B,D
time = 1

[Command]
name = "ai4"
command = U,D,F,F,B,U,F
time = 1

[Command]
name = "ai5"
command = U,D,F,F,U,B
time = 1

[Command]
name = "ai6"
command = U,D,F,F,D,B,D
time = 1

[Command]
name = "ai7"
command = U,D,F,F,F,B,U
time = 1

[Command]
name = "ai8"
command = D,D,F,F,D,B
time = 1

[Command]
name = "ai9"
command = D,D,F,F,F,B
time = 1
[Command]
name = "ai10"
command = U,D,F,F,B,B,D,F
time = 1

[Command]
name = "ai11"
command = U,D,F,F,B,F
time = 1

[Command]
name = "ai12"
command = U,D,F,F,B,D,F
time = 1

[Command]
name = "ai13"
command = U,D,F,F,B,U
time = 1

[Command]
name = "ai14"
command = U,D,F,F,U,B,F,D
time = 1

[Command]
name = "ai15"
command = U,D,F,F,D,B
time = 1

[Command]
name = "ai16"
command = U,D,F,F,F,B,U
time = 1

[Command]
name = "ai17"
command = U,D,U,F,B,B
time = 1

[Command]
name = "ai18"
command = U,D,D,F,B,B
time = 1

[Command]
name = "ai19"
command = D,D,F,F,B,B,F
time = 1

[Command]
name = "ai20"
command = U,U,F,F,B,B
time = 1

[Command]
name = "ai21"
command = U,B,F,F,B,B,U,D
time = 1

[Command]
name = "ai22"
command = U,D,F,F,B,B,D
time = 1
;-| Super Motions |---------------------------------------------------------
[Command]
name = "Synphony"
command = ~D,DB,B,D,DB,B, a
Time = 25
[Command]
name = "Synphony"
command = ~D,DB,B,D,DB,B, b
Time = 25
[Command]
name = "Synphony"
command = ~D,DB,B,D,DB,B, c
Time = 25

[Command]
name = "KCross1"
command = ~D,DF,F,D,DF,F, x
Time = 25
[Command]
name = "KCross2"
command = ~D,DF,F,D,DF,F, y
Time = 25
[Command]
name = "KCross3"
command = ~D,DF,F,D,DF,F, z
Time = 25

[Command]
name = "SRaijin1"
command = ~D,DB,B,D,DB,B, x
Time = 25
[Command]
name = "SRaijin2"
command = ~D,DB,B,D,DB,B, y
Time = 25
[Command]
name = "SRaijin3"
command = ~D,DB,B,D,DB,B, z
Time = 25

[Command]
name = "DGenEi1"
command = ~D,DF,F,D,DF,F, a
Time = 25
[Command]
name = "DGenEi2"
command = ~D,DF,F,D,DF,F, b
Time = 25
[Command]
name = "DGenEi3"
command = ~D,DF,F,D,DF,F, c
Time = 25
;-| Special Motions |-------------------------------------------------------
[Command]
name = "Cross1"
command = ~D, DF, F, x
[Command]
name = "Cross2"
command = ~D, DF, F, y
[Command]
name = "Cross3"
command = ~D, DF, F, z
[Command]
name = "Cross4"
command = ~D, DF, F, x+y
[Command]
name = "Cross4"
command = ~D, DF, F, y+z
[Command]
name = "Cross4"
command = ~D, DF, F, x+z

[Command]
name = "GenEi1"
command = ~D, DF, F, a
[Command]
name = "GenEi2"
command = ~D, DF, F, b
[Command]
name = "GenEi3"
command = ~D, DF, F, c
[Command]
name = "GenEi4"
command = ~D, DF, F, a+b
[Command]
name = "GenEi4"
command = ~D, DF, F, b+c
[Command]
name = "GenEi4"
command = ~D, DF, F, a+c

[Command]
name = "Raijin1"
command = ~F, D, DF, x
[Command]
name = "Raijin2"
command = ~F, D, DF, y
[Command]
name = "Raijin3"
command = ~F, D, DF, z
[Command]
name = "Raijin4"
command = ~F, D, DF, x+y
[Command]
name = "Raijin4"
command = ~F, D, DF, y+z
[Command]
name = "Raijin4"
command = ~F, D, DF, x+z

[Command]
name = "Breaker1"
command = ~D, DB, B, x
[Command]
name = "Breaker2"
command = ~D, DB, B, y
[Command]
name = "Breaker3"
command = ~D, DB, B, z

[Command]
name = "ZeroCL"
command = ~B, DB, D, a
[Command]
name = "ZeroCL"
command = ~B, DB, D, b
[Command]
name = "ZeroCL"
command = ~B, DB, D, c
[Command]
name = "ZeroCH"
command = ~B, DB, D, x
[Command]
name = "ZeroCH"
command = ~B, DB, D, y
[Command]
name = "ZeroCH"
command = ~B, DB, D, z
;-| Button Combination |----------------------------------------------------
[Command]
name = "xa"
command = x+a
time = 15
;-| Dir + Button |----------------------------------------------------------

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "fwd_a"
command = /F, a
time = 1

[Command]
name = "df_b"
command = /DF, b
time = 1

[Command]
name = "down_y"
command = /D, y
time = 1

[Command]
name = "charge1"
command = /b
time = 1

[Command]
name = "charge2"
command = /y
time = 1

[Command]
name = "charge3"
command = /x
time = 1

[Command]
name = "charge3"
command = /y
time = 1

[Command]
name = "charge3"
command = /c
time = 1

[Command]
name = "charge3"
command = /z
time = 1

[Command]
name = "charge"
command = /c
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
name = "hold_p"
command = /x
time = 1
[Command]
name = "hold_p"
command = /y
time = 1
[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_k"
command = /a
time = 1
[Command]
name = "hold_k"
command = /b
time = 1
[Command]
name = "hold_k"
command = /c
time = 1

[Command]
name = "hold_1"
command = /x
time = 1
[Command]
name = "hold_2"
command = /y
time = 1
[Command]
name = "hold_3"
command = /z
time = 1

[Command]
name = "hold_1"
command = /a
time = 1
[Command]
name = "hold_2"
command = /b
time = 1
[Command]
name = "hold_3"
command = /c
time = 1

;-| Do not remove! |--------------------------------------------------------

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

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name = "F"
command = F
time = 1

[Command]
name = "Fw"
command = F
time = 4

[Command]
name = "D"
command = D
time = 4

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "B"
command = B
time = 1

[Command]
name = "BB"
command = B, B
time = 10

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
;===========================================================================
[Statedef -1]
;===========================================================================
; AI section
;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
; Player section
;===========================================================================
;---------------------------------------------------------------------------
; Final Synphony Remix
[State -1, fsr]
type = ChangeState
triggerall = statetype != A
triggerall = power >= 3000
triggerall = command = "Synphony"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [200,260]
trigger4 = MoveContact && stateno = [400,460]
trigger5 = StateNo = 1100 && numhelper(1150)
trigger5 = helper(1150),movecontact
trigger6 = AnimElem = 4, > 0 && StateNo = [800,805] 
trigger7 = StateNo = 151 || StateNo = 153
value = 2500
;---------------------------------------------------------------------------
; Mjollnir
[State -1, m]
type = null;ChangeState ; <= hidden because blah
triggerall = statetype = A
triggerall = power >= 1000
triggerall = command = "KCross1" || command = "KCross2" || command = "KCross3"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [200,260]
trigger4 = MoveContact && stateno = [400,460]
trigger5 = StateNo = 1100 && numhelper(1150)
trigger5 = helper(1150),movecontact
trigger6 = AnimElem = 4, > 0 && StateNo = [800,805] 
trigger7 = StateNo = 151 || StateNo = 153
value = 2300
;---------------------------------------------------------------------------
; Kakusan Cross Cutter
[State -1, kxc]
type = ChangeState
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "KCross1" || command = "KCross2" || command = "KCross3"
triggerall = ifelse(NumHelper, NumHelper(2010), 1)
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [200,260]
trigger4 = MoveContact && stateno = [400,460]
trigger5 = StateNo = 1100 && numhelper(1150)
trigger5 = helper(1150),movecontact
trigger6 = AnimElem = 4, > 0 && StateNo = [800,805]
trigger7 = StateNo = 2200 || StateNo = 2100 || StateNo = 2000
trigger7 = Var(4) = 2
trigger7 = MoveContact || (NumHelper(2010) && Helper(2010),MoveContact)
trigger8 = StateNo = 151 || StateNo = 153
value = 2200
;---------------------------------------------------------------------------
; Double GenEi kick
[State -1, dgek]
type = ChangeState
;triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "DGenEi1" || command = "DGenEi2" || command = "DGenEi3"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [200,260]
trigger4 = MoveContact && stateno = [400,460]
trigger5 = StateNo = 1100 && numhelper(1150)
trigger5 = helper(1150),movecontact
trigger6 = AnimElem = 4, > 0 && StateNo = [800,805] 
trigger7 = StateNo = 2200 || StateNo = 2100 || StateNo = 2000
trigger7 = Var(4) = 2
trigger7 = MoveContact || (NumHelper(2010) && Helper(2010),MoveContact)
trigger8 = StateNo = 151 || StateNo = 153
trigger9 = StateNo = 1200 && AnimElem = 9, > 0
value = 2100
;---------------------------------------------------------------------------
; Super Raijin Upper
[State -1, srju]
type = ChangeState
triggerall = statetype != A
triggerall = power >= 1000
triggerall = command = "SRaijin1" || command = "SRaijin2" || command = "SRaijin3"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [200,260]
trigger4 = MoveContact && stateno = [400,460]
trigger5 = StateNo = 1100 && numhelper(1150)
trigger5 = helper(1150),movecontact
trigger6 = AnimElem = 4, > 0 && StateNo = [800,805] 
trigger7 = StateNo = 2200 || StateNo = 2100 || StateNo = 2000
trigger7 = Var(4) = 2
trigger7 = MoveContact || (NumHelper(2010) && Helper(2010),MoveContact)
trigger8 = StateNo = 151 || StateNo = 153
value = 2000
;---------------------------------------------------------------------------
; GenEi Wave - Shadow Wave
[State -1, gew]
type = ChangeState
triggerall = statetype = A
triggerall = command = "Cross1" || command = "Cross2" || command = "Cross3" || command = "Cross4"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [600,660]
trigger4 = StateNo = 1300 && ((Anim = 1300 && AnimElem = 3, > 0) || (Anim = 1305 && AnimElem = 2, < 0))
trigger5 = StateNo = 151 || StateNo = 153
value = 1050
;---------------------------------------------------------------------------
; Raijin Upper - ThunderGod Upper
[State -1, rju]
type = ChangeState
triggerall = statetype != A
triggerall = command = "Raijin1" || command = "Raijin2" || command = "Raijin3" || command = "Raijin4"
triggerall = !NumHelper(1150)
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [200,260]
trigger4 = MoveContact && stateno = [400,460]
trigger5 = StateNo = 151 || StateNo = 153
value = 1100
;---------------------------------------------------------------------------
; Cross Cutter
[State -1, xc]
type = ChangeState
triggerall = statetype != A
triggerall = command = "Cross1" || command = "Cross2" || command = "Cross3" || command = "Cross4"
triggerall = ifelse(NumHelper, NumHelper(2010), 1)
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [200,260]
trigger4 = MoveContact && stateno = [400,460]
trigger5 = StateNo = 151 || StateNo = 153
value = 1000
;---------------------------------------------------------------------------
; GenEi kick - Shadow kick
[State -1, gek]
type = ChangeState
;triggerall = statetype != A
triggerall = command = "GenEi1" || command = "GenEi2" || command = "GenEi3" || command = "GenEi4"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [200,660]
trigger4 = StateNo != [1200,1201]
trigger4 = StateNo = 1100 && numhelper(1150)
trigger4 = helper(1150),movecontact
trigger5 = StateNo = 151 || StateNo = 153
value = 1200+(StateType=A)
;---------------------------------------------------------------------------
; Gen'Ei Breaker - Shadow Breaker
[State -1, geb]
type = ChangeState
triggerall = statetype != A
triggerall = command = "Breaker1" || command = "Breaker2" || command = "Breaker3"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = MoveContact && stateno = [200,260]
trigger4 = MoveContact && stateno = [400,460]
trigger5 = StateNo = 151 || StateNo = 153
value = 1300
;---------------------------------------------------------------------------
; backward roll
[State -1, br]
type = ChangeState
triggerall = statetype != A
triggerall = command = "holdback"
triggerall = command = "a" && command = "x"
trigger1 = ctrl
trigger2 = StateNo = 151 || StateNo = 153
trigger2 = Power >= 500
value = 805
;---------------------------------------------------------------------------
; forward roll
[State -1, fr]
type = ChangeState
triggerall = statetype != A
triggerall = command = "holdfwd"
triggerall = command = "a" && command = "x"
trigger1 = ctrl
trigger2 = StateNo = 151 || StateNo = 153
trigger2 = Power >= 500
value = 800
;---------------------------------------------------------------------------
; sidestep
[State -1, fr]
type = ChangeState
triggerall = statetype != A && ctrl
trigger1 = command = "a" && command = "x"
value = 801
;---------------------------------------------------------------------------
; Punch Throw
[State -1,t]
type = ChangeState
value = 905
triggerall = stateno != 310
triggerall = statetype != A
triggerall = command = "z" && command = "holdfwd" && command != "holddown"
trigger1 = P2BodyDist X < 15 && p2MoveType != H && p2stateno != 5120
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; Kick Throw
[State -1,t]
type = ChangeState
value = 900
triggerall = stateno != 310
triggerall = statetype != A
triggerall = command = "c" && command = "holdfwd" && command != "holddown"
trigger1 = P2BodyDist X < 15 && p2MoveType != H && p2stateno != 5120
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
; close light punch
[State -1,lp1]
type = ChangeState
value = 205
triggerall = statetype != A && p2BodyDist X < 20
triggerall = command = "x" && command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = 205
trigger4 = MoveContact && stateno = 400
trigger5 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; light punch
[State -1,lp2]
type = ChangeState
value = 200
triggerall = statetype != A
triggerall = command = "x" && command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = [200,205]
trigger4 = MoveContact && stateno = 400
trigger5 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; close medium punch
[State -1,mp1]
type = ChangeState
value = 215
triggerall = statetype != A && p2BodyDist X < 20
triggerall = command = "y" && command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = [200,205]
trigger4 = MoveContact && stateno = [400,410]
trigger5 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; medium punch
[State -1,mp2]
type = ChangeState
value = 210
triggerall = statetype != A
triggerall = command = "y" && command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = [200,205]
trigger5 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; close heavy punch
[State -1,hp1]
type = ChangeState
value = 225
triggerall = statetype != A && p2BodyDist X < 20
triggerall = command = "z" && command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = [205,215]
trigger4 = movecontact && prevstateno = 235
trigger5 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; heavy punch
[State -1,hp2]
type = ChangeState
value = 220
triggerall = statetype != A
triggerall = command = "z" && command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = movecontact && (stateno = 200 || stateno = 210 || stateno = 230)
trigger4 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; close light kick
[State -1,lk1]
type = ChangeState
value = 235
triggerall = statetype != A && p2BodyDist X < 20
triggerall = command = "a" && command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = 205
trigger4 = MoveContact && stateno = 400
trigger5 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; light kick
[State -1,lk2]
type = ChangeState
value = 230
triggerall = statetype != A
triggerall = command = "a" && command != "holddown"
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = [200,205]
trigger4 = MoveContact && stateno = 400
trigger5 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; medium kick
[State -1,mk1]
type = ChangeState
value = 245
triggerall = statetype != A && p2BodyDist X < 20
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = [230,235]
trigger4 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; medium kick
[State -1,mk2]
type = ChangeState
value = 240
triggerall = statetype != A
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = [230,235]
trigger4 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; heavy kick
[State -1,hk3]
type = ChangeState
value = 250
triggerall = statetype != A
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 100
trigger3 = movecontact && (stateno = 230 || stateno = 240)
trigger4 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; crouch light punch
[State -1,clp]
type = ChangeState
value = 400
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; crouch medium punch
[State -1,cmp]
type = ChangeState
value = 410
triggerall = statetype != A
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; crouch heavy punch
[State -1,chp]
type = ChangeState
value = 420
triggerall = statetype != A
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; crouch light kick
[State -1,clk]
type = ChangeState
value = 430
triggerall = command = "a" && command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; crouch medium kick
[State -1,cmk]
type = ChangeState
value = 440
triggerall = statetype != A
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; crouch forward heavy kick
[State -1,cfhk]
type = ChangeState
value = 455
triggerall = statetype != A
triggerall = command = "c" && command = "holddown" && command = "holdfwd"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = [400,440]
trigger4 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; crouch heavy kick
[State -1,chk]
type = ChangeState
value = 450
triggerall = statetype != A
triggerall = command = "c" && command = "holddown" && command != "holdfwd"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 100
trigger3 = movecontact && stateno = [400,440]
trigger4 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; air light punch
[State -1,alp]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A && ctrl
trigger2 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; air medium punch
[State -1,amp]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A && ctrl
trigger2 = StateNo = 600 && MoveContact
trigger3 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; air heavy punch
[State -1,ahp]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A && ctrl
trigger2 = MoveContact && StateNo = [600,610]
trigger3 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; air light kick
[State -1,alk]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A && ctrl
trigger2 = MoveContact && StateNo = 600
trigger3 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; air medium kick
[State -1,amk]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A && ctrl
trigger2 = MoveContact && (StateNo = 600 || StateNo = 610 || StateNo = 630)
trigger3 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; air heavy kick
[State -1,ahk]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A && ctrl
trigger2 = MoveContact && StateNo = [600,640]
trigger3 = StateNo = 151 || StateNo = 153
;---------------------------------------------------------------------------
; Zero Counter high
[State -1, zc]
type = ChangeState
trigger1 = Stateno = 150
trigger1 = command = "ZeroCH"
trigger1 = power >= 500
trigger1 = Statetype != A
value = 853
;---------------------------------------------------------------------------
; Zero Counter low
[State -1, zc]
type = ChangeState
trigger1 = Stateno = 150
trigger1 = command = "ZeroCL"
trigger1 = power >= 500
trigger1 = Statetype != A
value = 854
;---------------------------------------------------------------------------
; taunt
[State -1,t]
type = ChangeState
value = 195
triggerall = (command = "start")||(var(1)&&p2life&&p2statetype=L&&random<320)
triggerall = stateno != 310
trigger1 = statetype != A && ctrl
trigger2 = (stateno = 3006 || stateno = 3026 || stateno =3025) && HitCount
trigger3 = stateno = [200,450]
trigger3 = movecontact 
trigger4 = stateno = 3051 && animelem <= 34
trigger5 = Stateno = 860 && Time >= 5
;---------------------------------------------------------------------------
; [PARRY]
; Stand parry
[State -1, stp]
type = hitoverride
triggerall = statetype != A && command = "Fw"
triggerall = movetype != A
trigger1 = ctrl || stateno = 850 || stateno = 851 || stateno = 3003 || stateno=[150,153]
trigger1 = var(3) := (1 + 3*(stateno = [150,153]))
attr = SA, AA, AP
stateno = 850
time = ifelse((stateno=[150,153]), 6, 8)

; Crouch parry
[State -1, crp]
type = hitoverride
triggerall = (statetype = S && command = "D") || (statetype = C && command = "Fw")
triggerall = movetype != A
trigger1 = ctrl || stateno = 850 || stateno = 851 ||stateno = 3003 || stateno = [150,153]
trigger1 = var(3) := (2 + 3*(stateno = [150,153]))
attr = CS, AA, AP
stateno = 851
time = ifelse((stateno = [150,153]), 6, 8)

; Air parry
[State -1, aip]
type = hitoverride
triggerall = statetype = A && command = "Fw"
triggerall = movetype != A
trigger1 = ctrl || stateno = 852 || stateno = [154,155]
trigger1 = var(3) := (3 + 3*(stateno = [154,155]))
trigger2 = Vel Y > 0 && StateNo = [1050,1201]
trigger2 = var(3) := (3 + 3*(stateno = [154,155]))
attr = SA, AA, AP
stateno = 852
time = ifelse((stateno = [154,155]), 6, 8)

; no parry if can't parry
[State -1, ps]
type = hitoverride
trigger1 = !ctrl && stateno != [850,852]
trigger1 = stateno != 3003 && stateno != [150,155]
trigger2 = statetype = A && var(3) != 3 && var(3) != 6
trigger3 = statetype = C && var(3) != 2 && var(3) != 5
trigger4 = statetype = S && (var(3) = 3 || var(3) = 6)
attr = SCA
time = 0
;---------------------------------------------------------------------------
; run
[State -1,run]
type = ChangeState
value = 100
trigger1 = stateno != [850,852] ; can't run from parry
trigger1 = command = "FF"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
; backdash
[State -1,hop]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
; Power Charge
[State -1,powcharge]
type = ChangeState
value = 3002
triggerall = var(1)!=1
triggerall = Power < 3000
triggerall = statetype = S
triggerall = ctrl
trigger1 = (command = "charge1" && command = "charge2")
trigger2 = Stateno = 860 && Time >= 5
