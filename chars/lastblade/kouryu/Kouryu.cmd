;===========================================================================
; ÉRÉ}ÉìÉhê›íËÉtÉ@ÉCÉã
;===========================================================================
;-| CPUä÷òA |---------------------------------------------------------------;ÇlÇlÇqólÇ†ÇËÇ™Ç∆Ç§Ç≤Ç¥Ç¢Ç‹Ç∑
[Command]
name = "cpu1"
command = ~D,UB, F, x
time = 1

[Command]
name = "cpu2"
command = ~D,UB, F, y
time = 1

[Command]
name = "cpu3"
command = ~D,UB, F, z
time = 1

[Command]
name = "cpu4"
command = ~D,DB, F, x
time = 1

[Command]
name = "cpu5"
command = ~D,DB, F, y
time = 1

[Command]
name = "cpu6"
command = ~D,DB, F, z
time = 1

[Command]
name = "cpu7"
command = ~D,DB, B, x
time = 1

[Command]
name = "cpu8"
command = ~D,DB, B, y
time = 1

[Command]
name = "cpu9"
command = ~D,DB, B, z
time = 1

[Command]
name = "cpu10"
command = ~D,DF, F, x
time = 1

[Command]
name = "cpu11"
command = ~D,DF, F, y
time = 1

[Command]
name = "cpu12"
command = ~D,DF, F, z
time = 1
[Command]
name = "cpu13"
command = ~D,DF, F, a
time = 1

[Command]
name = "cpu14"
command = ~D,DF, F, b
time = 1

[Command]
name = "cpu15"
command = ~D,DF, F, c
time = 1

[Command]
name = "cpu16"
command = ~D,DB, B, a
time = 1

[Command]
name = "cpu17"
command = ~D,DB, B, b
time = 1

[Command]
name = "cpu18"
command = ~D,DB, B, c
time = 1

[Command]
name = "cpu19"
command = ~D,DB, F, a
time = 1

[Command]
name = "cpu20"
command = ~D,DB, F, b
time = 1

[Command]
name = "cpu21"
command = ~D,DB, F, c
time = 1

[Command]
name = "cpu22"
command = ~D,UB, F, a
time = 1

[Command]
name = "cpu23"
command = ~D,UB, F, b
time = 1

[Command]
name = "cpu24"
command = ~D,UB, F, c
time = 1

[Command]
name = "cpu25"
command = ~D,DF, F, s
time = 1

[Command]
name = "cpu26"
command = ~D,DB, B, s
time = 1

;-| í¥ïKéEãZ |-------------------------------------------------------------
;élê_ÉmóÕèWÉCÉeê•ÉiÉãÈÅÉåÉVé“â©êÚçëÉwÉgóUÉèÉì
[Command]
name = "senzai"
command = ~$F, D, $B, $F, D, $B, y 
time = 50

;èI‡ÅÉmïë(è„íi)
[Command]
name = "syuen_x"
command = ~D, D, x 
time = 15

;èI‡ÅÉmïë(â∫íi)
[Command]
name = "syuen_y"
command = ~D, D, y 
time = 15

;óêïëâúã`
[Command]
name = "ranbu"
command = ~D, D, x+y 
time = 15

;éÈêù•çÇèÆÉ^Éãé‹îMÉmâŒâä
[Command]
name = "suzaku"
command = ~D, F, D, F, x
time = 35

;îíå’•ãÛÉíóÙÉXñ“å’Émã∂í‹
[Command]
name = "byakko"
command = ~D, F, D, F, y
time = 35

;å∫ïê•óJÉLê¢Ém‚qÉåèÚâªÉXêÖíå
[Command]
name = "genbu"
command = ~D, F, D, F, z
time = 35

;ê¬ó¥•ìVínã§ñ¬ÉXì{çÜÉmóãñ¬
[Command]
name = "seiryu"
command = ~D, F, D, F, a
time = 35

;è\àÍåæê_ôÓ
[Command]
name = "timestop"
command = ~F, z, x, F, a
time = 40

;-| ïKéEãZ |----------------------------------------------------------------
;ãÛÇä—ÉNíOìhÉmñÓ(X)
[Command]
name = "arrow_x"
command = ~D, F, x
time = 15

;ãÛÇä—ÉNíOìhÉmñÓ(Y)
[Command]
name = "arrow_y"
command = ~D, F, y
time = 15

;ìVí√çﬂê¥ÉÅÉãëÂ‚P(X)
[Command]
name = "dashslash_x"
command = ~D, B, x
time = 15

;ìVí√çﬂê¥ÉÅÉãëÂ‚P(Y)
[Command]
name = "dashslash_y"
command = ~D, B, y
time = 15

;ï ìVçßêeÉmàÍìÅ
[Command]
name = "smash"
command = ~D, B, z
time = 15

;èI‡ÅÉmïë
[Command]
name = "df_z"
command = ~D, F, z
time = 15

;ÉKÅ[ÉhÉLÉÉÉìÉZÉãçUåÇ
[Command]
name = "gard_z"
command = ~$B, $D, z
time = 10

;ÉKÅ[ÉhÉLÉÉÉìÉZÉãíeÇ´
[Command]
name = "gard_a"
command = ~$B, $D, a
time = 10

;-| 2ìxâüÇµ |---------------------------------------------------------------
;É_ÉbÉVÉÖ
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

;ÉoÉbÉNÉXÉeÉbÉv
[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;ÉVÉáÅ[ÉgÉWÉÉÉìÉv
[Command]
name = "short"
command = $D, $U
time = 5

;-| É{É^ÉììØéûâüÇµ |--------------------------------------------------------
;épê®âÒïú
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 10

;ñhå‰ïsâ¬éaÇË(ë≈Çøè„Ç∞éaÇË)
[Command]
name = "yz"
command = y+z
time = 1

;ìäÇ∞
[Command]
name = "nage"
command = z+a
time = 1

;ÉÇÅ[ÉhÉ`ÉFÉìÉW
[Command]
name = "change"
command = x+y+z
time = 1

