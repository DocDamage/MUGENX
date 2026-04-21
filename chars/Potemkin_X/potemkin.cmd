;-| ai |-------------------------------------------------------------------
[Command]
name = "CPU1"
command = F, B, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, F, F
time = 1

[Command]
name = "CPU4"
command = U, F, B
time = 1

[Command]
name = "CPU5"
command = U, D, B
time = 1

[Command]
name = "CPU6"
command = B, D, U
time = 1

[Command]
name = "CPU7"
command = F, B, D
time = 1

[Command]
name = "CPU8"
command = F, U, D
time = 1

[Command]
name = "CPU9"
command = F, F, B
time = 1

[Command]
name = "CPU10"
command = F, D, B
time = 1

[Command]
name = "CPU11"
command = F, B, F, F, B, F
time = 1

[Command]
name = "CPU12"
command = U, B, F, F, B, F
time = 1

[Command]
name = "CPU13"
command = U, F, F, F, B, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, F, B, F
time = 1

[Command]
name = "CPU15"
command = U, D, B, F, B, F
time = 1

[Command]
name = "CPU16"
command = B, D, U, F, B, F
time = 1

[Command]
name = "CPU17"
command = F, B, D, F, B, F
time = 1

[Command]
name = "CPU18"
command = F, U, D, F, B, F
time = 1

[Command]
name = "CPU19"
command = F, F, B, F, B, F
time = 1

[Command]
name = "CPU20"
command = F, D, B, F, B, F
time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "マグナムオペラ"
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "ガイガンター"
command = ~F, D, B, F, b
time = 30

[Command]
name = "ガイガンティックブリッド"
command = ~B, D, F, B, D, F, x
time = 45

[Command]
name = "ヘヴンリーポチョムキンバスター"
command = ~D, DF, F, D, DF, F, y
time = 25

[Command]
name = "派生版ヘヴンリーポチョムキンバスター"
command = ~B ,D, F, B ,D, F, y
time = 45

;-| Special Motions |------------------------------------------------------
[Command]
name = "ニトロフック"
command = ~F, D, B, F, a
time = 30

[Command]
name = "ポチョムキンバスター"
command = ~F, D, B, F, x
time = 30

[Command]
name = "ヒ－トエクステンド"
command = ~F, D, B, b
time = 25

[Command]
name = "F.D.B."
command = ~F, D, B, y
time = 25

[Command]
name = "スライドヘッド_K"
command = ~D, DF, F, a

[Command]
name = "スライドヘッド_S"
command = ~D, DF, F, y

[Command]
name = "ヒートナックル"
command = ~F, D, DF, b

[Command]
name = "ヒートナックル_S"
command = ~F, D, DF, y

[Command]
name = "メガフィスト・前方"
command = ~D, DF, F, x

[Command]
name = "メガフィスト・後方"
command = ~D, DB, B, x

[Command]
name = "ハンマフォール"
command = ~30$B, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "highjump"
command = D, $U
time = 10

[Command]
name = "highjumpcancel"
command = U, D, U
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a
time = 1
[Command]
name = "recovery";Required (do not remove)
command = b
time = 1
[Command]
name = "recovery";Required (do not remove)
command = x
time = 1
[Command]
name = "recovery";Required (do not remove)
command = y
time = 1

[Command]
name = "一撃必殺準備"
command = a+b+x+y

[Command]
name = "rc"
command = a+b+x

[Command]
name = "rc"
command = a+b+y

[Command]
name = "rc"
command = a+y+x

[Command]
name = "rc"
command = b+x+y

[Command]
name = "rc"
command = c
time = 1

[Command]
name = "fd"
command = a+x

[Command]
name = "fd"
command = a+y

[Command]
name = "fd"
command = a+b

[Command]
name = "fd"
command = b+x

[Command]
name = "fd"
command = b+y

[Command]
name = "fd"
command = x+y

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_s"
command = /F,s
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "back_b"
command = /B,b
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

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdy"
command = /y
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
name = "holdz"
command = /z
time = 1

[Command]
name = "holds"
command = /s
time = 1

[Statedef -1];---------------------------------------------------------------

[State -1]
type = ChangeState
triggerall = var(59) = 0
triggerall = command = "rc"
triggerall = power >= 500
trigger1 = stateno = 235&&animelemtime(3)=[1,2]
trigger2 = stateno = 430&&animelemtime(6)=[1,2]
value = 955
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
triggerall = command = "rc"
triggerall = power >= 500
trigger1 = numhelper(1299) >= 1
trigger1 = stateno = 1400&&animelemtime(5)=[1,2]
value = 955
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
triggerall = command = "rc"
triggerall = Power >= 500
trigger1 = numhelper(1299) >= 1
trigger1 = stateno = 1200 || stateno = 1210
value = 956
ignorehitpause = 1
persistent = 0

[State -1]
type = ChangeState
value = 950
triggerall = command = "rc"
triggerall = movecontact
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = (stateno = [200,799])
trigger2 = (stateno = [1000,3999])

[State -1]
type = ChangeState
value = 951
triggerall = command = "rc"
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = (stateno = [200,799]) && movecontact
trigger2 = (stateno = [1000,3999]) && movecontact

