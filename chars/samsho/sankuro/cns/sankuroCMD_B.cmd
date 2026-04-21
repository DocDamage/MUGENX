; The CMD file.
;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15

command.buffer.time = 1

;-| cpu |--------------------------------------------------------
[Command]
name = "cpu1"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a
time = 1

[Command]
name = "cpu2"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, b
time = 1

[Command]
name = "cpu3"
command = a,a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, x
time = 1

[Command]
name = "cpu4"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, y
time = 1

[Command]
name = "cpu5"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a+b 
time = 1

[Command]
name = "cpu6"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, x+y
time = 1

[Command]
name = "cpu7"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, x+a
time = 1

[Command]
name = "cpu8"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, x+b
time = 1

[Command]
name = "cpu9"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, y+b
time = 1

[Command]
name = "cpu10"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, x+y
time = 1

[Command]
name = "cpu11"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, x+a
time = 1

[Command]
name = "cpu12"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, x+b
time = 1

[Command]
name = "cpu13"
command = a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, y+b
time = 1

[Command]
name = "cpu14"
command = x, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, x+y
time = 1

[Command]
name = "cpu15"
command = b, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, x+a
time = 1

;-| Super Motions |--------------------------------------------------------
[Command]; ƒIƒŒ‚Ì‰Î“êe
name = "BANG"
command = ~D, DF, F,y+b
time = 20

[Command];‹«’n
name = "mu"
command = ~D, DB, B,y+b
time = 20

;-| Special Motions |------------------------------------------------------
[Command]; ƒIƒŒ—l–³ŒÀ–CC
name = "mugen3"
command = ~D, DB, F, x+a

[Command]; ƒIƒŒ—l–³ŒÀ–CB
name = "mugen2"
command = ~D, DB, F, a

[Command]; ƒIƒŒ—l–³ŒÀ–CA
name = "mugen"
command = ~D, DB, F, x

[Command]; ‘å–oE
name = "boku"
command = ~B, DB, D, x+a

[Command]; ğ‚à]ŒË‘O
name = "food_4"
command = ~D, DF, F, b

[Command]; õi‚Í]ŒË‘OC
name = "food_3"
command = ~D, DF, F, x+a

[Command]; õi‚Í]ŒË‘OB
name = "food_2"
command = ~D, DF, F, a

[Command]; õi‚Í]ŒË‘OA
name = "food_1"
command = ~D, DF, F, x

[Command];24
name = "24"
command = ~D, DB, B, y

[Command];18
name = "18"
command = ~D, DB, B, a

[Command];57
name = "57"
command = ~D, DB, B, x

[Command];–³–@Œ
name = "muho"
command = B, F, x
;-| Special Motions |------------------------------------------------------

[Command];©Œˆ
name = "ketu"
;command =~B,s
command =~B,F,DF,D,s

[Command];’e‚«
name = "hajiki"
command =~D,B,F,b

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

[Command];ˆê‘M
name = "issen"
command = a+b+y
time = 1

[Command];“{‚è”š”­
name = "bakuhatu"
command = x+a+y
time = 1

[Command]
name = "x+a"
command = x+a
time = 1

[Command];¬’Ç‚¢‘Å‚¿
name = "oiuchi_1"
command = /$D,a+y
time = 5

[Command];‘å’Ç‚¢‘Å‚¿
name = "oiuchi_2"
command =/$U,a+y
time = 5

[Command];‘å’Ç‚¢‘Å‚¿
name = "holda"
command = /$a
time = 1

[Command];‘å’Ç‚¢‘Å‚¿
name = "holdb"
command = /$y
time = 1

[Command];•sˆÓ‘Å‚¿
name = "fui"
command = a+y
time = 1

[Command];sp
name = "spnage"
command = y+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "holdup2" ;Required (do not remove)
command = /U
time = 1

[Command];‘O“]
name = "zen"
command = /$DF,b
time = 1

[Command];Œã“]
name = "kou"
command = /$DB,b
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,y
time = 1

[Command]
name = "Fb"
command = /$F,y
time = 1

[Command]
name = "debug"
command = D,D,s
time = 15

[Command]
name = "cyouhatu"
command = s,s,s
time = 15

;-| Single Button |---------------------------------------------------------
[Command]; ƒpƒ[—­‚ß
name = "pow"
command = /$b
time = 1

[Command];‰Æ’ë—pâ–½”­“®E— ƒRƒ}ƒ“ƒh
name = "zetumei2"
command = /$s
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = y
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
command = b
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