;-| ï˚å¸ÉLÅ[Å{É{É^Éì |-------------------------------------------------------
;ï‘ÇµéaÇË
[Command]
name = "back_x"
command = /B,x
time = 1

;É_ÉbÉVÉÖéaÇË
[Command]
name = "fwd_x"
command = /F,x
time = 1

;ã≠åÇ
[Command]
name = "fwd_y"
command = /F,y
time = 1

;ìäÇ∞
[Command]
name = "back_y"
command = /B,y
time = 1

;í«Ç¢ë≈Çø
[Command]
name = "downfwd_y"
command = /DF,y
time = 5

;ëOèRÇË
[Command]
name = "fwd_z"
command = /F,z
time = 1

;ã≠èRÇË
[Command]
name = "downfwd_z"
command = /DF,z
time = 1

;èI‡ÅÉmïë
[Command]
name = "fwd_yz"
command = /F,y+z
time = 1

;ÇµÇ·Ç™Ç›Çò
[Command]
name = "down_x"
command = /$D,x
time = 1

;ÇµÇ·Ç™Ç›Çô
[Command]
name = "down_y"
command = /$D,y
time = 1

;ÇµÇ·Ç™Ç›Çö
[Command]
name = "down_z"
command = /$D,z
time = 1

;ÇµÇ·Ç™Ç›íeÇ´
[Command]
name = "down_a"
command = /$D,a
time = 1

;-| É{É^Éì |-----------------------------------------------------------------
;óßÇøÇò
[Command]
name = "x"
command = x
time = 1

;óßÇøÇô
[Command]
name = "y"
command = y
time = 1

;óßÇøÇö
[Command]
name = "z"
command = z
time = 1

;íeÇ´
[Command]
name = "a"
command = a
time = 1

;ñ¢égóp
[Command]
name = "b"
command = b
time = 1

;ñ¢égóp
[Command]
name = "c"
command = c
time = 1

;íßî≠
[Command]
name = "s"
command = s
time = 1

;-| É{É^ÉìâüÇµÇ¡ÇœÇ»Çµ |-------------------------------------------------------
;ó≠Çﬂ(ãÛÉíä—Ç≠íOìhÇËÇÃñÓÇw)
[Command]
name = "hold_x"
command = /x

;ó≠Çﬂ(ãÛÉíä—Ç≠íOìhÇËÇÃñÓÇx)
[Command]
name = "hold_y"
command = /y

;-| ï˚å¸ÉLÅ[ |------------------------------------------------------------------
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

;===========================================================================
; ÉRÉ}ÉìÉhê›íËÉtÉ@ÉCÉã
;===========================================================================
[Statedef -1]
;===========================================================================
; CPUÇÃÉãÅ[É`Éì
;===========================================================================
;---------------------------------------------------------------------------
;âìãóó£(ïKéEãZ)
[State -1]
type = ChangeState
triggerall = Var(8) != 1
triggerall = Var(9) != 1
triggerall = Var(10) != 1
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2BodyDist X > 140
trigger1 = ctrl = 1
value = 6000

;íÜãóó£
[State -1]
type = ChangeState
triggerall = Var(8) != 1
triggerall = Var(9) != 1
triggerall = Var(10) != 1
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2BodyDist X = [32,140]
triggerall = P2Movetype != A
triggerall = P2StateType != L
triggerall = P2StateNo != 5050
triggerall = P2StateNo != 5070
triggerall = P2StateNo != 5100
triggerall = P2StateNo != 5110
triggerall = P2StateNo != 5120
triggerall = P2StateNo != 5160
triggerall = P2StateNo != 5170
trigger1 = ctrl = 1
value = 6100

;ãﬂãóó£
[State -1]
type = ChangeState
triggerall = Var(8) != 1
triggerall = Var(9) != 1
triggerall = Var(10) != 1
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2Life > 0
triggerall = P2BodyDist X < 32
riggerall = P2Movetype != A
triggerall = P2StateType != L
triggerall = P2StateNo != 5050
triggerall = P2StateNo != 5070
triggerall = P2StateNo != 5100
triggerall = P2StateNo != 5110
triggerall = P2StateNo != 5120
triggerall = P2StateNo != 5160
triggerall = P2StateNo != 5170
trigger1 = ctrl = 1
value = 6200

;ÉKÅ[Éhéû
[State -1]
type = ChangeState
triggerall = Var(30) = 1
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153
value = 6300

;óêïëâúã`2Åïè\àÍåæê_ôÓíÜ
[State -1]
type = ChangeState
triggerall = Var(8) != 1
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = P2Life > 0
triggerall = ctrl = 1
trigger1 = Var(9) = 1
trigger2 = Var(10) = 1
value = 6400

;í«Ç¢ë≈Çø(âìãóó£)
[State -1]
type = ChangeState
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = P2BodyDist X = [30,80]
triggerall = ctrl = 1
trigger1 = P2StateNo = 5100
trigger2 = P2StateNo = 5170
value = 330

;í«Ç¢ë≈Çø(âìãóó£)
[State -1]
type = ChangeState
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = P2BodyDist X < 30
triggerall = ctrl = 1
trigger1 = P2StateNo = 5100
trigger2 = P2StateNo = 5170
value = 220

;ëäéËçUåÇéû(óßÇø)
[State -1]
type = ChangeState
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
triggerall = Facing = 1
triggerall = prevStateNo != 100
trigger1 = ctrl = 1
value = 130

;ëäéËçUåÇéû(ÇµÇ·Ç™Ç›)
[State -1]
type = ChangeState
triggerall = Var(30) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Facing = 1
triggerall = prevStateNo != 100
trigger1 = ctrl = 1
value = 131

;ëäéËçUåÇéû(ãÛíÜ)
[State -1]
type = ChangeState
triggerall = Var(30) = 1
triggerall = StateType = A
triggerall = P2Movetype = A
triggerall = Facing = 1
triggerall = prevStateNo != 100
trigger1 = ctrl = 1
value = 132

;===========================================================================
; äÓñ{•à⁄ìÆån
;===========================================================================
;---------------------------------------------------------------------------
;ÉVÉáÅ[ÉgÉWÉÉÉìÉv
[State -1]
type = ChangeState
value = 41
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = command != "holddown"
trigger1 = command = "short"

;---------------------------------------------------------------------------
;É_ÉbÉVÉÖ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ÉoÉbÉNÉXÉeÉbÉv
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;íßî≠
[State -1]
type = ChangeState
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ëOì]ãNÇ´è„Ç™ÇË
[State -1]
type = ChangeState
triggerall = command = "holdfwd"
trigger1 = stateno = 5110
value = 5130

;---------------------------------------------------------------------------
;å„ì]ãNÇ´è„Ç™ÇË
[State -1]
type = ChangeState
triggerall = command = "holdback"
trigger1 = stateno = 5110
value = 5135

;===========================================================================
; í¥ïKéEãZån
;===========================================================================
;---------------------------------------------------------------------------
;élê_ÉmóÕèWÉCÉeê•ÉiÉãÈÅÉåÉVé“â©êÚçëÉwÉgóUÉèÉì
[State -1]
type = ChangeState
value = 3400
triggerall = command = "senzai"
triggerall = statetype = S
triggerall = Var(1) != 1
triggerall = Var(8) != 1
triggerall = Var(9) != 1
triggerall = Var(10) != 1
trigger1 = Power >= 3000
trigger1 = ctrl = 1
trigger2 = Power >= 3000
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = Power >= 3000
trigger3 = movecontact
trigger3 = StateNo = 210
trigger4 = Power >= 3000
trigger4 = movecontact
trigger4 = StateNo = 220
trigger5 = Power >= 3000
trigger5 = movecontact
trigger5 = StateNo = 300
trigger6 = Power >= 3000
trigger6 = movecontact
trigger6 = StateNo = 310
trigger7 = Power >= 3000
trigger7 = movecontact
trigger7 = StateNo = 340
trigger8 = Power >= 3000
trigger8 = movecontact
trigger8 = StateNo = 350
trigger9 = Power >= 3000
trigger9 = movecontact
trigger9 = StateNo = 380
trigger10 = Power >= 3000
trigger10 = movecontact
trigger10 = StateNo = 400
trigger11 = Power >= 3000
trigger11 = movecontact
trigger11 = StateNo = 410
trigger12 = Power >= 3000
trigger12 = Var(1) != 0
trigger12 = movecontact
trigger12 = StateNo = 420
trigger13 = Power >= 3000
trigger13 = movecontact
trigger13 = StateNo = 205
trigger14 = Power >= 3000
trigger14 = movecontact
trigger14 = StateNo = 215
trigger15 = Power >= 3000
trigger15 = movecontact
trigger15 = StateNo = 225
trigger16 = Power >= 3000
trigger16 = movecontact
trigger16 = StateNo = 305
trigger17 = Power >= 3000
trigger17 = movecontact
trigger17 = StateNo = 315
trigger18 = Power >= 3000
trigger18 = movecontact
trigger18 = StateNo = 355
trigger19 = Power >= 3000
trigger19 = movecontact
trigger19 = StateNo = 385
trigger20 = Power >= 3000
trigger20 = movecontact
trigger20 = StateNo = 405
trigger21 = Power >= 3000
trigger21 = movecontact
trigger21 = StateNo = 415
trigger22 = Power >= 3000
trigger22 = movecontact
trigger22 = StateNo = 425
trigger23 = Power >= 1000
trigger23 = Life <= 375
trigger23 = ctrl = 1
trigger24 = Power >= 1000
trigger24 = Life <= 375
trigger24 = movecontact
trigger24 = StateNo = 200
trigger25 = Power >= 1000
trigger25 = Life <= 375
trigger25 = movecontact
trigger25 = StateNo = 210
trigger26 = Power >= 1000
trigger26 = Life <= 375
trigger26 = movecontact
trigger26 = StateNo = 220
trigger27 = Power >= 1000
trigger27 = Life <= 375
trigger27 = movecontact
trigger27 = StateNo = 300
trigger28 = Power >= 1000
trigger28 = Life <= 375
trigger28 = movecontact
trigger28 = StateNo = 310
trigger29 = Power >= 1000
trigger29 = Life <= 375
trigger29 = movecontact
trigger29 = StateNo = 340
trigger30 = Power >= 1000
trigger30 = Life <= 375
trigger30 = movecontact
trigger30 = StateNo = 350
trigger31 = Power >= 1000
trigger31 = Life <= 375
trigger31 = movecontact
trigger31 = StateNo = 380
trigger32 = Power >= 1000
trigger32 = Life <= 375
trigger32 = movecontact
trigger32 = StateNo = 400
trigger33 = Power >= 1000
trigger33 = Life <= 375
trigger33 = movecontact
trigger33 = StateNo = 410
trigger34 = Power >= 1000
trigger34 = Life <= 375
trigger34 = Var(1) != 0
trigger34 = movecontact
trigger34 = StateNo = 420
trigger35 = Power >= 1000
trigger35 = Life <= 375
trigger35 = movecontact
trigger35 = StateNo = 205
trigger36 = Power >= 1000
trigger36 = Life <= 375
trigger36 = movecontact
trigger36 = StateNo = 215
trigger37 = Power >= 1000
trigger37 = Life <= 375
trigger37 = movecontact
trigger37 = StateNo = 225
trigger38 = Power >= 1000
trigger38 = Life <= 375
trigger38 = movecontact
trigger38 = StateNo = 305
trigger39 = Power >= 1000
trigger39 = Life <= 375
trigger39 = movecontact
trigger39 = StateNo = 315
trigger40 = Power >= 1000
trigger40 = Life <= 375
trigger40 = movecontact
trigger40 = StateNo = 355
trigger41 = Power >= 1000
trigger41 = Life <= 375
trigger41 = movecontact
trigger41 = StateNo = 385
trigger42 = Power >= 1000
trigger42 = Life <= 375
trigger42 = movecontact
trigger42 = StateNo = 405
trigger43 = Power >= 1000
trigger43 = Life <= 375
trigger43 = movecontact
trigger43 = StateNo = 415
trigger44 = Power >= 1000
trigger44 = Life <= 375
trigger44 = movecontact
trigger44 = StateNo = 425
trigger45 = Power >= 3000
trigger45 = Var(1) = 3
trigger45 = movecontact
trigger45 = StateNo = 1200
trigger46 = Power >= 3000
trigger46 = Var(1) = 3
trigger46 = movecontact
trigger46 = StateNo = 1300
trigger47 = Power >= 1000
trigger47 =  Life <= 375
trigger47 = Var(1) = 3
trigger47 = movecontact
trigger47 = StateNo = 1200
trigger48 = Power >= 1000
trigger48 =  Life <= 375
trigger48 = Var(1) = 3
trigger48 = movecontact
trigger48 = StateNo = 1300

;èI‡ÅÉmïë(è„íi)
[State -1]
type = ChangeState
value = 3500
triggerall = command = "syuen_x"
triggerall = command != "ranbu"
triggerall = statetype != A
triggerall = Var(1) != 0
triggerall = Var(8) != 1
triggerall = Var(9) != 1
triggerall = Var(10) != 1
trigger1 = Power >= 3000
trigger1 = ctrl = 1
trigger2 = Power >= 3000
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = Power >= 3000
trigger3 = movecontact
trigger3 = StateNo = 210
trigger4 = Power >= 3000
trigger4 = movecontact
trigger4 = StateNo = 220
trigger5 = Power >= 3000
trigger5 = movecontact
trigger5 = StateNo = 300
trigger6 = Power >= 3000
trigger6 = movecontact
trigger6 = StateNo = 310
trigger7 = Power >= 3000
trigger7 = movecontact
trigger7 = StateNo = 340
trigger8 = Power >= 3000
trigger8 = movecontact
trigger8 = StateNo = 350
trigger9 = Power >= 3000
trigger9 = movecontact
trigger9 = StateNo = 380
trigger10 = Power >= 3000
trigger10 = movecontact
trigger10 = StateNo = 400
trigger11 = Power >= 3000
trigger11 = movecontact
trigger11 = StateNo = 410
trigger12 = Power >= 3000
trigger12 = movecontact
trigger12 = StateNo = 420
trigger13 = Power >= 3000
trigger13 = movecontact
trigger13 = StateNo = 205
trigger14 = Power >= 3000
trigger14 = movecontact
trigger14 = StateNo = 215
trigger15 = Power >= 3000
trigger15 = movecontact
trigger15 = StateNo = 225
trigger16 = Power >= 3000
trigger16 = movecontact
trigger16 = StateNo = 305
trigger17 = Power >= 3000
trigger17 = movecontact
trigger17 = StateNo = 315
trigger18 = Power >= 3000
trigger18 = movecontact
trigger18 = StateNo = 355
trigger19 = Power >= 3000
trigger19 = movecontact
trigger19 = StateNo = 385
trigger20 = Power >= 3000
trigger20 = movecontact
trigger20 = StateNo = 405
trigger21 = Power >= 3000
trigger21 = movecontact
trigger21 = StateNo = 415
trigger22 = Power >= 3000
trigger22 = movecontact
trigger22 = StateNo = 425
trigger23 = Power >= 1000
trigger23 = Life <= 375
trigger23 = ctrl = 1
trigger24 = Power >= 1000
trigger24 = Life <= 375
trigger24 = movecontact
trigger24 = StateNo = 200
trigger25 = Power >= 1000
trigger25 = Life <= 375
trigger25 = movecontact
trigger25 = StateNo = 210
trigger26 = Power >= 1000
trigger26 = Life <= 375
trigger26 = movecontact
trigger26 = StateNo = 220
trigger27 = Power >= 1000
trigger27 = Life <= 375
trigger27 = movecontact
trigger27 = StateNo = 300
trigger28 = Power >= 1000
trigger28 = Life <= 375
trigger28 = movecontact
trigger28 = StateNo = 310
trigger29 = Power >= 1000
trigger29 = Life <= 375
trigger29 = movecontact
trigger29 = StateNo = 340
trigger30 = Power >= 1000
trigger30 = Life <= 375
trigger30 = movecontact
trigger30 = StateNo = 350
trigger31 = Power >= 1000
trigger31 = Life <= 375
trigger31 = movecontact
trigger31 = StateNo = 380
trigger32 = Power >= 1000
trigger32 = Life <= 375
trigger32 = movecontact
trigger32 = StateNo = 400
trigger33 = Power >= 1000
trigger33 = Life <= 375
trigger33 = movecontact
trigger33 = StateNo = 410
trigger34 = Power >= 1000
trigger34 = Life <= 375
trigger34 = movecontact
trigger34 = StateNo = 420
trigger35 = Power >= 1000
trigger35 = Life <= 375
trigger35 = movecontact
trigger35 = StateNo = 205
trigger36 = Power >= 1000
trigger36 = Life <= 375
trigger36 = movecontact
trigger36 = StateNo = 215
trigger37 = Power >= 1000
trigger37 = Life <= 375
trigger37 = movecontact
trigger37 = StateNo = 225
trigger38 = Power >= 1000
trigger38 = Life <= 375
trigger38 = movecontact
trigger38 = StateNo = 305
trigger39 = Power >= 1000
trigger39 = Life <= 375
trigger39 = movecontact
trigger39 = StateNo = 315
trigger40 = Power >= 1000
trigger40 = Life <= 375
trigger40 = movecontact
trigger40 = StateNo = 355
trigger41 = Power >= 1000
trigger41 = Life <= 375
trigger41 = movecontact
trigger41 = StateNo = 385
trigger42 = Power >= 1000
trigger42 = Life <= 375
trigger42 = movecontact
trigger42 = StateNo = 405
trigger43 = Power >= 1000
trigger43 = Life <= 375
trigger43 = movecontact
trigger43 = StateNo = 415
trigger44 = Power >= 1000
trigger44 = Life <= 375
trigger44 = movecontact
trigger44 = StateNo = 425

;èI‡ÅÉmïë1
[State -1]
type = ChangeState
value = 3520
triggerall = command = "x"
trigger1 = Stateno = 3510
trigger1 =  movecontact
trigger1 =  Time < 20
trigger2 = Stateno = 3710
trigger2 =  movecontact
trigger2 =  Time < 18

;èI‡ÅÉmïë2
[State -1]
type = ChangeState
value = 3530
triggerall = command = "y"
trigger1 = Stateno = 3520
trigger1 =  movecontact
trigger1 =  Time < 15

;èI‡ÅÉmïë3
[State -1]
type = ChangeState
value = 3540
triggerall = command = "z"
trigger1 = Stateno = 3530
trigger1 =  movecontact
trigger1 =  Time < 15

;èI‡ÅÉmïë4
[State -1]
type = ChangeState
value = 3550
triggerall = command = "x"
trigger1 = Stateno = 3540
trigger1 =  movecontact
trigger1 =  Time < 17

;èI‡ÅÉmïë5
[State -1]
type = ChangeState
value = 3560
triggerall = command = "y"
trigger1 = Stateno = 3550
trigger1 =  movecontact
trigger1 =  Time < 27

;èI‡ÅÉmïë6
[State -1]
type = ChangeState
value = 3570
triggerall = command = "z"
trigger1 = Stateno = 3560
trigger1 =  movecontact
trigger1 =  Time < 20

;èI‡ÅÉmïë(í èÌÉãÅ[Ég1)
[State -1]
type = ChangeState
value = 3600
triggerall = command = "x"
trigger1 = Stateno = 3570
trigger1 =  movecontact
trigger1 =  Time < 20

;èI‡ÅÉmïë(í èÌÉãÅ[Ég2)
[State -1]
type = ChangeState
value = 3610
triggerall = command = "y"
trigger1 = Stateno = 3600
trigger1 =  movecontact
trigger1 =  Time < 27

;èI‡ÅÉmïë(í èÌÉãÅ[ÉgEND)
[State -1]
type = ChangeState
value = 3620
triggerall = command = "df_z"
trigger1 = Stateno = 3610
trigger1 =  movecontact
trigger1 =  Time < 25

;èI‡ÅÉmïë(éÈêùÉãÅ[Ég1)
[State -1]
type = ChangeState
value = 3630
triggerall = command = "z"
trigger1 = Stateno = 3570
trigger1 =  movecontact
trigger1 =  Time < 20

;èI‡ÅÉmïë(éÈêùÉãÅ[ÉgEND)
[State -1]
type = ChangeState
value = 3640
triggerall = command = "arrow_y"
trigger1 = Stateno = 3630
trigger1 =  movecontact
trigger1 =  Time < 23

;èI‡ÅÉmïë(â∫íi)
[State -1]
type = ChangeState
value = 3700
triggerall = command = "syuen_y"
triggerall = command != "senzai"
triggerall = command != "ranbu"
triggerall = command != "byakko"
triggerall = statetype != A
triggerall = Var(1) != 0
triggerall = Var(8) != 1
triggerall = Var(9) != 1
triggerall = Var(10) != 1
trigger1 = Power >= 3000
trigger1 = ctrl = 1
trigger2 = Power >= 3000
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = Power >= 3000
trigger3 = movecontact
trigger3 = StateNo = 210
trigger4 = Power >= 3000
trigger4 = movecontact
trigger4 = StateNo = 220
trigger5 = Power >= 3000
trigger5 = movecontact
trigger5 = StateNo = 300
trigger6 = Power >= 3000
trigger6 = movecontact
trigger6 = StateNo = 310
trigger7 = Power >= 3000
trigger7 = movecontact
trigger7 = StateNo = 340
trigger8 = Power >= 3000
trigger8 = movecontact
trigger8 = StateNo = 350
trigger9 = Power >= 3000
trigger9 = movecontact
trigger9 = StateNo = 380
trigger10 = Power >= 3000
trigger10 = movecontact
trigger10 = StateNo = 400
trigger11 = Power >= 3000
trigger11 = movecontact
trigger11 = StateNo = 410
trigger12 = Power >= 3000
trigger12 = movecontact
trigger12 = StateNo = 420
trigger13 = Power >= 3000
trigger13 = movecontact
trigger13 = StateNo = 205
trigger14 = Power >= 3000
trigger14 = movecontact
trigger14 = StateNo = 215
trigger15 = Power >= 3000
trigger15 = movecontact
trigger15 = StateNo = 225
trigger16 = Power >= 3000
trigger16 = movecontact
trigger16 = StateNo = 305
trigger17 = Power >= 3000
trigger17 = movecontact
trigger17 = StateNo = 315
trigger18 = Power >= 3000
trigger18 = movecontact
trigger18 = StateNo = 355
trigger19 = Power >= 3000
trigger19 = movecontact
trigger19 = StateNo = 385
trigger20 = Power >= 3000
trigger20 = movecontact
trigger20 = StateNo = 405
trigger21 = Power >= 3000
trigger21 = movecontact
trigger21 = StateNo = 415
trigger22 = Power >= 3000
trigger22 = movecontact
trigger22 = StateNo = 425
trigger23 = Power >= 1000
trigger23 = Life <= 375
trigger23 = ctrl = 1
trigger24 = Power >= 1000
trigger24 = Life <= 375
trigger24 = movecontact
trigger24 = StateNo = 200
trigger25 = Power >= 1000
trigger25 = Life <= 375
trigger25 = movecontact
trigger25 = StateNo = 210
trigger26 = Power >= 1000
trigger26 = Life <= 375
trigger26 = movecontact
trigger26 = StateNo = 220
trigger27 = Power >= 1000
trigger27 = Life <= 375
trigger27 = movecontact
trigger27 = StateNo = 300
trigger28 = Power >= 1000
trigger28 = Life <= 375
trigger28 = movecontact
trigger28 = StateNo = 310
trigger29 = Power >= 1000
trigger29 = Life <= 375
trigger29 = movecontact
trigger29 = StateNo = 340
trigger30 = Power >= 1000
trigger30 = Life <= 375
trigger30 = movecontact
trigger30 = StateNo = 350
trigger31 = Power >= 1000
trigger31 = Life <= 375
trigger31 = movecontact
trigger31 = StateNo = 380
trigger32 = Power >= 1000
trigger32 = Life <= 375
trigger32 = movecontact
trigger32 = StateNo = 400
trigger33 = Power >= 1000
trigger33 = Life <= 375
trigger33 = movecontact
trigger33 = StateNo = 410
trigger34 = Power >= 1000
trigger34 = Life <= 375
trigger34 = movecontact
trigger34 = StateNo = 420
trigger35 = Power >= 1000
trigger35 = Life <= 375
trigger35 = movecontact
trigger35 = StateNo = 205
trigger36 = Power >= 1000
trigger36 = Life <= 375
trigger36 = movecontact
trigger36 = StateNo = 215
trigger37 = Power >= 1000
trigger37 = Life <= 375
trigger37 = movecontact
trigger37 = StateNo = 225
trigger38 = Power >= 1000
trigger38 = Life <= 375
trigger38 = movecontact
trigger38 = StateNo = 305
trigger39 = Power >= 1000
trigger39 = Life <= 375
trigger39 = movecontact
trigger39 = StateNo = 315
trigger40 = Power >= 1000
trigger40 = Life <= 375
trigger40 = movecontact
trigger40 = StateNo = 355
trigger41 = Power >= 1000
trigger41 = Life <= 375
trigger41 = movecontact
trigger41 = StateNo = 385
trigger42 = Power >= 1000
trigger42 = Life <= 375
trigger42 = movecontact
trigger42 = StateNo = 405
trigger43 = Power >= 1000
trigger43 = Life <= 375
trigger43 = movecontact
trigger43 = StateNo = 415
trigger44 = Power >= 1000
trigger44 = Life <= 375
trigger44 = movecontact
trigger44 = StateNo = 425

;èI‡ÅÉmïë4'
[State -1]
type = ChangeState
value = 3720
triggerall = command = "down_z"
trigger1 = Stateno = 3540
trigger1 =  movecontact
trigger1 =  Time < 15

;å∫ïêÉãÅ[Ég1
[State -1]
type = ChangeState
value = 3730
triggerall = command = "down_z"
trigger1 = Stateno = 3720
trigger1 =  movecontact
trigger1 =  Time < 21

;å∫ïêÉãÅ[ÉgEND
[State -1]
type = ChangeState
value = 3740
triggerall = command = "fwd_yz"
trigger1 = Stateno = 3730
trigger1 =  movecontact
trigger1 =  Time < 21

;îíå’ÉãÅ[Ég1
[State -1]
type = ChangeState
value = 3750
triggerall = command = "fwd_yz"
trigger1 = Stateno = 3720
trigger1 =  movecontact
trigger1 =  Time < 21

;îíå’ÉãÅ[ÉgEND
[State -1]
type = ChangeState
value = 3760
triggerall = command = "arrow_y"
trigger1 = Stateno = 3750
trigger1 =  movecontact
trigger1 =  Time < 29

;óêïëâúã`
[State -1]
type = ChangeState
value = 3900
triggerall = command = "ranbu"
triggerall = command != "senzai"
triggerall = command != "byakko"
triggerall = command != "genbu"
triggerall = statetype != A
triggerall = Var(1) = 3
triggerall = Var(8) != 1
triggerall = Var(9) != 1
triggerall = Var(10) != 1
trigger1 = Power >= 3000
trigger1 = ctrl = 1
trigger2 = Power >= 3000
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = Power >= 3000
trigger3 = movecontact
trigger3 = StateNo = 210
trigger4 = Power >= 3000
trigger4 = movecontact
trigger4 = StateNo = 220
trigger5 = Power >= 3000
trigger5 = movecontact
trigger5 = StateNo = 300
trigger6 = Power >= 3000
trigger6 = movecontact
trigger6 = StateNo = 310
trigger7 = Power >= 3000
trigger7 = movecontact
trigger7 = StateNo = 340
trigger8 = Power >= 3000
trigger8 = movecontact
trigger8 = StateNo = 350
trigger9 = Power >= 3000
trigger9 = movecontact
trigger9 = StateNo = 380
trigger10 = Power >= 3000
trigger10 = movecontact
trigger10 = StateNo = 400
trigger11 = Power >= 3000
trigger11 = movecontact
trigger11 = StateNo = 410
trigger12 = Power >= 3000
trigger12 = movecontact
trigger12 = StateNo = 420
trigger13 = Power >= 3000
trigger13 = movecontact
trigger13 = StateNo = 205
trigger14 = Power >= 3000
trigger14 = movecontact
trigger14 = StateNo = 215
trigger15 = Power >= 3000
trigger15 = movecontact
trigger15 = StateNo = 225
trigger16 = Power >= 3000
trigger16 = movecontact
trigger16 = StateNo = 305
trigger17 = Power >= 3000
trigger17 = movecontact
trigger17 = StateNo = 315
trigger18 = Power >= 3000
trigger18 = movecontact
trigger18 = StateNo = 355
trigger19 = Power >= 3000
trigger19 = movecontact
trigger19 = StateNo = 385
trigger20 = Power >= 3000
trigger20 = movecontact
trigger20 = StateNo = 405
trigger21 = Power >= 3000
trigger21 = movecontact
trigger21 = StateNo = 415
trigger22 = Power >= 3000
trigger22 = movecontact
trigger22 = StateNo = 425
trigger23 = Power >= 1000
trigger23 = Life <= 375
trigger23 = ctrl = 1
trigger24 = Power >= 1000
trigger24 = Life <= 375
trigger24 = movecontact
trigger24 = StateNo = 200
trigger25 = Power >= 1000
trigger25 = Life <= 375
trigger25 = movecontact
trigger25 = StateNo = 210
trigger26 = Power >= 1000
trigger26 = Life <= 375
trigger26 = movecontact
trigger26 = StateNo = 220
trigger27 = Power >= 1000
trigger27 = Life <= 375
trigger27 = movecontact
trigger27 = StateNo = 300
trigger28 = Power >= 1000
trigger28 = Life <= 375
trigger28 = movecontact
trigger28 = StateNo = 310
trigger29 = Power >= 1000
trigger29 = Life <= 375
trigger29 = movecontact
trigger29 = StateNo = 340
trigger30 = Power >= 1000
trigger30 = Life <= 375
trigger30 = movecontact
trigger30 = StateNo = 350
trigger31 = Power >= 1000
trigger31 = Life <= 375
trigger31 = movecontact
trigger31 = StateNo = 380
trigger32 = Power >= 1000
trigger32 = Life <= 375
trigger32 = movecontact
trigger32 = StateNo = 400
trigger33 = Power >= 1000
trigger33 = Life <= 375
trigger33 = movecontact
trigger33 = StateNo = 410
trigger34 = Power >= 1000
trigger34 = Life <= 375
trigger34 = movecontact
trigger34 = StateNo = 420
trigger35 = Power >= 1000
trigger35 = Life <= 375
trigger35 = movecontact
trigger35 = StateNo = 205
trigger36 = Power >= 1000
trigger36 = Life <= 375
trigger36 = movecontact
trigger36 = StateNo = 215
trigger37 = Power >= 1000
trigger37 = Life <= 375
trigger37 = movecontact
trigger37 = StateNo = 225
trigger38 = Power >= 1000
trigger38 = Life <= 375
trigger38 = movecontact
trigger38 = StateNo = 305
trigger39 = Power >= 1000
trigger39 = Life <= 375
trigger39 = movecontact
trigger39 = StateNo = 315
trigger40 = Power >= 1000
trigger40 = Life <= 375
trigger40 = movecontact
trigger40 = StateNo = 355
trigger41 = Power >= 1000
trigger41 = Life <= 375
trigger41 = movecontact
trigger41 = StateNo = 385
trigger42 = Power >= 1000
trigger42 = Life <= 375
trigger42 = movecontact
trigger42 = StateNo = 405
trigger43 = Power >= 1000
trigger43 = Life <= 375
trigger43 = movecontact
trigger43 = StateNo = 415
trigger44 = Power >= 1000
trigger44 = Life <= 375
trigger44 = movecontact
trigger44 = StateNo = 425

;---------------------------------------------------------------------------
;éÈêù•çÇèÆÉ^Éãé‹îMÉmâŒâä
[State -1]
type = ChangeState
value = 3000
triggerall = command = "suzaku"
triggerall = statetype = A
triggerall = Pos Y <  100
triggerall = Var(8) != 1
triggerall = Var(9) != 1
triggerall = Var(10) != 1
trigger1 = Power >= 1000
trigger1 = ctrl = 1
trigger2 = Power >= 1000
trigger2 = StateNo = 1210
trigger3 = Power >= 1000
trigger3 = StateNo = 1220
trigger4 = Life <= 375
trigger4 = ctrl = 1
trigger5 =  Life <= 375
trigger5 = StateNo = 1210
trigger6 =  Life <= 375
trigger6 = StateNo = 1220

;---------------------------------------------------------------------------
;îíå’•ãÛÉíóÙÉXñ“å’Émã∂í‹
[State -1]
type = ChangeState
value = 3100
triggerall = command = "byakko"
triggerall = command != "senzai"
triggerall = statetype = S
triggerall = Var(8) != 1
triggerall = Var(9) != 1
triggerall = Var(10) != 1
trigger1 = Power >= 1000
trigger1 = ctrl = 1
trigger2 = Power >= 1000
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = Power >= 1000
trigger3 = movecontact
trigger3 = StateNo = 210
trigger4 = Power >= 1000
trigger4 = movecontact
trigger4 = StateNo = 220
trigger5 = Power >= 1000
trigger5 = movecontact
trigger5 = StateNo = 300
trigger6 = Power >= 1000
trigger6 = movecontact
trigger6 = StateNo = 310
trigger7 = Power >= 1000
trigger7 = movecontact
trigger7 = StateNo = 340
trigger8 = Power >= 1000
trigger8 = movecontact
trigger8 = StateNo = 350
trigger9 = Power >= 1000
trigger9 = movecontact
trigger9 = StateNo = 380
trigger10 = Power >= 1000
trigger10 = movecontact
trigger10 = StateNo = 400
trigger11 = Power >= 1000
trigger11 = movecontact
trigger11 = StateNo = 410
trigger12 = Power >= 1000
trigger12 = Var(1) != 0
trigger12 = movecontact
trigger12 = StateNo = 420
trigger13 = Power >= 1000
trigger13 = movecontact
trigger13 = StateNo = 205
trigger14 = Power >= 1000
trigger14 = movecontact
trigger14 = StateNo = 215
trigger15 = Power >= 1000
trigger15 = movecontact
trigger15 = StateNo = 225
trigger16 = Power >= 1000
trigger16 = movecontact
trigger16 = StateNo = 305
trigger17 = Power >= 1000
trigger17 = movecontact
trigger17 = StateNo = 315
trigger18 = Power >= 1000
trigger18 = movecontact
trigger18 = StateNo = 355
trigger19 = Power >= 1000
trigger19 = movecontact
trigger19 = StateNo = 385
trigger20 = Power >= 1000
trigger20 = movecontact
trigger20 = StateNo = 405
trigger21 = Power >= 1000
trigger21 = movecontact
trigger21 = StateNo = 415
trigger22 = Power >= 1000
trigger22 = movecontact
trigger22 = StateNo = 425
trigger23 = Life <= 375
trigger23 = ctrl = 1
trigger24 = Life <= 375
trigger24 = movecontact
trigger24 = StateNo = 200
trigger25 = Life <= 375
trigger25 = movecontact
trigger25 = StateNo = 210
trigger26 = Life <= 375
trigger26 = movecontact
trigger26 = StateNo = 220
trigger27 = Life <= 375
trigger27 = movecontact
trigger27 = StateNo = 300
trigger28 = Life <= 375
trigger28 = movecontact
trigger28 = StateNo = 310
trigger29 = Life <= 375
trigger29 = movecontact
trigger29 = StateNo = 340
trigger30 = Life <= 375
trigger30 = movecontact
trigger30 = StateNo = 350
trigger31 = Life <= 375
trigger31 = movecontact
trigger31 = StateNo = 380
trigger32 = Life <= 375
trigger32 = movecontact
trigger32 = StateNo = 400
trigger33 = Life <= 375
trigger33 = movecontact
trigger33 = StateNo = 410
trigger34 = Life <= 375
trigger34 = Var(1) != 0
trigger34 = movecontact
trigger34 = StateNo = 420
trigger35 = Life <= 375
trigger35 = movecontact
trigger35 = StateNo = 205
trigger36 = Life <= 375
trigger36 = movecontact
trigger36 = StateNo = 215
trigger37 = Life <= 375
trigger37 = movecontact
trigger37 = StateNo = 225
trigger38 = Life <= 375
trigger38 = movecontact
trigger38 = StateNo = 305
trigger39 = Life <= 375
trigger39 = movecontact
trigger39 = StateNo = 315
trigger40 = Life <= 375
trigger40 = movecontact
trigger40 = StateNo = 355
trigger41 = Life <= 375
trigger41 = movecontact
trigger41 = StateNo = 385
trigger42 = Life <= 375
trigger42 = movecontact
trigger42 = StateNo = 405
trigger43 = Life <= 375
trigger43 = movecontact
trigger43 = StateNo = 415
trigger44 = Life <= 375
trigger44 = movecontact
trigger44 = StateNo = 425
trigger45 = Power >= 1000
trigger45 = movecontact
trigger45 = StateNo = 1200
trigger46 = Power >= 1000
trigger46 = movecontact
trigger46 = StateNo = 1300
trigger47 =  Life <= 375
trigger47 = movecontact
trigger47 = StateNo = 1200
trigger48 =  Life <= 375
trigger48 = movecontact
trigger48 = StateNo = 1300

;---------------------------------------------------------------------------
;å∫ïê•óJÉLê¢Ém‚qÉåèÚâªÉXêÖíå
[State -1]
type = ChangeState
value = 3200
triggerall = command = "genbu"
triggerall = statetype = S
triggerall = Var(8) != 1
triggerall = Var(9) != 1
triggerall = Var(10) != 1
trigger1 = Power >= 1000
trigger1 = ctrl = 1
trigger2 = Power >= 1000
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = Power >= 1000
trigger3 = movecontact
trigger3 = StateNo = 210
trigger4 = Power >= 1000
trigger4 = movecontact
trigger4 = StateNo = 220
trigger5 = Power >= 1000
trigger5 = movecontact
trigger5 = StateNo = 300
trigger6 = Power >= 1000
trigger6 = movecontact
trigger6 = StateNo = 310
trigger7 = Power >= 1000
trigger7 = movecontact
trigger7 = StateNo = 340
trigger8 = Power >= 1000
trigger8 = movecontact
trigger8 = StateNo = 350
trigger9 = Power >= 1000
trigger9 = movecontact
trigger9 = StateNo = 380
trigger10 = Power >= 1000
trigger10 = movecontact
trigger10 = StateNo = 400
trigger11 = Power >= 1000
trigger11 = movecontact
trigger11 = StateNo = 410
trigger12 = Power >= 1000
trigger12 = Var(1) != 0
trigger12 = movecontact
trigger12 = StateNo = 420
trigger13 = Power >= 1000
trigger13 = movecontact
trigger13 = StateNo = 205
trigger14 = Power >= 1000
trigger14 = movecontact
trigger14 = StateNo = 215
trigger15 = Power >= 1000
trigger15 = movecontact
trigger15 = StateNo = 225
trigger16 = Power >= 1000
trigger16 = movecontact
trigger16 = StateNo = 305
trigger17 = Power >= 1000
trigger17 = movecontact
trigger17 = StateNo = 315
trigger18 = Power >= 1000
trigger18 = movecontact
trigger18 = StateNo = 355
trigger19 = Power >= 1000
trigger19 = movecontact
trigger19 = StateNo = 385
trigger20 = Power >= 1000
trigger20 = movecontact
trigger20 = StateNo = 405
trigger21 = Power >= 1000
trigger21 = movecontact
trigger21 = StateNo = 415
trigger22 = Power >= 1000
trigger22 = movecontact
trigger22 = StateNo = 425
trigger23 = Life <= 375
trigger23 = ctrl = 1
trigger24 = Life <= 375
trigger24 = movecontact
trigger24 = StateNo = 200
trigger25 = Life <= 375
trigger25 = movecontact
trigger25 = StateNo = 210
trigger26 = Life <= 375
trigger26 = movecontact
trigger26 = StateNo = 220
trigger27 = Life <= 375
trigger27 = movecontact
trigger27 = StateNo = 300
trigger28 = Life <= 375
trigger28 = movecontact
trigger28 = StateNo = 310
trigger29 = Life <= 375
trigger29 = movecontact
trigger29 = StateNo = 340
trigger30 = Life <= 375
trigger30 = movecontact
trigger30 = StateNo = 350
trigger31 = Life <= 375
trigger31 = movecontact
trigger31 = StateNo = 380
trigger32 = Life <= 375
trigger32 = movecontact
trigger32 = StateNo = 400
trigger33 = Life <= 375
trigger33 = movecontact
trigger33 = StateNo = 410
trigger34 = Life <= 375
trigger34 = Var(1) != 0
trigger34 = movecontact
trigger34 = StateNo = 420
trigger35 = Life <= 375
trigger35 = movecontact
trigger35 = StateNo = 205
trigger36 = Life <= 375
trigger36 = movecontact
trigger36 = StateNo = 215
trigger37 = Life <= 375
trigger37 = movecontact
trigger37 = StateNo = 225
trigger38 = Life <= 375
trigger38 = movecontact
trigger38 = StateNo = 305
trigger39 = Life <= 375
trigger39 = movecontact
trigger39 = StateNo = 315
trigger40 = Life <= 375
trigger40 = movecontact
trigger40 = StateNo = 355
trigger41 = Life <= 375
trigger41 = movecontact
trigger41 = StateNo = 385
trigger42 = Life <= 375
trigger42 = movecontact
trigger42 = StateNo = 405
trigger43 = Life <= 375
trigger43 = movecontact
trigger43 = StateNo = 415
trigger44 = Life <= 375
trigger44 = movecontact
trigger44 = StateNo = 425
trigger45 = Power >= 1000
trigger45 = movecontact
trigger45 = StateNo = 1200
trigger46 = Power >= 1000
trigger46 = movecontact
trigger46 = StateNo = 1300
trigger47 =  Life <= 375
trigger47 = movecontact
trigger47 = StateNo = 1200
trigger48 =  Life <= 375
trigger48 = movecontact
trigger48 = StateNo = 1300

;---------------------------------------------------------------------------
;;ê¬ó¥•ìVínã§ñ¬ÉXì{çÜÉmóãñ¬
[State -1]
type = ChangeState
value = 3300
triggerall = command = "seiryu"
triggerall = statetype = S
triggerall = Var(8) != 1
triggerall = Var(9) != 1
triggerall = Var(10) != 1
trigger1 = Power >= 1000
trigger1 = ctrl = 1
trigger2 = Power >= 1000
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = Power >= 1000
trigger3 = movecontact
trigger3 = StateNo = 210
trigger4 = Power >= 1000
trigger4 = movecontact
trigger4 = StateNo = 220
trigger5 = Power >= 1000
trigger5 = movecontact
trigger5 = StateNo = 300
trigger6 = Power >= 1000
trigger6 = movecontact
trigger6 = StateNo = 310
trigger7 = Power >= 1000
trigger7 = movecontact
trigger7 = StateNo = 340
trigger8 = Power >= 1000
trigger8 = movecontact
trigger8 = StateNo = 350
trigger9 = Power >= 1000
trigger9 = movecontact
trigger9 = StateNo = 380
trigger10 = Power >= 1000
trigger10 = movecontact
trigger10 = StateNo = 400
trigger11 = Power >= 1000
trigger11 = movecontact
trigger11 = StateNo = 410
trigger12 = Power >= 1000
trigger12 = Var(1) != 0
trigger12 = movecontact
trigger12 = StateNo = 420
trigger13 = Power >= 1000
trigger13 = movecontact
trigger13 = StateNo = 205
trigger14 = Power >= 1000
trigger14 = movecontact
trigger14 = StateNo = 215
trigger15 = Power >= 1000
trigger15 = movecontact
trigger15 = StateNo = 225
trigger16 = Power >= 1000
trigger16 = movecontact
trigger16 = StateNo = 305
trigger17 = Power >= 1000
trigger17 = movecontact
trigger17 = StateNo = 315
trigger18 = Power >= 1000
trigger18 = movecontact
trigger18 = StateNo = 355
trigger19 = Power >= 1000
trigger19 = movecontact
trigger19 = StateNo = 385
trigger20 = Power >= 1000
trigger20 = movecontact
trigger20 = StateNo = 405
trigger21 = Power >= 1000
trigger21 = movecontact
trigger21 = StateNo = 415
trigger22 = Power >= 1000
trigger22 = movecontact
trigger22 = StateNo = 425
trigger23 = Life <= 375
trigger23 = ctrl = 1
trigger24 = Life <= 375
trigger24 = movecontact
trigger24 = StateNo = 200
trigger25 = Life <= 375
trigger25 = movecontact
trigger25 = StateNo = 210
trigger26 = Life <= 375
trigger26 = movecontact
trigger26 = StateNo = 220
trigger27 = Life <= 375
trigger27 = movecontact
trigger27 = StateNo = 300
trigger28 = Life <= 375
trigger28 = movecontact
trigger28 = StateNo = 310
trigger29 = Life <= 375
trigger29 = movecontact
trigger29 = StateNo = 340
trigger30 = Life <= 375
trigger30 = movecontact
trigger30 = StateNo = 350
trigger31 = Life <= 375
trigger31 = movecontact
trigger31 = StateNo = 380
trigger32 = Life <= 375
trigger32 = movecontact
trigger32 = StateNo = 400
trigger33 = Life <= 375
trigger33 = movecontact
trigger33 = StateNo = 410
trigger34 = Life <= 375
trigger34 = Var(1) != 0
trigger34 = movecontact
trigger34 = StateNo = 420
trigger35 = Life <= 375
trigger35 = movecontact
trigger35 = StateNo = 205
trigger36 = Life <= 375
trigger36 = movecontact
trigger36 = StateNo = 215
trigger37 = Life <= 375
trigger37 = movecontact
trigger37 = StateNo = 225
trigger38 = Life <= 375
trigger38 = movecontact
trigger38 = StateNo = 305
trigger39 = Life <= 375
trigger39 = movecontact
trigger39 = StateNo = 315
trigger40 = Life <= 375
trigger40 = movecontact
trigger40 = StateNo = 355
trigger41 = Life <= 375
trigger41 = movecontact
trigger41 = StateNo = 385
trigger42 = Life <= 375
trigger42 = movecontact
trigger42 = StateNo = 405
trigger43 = Life <= 375
trigger43 = movecontact
trigger43 = StateNo = 415
trigger44 = Life <= 375
trigger44 = movecontact
trigger44 = StateNo = 425
trigger45 = Power >= 1000
trigger45 = movecontact
trigger45 = StateNo = 1200
trigger46 = Power >= 1000
trigger46 = movecontact
trigger46 = StateNo = 1300
trigger47 =  Life <= 375
trigger47 = movecontact
trigger47 = StateNo = 1200
trigger48 =  Life <= 375
trigger48 = movecontact
trigger48 = StateNo = 1300

;è\àÍåæê_ôÓ
[State -1]
type = ChangeState
value = 4000
triggerall = power = 3000
triggerall = command = "timestop"
triggerall = var(1) = 3
triggerall = var(10) = 0
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 210
trigger4 = movecontact
trigger4 = StateNo = 220
trigger5 = movecontact
trigger5 = StateNo = 300
trigger6 = movecontact
trigger6 = StateNo = 310
trigger7 = movecontact
trigger7 = StateNo = 340
trigger8 = movecontact
trigger8 = StateNo = 350
trigger9 = movecontact
trigger9 = StateNo = 380
trigger10 = movecontact
trigger10 = StateNo = 400
trigger11 = movecontact
trigger11 = StateNo = 410
trigger12 = movecontact
trigger12 = StateNo = 420

;===========================================================================
; ïKéEãZån
;===========================================================================
;---------------------------------------------------------------------------
;ãÛÇä—ÉNíOìhÉmñÓ(X)
[State -1]
type = ChangeState
value = 1000
triggerall = command = "arrow_x"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 210
trigger4 = movecontact
trigger4 = StateNo = 220
trigger5 = movecontact
trigger5 = StateNo = 300
trigger6 = movecontact
trigger6 = StateNo = 310
trigger7 = movecontact
trigger7 = StateNo = 340
trigger8 = movecontact
trigger8 = StateNo = 350
trigger9 = movecontact
trigger9 = StateNo = 380
trigger10 = movecontact
trigger10 = StateNo = 400
trigger11 = movecontact
trigger11 = StateNo = 410
trigger12 = Var(1) != 0
trigger12 = movecontact
trigger12 = StateNo = 420
trigger13 = movecontact
trigger13 = StateNo = 205
trigger14 = movecontact
trigger14 = StateNo = 215
trigger15 = movecontact
trigger15 = StateNo = 225
trigger16 = movecontact
trigger16 = StateNo = 305
trigger17 = movecontact
trigger17 = StateNo = 315
trigger18 = movecontact
trigger18 = StateNo = 355
trigger19 = movecontact
trigger19 = StateNo = 385
trigger20 = movecontact
trigger20 = StateNo = 405
trigger21 = movecontact
trigger21 = StateNo = 415
trigger22 = movecontact
trigger22 = StateNo = 425
trigger23 = Var(9) = 1
trigger23 = stateno != 880
trigger23 = stateno != 1210
trigger23 = stateno != 1220
trigger23 = stateno != 1230
trigger23 = stateno != 885
trigger23 = stateno != 1215
trigger23 = stateno != 1225
trigger23 = stateno != 1235

;---------------------------------------------------------------------------
;ãÛÇä—ÉNíOìhÉmñÓ(Y)
[State -1]
type = ChangeState
value = 1100
triggerall = command = "arrow_y"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 210
trigger4 = movecontact
trigger4 = StateNo = 220
trigger5 = movecontact
trigger5 = StateNo = 300
trigger6 = movecontact
trigger6 = StateNo = 310
trigger7 = movecontact
trigger7 = StateNo = 340
trigger8 = movecontact
trigger8 = StateNo = 350
trigger9 = movecontact
trigger9 = StateNo = 380
trigger10 = movecontact
trigger10 = StateNo = 400
trigger11 = movecontact
trigger11 = StateNo = 410
trigger12 = Var(1) != 0
trigger12 = movecontact
trigger12 = StateNo = 420
trigger13 = movecontact
trigger13 = StateNo = 205
trigger14 = movecontact
trigger14 = StateNo = 215
trigger15 = movecontact
trigger15 = StateNo = 225
trigger16 = movecontact
trigger16 = StateNo = 305
trigger17 = movecontact
trigger17 = StateNo = 315
trigger18 = movecontact
trigger18 = StateNo = 355
trigger19 = movecontact
trigger19 = StateNo = 385
trigger20 = movecontact
trigger20 = StateNo = 405
trigger21 = movecontact
trigger21 = StateNo = 415
trigger22 = movecontact
trigger22 = StateNo = 425
trigger23 = Var(9) = 1
trigger23 = stateno != 880
trigger23 = stateno != 1210
trigger23 = stateno != 1220
trigger23 = stateno != 1230
trigger23 = stateno != 885
trigger23 = stateno != 1215
trigger23 = stateno != 1225
trigger23 = stateno != 1235

;---------------------------------------------------------------------------
;ìVí√çﬂê¥ÉÅÉãëÂ‚P(X)
[State -1]
type = ChangeState
value = 1200
triggerall = command = "dashslash_x"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 210
trigger4 = movecontact
trigger4 = StateNo = 220
trigger5 = movecontact
trigger5 = StateNo = 300
trigger6 = movecontact
trigger6 = StateNo = 310
trigger7 = movecontact
trigger7 = StateNo = 340
trigger8 = movecontact
trigger8 = StateNo = 350
trigger9 = movecontact
trigger9 = StateNo = 380
trigger10 = movecontact
trigger10 = StateNo = 400
trigger11 = movecontact
trigger11 = StateNo = 410
trigger12 = Var(1) != 0
trigger12 = movecontact
trigger12 = StateNo = 420
trigger13 = movecontact
trigger13 = StateNo = 205
trigger14 = movecontact
trigger14 = StateNo = 215
trigger15 = movecontact
trigger15 = StateNo = 225
trigger16 = movecontact
trigger16 = StateNo = 305
trigger17 = movecontact
trigger17 = StateNo = 315
trigger18 = movecontact
trigger18 = StateNo = 355
trigger19 = movecontact
trigger19 = StateNo = 385
trigger20 = movecontact
trigger20 = StateNo = 405
trigger21 = movecontact
trigger21 = StateNo = 415
trigger22 = movecontact
trigger22 = StateNo = 425

;---------------------------------------------------------------------------
;ìVí√çﬂê¥ÉÅÉãëÂ‚P(Y)
[State -1]
type = ChangeState
value = 1300
triggerall = command = "dashslash_y"
triggerall = command != "senzai"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 210
trigger4 = movecontact
trigger4 = StateNo = 220
trigger5 = movecontact
trigger5 = StateNo = 300
trigger6 = movecontact
trigger6 = StateNo = 310
trigger7 = movecontact
trigger7 = StateNo = 340
trigger8 = movecontact
trigger8 = StateNo = 350
trigger9 = movecontact
trigger9 = StateNo = 380
trigger10 = movecontact
trigger10 = StateNo = 400
trigger11 = movecontact
trigger11 = StateNo = 410
trigger12 = Var(1) != 0
trigger12 = movecontact
trigger12 = StateNo = 420
trigger13 = movecontact
trigger13 = StateNo = 205
trigger14 = movecontact
trigger14 = StateNo = 215
trigger15 = movecontact
trigger15 = StateNo = 225
trigger16 = movecontact
trigger16 = StateNo = 305
trigger17 = movecontact
trigger17 = StateNo = 315
trigger18 = movecontact
trigger18 = StateNo = 355
trigger19 = movecontact
trigger19 = StateNo = 385
trigger20 = movecontact
trigger20 = StateNo = 405
trigger21 = movecontact
trigger21 = StateNo = 415
trigger22 = movecontact
trigger22 = StateNo = 425

;---------------------------------------------------------------------------
;ìVí√çﬂê¥ÉÅÉãëÂ‚P(ìÒíiñ⁄)
[State -1]
type = ChangeState
value = 1210
triggerall = command != "senzai"
trigger1 = command = "dashslash_x"
trigger1 = movecontact
trigger1 = StateNo = 1200
trigger2 = command = "dashslash_x"
trigger2 = movecontact
trigger2 = StateNo = 1205
trigger3 = command = "dashslash_x"
trigger3 = movecontact
trigger3 = StateNo = 1300
trigger4 = command = "dashslash_x"
trigger4 = movecontact
trigger4 = StateNo = 1305
trigger5 = command = "dashslash_y"
trigger5 = movecontact
trigger5 = StateNo = 1200
trigger6 = command = "dashslash_y"
trigger6 = movecontact
trigger6 = StateNo = 1205
trigger7 = command = "dashslash_y"
trigger7 = movecontact
trigger7 = StateNo = 1300
trigger8 = command = "dashslash_y"
trigger8 = movecontact
trigger8 = StateNo = 1305

;---------------------------------------------------------------------------
;ìVí√çﬂê¥ÉÅÉãëÂ‚P(éOíiñ⁄)
[State -1]
type = ChangeState
value = 1220
trigger1 = command = "dashslash_x"
trigger1 = movecontact
trigger1 = StateNo = 1210
trigger2 = command = "dashslash_x"
trigger2 = movecontact
trigger2 = StateNo = 1215
trigger3 = command = "dashslash_y"
trigger3 = movecontact
trigger3 = StateNo = 1210
trigger4 = command = "dashslash_y"
trigger4 = movecontact
trigger4 = StateNo = 1215

;---------------------------------------------------------------------------
;ìVí√çﬂê¥ÉÅÉãëÂ‚P(élíiñ⁄)
[State -1]
type = ChangeState
value = 1230
trigger1 = command = "dashslash_x"
trigger1 = movecontact
trigger1 = StateNo = 1220
trigger2 = command = "dashslash_x"
trigger2 = movecontact
trigger2 = StateNo = 1225
trigger3 = command = "dashslash_y"
trigger3 = movecontact
trigger3 = StateNo = 1220
trigger4 = command = "dashslash_y"
trigger4 = movecontact
trigger4 = StateNo = 1225

;---------------------------------------------------------------------------
;ï ìVçßêeÉmàÍìÅ
[State -1]
type = ChangeState
value = 1400
triggerall = command = "smash"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 210
trigger4 = movecontact
trigger4 = StateNo = 220
trigger5 = movecontact
trigger5 = StateNo = 300
trigger6 = movecontact
trigger6 = StateNo = 310
trigger7 = movecontact
trigger7 = StateNo = 340
trigger8 = movecontact
trigger8 = StateNo = 350
trigger9 = movecontact
trigger9 = StateNo = 380
trigger10 = movecontact
trigger10 = StateNo = 400
trigger11 = movecontact
trigger11 = StateNo = 410
trigger12 = Var(1) != 0
trigger12 = movecontact
trigger12 = StateNo = 420
trigger13 = movecontact
trigger13 = StateNo = 205
trigger14 = movecontact
trigger14 = StateNo = 215
trigger15 = movecontact
trigger15 = StateNo = 225
trigger16 = movecontact
trigger16 = StateNo = 305
trigger17 = movecontact
trigger17 = StateNo = 315
trigger18 = movecontact
trigger18 = StateNo = 355
trigger19 = movecontact
trigger19 = StateNo = 385
trigger20 = movecontact
trigger20 = StateNo = 405
trigger21 = movecontact
trigger21 = StateNo = 415
trigger22 = movecontact
trigger22 = StateNo = 425
trigger23 = Var(9) = 1
trigger23 = stateno != 880
trigger23 = stateno != 1210
trigger23 = stateno != 1220
trigger23 = stateno != 1230
trigger23 = stateno != 885
trigger23 = stateno != 1215
trigger23 = stateno != 1225
trigger23 = stateno != 1235
trigger23 = Time > 20

;---------------------------------------------------------------------------
;ïœãZÉmÉJÉ}Éw
[State -1]
type = ChangeState
value = 1500
triggerall = statetype = S
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = Var(9) != 1
trigger1 = command = "change"
trigger1 = ctrl = 1
trigger2 = command = "c"
trigger2 = ctrl = 1

;===========================================================================
; ìäÇ∞çUåÇån
;===========================================================================
;---------------------------------------------------------------------------
;ìäÇ∞
[State -1]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = command != "change"
triggerall = Var(10) != 1
trigger1 = Var(1) != 3
trigger1 = command = "nage"
trigger2 = Var(1) != 3
trigger2 = command = "b"
trigger3 = Var(1) = 3
trigger3 = command = "fwd_y"
trigger3 = p2statetype = S
trigger3 = p2Movetype != H
trigger3 = p2bodydist X < 32
trigger4 = Var(1) = 3
trigger4 = command = "back_y"
trigger4 = p2statetype = S
trigger4 = p2Movetype != H
trigger4 = p2bodydist X < 32

;===========================================================================
; äÓñ{çUåÇån
;===========================================================================
;---------------------------------------------------------------------------
;óßÇøÇò
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "change"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = stateno != 100
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = Var(1) != 0
trigger2 = Stateno = 300
trigger2 = movecontact
trigger2 = Time <18
trigger3 = Stateno = 305
trigger3 = movecontact
trigger3 = Time <18
trigger4 = Var(9) = 1
trigger4 = PrevStateno != 200
trigger4 = stateno != 880
trigger4 = stateno != 1210
trigger4 = stateno != 1220
trigger4 = stateno != 1230
trigger4 = stateno != 885
trigger4 = stateno != 1215
trigger4 = stateno != 1225
trigger4 = stateno != 1235
trigger4 = Time > 10

;---------------------------------------------------------------------------
;óßÇøÇô
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "change"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "yz"
triggerall = stateno != 100
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = Var(1) != 0
trigger2 = Stateno = 200
trigger2 = movecontact
trigger2 = Time <18
trigger3 = Var(1) != 0
trigger3 = Stateno = 300
trigger3 = movecontact
trigger3 = Time <18
trigger4 = Var(1) != 0
trigger4 = Stateno = 310
trigger4 = movecontact
trigger4 = Time <18
trigger5 = Var(1) != 0
trigger5 = Stateno = 380
trigger5 = movecontact
trigger5 = Time <18
trigger6 = Var(1) != 0
trigger6 = Stateno = 400
trigger6 = movecontact
trigger6 = Time <25
trigger7 = Stateno = 205
trigger7 = movecontact
trigger7 = Time <18
trigger8 = Stateno = 305
trigger8 = movecontact
trigger8 = Time <18
trigger9 = Stateno = 315
trigger9 = movecontact
trigger9 = Time <18
trigger10 = Stateno = 385
trigger10 = movecontact
trigger10 = Time <25
trigger11 = Stateno = 405
trigger11 = movecontact
trigger11 = Time <25
trigger12 = Var(9) = 1
trigger12 = stateno != 880
trigger12 = stateno != 1210
trigger12 = stateno != 1220
trigger12 = stateno != 1230
trigger12 = stateno != 885
trigger12 = stateno != 1215
trigger12 = stateno != 1225
trigger12 = stateno != 1235
trigger12 = Time > 13

;---------------------------------------------------------------------------
;óßÇøz
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "change"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "yz"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = Var(9) = 1
trigger2 = stateno != 880
trigger2 = stateno != 1210
trigger2 = stateno != 1220
trigger2 = stateno != 1230
trigger2 = stateno != 885
trigger2 = stateno != 1215
trigger2 = stateno != 1225
trigger2 = stateno != 1235
trigger2 = Time > 10

;===========================================================================
; í«â¡çUåÇån
;===========================================================================
;---------------------------------------------------------------------------
;ïIìS
[State -1]
type = ChangeState
value = 300
triggerall = command = "back_x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = Var(9) = 1
trigger2 = stateno != 880
trigger2 = stateno != 1210
trigger2 = stateno != 1220
trigger2 = stateno != 1230
trigger2 = stateno != 885
trigger2 = stateno != 1215
trigger2 = stateno != 1225
trigger2 = stateno != 1235
trigger2 = Time > 10

;---------------------------------------------------------------------------
;ï‘ÇµéaÇË
[State -1]
type = ChangeState
value = 310
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = statetype = S
trigger1 = Var(1) != 0
trigger1 = Stateno = 200
trigger1 = movecontact
trigger1 = Time <18
trigger2 = Stateno = 205
trigger2 = movecontact
trigger2 = Time <18

;---------------------------------------------------------------------------
;ã≠åÇ
[State -1]
type = ChangeState
value = 320
triggerall = command = "fwd_y"
triggerall = command != "holddown"
triggerall = stateno != 100
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = Var(1) != 0
trigger2 = Stateno = 200
trigger2 = movecontact
trigger2 = Time <18
trigger3 = Var(1) != 0
trigger3 = Stateno = 210
trigger3 = movecontact
trigger3 = Time <18
trigger4 = Var(1) != 0
trigger4 = Stateno = 300
trigger4 = movecontact
trigger4 = Time <18
trigger5 = Var(1) != 0
trigger5 = Stateno = 310
trigger5 = movecontact
trigger5 = Time <18
trigger6 = Var(1) != 0
trigger6 = Stateno = 380
trigger6 = movecontact
trigger6 = Time <18
trigger7 = Var(1) != 0
trigger7 = Stateno = 400
trigger7 = movecontact
trigger7 = Time <25
trigger8 = Var(1) != 0
trigger8 = Stateno = 410
trigger8 = movecontact
trigger8 = Time <25
trigger9 = Stateno = 205
trigger9 = movecontact
trigger9 = Time <18
trigger10 = Stateno = 215
trigger10 = movecontact
trigger10 = Time <18
trigger11 = Stateno = 305
trigger11 = movecontact
trigger11 = Time <18
trigger12 = Stateno = 315
trigger12 = movecontact
trigger12 = Time <18
trigger13 = Stateno = 385
trigger13 = movecontact
trigger13 = Time <18
trigger14 = Stateno = 405
trigger14 = movecontact
trigger14 = Time <25
trigger15 = Stateno = 415
trigger15 = movecontact
trigger15 = Time <25
trigger16 = Var(9) = 1
trigger16 = stateno != 880
trigger16 = stateno != 1210
trigger16 = stateno != 1220
trigger16 = stateno != 1230
trigger16 = stateno != 885
trigger16 = stateno != 1215
trigger16 = stateno != 1225
trigger16 = stateno != 1235
trigger16 = Time > 15

;---------------------------------------------------------------------------
;í«Ç¢ë≈Çø
[State -1]
type = ChangeState
value = 330
triggerall = command = "downfwd_y"
triggerall = stateno != 100
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = P2StateNo = 5050
trigger2 = P2StateNo = 5070
trigger3 = P2StateNo = 5100
trigger4 = P2StateNo = 5110
trigger5 = P2StateNo = 5160
trigger6 = P2StateNo = 5170

;---------------------------------------------------------------------------
;ëOèRÇË
[State -1]
type = ChangeState
value = 340
triggerall = command = "fwd_z"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = Var(1) != 0
trigger2 = Stateno = 200
trigger2 = movecontact
trigger2 = Time <18
trigger3 = Var(1) != 0
trigger3 = Stateno = 210
trigger3 = movecontact
trigger3 = Time <18
trigger4 = Var(1) != 0
trigger4 = Stateno = 300
trigger4 = movecontact
trigger4 = Time <18
trigger5 = Var(1) != 0
trigger5 = Stateno = 310
trigger5 = movecontact
trigger5 = Time <18
trigger6 = Var(1) != 0
trigger6 = Stateno = 380
trigger6 = movecontact
trigger6 = Time <18
trigger7 = Var(1) != 0
trigger7 = Stateno = 400
trigger7 = movecontact
trigger7 = Time <25
trigger8 = Var(1) != 0
trigger8 = Stateno = 410
trigger8 = movecontact
trigger8 = Time <25
trigger9 = Stateno = 205
trigger9 = movecontact
trigger9 = Time <18
trigger10 = Stateno = 215
trigger10 = movecontact
trigger10 = Time <18
trigger11 = Stateno = 305
trigger11 = movecontact
trigger11 = Time <18
trigger12 = Stateno = 315
trigger12 = movecontact
trigger12 = Time <18
trigger13 = Stateno = 385
trigger13 = movecontact
trigger13 = Time <18
trigger14 = Stateno = 405
trigger14 = movecontact
trigger14 = Time <25
trigger15 = Stateno = 415
trigger15 = movecontact
trigger15 = Time <25
trigger16 = Var(9) = 1
trigger16 = stateno != 880
trigger16 = stateno != 1210
trigger16 = stateno != 1220
trigger16 = stateno != 1230
trigger16 = stateno != 885
trigger16 = stateno != 1215
trigger16 = stateno != 1225
trigger16 = stateno != 1235
trigger16 = Time > 10

;---------------------------------------------------------------------------
;ã≠èRÇË
[State -1]
type = ChangeState
value = 350
triggerall = command = "downfwd_z"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = Var(1) != 0
trigger2 = Stateno = 200
trigger2 = movecontact
trigger2 = Time <18
trigger3 = Var(1) != 0
trigger3 = Stateno = 210
trigger3 = movecontact
trigger3 = Time <18
trigger4 = Var(1) != 0
trigger4 = Stateno = 300
trigger4 = movecontact
trigger4 = Time <18
trigger5 = Var(1) != 0
trigger5 = Stateno = 310
trigger5 = movecontact
trigger5 = Time <18
trigger6 = Var(1) != 0
trigger6 = Stateno = 380
trigger6 = movecontact
trigger6 = Time <18
trigger7 = Var(1) != 0
trigger7 = Stateno = 400
trigger7 = movecontact
trigger7 = Time <25
trigger8 = Var(1) != 0
trigger8 = Stateno = 410
trigger8 = movecontact
trigger8 = Time <25
trigger9 = Stateno = 205
trigger9 = movecontact
trigger9 = Time <18
trigger10 = Stateno = 215
trigger10 = movecontact
trigger10 = Time <18
trigger11 = Stateno = 305
trigger11 = movecontact
trigger11 = Time <18
trigger12 = Stateno = 315
trigger12 = movecontact
trigger12 = Time <18
trigger13 = Stateno = 385
trigger13 = movecontact
trigger13 = Time <18
trigger14 = Stateno = 405
trigger14 = movecontact
trigger14 = Time <25
trigger15 = Stateno = 415
trigger15 = movecontact
trigger15 = Time <25
trigger15 = Var(9) = 16
trigger15 = stateno != 880
trigger15 = stateno != 1210
trigger15 = stateno != 1220
trigger15 = stateno != 1230
trigger15 = stateno != 885
trigger15 = stateno != 1215
trigger15 = stateno != 1225
trigger15 = stateno != 1235
trigger15 = Time > 10

;---------------------------------------------------------------------------
;ñhå‰ïsâ¬éaÇË
[State -1]
type = ChangeState
value = 360
triggerall = command = "yz"
triggerall = command != "change"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = Var(1) != [1,2]
triggerall = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;éaÇËè„Ç∞
[State -1]
type = ChangeState
value = 370
triggerall = command = "yz"
triggerall = command != "change"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = Var(1) = [1,2]
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 200
trigger2 = movecontact
trigger2 = Time <18
trigger3 = Stateno = 210
trigger3 = movecontact
trigger3 = Time <18
trigger4 = Stateno = 300
trigger4 = movecontact
trigger4 = Time <18
trigger5 = Stateno = 310
trigger5 = movecontact
trigger5 = Time <18
trigger6 = Stateno = 380
trigger6 = movecontact
trigger6 = Time <18
trigger7 = Stateno = 400
trigger7 = movecontact
trigger7 = Time <25
trigger8 = Stateno = 410
trigger8 = movecontact
trigger8 = Time <25
trigger9 = Stateno = 205
trigger9 = movecontact
trigger9 = Time <18
trigger10 = Stateno = 215
trigger10 = movecontact
trigger10 = Time <18
trigger11 = Stateno = 305
trigger11 = movecontact
trigger11 = Time <18
trigger12 = Stateno = 315
trigger12 = movecontact
trigger12 = Time <18
trigger13 = Stateno = 385
trigger13 = movecontact
trigger13 = Time <18
trigger14 = Stateno = 405
trigger14 = movecontact
trigger14 = Time <25
trigger15 = Stateno = 415
trigger15 = movecontact
trigger15 = Time <25
trigger16 = Var(9) = 1
trigger16 = stateno != 880
trigger16 = stateno != 1210
trigger16 = stateno != 1220
trigger16 = stateno != 1230
trigger16 = stateno != 885
trigger16 = stateno != 1215
trigger16 = stateno != 1225
trigger16 = stateno != 1235
trigger16 = Time > 10

;---------------------------------------------------------------------------
;É_ÉbÉVÉÖéaÇË è„íi
[State -1]
type = ChangeState
value = 380
triggerall = stateno = 100
triggerall = Time >= 10
trigger1 = command = "fwd_x"

;---------------------------------------------------------------------------
;É_ÉbÉVÉÖéaÇË â∫íi
[State -1]
type = ChangeState
value = 390
triggerall = stateno = 100
triggerall = Time >= 10
trigger1 = command = "fwd_y"

;===========================================================================
; ÇµÇ·Ç™Ç›çUåÇån
;===========================================================================
;---------------------------------------------------------------------------
;ÇµÇ·Ç™Ç›x
[State -1]
type = ChangeState
value = 400
triggerall = command = "down_x"
triggerall = stateno != 100
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = Var(1) != 0
trigger2 = Stateno = 200
trigger2 = movecontact
trigger2 = Time <25
trigger3 = Var(1) != 0
trigger3 = Stateno = 300
trigger3 = movecontact
trigger3 = Time <25
trigger2 = Stateno = 205
trigger2 = movecontact
trigger2 = Time <25
trigger3 = Stateno = 305
trigger3 = movecontact
trigger3 = Time <25
trigger4 = Var(9) = 1
trigger4 = stateno != 880
trigger4 = stateno != 1210
trigger4 = stateno != 1220
trigger4 = stateno != 1230
trigger4 = stateno != 885
trigger4 = stateno != 1215
trigger4 = stateno != 1225
trigger4 = stateno != 1235
trigger4 = Time > 10

;---------------------------------------------------------------------------
;ÇµÇ·Ç™Ç›y
[State -1]
type = ChangeState
value = 410
triggerall = command = "down_y"
triggerall = stateno != 100
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = Var(1) != 0
trigger2 = Stateno = 200
trigger2 = movecontact
trigger2 = Time <25
trigger3 = Var(1) != 0
trigger3 = Stateno = 300
trigger3 = movecontact
trigger3 = Time <25
trigger4 = Var(1) != 0
trigger4 = Stateno = 310
trigger4 = movecontact
trigger4 = Time <25
trigger5 = Var(1) != 0
trigger5 = Stateno = 380
trigger5 = movecontact
trigger5 = Time <18
trigger6 = Var(1) != 0
trigger6 = Stateno = 400
trigger6 = movecontact
trigger6 = Time <18
trigger7 = Stateno = 205
trigger7 = movecontact
trigger7 = Time <25
trigger8 = Stateno = 305
trigger8 = movecontact
trigger8 = Time <25
trigger9 = Stateno = 315
trigger9 = movecontact
trigger9 = Time <25
trigger10 = Stateno = 385
trigger10 = movecontact
trigger10 = Time <18
trigger11 = Stateno = 405
trigger11 = movecontact
trigger11 = Time <18
trigger12 = Var(9) = 1
trigger12 = stateno != 880
trigger12 = stateno != 1210
trigger12 = stateno != 1220
trigger12 = stateno != 1230
trigger12 = stateno != 885
trigger12 = stateno != 1215
trigger12 = stateno != 1225
trigger12 = stateno != 1235
trigger12 = Time > 13

;---------------------------------------------------------------------------
;ÇµÇ·Ç™Ç›z
[State -1]
type = ChangeState
value = 420
triggerall = command = "down_z"
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = Var(9) = 1
trigger2 = stateno != 880
trigger2 = stateno != 1210
trigger2 = stateno != 1220
trigger2 = stateno != 1230
trigger2 = stateno != 885
trigger2 = stateno != 1215
trigger2 = stateno != 1225
trigger2 = stateno != 1235
trigger2 = Time > 10

;===========================================================================
; ÉWÉÉÉìÉvçUåÇån
;===========================================================================
;---------------------------------------------------------------------------
;ÉWÉÉÉìÉvÇò
[State -1]
type = ChangeState
value = 600
triggerall = statetype = A
triggerall = command = "x"
trigger1 = ctrl = 1
trigger2 = Var(9) = 1
trigger2 = Time > 10

;---------------------------------------------------------------------------
;ÉWÉÉÉìÉvy
[State -1]
type = ChangeState
value = 610
triggerall = statetype = A
triggerall = command = "y"
trigger1 = ctrl = 1
trigger2 = Var(9) = 1
trigger2 = Time > 10

;---------------------------------------------------------------------------
;ÉWÉÉÉìÉvz
[State -1]
type = ChangeState
value = 620
triggerall = statetype = A
triggerall = command = "z"
trigger1 = ctrl = 1
trigger2 = Var(9) = 1
trigger2 = Time > 10

;===========================================================================
; ì¡éÍãZån
;===========================================================================
;---------------------------------------------------------------------------
;íeÇ´
[State -1]
type = ChangeState
value = 810
triggerall = command = "a"
triggerall = command != "change"
triggerall = command != "holddown"
triggerall = statetype = s
triggerall = stateno != 820
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ÇµÇ·Ç™Ç›íeÇ´
[State -1]
type = ChangeState
value = 830
triggerall = command = "down_a"
triggerall = statetype = c
triggerall = stateno != 820
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ãÛíÜíeÇ´
[State -1]
type = ChangeState
value = 840
triggerall = command = "a"
triggerall = statetype = a
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ÉKÅ[ÉhÉLÉÉÉìÉZÉãíeÇ´
[State -1]
type = ChangeState
value = 860
triggerall = command = "gard_a"
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153

;---------------------------------------------------------------------------
;íeÇ´í«Ç¢ë≈Çø
[State -1]
type = ChangeState
value = 870
triggerall = command = "a"
trigger1 = stateno = 820
trigger1 = Time > 5

;---------------------------------------------------------------------------
;òAéEéaì¡éÍÉãÅ[Ég
[State -1]
type = ChangeState
value = 880
triggerall = command = "z"
triggerall = Var(6) = 2
trigger1 = stateno = 210
trigger1 = movecontact
trigger2 = stateno = 215
trigger2 = movecontact

;---------------------------------------------------------------------------
;ÉKÅ[ÉhÉLÉÉÉìÉZÉãçUåÇ
[State -1]
type = ChangeState
value = 890
triggerall = command = "gard_z"
triggerall = Power >= 100
triggerall = Var(1) = 3
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153

;---------------------------------------------------------------------------
;èWíÜ
[State -1]
type = ChangeState
value = 895
triggerall = Var(1) = 3
triggerall = Var(9) != 1
triggerall = Var(10) != 1
triggerall = statetype != A
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
trigger1 = command = "hold_x"
trigger1 = Time = 10
trigger1 = ctrl = 1
