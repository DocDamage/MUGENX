;-| Super Motions |--------------------------------------------------------
[Command];óVí±â‘
name = "yuuchouka"
command = ~F, DF, D, DB, B, F, x
time = 30

[Command];óVí±â‘
name = "yuuchouka"
command = ~F, DF, D, DB, B, F, b+z
time = 30

[Command];óVí±â‘
name = "yuuchouka"
command = ~F, DF, D, DB, B, F, c+z
time = 30

[Command];é©åà
name = "jiketu"
command = ~B, F, DF, D, s
time = 30

[Command];à®
name = "aoi"
command = ~D, DF, F, y+z

;-| Special Motions |------------------------------------------------------
[Command];í÷é„
name = "tubaki_a"
command = ~B, D, DB, a

[Command];í÷íÜ
name = "tubaki_b"
command = ~B, D, DB, b

[Command];í÷ã≠
name = "tubaki_c"
command = ~B, D, DB, a+b

[Command];í÷ã≠
name = "tubaki_c"
command = ~B, D, DB, c

[Command];îíïSçáé„
name = "sirayuri_a"
command = ~F, D, DF, a

[Command];îíïSçáíÜ
name = "sirayuri_b"
command = ~F, D, DF, b

[Command];îíïSçáã≠
name = "sirayuri_c"
command = ~F, D, DF, a+b

[Command];îíïSçáã≠
name = "sirayuri_c"
command = ~F, D, DF, c

[Command];ó[äÁ
name = "yuugao"
command = ~F, D, DF, z

[Command];í©äÁé„
name = "asagao_a"
command = ~D, DB, B, a

[Command];í©äÁíÜ
name = "asagao_b"
command = ~D, DB, B, b

[Command];í©äÁã≠
name = "asagao_c"
command = ~D, DB, B, a+b

[Command];í©äÁã≠
name = "asagao_c"
command = ~D, DB, B, c

[Command];ïèéqâ∫íi
name = "nadesiko_a"
command = ~D, DF, F, a

[Command];ïèéqíÜíi
name = "nadesiko_b"
command = ~D, DF, F, b

[Command];ïèéqè„íi
name = "nadesiko_c"
command = ~D, DF, F, a+b

[Command];ïèéqè„íi
name = "nadesiko_c"
command = ~D, DF, F, c
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
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = y+b
time = 1

[Command]
name = "fui"
command = b+z
time = 1

[Command]
name = "fui"
command = c+z
time = 1

[Command]
name = "dai"
command = a+b
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

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$b
time = 1

[Command]
name = "holdc"
command = /$c
time = 1

[Command]
name = "holdz"
command = /$z
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

;-------------------------
;[Statedef -1]
;à”ñ°ÅF
;	ÉRÉ}ÉìÉhì¸óÕÇ™â¬î\Ç»ÇÁÇŒèÌéûé¿çsÇ≥ÇÍÇÈstate
[Statedef -1] ;Ç±ÇÃàÍçsÇÕçÌèúÇµÇ»Ç¢Ç≈â∫Ç≥Ç¢

;===========================================================================
;===========================================================================
;                      ïêäÌîÚÇŒÇµãZÅïâBÇµãZ
;===========================================================================
;óVí±â‘
[State -1, yuuchouka]
type = ChangeState
value = 1301
triggerall = command = "yuuchouka"
triggerall = (var(50) = 1 &&  var(51) = 1 &&  var(52) = 1 &&  var(53) = 1 &&  var(54) = 1 &&  var(55) = 1); || power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger4 = animelemtime(8) >= 0 && animelemtime(14) < 0
trigger5 = stateno = 215
trigger6 = stateno = 230
trigger6 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger7 = stateno = 235
trigger7 = animelemtime(1) >= 0 && animelemtime(12) < 0
trigger8 = stateno = 240
trigger8 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger9 = stateno = 245
trigger9 = animelemtime(4) >= 0
trigger10 = stateno = 350
trigger10 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger11 = stateno = 360
trigger11 = animelemtime(1) >= 0 && animelemtime(7) < 0
trigger12 = stateno = 380
trigger12 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger13 = stateno = 400
trigger13 = animelemtime(1) >= 0 && animelemtime(4) < 0
trigger14 = stateno = 405
trigger15 = stateno = 410
trigger15 = animelemtime(1) >= 0 && animelemtime(5) < 0
trigger16 = stateno = 430
trigger16 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger17 = stateno = 445
trigger17 = animelemtime(8) >= 0
trigger18 = stateno = 720
trigger18 = animelemtime(3) >= 0
trigger19 = stateno = 100
trigger20 = stateno = 102
trigger21 = stateno = 103
trigger22 = stateno = 104
trigger23 = prevstateno != 235
trigger23 = stateno = 301
trigger23 = animelemtime(2) >= 0
trigger24 = prevstateno = 235
trigger24 = stateno = 301
trigger24 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger25 = stateno = 302
trigger25 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger26 = stateno = 501
trigger26 = animelemtime(2) >= 0