;===========================================================================
[Statedef -1]
;===========================================================================
;------------------------------------------------------
;‹«’nƒoƒO
;------------------------------------------------------
;----------------------------------
;24
[State -1, Stand Strong Punch]
type = ChangeState
value = 1002
triggerall = roundstate = 2
triggerall = var(51) = [60,70]
triggerall = numhelper(1050) = 0
triggerall = numhelper(1060) = 0
triggerall = numhelper(1070) = 0
triggerall = command = "b"
triggerall = statetype != A
trigger1 = ctrl
;----------------------------------
;18
[State -1, Stand Strong Punch]
type = ChangeState
value = 1001
triggerall = roundstate = 2
triggerall = var(51) = [60,70]
triggerall = numhelper(1050) = 0
triggerall = numhelper(1060) = 0
triggerall = numhelper(1070) = 0
triggerall = command = "a"
triggerall = statetype != A
trigger1 = ctrl
;----------------------------------
;57
[State -1, Stand Strong Punch]
type = ChangeState
value = 1000
triggerall = roundstate = 2
triggerall = var(51) = [55,70]
triggerall = numhelper(1050) = 0
triggerall = numhelper(1060) = 0
triggerall = numhelper(1070) = 0
triggerall = command = "x"
triggerall = statetype != A
trigger1 = ctrl
;----------------------------------
; ¬ƒWƒƒƒ“ƒv”ğ‚¯i‚’¼j
[State -1, Run Back]
type = ChangeState
value = 330
triggerall = roundstate = 2
triggerall = var(51) = [62,70]
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
;----------------------------------
[State 100 , 1]
type = ChangeState
value = 6699
triggerall = roundstate = 2
triggerall = var(53) <= 2
triggerall = var(51) != 0
triggerall = command = "holdback"
triggerall = stateno != 6699
trigger1 = statetype = S
trigger1 = ctrl
;------------------------------------------------------
;‹«’nƒoƒO
;------------------------------------------------------


;---------------------------------------------------------------------------
;ƒfƒoƒbƒN
;---------------------------------------------------------------------------
;g—pŒã‚Íâ–½‰œ‹`”­“®ğŒ‹­§ON•‹«’nMAX•–³‚Ì‹«’n”­“®ğŒ‹­§ON•“{‚èƒQ[ƒW‚l‚`‚wB
;‚½‚¾‚µƒoƒO‚é‰Â”\«—L‚èB
[State -1, debug!!]
type = ChangeState
value = 11111
triggerall = roundstate = 2
triggerall = var(49) = 0
triggerall = command = "debug"
triggerall = numhelper(12100)= 0
triggerall = numhelper(12600)= 0
triggerall = numhelper(22100)= 0
triggerall = numhelper(12100)= 0
triggerall = numhelper(22200)= 0
triggerall = statetype != A
;triggerall = var(35) = 1
triggerall = var(45) = 0
trigger1 = ctrl