[State -1]
type = ChangeState
value = 700
triggerall = command = "holdfwd"
triggerall = command = "fd"
triggerall = command != "holddown"
triggerall = power >= 1000
trigger1 = Stateno = [150,153]
;---------------------------------------------------------------------------
[State -1, 3000]
type = ChangeState
value = 3350
triggerall = var(59) = 10
triggerall = power >= 1000
triggerall = command = "ガイガンター"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,640])
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 12
;---------------------------------------------------------------------------
[State -1, 3000]
type = ChangeState
value = 3300
triggerall = var(59) = 10
triggerall = power >= 1000
triggerall = command = "ガイガンター"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno!= 205&&stateno!= 240&&stateno!= 450
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 197,20,61)
;---------------------------------------------------------------------------
[State -1, 3000]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = command = "ガイガンター"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno!= 205&&stateno!= 240&&stateno!= 450
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 197,20,61)
;---------------------------------------------------------------------------
[State -1, 3000]
type = ChangeState
value = 3200
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = command = "ヘヴンリーポチョムキンバスター"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno!= 205&&stateno!= 240&&stateno!= 450
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 197,20,61)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[State -1, 3000]
type = ChangeState
value = 4001
triggerall = var(59) != 1
triggerall = var(25) = 0
triggerall = var(40) = 1
;triggerall = enemy,teammode = single || enemy,teammode = turns
triggerall = command = "マグナムオペラ"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 40
trigger5 = stateno = [195, 197]
trigger5 = time > ifelse(anim = 197,20,61)
;---------------------------------------------------------------------------
[State -1, 3000]
type = ChangeState
value = 4000
triggerall = var(59) != 1
triggerall = var(25) = 0
triggerall = var(40) < 2
;triggerall = enemy,teammode = single || enemy,teammode = turns
triggerall = command = "一撃必殺準備"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 40
trigger5 = stateno = [195, 197]
trigger5 = time > ifelse(anim = 197,20,61)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1600
triggerall = var(59) = 10
triggerall = command = "ニトロフック"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno!= 205&&stateno!= 240&&stateno!= 450
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 197,20,61)
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1400
triggerall = command = "ハンマフォール"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno!= 205&&stateno!= 240&&stateno!= 450
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 197,20,61)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1000
triggerall = command = "ポチョムキンバスター"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno!= 205&&stateno!= 240&&stateno!= 450
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 197,20,61)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1500
triggerall = command = "F.D.B."
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno!= 205&&stateno!= 240&&stateno!= 450
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 197,20,61)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1200
triggerall = command = "メガフィスト・前方"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno!= 205&&stateno!= 240&&stateno!= 450
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 197,20,61)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1210
triggerall = command = "メガフィスト・後方"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno!= 205&&stateno!= 240&&stateno!= 450
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 197,20,61)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1700
triggerall = var(59) = 10
triggerall = command = "ヒートナックル_S"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno!= 205&&stateno!= 240&&stateno!= 450
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 197,20,61)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1100
triggerall = command = "ヒートナックル"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno!= 205&&stateno!= 240&&stateno!= 450
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 197,20,61)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = command = "スライドヘッド_S"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno!= 205&&stateno!= 240&&stateno!= 450
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 197,20,61)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1300
triggerall = var(59) = 10
triggerall = command = "スライドヘッド_K"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno!= 205&&stateno!= 240&&stateno!= 450
trigger3 = stateno = 40 || stateno = 52
trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 197,20,61)
;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = palno = 11
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State 空中投げ]
type = ChangeState
value = 850
triggerall = statetype = A
triggerall = ctrl
triggerall = p2bodydist X < 65
triggerall = p2bodydist Y > -55
triggerall = p2bodydist Y < 15
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"
;---------------------------------------------------------------------------
[State 投げ]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = stateno != 100
triggerall = p2bodydist X < 27
triggerall = IsHelper = 0
triggerall = p2stateno != 40
triggerall = p2statetype = S || p2statetype = C
triggerall = command = "fwd_b"
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = [195, 197]
trigger3 = time > ifelse(anim = 197,20,61)
[State 投げ]
type = ChangeState
value = 805
triggerall = statetype = S
triggerall = stateno != 100
triggerall = p2bodydist X < 27
triggerall = IsHelper = 0
triggerall = p2stateno != 40
triggerall = p2statetype = S || p2statetype = C
triggerall = command = "back_b"
trigger1 = ctrl
trigger2 = stateno = 101 && command = "back_b"
trigger3 = stateno = [195, 197]
trigger3 = time > ifelse(anim = 197,20,61)
;===========================================================================
[State -1]
type = ChangeState
value = 130+(statetype = C)+(statetype = A)*2
triggerall = roundstate = 2
triggerall = power > 0
triggerall = var(25) = 1
triggerall = stateno != [110,115]
trigger1 = ctrl
trigger2 = stateno = 100 && time >= 7
trigger3 = stateno = 101
trigger4 = stateno = 52
trigger5 = stateno = [195, 197]
trigger5 = time > ifelse(anim = 197,20,61)
;===========================================================================
[State -1]
type = ChangeState
value = 450
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 420
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 101
trigger12 = stateno = [195,197]
trigger12 = time > ifelse(anim = 197,20,61)
trigger13 = stateno = 52
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 240
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = [195,197]
trigger12 = time > ifelse(anim = 197,20,61)
trigger13 = stateno = 52
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 205
triggerall = command = "fwd_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 101
trigger6 = stateno = [195,197]
trigger6 = time > ifelse(anim = 197,20,61)
trigger7 = stateno = 52
trigger8 = stateno = 200 && time >= 7
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 101
trigger6 = stateno = [195,197]
trigger6 = time > ifelse(anim = 197,20,61)
trigger7 = stateno = 52
trigger8 = stateno = 200 && time >= 7
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 215
triggerall = command = "fwd_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = [195,197]
trigger3 = time > ifelse(anim = 197,20,61)
trigger4 = stateno = 52
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 101
trigger6 = stateno = [195,197]
trigger6 = time > ifelse(anim = 197,20,61)
trigger7 = stateno = 52
trigger8 = stateno = 200 && time >= 7
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X = [-38,42]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 101
trigger8 = stateno = [195,197]
trigger8 = time > ifelse(anim = 197,20,61)
trigger9 = stateno = 52
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 225
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = p2bodydist X > 42
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = p2bodydist X > 42
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = p2bodydist X > 42
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger4 = p2bodydist X > 42
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = p2bodydist X > 42
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = p2bodydist X > 42
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 101
trigger9 = stateno = [195, 197]
trigger9 = time > ifelse(anim = 197,20,61)
trigger10 = stateno = 52
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 235
triggerall = command = "fwd_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 101
trigger4 = stateno = [195,197]
trigger4 = time > ifelse(anim = 197,20,61)
trigger5 = stateno = 52
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 101
trigger8 = stateno = [195,197]
trigger8 = time > ifelse(anim = 197,20,61)
trigger9 = stateno = 52
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 231
triggerall = var(59) = 10
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 101
trigger8 = stateno = [195,197]
trigger8 = time > ifelse(anim = 197,20,61)
trigger9 = stateno = 52
;---------------------------------------------------------------------------
[State -1, Taunt];敬意
type = ChangeState
value = 197
triggerall = command = "fwd_s"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(anim = 197,20,61)
trigger7 = stateno = 52
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(anim = 197,20,61)
trigger7 = stateno = 52
;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 101
trigger6 = stateno = [195,197]
trigger6 = time > ifelse(anim = 197,20,61)
trigger7 = stateno = 52
trigger8 = stateno = 200 && time >= 7
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 101
trigger6 = stateno = [195,197]
trigger6 = time > ifelse(anim = 197,20,61)
trigger7 = stateno = 52
trigger8 = stateno = 200 && time >= 7
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 220
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 101
trigger10 = stateno = [195,197]
trigger10 = time > ifelse(anim = 197,20,61)
trigger11 = stateno = 52
--------------------------------------------------
[State -1]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 101
trigger10 = stateno = [195,197]
trigger10 = time > ifelse(anim = 197,20,61)
trigger11 = stateno = 52
;---------------------------------------------------------------------------
[State ２段ジャンプ]
type = ChangeState
value = 99
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) != 1
triggerall = var(12) = 0
trigger1 = var(13) = 2
trigger1 = ctrl
trigger2 = var(13) = 2
trigger2 = stateno = 610 && movecontact
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 41
triggerall = command = "highjump" && var(17) = 1
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 215 && movecontact 
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 225 && movecontact
;ignorehitpause = 1
[State -1]
type = ChangeState
value = 41
triggerall = command = "highjumpcancel" && var(17) = 0
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 215 && movecontact 
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 225 && movecontact
ignorehitpause = 1
[State -1];ジャンプ属性テスト
type = varset
triggerall = command = "holdup" && command != "holddown" 
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 215 && movecontact 
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 225 && movecontact
var(17) = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 40
triggerall = command = "holdup"
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 215 && movecontact 
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 225 && movecontact
;---------------------------------------------------------------------------
[State 空中ダッシュ]
type = ChangeState
value = 110
triggerall = palno = 11
triggerall = var(11) = 0
triggerall = statetype = A
triggerall = command = "FF"
triggerall = pos y <= -25
trigger1 = stateno = [50,59]
trigger1 = var(13) < 2
trigger2 = stateno = [5200,5210]
trigger3 = stateno = 241
trigger3 = var(13) < 2
;---------------------------------------------------------------------------
[State 空中ダッシュ]
type = ChangeState
value = 115
triggerall = palno = 11
triggerall = var(11) = 0
triggerall = statetype = A
triggerall = command = "BB"
triggerall = pos y <= -25
trigger1 = stateno = [50,59]
trigger1 = var(13) < 2
trigger2 = stateno = [5200,5210]
trigger3 = stateno = 241
trigger3 = var(13) < 2
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 640
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 12
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 620
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 12
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 12
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 620
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 12
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 620
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 12
;---------------------------------------------------------------------------