;----------------------------------------------------------------------
;óVí±â‘ïïàÛíÜ
[State -1, yuuchouka]
type = ChangeState
value = 1300
triggerall = command = "yuuchouka"
triggerall = var(50) != 1 ||  var(51) != 1 ||  var(52) != 1 ||  var(53) != 1 ||  var(54) != 1 ||  var(55) != 1; || power < 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger4 = animelemtime(8) >= 0 && animelemtime(14) < 0
trigger5 = stateno = 215
trigger6 = stateno = 230
trigger6 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger7 = stateno = 235
trigger7 = animelemtime(1) >= 0 && animelemtime(12) < 0
trigger8 = stateno = 240
trigger8 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger9 = stateno = 245
trigger9 = animelemtime(4) >= 0
trigger10 = stateno = 350
trigger10 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger11 = stateno = 360
trigger11 = animelemtime(1) >= 0 && animelemtime(7) < 0
trigger12 = stateno = 380
trigger12 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger13 = stateno = 400
trigger13 = animelemtime(1) >= 0 && animelemtime(4) < 0
trigger14 = stateno = 405
trigger15 = stateno = 410
trigger15 = animelemtime(1) >= 0 && animelemtime(5) < 0
trigger16 = stateno = 430
trigger16 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger17 = stateno = 445
trigger17 = animelemtime(8) >= 0
trigger18 = stateno = 720
trigger18 = animelemtime(3) >= 0
trigger19 = stateno = 100
trigger20 = stateno = 102
trigger21 = stateno = 103
trigger22 = stateno = 104
trigger23 = prevstateno != 235
trigger23 = stateno = 301
trigger23 = animelemtime(2) >= 0
trigger24 = prevstateno = 235
trigger24 = stateno = 301
trigger24 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger25 = stateno = 302
trigger25 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger26 = stateno = 501
trigger26 = animelemtime(2) >= 0

;----------------------------------------------------------------------------
;é©åà
[State -1, jiketu]
type = ChangeState
value = 199
triggerall = command = "jiketu"
trigger1 = statetype != A
trigger1 = ctrl

;-----------------------------------------------------------------------------
;à®
[State -1, aoi]
type = ChangeState
value = 3000
triggerall = command = "aoi"
triggerall = power >= 2000 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger4 = animelemtime(8) >= 0 && animelemtime(14) < 0
trigger5 = stateno = 215
trigger6 = stateno = 230
trigger6 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger7 = stateno = 235
trigger7 = animelemtime(1) >= 0 && animelemtime(12) < 0
trigger8 = stateno = 240
trigger8 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger9 = stateno = 245
trigger9 = animelemtime(4) >= 0
trigger10 = stateno = 350
trigger10 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger11 = stateno = 360
trigger11 = animelemtime(1) >= 0 && animelemtime(7) < 0
trigger12 = stateno = 380
trigger12 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger13 = stateno = 400
trigger13 = animelemtime(1) >= 0 && animelemtime(4) < 0
trigger14 = stateno = 405
trigger15 = stateno = 410
trigger15 = animelemtime(1) >= 0 && animelemtime(5) < 0
trigger16 = stateno = 430
trigger16 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger17 = stateno = 445
trigger17 = animelemtime(8) >= 0
trigger18 = stateno = 720
trigger18 = animelemtime(3) >= 0
trigger19 = stateno = 100
trigger20 = stateno = 102
trigger21 = stateno = 103
trigger22 = stateno = 104
trigger23 = prevstateno != 235
trigger23 = stateno = 301
trigger23 = animelemtime(2) >= 0
trigger24 = prevstateno = 235
trigger24 = stateno = 301
trigger24 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger25 = stateno = 302
trigger25 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger26 = stateno = 501
trigger26 = animelemtime(2) >= 0