;‰ğœ
[State -1, debug!!]
type = ChangeState
value = 11113
triggerall = roundstate = 2
triggerall = var(49) = 0
triggerall = command = "debug"
triggerall = numhelper(12100)= 0
triggerall = numhelper(12600)= 0
triggerall = numhelper(22100)= 0
triggerall = numhelper(12100)= 0
triggerall = numhelper(22200)= 0
triggerall = statetype != A
triggerall = var(45) = 1
trigger1 = ctrl
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;â–½‰œ‹` iƒfƒoƒbƒNj
[State -1, Stand Strong Punch]
type = ChangeState
value = 27000
triggerall = roundstate = 2
triggerall = p2life != 0
triggerall = var(49) = 0
triggerall = var(30) = 0
triggerall = var(6) = 0
triggerall = command = "mu"
triggerall = statetype != A
triggerall = var(45) = 1
trigger1 = ctrl
;—§‚¿Œn
trigger2 = (stateno = [200,230]) || stateno = 250
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;‚µ‚á‚ª‚İŒn
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ƒ_ƒbƒVƒ…Œn
trigger4 = stateno = 1500
trigger4 = movecontact
;’e‚©‚êƒLƒƒƒ“ƒZƒ‹Œn
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;‹óƒLƒƒƒ“ƒZƒ‹Œn
trigger7 = stateno = 200 || stateno = 220 || stateno = 400
trigger7 = AnimElem = 4 > 0
trigger8 = stateno = 420 || stateno = 425
trigger8 = AnimElem = 5 > 0
trigger9 = stateno = 225 || stateno = 405
trigger9 = AnimElem = 6 > 0


;â–½‰œ‹`
[State -1, Stand Strong Punch]
type = ChangeState
value = 27000
triggerall = roundstate = 2
triggerall = p2life != 0
triggerall = var(49) = 0
triggerall = var(30) = 0
triggerall = var(6) = 0
triggerall = command = "mu"
triggerall = statetype != A
triggerall = NumExplod(22223)= 1
trigger1 = ctrl
;—§‚¿Œn
trigger2 = (stateno = [200,230]) || stateno = 250
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;‚µ‚á‚ª‚İŒn
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ƒ_ƒbƒVƒ…Œn
trigger4 = stateno = 1500
trigger4 = movecontact
;’e‚©‚êƒLƒƒƒ“ƒZƒ‹Œn
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;‹óƒLƒƒƒ“ƒZƒ‹Œn
trigger7 = stateno = 200 || stateno = 220 || stateno = 400
trigger7 = AnimElem = 4 > 0
trigger8 = stateno = 420 || stateno = 425
trigger8 = AnimElem = 5 > 0
trigger9 = stateno = 225 || stateno = 405
trigger9 = AnimElem = 6 > 0
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;ˆê‘M
[State -1, Stand Strong Punch]
type = ChangeState
value = 13000
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = command = "issen"
triggerall = numhelper(12100)= 1
triggerall = statetype != A
trigger1  = ctrl
;—§‚¿Œn
trigger2 = (stateno = [200,230]) || stateno = 250
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;‚µ‚á‚ª‚İŒn
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ƒ_ƒbƒVƒ…Œn
trigger4 = stateno = 1500
trigger4 = movecontact
;’e‚©‚êƒLƒƒƒ“ƒZƒ‹Œn
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;‹óƒLƒƒƒ“ƒZƒ‹Œn
trigger7 = stateno = 200 || stateno = 220 || stateno = 400
trigger7 = AnimElem = 4 > 0
trigger8 = stateno = 420 || stateno = 425
trigger8 = AnimElem = 5 > 0
trigger9 = stateno = 225 || stateno = 405
trigger9 = AnimElem = 6 > 0
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;“{‚è”š”­1
[State -1, Stand Strong Punch]
type = ChangeState
value = 12500
triggerall = roundstate = 2
triggerall = p2life != 0
triggerall = var(49) = 0
triggerall = var(6) = 0
triggerall = command = "bakuhatu"
triggerall = numhelper(12100)= 0
triggerall = statetype != A
triggerall = var(35) = 0
triggerall = alive = 1
trigger1 = ctrl
trigger2 = stateno =[5000,5011]
;—§‚¿Œn
trigger3 = (stateno = [200,230]) || stateno = 250
trigger3 = stateno != 210
trigger3 = stateno != 230
trigger3 = movecontact
;‚µ‚á‚ª‚İŒn
trigger4 = (stateno = [400,430])
trigger4 = stateno != 410
trigger4 = stateno != 425
trigger4 = stateno != 430
trigger4 = movecontact
;ƒ_ƒbƒVƒ…Œn
trigger5 = stateno = 1500
trigger5 = movecontact
;’e‚©‚êƒLƒƒƒ“ƒZƒ‹Œn
trigger6 = stateno = 700 || stateno = 750
trigger6 = time =[2,6]
trigger7 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger7 = time =[2,11]
;‹óƒLƒƒƒ“ƒZƒ‹Œn
trigger8 = stateno = 200 || stateno = 220 || stateno = 400
trigger8 = AnimElem = 4 > 0
trigger9 = stateno = 420 || stateno = 425
trigger9 = AnimElem = 5 > 0
trigger10 = stateno = 225 || stateno = 405
trigger10 = AnimElem = 6 > 0
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;–³‚Ì‹«’n
[State -1, Stand Strong Punch]
type = ChangeState
value = 12000
triggerall = roundstate = 2
triggerall = p2life != 0
triggerall = var(30) = 0
triggerall = command = "issen"
triggerall = numhelper(12100)= 0
triggerall = NumExplod(22222)= 1
trigger1 = statetype != A
trigger1 = var(35) = 0
trigger1 = ctrl
;---------------------------------------------------------------------------
;–³‚Ì‹«’n
[State -1, Stand Strong Punch]
type = ChangeState
value = 12000
triggerall = roundstate = 2
triggerall = p2life != 0
triggerall = var(30) = 1
triggerall = command = "mu"
triggerall = numhelper(12100)= 0
triggerall = NumExplod(22222)= 1
trigger1 = statetype != A
trigger1 = var(35) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
; ƒIƒŒ‚Ìíq“‡
[State -1, Stand Strong Punch]
type = ChangeState
value = 4500
triggerall = roundstate = 2
triggerall = p2life != 0
triggerall = command = "BANG"
triggerall = statetype != A
Triggerall = var(16) >= 1
trigger1 = ctrl
;—§‚¿Œn
trigger2 = (stateno = [200,230]) || stateno = 250
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;‚µ‚á‚ª‚İŒn
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ƒ_ƒbƒVƒ…Œn
trigger4 = stateno = 1500
trigger4 = movecontact
;’e‚©‚êƒLƒƒƒ“ƒZƒ‹Œn
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;‹óƒLƒƒƒ“ƒZƒ‹Œn
trigger7 = stateno = 200 || stateno = 220 || stateno = 400
trigger7 = AnimElem = 4 > 0
trigger8 = stateno = 420 || stateno = 425
trigger8 = AnimElem = 5 > 0
trigger9 = stateno = 225 || stateno = 405
trigger9 = AnimElem = 6 > 0
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; ƒIƒŒ—l–³ŒÀ–C
[State -1, Stand Strong Punch]
type = ChangeState
value = 1300
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = var(30) = 0
triggerall = command = "mugen" || command = "mugen2" || command = "mugen3"
triggerall = statetype != A
trigger1 = ctrl
;—§‚¿Œn
trigger2 = (stateno = [200,230]) || stateno = 250
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;‚µ‚á‚ª‚İŒn
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ƒ_ƒbƒVƒ…Œn
trigger4 = stateno = 1500
trigger4 = movecontact
;’e‚©‚êƒLƒƒƒ“ƒZƒ‹Œn
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;‹óƒLƒƒƒ“ƒZƒ‹Œn
trigger7 = stateno = 200 || stateno = 220 || stateno = 400
trigger7 = AnimElem = 4 > 0
trigger8 = stateno = 420 || stateno = 425
trigger8 = AnimElem = 5 > 0
trigger9 = stateno = 225 || stateno = 405
trigger9 = AnimElem = 6 > 0
;---------------------------------------------------------------------------
; ‘å–oE
[State -1, Stand Strong Punch]
type = ChangeState
value = 1350
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = var(30) = 0
triggerall = command = "boku" 
triggerall = statetype != A
trigger1 = ctrl
;—§‚¿Œn
trigger2 = (stateno = [200,230]) || stateno = 250
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;‚µ‚á‚ª‚İŒn
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ƒ_ƒbƒVƒ…Œn
trigger4 = stateno = 1500
trigger4 = movecontact
;’e‚©‚êƒLƒƒƒ“ƒZƒ‹Œn
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;‹óƒLƒƒƒ“ƒZƒ‹Œn
trigger7 = stateno = 200 || stateno = 220 || stateno = 400
trigger7 = AnimElem = 4 > 0
trigger8 = stateno = 420 || stateno = 425
trigger8 = AnimElem = 5 > 0
trigger9 = stateno = 225 || stateno = 405
trigger9 = AnimElem = 6 > 0
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;“{‚èğ
[State -1, Stand Strong Punch]
type = ChangeState
value = 1105
triggerall = roundstate = 2
triggerall = var(30) = 0
triggerall = command = "food_4"
triggerall = NumHelper(1100)= 0
triggerall = statetype != A
trigger1 = ctrl
;—§‚¿Œn
trigger2 = (stateno = [200,230]) || stateno = 250
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;‚µ‚á‚ª‚İŒn
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ƒ_ƒbƒVƒ…Œn
trigger4 = stateno = 1500
trigger4 = movecontact
;’e‚©‚êƒLƒƒƒ“ƒZƒ‹Œn
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;‹óƒLƒƒƒ“ƒZƒ‹Œn
trigger7 = stateno = 200 || stateno = 220 || stateno = 400
trigger7 = AnimElem = 4 > 0
trigger8 = stateno = 420 || stateno = 425
trigger8 = AnimElem = 5 > 0
trigger9 = stateno = 225 || stateno = 405
trigger9 = AnimElem = 6 > 0
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; ‚¢‚­‚çõi‚Í]ŒË‘O
[State -1, Stand Strong Punch]
type = ChangeState
value = 1102
triggerall = roundstate = 2
triggerall = command = "food_3"
triggerall = NumHelper(1100)= 0
triggerall = statetype != A
trigger1 = ctrl
;—§‚¿Œn
trigger2 = (stateno = [200,230]) || stateno = 250
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;‚µ‚á‚ª‚İŒn
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ƒ_ƒbƒVƒ…Œn
trigger4 = stateno = 1500
trigger4 = movecontact
;’e‚©‚êƒLƒƒƒ“ƒZƒ‹Œn
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;‹óƒLƒƒƒ“ƒZƒ‹Œn
trigger7 = stateno = 200 || stateno = 220 || stateno = 400
trigger7 = AnimElem = 4 > 0
trigger8 = stateno = 420 || stateno = 425
trigger8 = AnimElem = 5 > 0
trigger9 = stateno = 225 || stateno = 405
trigger9 = AnimElem = 6 > 0
;---------------------------------------------------------------------------
; ‚Ü‚®‚ëõi‚Í]ŒË‘O
[State -1, Stand Strong Punch]
type = ChangeState
value = 1101
triggerall = roundstate = 2
triggerall = command = "food_2"
triggerall = NumHelper(1100)= 0
triggerall = statetype != A
trigger1 = ctrl
;—§‚¿Œn
trigger2 = (stateno = [200,230]) || stateno = 250
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;‚µ‚á‚ª‚İŒn
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ƒ_ƒbƒVƒ…Œn
trigger4 = stateno = 1500
trigger4 = movecontact
;’e‚©‚êƒLƒƒƒ“ƒZƒ‹Œn
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;‹óƒLƒƒƒ“ƒZƒ‹Œn
trigger7 = stateno = 200 || stateno = 220 || stateno = 400
trigger7 = AnimElem = 4 > 0
trigger8 = stateno = 420 || stateno = 425
trigger8 = AnimElem = 5 > 0
trigger9 = stateno = 225 || stateno = 405
trigger9 = AnimElem = 6 > 0
;---------------------------------------------------------------------------
; ‹Êqõi‚Í]ŒË‘O
[State -1, Stand Strong Punch]
type = ChangeState
value = 1100
triggerall = roundstate = 2
triggerall = command = "food_1"
triggerall = NumHelper(1100)= 0
triggerall = statetype != A
trigger1 = ctrl
;—§‚¿Œn
trigger2 = (stateno = [200,230]) || stateno = 250
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;‚µ‚á‚ª‚İŒn
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ƒ_ƒbƒVƒ…Œn
trigger4 = stateno = 1500
trigger4 = movecontact
;’e‚©‚êƒLƒƒƒ“ƒZƒ‹Œn
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;‹óƒLƒƒƒ“ƒZƒ‹Œn
trigger7 = stateno = 200 || stateno = 220 || stateno = 400
trigger7 = AnimElem = 4 > 0
trigger8 = stateno = 420 || stateno = 425
trigger8 = AnimElem = 5 > 0
trigger9 = stateno = 225 || stateno = 405
trigger9 = AnimElem = 6 > 0
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;‚Q‚S
[State -1, Stand Strong Punch]
type = ChangeState
value = 1002
triggerall = roundstate = 2
triggerall = command = "24"
triggerall = numhelper(1050) = 0
triggerall = numhelper(1060) = 0
triggerall = numhelper(1070) = 0
triggerall = statetype != A
trigger1 = ctrl
;—§‚¿Œn
trigger2 = (stateno = [200,230]) || stateno = 250
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;‚µ‚á‚ª‚İŒn
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ƒ_ƒbƒVƒ…Œn
trigger4 = stateno = 1500
trigger4 = movecontact
;’e‚©‚êƒLƒƒƒ“ƒZƒ‹Œn
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;‹óƒLƒƒƒ“ƒZƒ‹Œn
trigger7 = stateno = 200 || stateno = 220 || stateno = 400
trigger7 = AnimElem = 4 > 0
trigger8 = stateno = 420 || stateno = 425
trigger8 = AnimElem = 5 > 0
trigger9 = stateno = 225 || stateno = 405
trigger9 = AnimElem = 6 > 0
;---------------------------------------------------------------------------
;‚P‚W
[State -1, Stand Strong Punch]
type = ChangeState
value = 1001
triggerall = roundstate = 2
triggerall = command = "18"
triggerall = numhelper(1050) = 0
triggerall = numhelper(1060) = 0
triggerall = numhelper(1070) = 0
triggerall = statetype != A
trigger1 = ctrl
;—§‚¿Œn
trigger2 = (stateno = [200,230]) || stateno = 250
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;‚µ‚á‚ª‚İŒn
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ƒ_ƒbƒVƒ…Œn
trigger4 = stateno = 1500
trigger4 = movecontact
;’e‚©‚êƒLƒƒƒ“ƒZƒ‹Œn
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;‹óƒLƒƒƒ“ƒZƒ‹Œn
trigger7 = stateno = 200 || stateno = 220 || stateno = 400
trigger7 = AnimElem = 4 > 0
trigger8 = stateno = 420 || stateno = 425
trigger8 = AnimElem = 5 > 0
trigger9 = stateno = 225 || stateno = 405
trigger9 = AnimElem = 6 > 0
;---------------------------------------------------------------------------
;‚T‚V
[State -1, Stand Strong Punch]
type = ChangeState
value = 1000
triggerall = roundstate = 2
triggerall = command = "57"
triggerall = numhelper(1050) = 0
triggerall = numhelper(1060) = 0
triggerall = numhelper(1070) = 0
triggerall = statetype != A
trigger1 = ctrl
;—§‚¿Œn
trigger2 = (stateno = [200,230]) || stateno = 250
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;‚µ‚á‚ª‚İŒn
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ƒ_ƒbƒVƒ…Œn
trigger4 = stateno = 1500
trigger4 = movecontact
;’e‚©‚êƒLƒƒƒ“ƒZƒ‹Œn
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;‹óƒLƒƒƒ“ƒZƒ‹Œn
trigger7 = stateno = 200 || stateno = 220 || stateno = 400
trigger7 = AnimElem = 4 > 0
trigger8 = stateno = 420 || stateno = 425
trigger8 = AnimElem = 5 > 0
trigger9 = stateno = 225 || stateno = 405
trigger9 = AnimElem = 6 > 0
;---------------------------------------------------------------------------
;ƒIƒŒ—l–³–@Œ
[State -1, Stand Strong Punch]
type = ChangeState
value = 1400
triggerall = roundstate = 2
triggerall = var(30) = 0
triggerall = command = "muho"
triggerall = statetype != A
trigger1 = ctrl
;—§‚¿Œn
trigger2 = (stateno = [200,230]) || stateno = 250
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;‚µ‚á‚ª‚İŒn
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ƒ_ƒbƒVƒ…Œn
trigger4 = stateno = 1500
trigger4 = movecontact
;’e‚©‚êƒLƒƒƒ“ƒZƒ‹Œn
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;‹óƒLƒƒƒ“ƒZƒ‹Œn
trigger7 = stateno = 200 || stateno = 220 || stateno = 400
trigger7 = AnimElem = 4 > 0
trigger8 = stateno = 420 || stateno = 425
trigger8 = AnimElem = 5 > 0
trigger9 = stateno = 225 || stateno = 405
trigger9 = AnimElem = 6 > 0
;---------------------------------------------------------------------------




;---------------------------------------------------------------------------
;“Ë‚«”ò‚Î‚µ
[State -1, Throwsp]
type = ChangeState
value = 800
triggerall = roundstate = 2
triggerall = var(30) = 0
triggerall = command = "spnage"
triggerall = statetype = S
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 12
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = ctrl
trigger2 = stateno = 101
trigger2 = command = "holdfwd"
trigger2 = p2bodydist X < 12
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
;ˆø‚Á’£‚è
[State -1, Throwsp]
type = ChangeState
value = 801
triggerall = roundstate = 2
triggerall = var(30) = 0
triggerall = command = "spnage"
triggerall = statetype = S
trigger1 = command = "holdback"
trigger1 = p2bodydist X < 12
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = ctrl
trigger2 = stateno = 101
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 12
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;“Ë‚«”ò‚Î‚µ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = roundstate = 2
triggerall = var(30) = 1
triggerall = command = "b"
triggerall = statetype = S
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 12
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = ctrl
trigger2 = stateno = 101
trigger2 = command = "holdfwd"
trigger2 = p2bodydist X < 12
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;---------------------------------------------------------------------------
;ˆø‚Á’£‚è
[State -1, Kung Fu Throw]
type = ChangeState
value = 801
triggerall = roundstate = 2
triggerall = var(30) = 1
triggerall = command = "b"
triggerall = statetype = S
trigger1 = command = "holdback"
trigger1 = p2bodydist X < 12
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = ctrl
trigger2 = stateno = 101
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 12
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;===========================================================================
;‘å’Ç‚¢‘Å‚¿
[State -1, Sand Strong Punch]
type = ChangeState
value = 860+var(6)
triggerall = roundstate = 2
triggerall = command = "fui"
triggerall = command = "holdup"
triggerall = statetype != A
triggerall = stateno != 860+var(6)
trigger1 = p2stateno =[5100,5110]
trigger2 = p2stateno = 5050
trigger3 = p2stateno = 5071
trigger1 = ctrl
;===========================================================================
;¬’Ç‚¢‘Å‚¿
[State -1, Sand Strong Punch]
type = ChangeState
value = 850+var(6)
triggerall = roundstate = 2
triggerall = command = "oiuchi_1"
triggerall = p2bodydist X < 40
triggerall = statetype != A
triggerall = stateno != 850+var(6)
trigger1 = p2stateno =[5100,5110]
trigger2 = p2stateno = 5050
trigger3 = p2stateno = 5071
trigger1 = ctrl

