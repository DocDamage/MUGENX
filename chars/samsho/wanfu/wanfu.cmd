
[Command]
name = "CPU0"
command = U,U,D,D,B,F,B,F,s,s
time = 0

[Command]
name = "CPU1"
command = U,U,D,D,B,F,B,F,a,a
time = 0

[Command]
name = "CPU2"
command = U,U,D,D,B,F,B,F,b,b
time = 0

[Command]
name = "CPU3"
command = U,U,D,D,B,F,B,F,c,c
time = 0

[Command]
name = "CPU4"
command = U,U,D,D,B,F,B,F,x,x
time = 0

[Command]
name = "CPU5"
command = U,U,D,D,B,F,B,F,y,y
time = 0

[Command]
name = "CPU6"
command = U,U,D,D,B,F,B,F,z,z
time = 0

[Command]
name = "CPU7"
command = U,U,D,D,B,F,B,F,a,b
time = 0

[Command]
name = "CPU8"
command = U,U,D,D,B,F,B,F,b,c
time = 0

[Command]
name = "CPU9"
command = U,U,D,D,B,F,B,F,a,c
time = 0

[Command]
name = "CPU10"
command = U,U,D,D,B,F,B,F,x,y
time = 0

[Command]
name = "CPU11"
command = U,U,D,D,B,F,B,F,y,z
time = 0

[Command]
name = "CPU12"
command = U,U,D,D,B,F,B,F,x,z
time = 0

[Command]
name = "CPU13"
command = U,U,D,D,B,F,B,F,a,x
time = 0

[Command]
name = "CPU14"
command = U,U,D,D,B,F,B,F,a,y
time = 0

[Command]
name = "CPU15"
command = U,U,D,D,B,F,B,F,a,z
time = 0

[Command]
name = "CPU16"
command = U,U,D,D,B,F,B,F,b,x
time = 0

[Command]
name = "CPU17"
command = U,U,D,D,B,F,B,F,b,y
time = 0

[Command]
name = "CPU18"
command = U,U,D,D,B,F,B,F,b,z
time = 0

[Command]
name = "CPU19"
command = U,U,D,D,B,F,B,F,c,x
time = 0

[Command]
name = "CPU20"
command = U,U,D,D,B,F,B,F,c,y
time = 0

[Command]
name = "CPU21"
command = U,U,D,D,B,F,B,F,c,z
time = 0

[Command]
name = "CPU22"
command = U,U,D,D,B,F,B,F,x,a
time = 0

[Command]
name = "CPU23"
command = U,U,D,D,B,F,B,F,x,b
time = 0

[Command]
name = "CPU24"
command = U,U,D,D,B,F,B,F,x,c
time = 0

[Command]
name = "CPU25"
command = U,U,D,D,B,F,B,F,y,a
time = 0

[Command]
name = "CPU26"
command = U,U,D,D,B,F,B,F,y,b
time = 0

[Command]
name = "CPU27"
command = U,U,D,D,B,F,B,F,y,c
time = 0

[Command]
name = "CPU28"
command = U,U,D,D,B,F,B,F,z,a
time = 0

[Command]
name = "CPU29"
command = U,U,D,D,B,F,B,F,z,b
time = 0

[Command]
name = "CPU30"
command = U,U,D,D,B,F,B,F,z,c
time = 0

[Command]
name = "CPU31"
command = U,U,D,D,B,F,B,F,s,s,s
time = 0

;-| Super Motions |--------------------------------------------------------

[Command] 
name = "upper"
command = ~F, D, DF, x

[Command]
name = "upper2"
command = ~F, D, DF, y

[Command] 
name = "upper3"
command = ~F, D, DF, z

[Command] 
name = "QCF_x"
command = ~D, DF, F, x

[Command] 
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command] 
name = "DD"
command = D, D

[Command] 
name = "super1"
command = ~D, F, D, F, c