;===========================================================================
;Å@Å@Å@Å@Å@Å@Å@Å@Å@Å@Å@Å@Å@Å@Å@Å@Å@ïKéEãZ
;===========================================================================
;í÷íÜÅïã≠
[State -1, tubaki b or c]
type = ChangeState
value = 1160
triggerall = command = "tubaki_b" || command = "tubaki_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger4 = animelemtime(8) >= 0 && animelemtime(14) < 0
trigger5 = stateno = 215
trigger6 = stateno = 230
trigger6 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger7 = stateno = 235
trigger7 = animelemtime(1) >= 0 && animelemtime(12) < 0
trigger8 = stateno = 240
trigger8 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger9 = stateno = 245
trigger9 = animelemtime(4) >= 0
trigger10 = stateno = 350
trigger10 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger11 = stateno = 360
trigger11 = animelemtime(1) >= 0 && animelemtime(7) < 0
trigger12 = stateno = 380
trigger12 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger13 = stateno = 400
trigger13 = animelemtime(1) >= 0 && animelemtime(4) < 0
trigger14 = stateno = 405
trigger15 = stateno = 410
trigger15 = animelemtime(1) >= 0 && animelemtime(5) < 0
trigger16 = stateno = 430
trigger16 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger17 = stateno = 445
trigger17 = animelemtime(8) >= 0
trigger18 = stateno = 720
trigger18 = animelemtime(3) >= 0
trigger19 = stateno = 100
trigger20 = stateno = 102
trigger21 = stateno = 103
trigger22 = stateno = 104
trigger23 = prevstateno != 235
trigger23 = stateno = 301
trigger23 = animelemtime(2) >= 0
trigger24 = prevstateno = 235
trigger24 = stateno = 301
trigger24 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger25 = stateno = 302
trigger25 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger26 = stateno = 501
trigger26 = animelemtime(2) >= 0

;---------------------------------------------------------------------------
;í÷é„
[State -1, tubaki a]
type = ChangeState
value = 1150
triggerall = command = "tubaki_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger4 = animelemtime(8) >= 0 && animelemtime(14) < 0
trigger5 = stateno = 215
trigger6 = stateno = 230
trigger6 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger7 = stateno = 235
trigger7 = animelemtime(1) >= 0 && animelemtime(12) < 0
trigger8 = stateno = 240
trigger8 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger9 = stateno = 245
trigger9 = animelemtime(4) >= 0
trigger10 = stateno = 350
trigger10 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger11 = stateno = 360
trigger11 = animelemtime(1) >= 0 && animelemtime(7) < 0
trigger12 = stateno = 380
trigger12 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger13 = stateno = 400
trigger13 = animelemtime(1) >= 0 && animelemtime(4) < 0
trigger14 = stateno = 405
trigger15 = stateno = 410
trigger15 = animelemtime(1) >= 0 && animelemtime(5) < 0
trigger16 = stateno = 430
trigger16 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger17 = stateno = 445
trigger17 = animelemtime(8) >= 0
trigger18 = stateno = 720
trigger18 = animelemtime(3) >= 0
trigger19 = stateno = 100
trigger20 = stateno = 102
trigger21 = stateno = 103
trigger22 = stateno = 104
trigger23 = prevstateno != 235
trigger23 = stateno = 301
trigger23 = animelemtime(2) >= 0
trigger24 = prevstateno = 235
trigger24 = stateno = 301
trigger24 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger25 = stateno = 302
trigger25 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger26 = stateno = 501
trigger26 = animelemtime(2) >= 0

;---------------------------------------------------------------------------
;îíïSçáÇb
[State -1, sirayuri c]
type = ChangeState
value = 1020
triggerall = command = "sirayuri_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger4 = animelemtime(8) >= 0 && animelemtime(14) < 0
trigger5 = stateno = 215
trigger6 = stateno = 230
trigger6 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger7 = stateno = 235
trigger7 = animelemtime(1) >= 0 && animelemtime(12) < 0
trigger8 = stateno = 240
trigger8 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger9 = stateno = 245
trigger9 = animelemtime(4) >= 0
trigger10 = stateno = 350
trigger10 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger11 = stateno = 360
trigger11 = animelemtime(1) >= 0 && animelemtime(7) < 0
trigger12 = stateno = 380
trigger12 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger13 = stateno = 400
trigger13 = animelemtime(1) >= 0 && animelemtime(4) < 0
trigger14 = stateno = 405
trigger15 = stateno = 410
trigger15 = animelemtime(1) >= 0 && animelemtime(5) < 0
trigger16 = stateno = 430
trigger16 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger17 = stateno = 445
trigger17 = animelemtime(8) >= 0
trigger18 = stateno = 720
trigger18 = animelemtime(3) >= 0
trigger19 = stateno = 100
trigger20 = stateno = 102
trigger21 = stateno = 103
trigger22 = stateno = 104
trigger23 = prevstateno != 235
trigger23 = stateno = 301
trigger23 = animelemtime(2) >= 0
trigger24 = prevstateno = 235
trigger24 = stateno = 301
trigger24 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger25 = stateno = 302
trigger25 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger26 = stateno = 501
trigger26 = animelemtime(2) >= 0

;---------------------------------------------------------------------------
;îíïSçáÇ`
[State -1, sirayuri a]
type = ChangeState
value = 1000
triggerall = command = "sirayuri_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger4 = animelemtime(8) >= 0 && animelemtime(14) < 0
trigger5 = stateno = 215
trigger6 = stateno = 230
trigger6 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger7 = stateno = 235
trigger7 = animelemtime(1) >= 0 && animelemtime(12) < 0
trigger8 = stateno = 240
trigger8 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger9 = stateno = 245
trigger9 = animelemtime(4) >= 0
trigger10 = stateno = 350
trigger10 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger11 = stateno = 360
trigger11 = animelemtime(1) >= 0 && animelemtime(7) < 0
trigger12 = stateno = 380
trigger12 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger13 = stateno = 400
trigger13 = animelemtime(1) >= 0 && animelemtime(4) < 0
trigger14 = stateno = 405
trigger15 = stateno = 410
trigger15 = animelemtime(1) >= 0 && animelemtime(5) < 0
trigger16 = stateno = 430
trigger16 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger17 = stateno = 445
trigger17 = animelemtime(8) >= 0
trigger18 = stateno = 720
trigger18 = animelemtime(3) >= 0
trigger19 = stateno = 100
trigger20 = stateno = 102
trigger21 = stateno = 103
trigger22 = stateno = 104
trigger23 = prevstateno != 235
trigger23 = stateno = 301
trigger23 = animelemtime(2) >= 0
trigger24 = prevstateno = 235
trigger24 = stateno = 301
trigger24 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger25 = stateno = 302
trigger25 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger26 = stateno = 501
trigger26 = animelemtime(2) >= 0

;---------------------------------------------------------------------------
;îíïSçáÇa
[State -1, sirayuri b]
type = ChangeState
value = 1010
triggerall = command = "sirayuri_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger4 = animelemtime(8) >= 0 && animelemtime(14) < 0
trigger5 = stateno = 215
trigger6 = stateno = 230
trigger6 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger7 = stateno = 235
trigger7 = animelemtime(1) >= 0 && animelemtime(12) < 0
trigger8 = stateno = 240
trigger8 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger9 = stateno = 245
trigger9 = animelemtime(4) >= 0
trigger10 = stateno = 350
trigger10 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger11 = stateno = 360
trigger11 = animelemtime(1) >= 0 && animelemtime(7) < 0
trigger12 = stateno = 380
trigger12 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger13 = stateno = 400
trigger13 = animelemtime(1) >= 0 && animelemtime(4) < 0
trigger14 = stateno = 405
trigger15 = stateno = 410
trigger15 = animelemtime(1) >= 0 && animelemtime(5) < 0
trigger16 = stateno = 430
trigger16 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger17 = stateno = 445
trigger17 = animelemtime(8) >= 0
trigger18 = stateno = 720
trigger18 = animelemtime(3) >= 0
trigger19 = stateno = 100
trigger20 = stateno = 102
trigger21 = stateno = 103
trigger22 = stateno = 104
trigger23 = prevstateno != 235
trigger23 = stateno = 301
trigger23 = animelemtime(2) >= 0
trigger24 = prevstateno = 235
trigger24 = stateno = 301
trigger24 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger25 = stateno = 302
trigger25 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger26 = stateno = 501
trigger26 = animelemtime(2) >= 0

;---------------------------------------------------------------------------
;ó[äÁ
[State -1, yuugao]
type = ChangeState
value = 1200
triggerall = command = "yuugao"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger4 = animelemtime(8) >= 0 && animelemtime(14) < 0
trigger5 = stateno = 215
trigger6 = stateno = 230
trigger6 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger7 = stateno = 235
trigger7 = animelemtime(1) >= 0 && animelemtime(12) < 0
trigger8 = stateno = 240
trigger8 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger9 = stateno = 245
trigger9 = animelemtime(4) >= 0
trigger10 = stateno = 350
trigger10 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger11 = stateno = 360
trigger11 = animelemtime(1) >= 0 && animelemtime(7) < 0
trigger12 = stateno = 380
trigger12 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger13 = stateno = 400
trigger13 = animelemtime(1) >= 0 && animelemtime(4) < 0
trigger14 = stateno = 405
trigger15 = stateno = 410
trigger15 = animelemtime(1) >= 0 && animelemtime(5) < 0
trigger16 = stateno = 430
trigger16 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger17 = stateno = 445
trigger17 = animelemtime(8) >= 0
trigger18 = stateno = 720
trigger18 = animelemtime(3) >= 0
trigger19 = stateno = 100
trigger20 = stateno = 102
trigger21 = stateno = 103
trigger22 = stateno = 104
trigger23 = prevstateno != 235
trigger23 = stateno = 301
trigger23 = animelemtime(2) >= 0
trigger24 = prevstateno = 235
trigger24 = stateno = 301
trigger24 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger25 = stateno = 302
trigger25 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger26 = stateno = 501
trigger26 = animelemtime(2) >= 0

;---------------------------------------------------------------------------------------
;â≤íO
[State -1, botan]
type = ChangeState
value = 1100
triggerall = command = "nadesiko_a" || command = "nadesiko_b" || command = "nadesiko_c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 731
trigger3 = stateno = 251
trigger3 = animelemtime(3) < 0

;---------------------------------------------------------------------------------------
;í©äÁÇb
[State -1, asagao c]
type = ChangeState
value = 1270
triggerall = command = "asagao_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger4 = animelemtime(8) >= 0 && animelemtime(14) < 0
trigger5 = stateno = 215
trigger6 = stateno = 230
trigger6 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger7 = stateno = 235
trigger7 = animelemtime(1) >= 0 && animelemtime(12) < 0
trigger8 = stateno = 240
trigger8 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger9 = stateno = 245
trigger9 = animelemtime(4) >= 0
trigger10 = stateno = 350
trigger10 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger11 = stateno = 360
trigger11 = animelemtime(1) >= 0 && animelemtime(7) < 0
trigger12 = stateno = 380
trigger12 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger13 = stateno = 400
trigger13 = animelemtime(1) >= 0 && animelemtime(4) < 0
trigger14 = stateno = 405
trigger15 = stateno = 410
trigger15 = animelemtime(1) >= 0 && animelemtime(5) < 0
trigger16 = stateno = 430
trigger16 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger17 = stateno = 445
trigger17 = animelemtime(8) >= 0
trigger18 = stateno = 720
trigger18 = animelemtime(3) >= 0
trigger19 = stateno = 100
trigger20 = stateno = 102
trigger21 = stateno = 103
trigger22 = stateno = 104
trigger23 = prevstateno != 235
trigger23 = stateno = 301
trigger23 = animelemtime(2) >= 0
trigger24 = prevstateno = 235
trigger24 = stateno = 301
trigger24 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger25 = stateno = 302
trigger25 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger26 = stateno = 501
trigger26 = animelemtime(2) >= 0

;---------------------------------------------------------------------------------------
;í©äÁÇ`
[State -1, asagao a]
type = ChangeState
value = 1250
triggerall = command = "asagao_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger4 = animelemtime(8) >= 0 && animelemtime(14) < 0
trigger5 = stateno = 215
trigger6 = stateno = 230
trigger6 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger7 = stateno = 235
trigger7 = animelemtime(1) >= 0 && animelemtime(12) < 0
trigger8 = stateno = 240
trigger8 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger9 = stateno = 245
trigger9 = animelemtime(4) >= 0
trigger10 = stateno = 350
trigger10 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger11 = stateno = 360
trigger11 = animelemtime(1) >= 0 && animelemtime(7) < 0
trigger12 = stateno = 380
trigger12 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger13 = stateno = 400
trigger13 = animelemtime(1) >= 0 && animelemtime(4) < 0
trigger14 = stateno = 405
trigger15 = stateno = 410
trigger15 = animelemtime(1) >= 0 && animelemtime(5) < 0
trigger16 = stateno = 430
trigger16 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger17 = stateno = 445
trigger17 = animelemtime(8) >= 0
trigger18 = stateno = 720
trigger18 = animelemtime(3) >= 0
trigger19 = stateno = 100
trigger20 = stateno = 102
trigger21 = stateno = 103
trigger22 = stateno = 104
trigger23 = prevstateno != 235
trigger23 = stateno = 301
trigger23 = animelemtime(2) >= 0
trigger24 = prevstateno = 235
trigger24 = stateno = 301
trigger24 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger25 = stateno = 302
trigger25 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger26 = stateno = 501
trigger26 = animelemtime(2) >= 0