;===========================================================================
;’e‚«
[State -1, Sand Strong Punch]
type = ChangeState
value = 395+var(6)
triggerall = roundstate = 2
triggerall = command = "hajiki"
triggerall = statetype != A
trigger1 = ctrl
;—§‚¿Œn
trigger2 = (stateno = [200,230]) || stateno = 250
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;‚µ‚á‚ª‚İŒn
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ƒ_ƒbƒVƒ…Œn
trigger4 = stateno = 1500
trigger4 = movecontact
;’e‚©‚êƒLƒƒƒ“ƒZƒ‹Œn
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;‹óƒLƒƒƒ“ƒZƒ‹Œn
trigger7 = stateno = 200 || stateno = 220 || stateno = 400
trigger7 = AnimElem = 4 > 0
trigger8 = stateno = 420 || stateno = 425
trigger8 = AnimElem = 5 > 0
trigger9 = stateno = 225 || stateno = 405
trigger9 = AnimElem = 6 > 0
;===========================================================================
;•sˆÓ‘Å‚¿
[State -1, Sand Strong Punch]
type = ChangeState
value = 380+var(6)
triggerall = roundstate = 2
triggerall = command = "fui"
triggerall = command != "holdup"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;‘O“]
[State -1, Stand Strong Punch]
type = ChangeState
value = 310
triggerall = roundstate = 2
triggerall = command = "zen"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;Œã“]
[State -1, Stand Strong Punch]
type = ChangeState
value = 320
triggerall = roundstate = 2
triggerall = command = "kou"
trigger1 = statetype != A
trigger1 = ctrl
;===========================================================================
;•š‚¹
[State -1, Run Back]
type = ChangeState
value = 300
triggerall = roundstate = 2
trigger1 = command = "y"
trigger1 = statetype = C
trigger1 = ctrl
;===========================================================================
; ¬ƒWƒƒƒ“ƒv”ğ‚¯i‚’¼j
[State -1, Run Back]
type = ChangeState
value = 330
triggerall = roundstate = 2
trigger1 = command = "y"
trigger1 = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
; ¬ƒWƒƒƒ“ƒv”ğ‚¯i‘Oj
[State -1, Run Back]
type = ChangeState
value = 335
triggerall = roundstate = 2
trigger1 = command = "y"
trigger1 = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;áÒ‘z
[State -1, Stand Strong Punch]
type = ChangeState
value = 360
triggerall = roundstate = 2
triggerall = command = "y"
Triggerall = var(15) > 0
triggerall = var(35) = 0
trigger1 = stateno = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd
;ƒ_ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = roundstate = 2
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Run Back
;Œã‘Şƒ_ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = roundstate = 2
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;©Œˆ
[State -1, Taunt]
type = ChangeState
value = 9500
triggerall = roundstate = 2
triggerall = var(49) = 0
triggerall = var(6) = 0
triggerall = command = "ketu"
triggerall = statetype != A
trigger1 = ctrl
;—§‚¿Œn
trigger2 = (stateno = [200,230]) || stateno = 250
trigger2 = stateno != 210
trigger2 = stateno != 230
trigger2 = movecontact
;‚µ‚á‚ª‚İŒn
trigger3 = (stateno = [400,430])
trigger3 = stateno != 410
trigger3 = stateno != 425
trigger3 = stateno != 430
trigger3 = movecontact
;ƒ_ƒbƒVƒ…Œn
trigger4 = stateno = 1500
trigger4 = movecontact
;’e‚©‚êƒLƒƒƒ“ƒZƒ‹Œn
trigger5 = stateno = 700 || stateno = 750
trigger5 = time =[2,6]
trigger6 = stateno = 710 || stateno = 720 || stateno = 760 || stateno = 770
trigger6 = time =[2,11]
;‹óƒLƒƒƒ“ƒZƒ‹Œn
trigger7 = stateno = 200 || stateno = 220 || stateno = 400
trigger7 = AnimElem = 4 > 0
trigger8 = stateno = 420 || stateno = 425
trigger8 = AnimElem = 5 > 0
trigger9 = stateno = 225 || stateno = 405
trigger9 = AnimElem = 6 > 0
;===========================================================================
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = command = "cyouhatu"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
; ““üè
[State -1, Taunt]
type = ChangeState
value = 197
triggerall = roundstate = 2
triggerall = command = "x"
triggerall = numhelper(11000) = 1
triggerall = numhelper(2351) = 1
triggerall = stateno != 1199
triggerall = ctrl
trigger1 = statetype != A
trigger2 = stateno = 811 || stateno = 821
trigger2 = statetype != A
;---------------------------------------------------------------------------

;----------------------------------------------------------------------------------------------------------
;‰“‹——£a‚è
;----------------------------------------------------------------------------------------------------------
; ‰“‹——£‘åa‚è
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = p2bodydist X >= 30
triggerall = command = "x+a"
triggerall = command != "holddown"
triggerall = StateNo != 100
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;‰“‹——£’†a‚è
[State -1, Stand Light Kick]
type = ChangeState
value = 205
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = p2bodydist X >= 30
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = StateNo != 100
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; ‰“‹——£¬a‚è
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = p2bodydist X >= 30
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = StateNo != 100
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------------------------------------------
;‹ß‹——£a‚è
;----------------------------------------------------------------------------------------------------------
; ‹ß‹——£‘åa‚è
[State -1, Stand Strong Punch]
type = ChangeState
value = 230
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = p2bodydist X < 30
triggerall = command = "x+a"
triggerall = command != "holddown"
triggerall = StateNo != 100
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;‹ß‹——£’†a‚è
[State -1, Stand Light Kick]
type = ChangeState
value = 225
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = p2bodydist X < 30
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = StateNo != 100
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
; ‹ß‹——£¬a‚è
[State -1, Stand Light Punch]
type = ChangeState
value = 220
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = p2bodydist X < 30
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = StateNo != 100
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------------------------------------------
; —§‚¿ƒLƒbƒN
;----------------------------------------------------------------------------------------------------------
;ƒŒƒo[“ü‚êƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 280
triggerall = roundstate = 2
triggerall = command = "Fb"
triggerall = command != "holddown"
triggerall = StateNo != 100
trigger1 = statetype = S
trigger1 = ctrl

;’Êí
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = StateNo != 100
trigger1 = statetype = S
trigger1 = ctrl


;----------------------------------------------------------------------------------------------------------
;‚µ‚á‚ª‚İ‹ß‹——£a‚è
;----------------------------------------------------------------------------------------------------------
; ‹ß‹——£‘åa‚è
[State -1, Stand Strong Punch]
type = ChangeState
value = 410
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = p2bodydist X < 40
triggerall = command = "x+a"
triggerall = command = "holddown"
triggerall = StateNo != 100
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;‹ß‹——£’†a‚è
[State -1, Stand Light Kick]
type = ChangeState
value = 405
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = p2bodydist X < 40
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = StateNo != 100
trigger1 = statetype = C
trigger1 = ctrl

;----------------------------------------------------------------------------------------------------------
;‚µ‚á‚ª‚İ‰“‹——£a‚è
;----------------------------------------------------------------------------------------------------------
; ‰“‹——£‘åa‚è
[State -1, Stand Strong Punch]
type = ChangeState
value = 430
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = p2bodydist X >= 40
triggerall = command = "x+a"
triggerall = command = "holddown"
triggerall = StateNo != 100
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;‰“‹——£’†a‚è
[State -1, Stand Light Kick]
type = ChangeState
value = 425
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = p2bodydist X >= 40
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = StateNo != 100
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
; ‹ß‹——£¬a‚è
[State -1, Stand Light Punch]
type = ChangeState
value = 400
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = StateNo != 100
trigger1 = statetype = C
trigger1 = ctrl

;----------------------------------------------------------------------------------------------------------
;‚µ‚á‚ª‚İƒLƒbƒN
;----------------------------------------------------------------------------------------------------------
;ƒŒƒo[“ü‚êƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 260
triggerall = roundstate = 2
triggerall = command = "Fb"
triggerall = command = "holddown"
triggerall = StateNo != 100
trigger1 = statetype = C
trigger1 = ctrl

;’ÊíƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 450
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = StateNo != 100
trigger1 = statetype = C
trigger1 = ctrl
;----------------------------------------------------------------------------------------------------------
;ƒWƒƒƒ“ƒva‚è
;----------------------------------------------------------------------------------------------------------
;ƒWƒƒƒ“ƒv‘åa‚è
[State -1, Jump Light Punch]
type = ChangeState
value = 610
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = command = "x+a"
trigger1 = statetype = A
trigger1 = ctrl

;ƒWƒƒƒ“ƒv’†a‚è
[State -1, Jump Light Punch]
type = ChangeState
value = 605
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;ƒWƒƒƒ“ƒv¬a‚è
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = roundstate = 2
triggerall = var(6) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;----------------------------------------------------------------------------------------------------------
;ƒWƒƒƒ“ƒvƒLƒbƒN
;----------------------------------------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 650
triggerall = roundstate = 2
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl


;----------------------------------------------------------------------------------------------------------
;‘fè
;----------------------------------------------------------------------------------------------------------
;—§‚¿
[State -1, Stand Strong Punch]
type = ChangeState
value = 10200
triggerall = roundstate = 2
triggerall = var(6) = 10000
triggerall = command != "holddown"
triggerall = StateNo != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "x+a"
trigger2 = command = "x"
trigger3 = command = "a"
;-------------------------------------------
;‚µ‚á‚ª‚İ
[State -1, Stand Strong Punch]
type = ChangeState
value = 10400
triggerall = roundstate = 2
triggerall = var(6) = 10000
triggerall = command = "holddown"
triggerall = StateNo != 100
triggerall = statetype = C
triggerall = ctrl
trigger1 = command = "x+a"
trigger2 = command = "x"
trigger3 = command = "a"
;-------------------------------------------
;ƒWƒƒƒ“ƒv
[State -1, Standing Strong Kick]
type = ChangeState
value = 10600
triggerall = roundstate = 2
triggerall = var(6) = 10000
triggerall = command != "holddown"
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "x+a"
trigger2 = command = "x"
trigger3 = command = "a"
;-------------------------------------------