;---------------------------------------------------------------------------
[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_c"
command = /F,z
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

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "rollback"
command = a+x
time = 1

[Command]
name = "rollfwd"
command = b+y
time = 1


;-| Dir + Button |---------------------------------------------------------

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


[Statedef -1]

;AI
;----------------------------------------
[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU0"
trigger2 = command = "CPU1"
trigger3 = command = "CPU2"
trigger4 = command = "CPU3"
trigger5 = command = "CPU4"
trigger6 = command = "CPU5"
trigger7 = command = "CPU6"
trigger8 = command = "CPU7"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU8"
trigger2 = command = "CPU9"
trigger3 = command = "CPU10"
trigger4 = command = "CPU11"
trigger5 = command = "CPU12"
trigger6 = command = "CPU13"
trigger7 = command = "CPU14"
trigger8 = command = "CPU15"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU16"
trigger2 = command = "CPU17"
trigger3 = command = "CPU18"
trigger4 = command = "CPU19"
trigger5 = command = "CPU20"
trigger6 = command = "CPU21"
trigger7 = command = "CPU22"
trigger8 = command = "CPU23"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU24"
trigger2 = command = "CPU25"
trigger3 = command = "CPU26"
trigger4 = command = "CPU27"
trigger5 = command = "CPU28"
trigger6 = command = "CPU29"
trigger7 = command = "CPU30"
trigger8 = command = "CPU31"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU0"
trigger2 = command = "CPU1"
trigger3 = command = "CPU2"
trigger4 = command = "CPU3"
trigger5 = command = "CPU4"
trigger6 = command = "CPU5"
trigger7 = command = "CPU6"
trigger8 = command = "CPU7"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU8"
trigger2 = command = "CPU9"
trigger3 = command = "CPU10"
trigger4 = command = "CPU11"
trigger5 = command = "CPU12"
trigger6 = command = "CPU13"
trigger7 = command = "CPU14"
trigger8 = command = "CPU15"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU16"
trigger2 = command = "CPU17"
trigger3 = command = "CPU18"
trigger4 = command = "CPU19"
trigger5 = command = "CPU20"
trigger6 = command = "CPU21"
trigger7 = command = "CPU22"
trigger8 = command = "CPU23"
v = 50
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU24"
trigger2 = command = "CPU25"
trigger3 = command = "CPU26"
trigger4 = command = "CPU27"
trigger5 = command = "CPU28"
trigger6 = command = "CPU29"
trigger7 = command = "CPU30"
trigger8 = command = "CPU31"
v = 50
value = 1

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;Œã‘Þƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Ducken Tief
;-§‚¿ŽãƒLƒbƒN
[State -1, Duck Deep]
type = ChangeState
value = 217
triggerall = command = "DD"
;triggerall = command != "holddown"
trigger1 = statetype != A 
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouch Walking frwd
;-§‚¿ŽãƒLƒbƒN
[State -1, Crouch Walk Fwrd]
type = ChangeState
value = 218
trigger1 = stateno = 11 && command = "holddown" && command = "holdfwd"
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouch Walking backwd
;-§‚¿ŽãƒLƒbƒN
[State -1, Crouch Walk Back]
type = ChangeState
value = 219
trigger1 = stateno = 11 && command = "holddown" && command = "holdback"
trigger1 = ctrl


;---------------------------------------------------------------------------
;Pillar Uppercut
[State -1, upperLevel1]
type = ChangeState
value = 351
triggerall = command = "upper"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Pillar Uppercut
[State -1, upperLevel2]
type = ChangeState
value = 352
triggerall = command = "upper2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Pillar Uppercut
[State -1, upperLevel3]
type = ChangeState
value = 353
triggerall = command = "upper3"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Pillar Uppercut]
type = ChangeState
value = 353
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 200 && random <= 955
triggerall = p2statetype = A
triggerall = ctrl = 1
trigger1 = p2bodydist X > 10 && p2bodydist X < 30

;---------------------------------------------------------------------------
;Light Flame Stone Special
[State -1, StoneLevel1]
type = ChangeState
value = 215
triggerall = command = "QCF_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, AI Flame Stone Spin]
type = ChangeState
value = 215
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 100 && random <= 959
triggerall = statetype = S
triggerall = p2statetype = S
triggerall = ctrl = 1
trigger1 = p2bodydist X > 20 && p2bodydist X < 50

;---------------------------------------------------------------------------
;Light Flame Stone Special Level 2
[State -1, StoneLevel2]
type = ChangeState
value = 216
triggerall = command = "QCF_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Light Flame Stone Special Level 3
[State -1, StoneLevel3]
type = ChangeState
value = 220
triggerall = command = "QCF_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
[State -1, Super Stone Spin]
type = Changestate
value = 20000
triggerall = command = "super1"
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger1 = statetype = S

[State -1, AI Super Stone Spin]
type = ChangeState
value = 20000
triggerall = Var(50) = 1
triggerall = random >= 200 && random < 299 || random >= 450 && random <= 999
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = power >= 2000
trigger1 = p2bodydist X > 2 && p2bodydist X < 120
;---------------------------------------------------------------------------
; Throw
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "fwd_c"   
trigger1 = stateno != 100    
trigger1 = p2bodydist X < 5
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_c"   
trigger2 = stateno != 100    
trigger2 = p2bodydist X < 5
trigger2 = p2statetype = C
trigger2 = p2movetype != H

[State -1, AI Throw]
type = ChangeState
value = 900
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 300 && random <= 959
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = p2bodydist X > 1 && p2bodydist X < 25

;---------------------------------------------------------------------------
[State -1, rollback]
type = ChangeState
value = 300
triggerall = command = "rollback"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, rollfwd]
type = ChangeState
value = 301
triggerall = command = "rollfwd"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light Punch
;—§‚¿Žãƒpƒ“ƒ`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = P2bodydist X > 55
trigger1 = statetype = S
trigger1 = ctrl

trigger2 = (stateno = 200) && time > 11;
trigger3 = (stateno = 230) && time > 4; 

;---------------------------------------------------------------------------
; Stand light Punch (Close)
[State -1]
type = ChangeState
value = 212
triggerall = command = "x"
triggerall = P2bodydist X <= 52
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand Strong Punch
;—§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = P2bodydist X > 52
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 8
trigger3 = (stateno = 230) && time > 10

;---------------------------------------------------------------------------
;Stand Strong Punch (close)
;-§‚¿‹­ƒpƒ“ƒ`
[State -1, Stand Strong Punch]
type = ChangeState
value = 213
triggerall = command = "y"
triggerall = P2bodydist X <= 55
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 8
trigger3 = (stateno = 230) && time > 10