;---------------------------------------------------------------------------------------
;í©äÁÇa
[State -1, asagao b]
type = ChangeState
value = 1260
triggerall = command = "asagao_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger4 = animelemtime(8) >= 0 && animelemtime(14) < 0
trigger5 = stateno = 215
trigger6 = stateno = 230
trigger6 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger7 = stateno = 235
trigger7 = animelemtime(1) >= 0 && animelemtime(12) < 0
trigger8 = stateno = 240
trigger8 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger9 = stateno = 245
trigger9 = animelemtime(4) >= 0
trigger10 = stateno = 350
trigger10 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger11 = stateno = 360
trigger11 = animelemtime(1) >= 0 && animelemtime(7) < 0
trigger12 = stateno = 380
trigger12 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger13 = stateno = 400
trigger13 = animelemtime(1) >= 0 && animelemtime(4) < 0
trigger14 = stateno = 405
trigger15 = stateno = 410
trigger15 = animelemtime(1) >= 0 && animelemtime(5) < 0
trigger16 = stateno = 430
trigger16 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger17 = stateno = 445
trigger17 = animelemtime(8) >= 0
trigger18 = stateno = 720
trigger18 = animelemtime(3) >= 0
trigger19 = stateno = 100
trigger20 = stateno = 102
trigger21 = stateno = 103
trigger22 = stateno = 104
trigger23 = prevstateno != 235
trigger23 = stateno = 301
trigger23 = animelemtime(2) >= 0
trigger24 = prevstateno = 235
trigger24 = stateno = 301
trigger24 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger25 = stateno = 302
trigger25 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger26 = stateno = 501
trigger26 = animelemtime(2) >= 0

;---------------------------------------------------------------------------------------
;ïèéqÇb
[State -1, nadesiko c]
type = ChangeState
value = 1070
triggerall = command = "nadesiko_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger4 = animelemtime(8) >= 0 && animelemtime(14) < 0
trigger5 = stateno = 215
trigger6 = stateno = 230
trigger6 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger7 = stateno = 235
trigger7 = animelemtime(1) >= 0 && animelemtime(12) < 0
trigger8 = stateno = 240
trigger8 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger9 = stateno = 245
trigger9 = animelemtime(4) >= 0
trigger10 = stateno = 350
trigger10 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger11 = stateno = 360
trigger11 = animelemtime(1) >= 0 && animelemtime(7) < 0
trigger12 = stateno = 380
trigger12 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger13 = stateno = 400
trigger13 = animelemtime(1) >= 0 && animelemtime(4) < 0
trigger14 = stateno = 405
trigger15 = stateno = 410
trigger15 = animelemtime(1) >= 0 && animelemtime(5) < 0
trigger16 = stateno = 430
trigger16 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger17 = stateno = 445
trigger17 = animelemtime(8) >= 0
trigger18 = stateno = 720
trigger18 = animelemtime(3) >= 0
trigger19 = stateno = 100
trigger20 = stateno = 102
trigger21 = stateno = 103
trigger22 = stateno = 104
trigger23 = prevstateno != 235
trigger23 = stateno = 301
trigger23 = animelemtime(2) >= 0
trigger24 = prevstateno = 235
trigger24 = stateno = 301
trigger24 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger25 = stateno = 302
trigger25 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger26 = stateno = 501
trigger26 = animelemtime(2) >= 0

;---------------------------------------------------------------------------------------
;ïèéqÇ`
[State -1, nadesiko a]
type = ChangeState
value = 1050
triggerall = command = "nadesiko_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger4 = animelemtime(8) >= 0 && animelemtime(14) < 0
trigger5 = stateno = 215
trigger6 = stateno = 230
trigger6 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger7 = stateno = 235
trigger7 = animelemtime(1) >= 0 && animelemtime(12) < 0
trigger8 = stateno = 240
trigger8 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger9 = stateno = 245
trigger9 = animelemtime(4) >= 0
trigger10 = stateno = 350
trigger10 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger11 = stateno = 360
trigger11 = animelemtime(1) >= 0 && animelemtime(7) < 0
trigger12 = stateno = 380
trigger12 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger13 = stateno = 400
trigger13 = animelemtime(1) >= 0 && animelemtime(4) < 0
trigger14 = stateno = 405
trigger15 = stateno = 410
trigger15 = animelemtime(1) >= 0 && animelemtime(5) < 0
trigger16 = stateno = 430
trigger16 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger17 = stateno = 445
trigger17 = animelemtime(8) >= 0
trigger18 = stateno = 720
trigger18 = animelemtime(3) >= 0
trigger19 = stateno = 100
trigger20 = stateno = 102
trigger21 = stateno = 103
trigger22 = stateno = 104
trigger23 = prevstateno != 235
trigger23 = stateno = 301
trigger23 = animelemtime(2) >= 0
trigger24 = prevstateno = 235
trigger24 = stateno = 301
trigger24 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger25 = stateno = 302
trigger25 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger26 = stateno = 501
trigger26 = animelemtime(2) >= 0

;---------------------------------------------------------------------------------------
;ïèéqÇa
[State -1, nadesiko b]
type = ChangeState
value = 1060
triggerall = command = "nadesiko_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger3 = stateno = 205
trigger4 = stateno = 210
trigger4 = animelemtime(8) >= 0 && animelemtime(14) < 0
trigger5 = stateno = 215
trigger6 = stateno = 230
trigger6 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger7 = stateno = 235
trigger7 = animelemtime(1) >= 0 && animelemtime(12) < 0
trigger8 = stateno = 240
trigger8 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger9 = stateno = 245
trigger9 = animelemtime(4) >= 0
trigger10 = stateno = 350
trigger10 = animelemtime(1) >= 0 && animelemtime(3) < 0
trigger11 = stateno = 360
trigger11 = animelemtime(1) >= 0 && animelemtime(7) < 0
trigger12 = stateno = 380
trigger12 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger13 = stateno = 400
trigger13 = animelemtime(1) >= 0 && animelemtime(4) < 0
trigger14 = stateno = 405
trigger15 = stateno = 410
trigger15 = animelemtime(1) >= 0 && animelemtime(5) < 0
trigger16 = stateno = 430
trigger16 = animelemtime(1) >= 0 && animelemtime(2) < 0
trigger17 = stateno = 445
trigger17 = animelemtime(8) >= 0
trigger18 = stateno = 720
trigger18 = animelemtime(3) >= 0
trigger19 = stateno = 100
trigger20 = stateno = 102
trigger21 = stateno = 103
trigger22 = stateno = 104
trigger23 = prevstateno != 235
trigger23 = stateno = 301
trigger23 = animelemtime(2) >= 0
trigger24 = prevstateno = 235
trigger24 = stateno = 301
trigger24 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger25 = stateno = 302
trigger25 = animelemtime(1) >= 7 && animelemtime(2) < 0
trigger26 = stateno = 501
trigger26 = animelemtime(2) >= 0

;===========================================================================
;Å@Å@Å@Å@Å@Å@Å@Å@Å@Å@Å@Å@Å@Å@Å@Å@ÉVÉXÉeÉÄä÷òA
;===========================================================================
;Run Fwd
;É_ÉbÉVÉÖ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;å„ëﬁÉ_ÉbÉVÉÖ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;ìäÇ∞
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;É_ÉEÉìí«Ç¢ì¢ÇøëÂ
[State -1, oichi]
type = ChangeState
value = 265
triggerall = command = "x" || command = "fui"
triggerall = command = "holdup"
triggerall = p2statetype = L
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 40

;---------------------------------------------------------------------------
;É_ÉEÉìí«Ç¢ì¢Çø
[State -1, oichi]
type = ChangeState
value = 260
triggerall = command = "x" || command = "fui"
triggerall = command = "holddown"
triggerall = p2statetype = L
triggerall = p2bodydist X <= 60
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ïsà”ë≈Çø
[State -1, fuiuchi]
type = ChangeState
value = 250
triggerall = command = "x" || command = "fui"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;å„ì]
[State -1, zenten]
type = ChangeState
value = 730
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;-----------------------------------------------------------------------------
;ëOì]
[State -1, zenten]
type = ChangeState
value = 720
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;-----------------------------------------------------------------------------
;ÇµÇ·Ç™Ç›Å®Çj
[State -1, Crouching Kick]
type = ChangeState
value = 445
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;-----------------------------------------------------------------------------
;è¨ÉWÉÉÉìÉvëO
[State -1, jump]
type = ChangeState
value = 705
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------------------------------------------------------
;è¨ÉWÉÉÉìÉvêÇíº
[State -1, jump]
type = ChangeState
value = 700
triggerall = command = "y"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------------------------------------------------------
;óßÇøÅ®èRÇË
[State -1, Kick]
type = ChangeState
value = 245
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;óßÇøãﬂëÂéaÇË
[State -1, Slash]
type = ChangeState
value = 235
triggerall = command = "c" || command = "dai"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 30
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;óßÇøãﬂé„éaÇË
[State -1, Slash]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 30
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;óßÇøãﬂíÜéaÇË
[State -1, Slash]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 30
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;óßÇøëÂéaÇË
[State -1, Stand Hard Slash]
type = ChangeState
value = 230
triggerall = command = "c" || command = "dai"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;óßÇøé„éaÇË
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;óßÇøíÜéaÇË
[State -1, Stand Medium Slash]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;óßÇøèRÇË
[State -1, Standing Kick]
type = ChangeState
value = 240
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;É_ÉbÉVÉÖëÂéaÇË
[State -1, dash Hard slash]
type = ChangeState
value = 370
triggerall = command = "c" || command = "dai"
trigger1 = statetype = S
trigger1 = stateno = 100

;---------------------------------------------------------------------------
;É_ÉbÉVÉÖé„éaÇË
[State -1, dash light slash]
type = ChangeState
value = 350
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = stateno = 100

;---------------------------------------------------------------------------
;É_ÉbÉVÉÖíÜéaÇË
[State -1, dash medium slash]
type = ChangeState
value = 360
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = stateno = 100

;---------------------------------------------------------------------------
;É_ÉbÉVÉÖèRÇË
[State -1, dash kick]
type = ChangeState
value = 380
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = stateno = 100

;---------------------------------------------------------------------------
;åhà”
[State -1, keii]
type = ChangeState
value = 196
triggerall = command = "start"
triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
;íßî≠
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ÇµÇ·Ç™Ç›ëÂéaÇË
[State -1, Crouching Hard Slash]
type = ChangeState
value = 430
triggerall = command = "c" || command = "dai"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;ÇµÇ·Ç™Ç›ãﬂé„éaÇË
[State -1, Slash]
type = ChangeState
value = 405
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = p2bodydist X <= 30
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ÇµÇ·Ç™Ç›é„éaÇË
[State -1, Crouching Light Slash]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;ÇµÇ·Ç™Ç›íÜéaÇË
[State -1, Crouching Medium Slash]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;ÇµÇ·Ç™Ç›èRÇË
[State -1, Crouching Kick]
type = ChangeState
value = 440
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;ïöÇπ
[State -1, huse]
type = ChangeState
value = 710
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;ãÛíÜëÂéaÇË
[State -1, Jump Hard Slash]
type = ChangeState
value = 630
triggerall = command = "c" || command = "dai"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ãÛíÜé„éaÇË
[State -1, Jump Light Slash]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ãÛíÜíÜéaÇË
[State -1, Jump Medium Slash]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ãÛíÜèRÇË
[State -1, Jump Kick]
type = ChangeState
value = 640
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