;---------------------------------------------------------------------------
;Stand Heavy Punch
;-§‚¿‹-ƒpƒ“ƒ`
[State -1, Stand Heavy Punch]
type = ChangeState
value = 211
triggerall = command = "z"
triggerall = P2bodydist X > 65
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 8
trigger3 = (stateno = 230) && time > 10
;-------------------------------------------------
;Stand Heavy Punch (close)
[State -1, Stand Heavy Punch]
type = ChangeState
value = 214
triggerall = command = "z"
triggerall = P2bodydist X <= 65
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 8
trigger3 = (stateno = 230) && time > 10

[State -1, AI Heavy Punch]
type = ChangeState
value = 214
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 300 && random <= 959
triggerall = statetype = S
triggerall = p2statetype = S
triggerall = ctrl = 1
trigger1 = p2bodydist X > 20 && p2bodydist X < 40



;---------------------------------------------------------------------------
;Stand Light Kick
;—§‚¿ŽãƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 9


;---------------------------------------------------------------------------
;Standing Strong Kick
;—§‚¿‹­ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = P2bodydist X > 55
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 9  ;Perfect lightp  Strongkick
trigger3 = (stateno = 230) && time > 10 ;Perfect Lowkick Strongkick

;---------------------------------------------------------------------------
;Standing Strong Kick (close)
;-§‚¿‹­ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 243
triggerall = command = "b"
triggerall = P2bodydist X <= 55
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 9  ;Perfect lightp  Strongkick
trigger3 = (stateno = 230) && time > 10 ;Perfect Lowkick Strongkick



;---------------------------------------------------------------------------
;Standing Heavy Kick
;—§‚¿‹­ƒLƒbƒN
[State -1, Standing Heavy Kick]
type = ChangeState
value = 241
triggerall = command = "c"
triggerall = P2bodydist X > 55
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 8
trigger3 = (stateno = 230) && time > 10

;---------------------------------------------------------------------------
; Standing Heavy Kick (Close)
[State -1]
type = ChangeState
value = 244
triggerall = command = "c"
triggerall = P2bodydist X <= 55
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, AI Heavy Kick]
type = ChangeState
value = 224
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 200 && random <= 959
triggerall = statetype = S
triggerall = p2statetype = S
triggerall = ctrl = 1
trigger1 = p2bodydist X > 1 && p2bodydist X < 15
;---------------------------------------------------------------------------
;Crouching Light Punch
;‚µ‚á‚ª‚ÝŽãƒpƒ“ƒ`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = P2bodydist X > 30
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch (close)
;‚µ‚á‚ª‚ÝŽãƒpƒ“ƒ`
[State -1, Crouching Light Punch]
type = ChangeState
value = 412
triggerall = command = "x"
triggerall = P2bodydist X <= 30
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Strong Punch
;‚µ‚á‚ª‚Ý‹­ƒpƒ“ƒ`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = P2bodydist X > 55
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Strong Punch
;‚µ‚á‚ª‚Ý‹­ƒpƒ“ƒ`
[State -1, Crouching Strong Punch (close)]
type = ChangeState
value = 413
triggerall = command = "y"
triggerall = P2bodydist X <= 55
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
;Crouching Heavy Punch
;‚µ‚á‚ª‚Ý‹-ƒpƒ“ƒ`
[State -1, Crouching Heavy Punch]
type = ChangeState
value = 411
triggerall = command = "z"
triggerall = P2bodydist X > 55
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Heavy Punch
;‚µ‚á‚ª‚Ý‹-ƒpƒ“ƒ`
[State -1, Crouching Heavy Punch (close)]
type = ChangeState
value = 414
triggerall = command = "z"
triggerall = P2bodydist X <= 55
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Light Kick
;‚µ‚á‚ª‚ÝŽãƒLƒbƒN
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Kick
;‚µ‚á‚ª‚ÝŽãƒLƒbƒN
[State -1, Crouching Light Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Heavy Kick
;‚µ‚á‚ª‚ÝŽãƒLƒbƒN
[State -1, Crouching Heavy Kick]
type = ChangeState
value = 441
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, AI Crouching Kick]
type = ChangeState
value = 441
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 200 && random <= 959
triggerall = statetype = C
triggerall = p2statetype != S
triggerall = p2statetype != A
triggerall = ctrl = 1
trigger1 = p2bodydist X > 5 && p2bodydist X < 30

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, AI JumpKick]
type = ChangeState
value = 640
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 300 && random <= 959
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = p2bodydist X > 80 && p2bodydist X < 140

;---------------------------------------------------------------------------
;Jump Heavy Kick
[State -1, Jump Heavy Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, AI JumpKick]
type = ChangeState
value = 650
triggerall = Var(50) = 1
triggerall = random >= 100 && random < 299 || random >= 300 && random <= 959
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = p2bodydist X > 80 && p2bodydist X < 140


;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 605
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Heavy Punch
[State -1, Jump Heavy Punch]
type = ChangeState
value = 611
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl


