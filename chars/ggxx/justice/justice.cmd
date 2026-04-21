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
name = "イグゼレイザー"
command = ~D, F, D, F, b
time = 20

[Command]
name = "インペリアルレイ"
command = ~F, B, DB, D, DF, F, y
time = 40

[Command]
name = "ガンマレイ"
command = ~B, F, B, F, D, B, b
time = 50

[Command]
name = "ミカエルブレード"
command = ~F, DF, D, DB, B, F, b
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "ミカエルソード"
command = ~B, DB, D, DF, b
time = 25

[Command]
name = "ヴァルキリーアーク"
command = ~D, DF, F, x

[Command]
name = "S.B.T."
command = ~B, D, DB, a
time = 25

[Command]
name = "N.B.HS"
command = ~B, D, DB, b
time = 25

[Command]
name = "N.B.S"
command = ~B, D, DB, y
time = 25

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
time = 8

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

[Command]
name = "burst"
command = z+a

[Command]
name = "burst"
command = z+b

[Command]
name = "burst"
command = z+x

[Command]
name = "burst"
command = z+y

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
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_x"
command = /B,x
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
name = "!hold_x"
command = ~x
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
value = 960
triggerall = var(59) != 1
triggerall = command = "rc"
triggerall = Power >= 500
triggerall = statetype != A
trigger1 = animelemtime(7) = [0,2]
trigger1 = stateno = 1300 || stateno = 1310
trigger2 = animelemtime(5) = [0,2]
trigger2 = stateno = 3200
ignorehitpause = 1

[State -1]
type = ChangeState
value = 950
triggerall = var(59) != 1
triggerall = command = "rc"
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = (stateno = [200,899]) && movecontact
trigger2 = (stateno = [1000,2999]) && movecontact
trigger3 = var(6)
trigger4 = (stateno = [200,451]) && var(29)

trigger5 = stateno = 3000 && movecontact
trigger5 = animelemtime(7) != [0,30]

[State -1]
type = ChangeState
value = 951
triggerall = var(59) != 1
triggerall = command = "rc"
triggerall = Power >= 1000
triggerall = statetype = A
trigger1 = (stateno = [200,899]) && movecontact
trigger2 = (stateno = [1000,3999]) && movecontact
trigger3 = var(6)
trigger4 = (stateno = [600,640]) && var(29)

[State -2]
type = ChangeState
value = 750
triggerall = var(59) != 1
triggerall = fvar(33) >= 1.5
triggerall = command = "burst"
triggerall = alive
trigger1 = ctrl = 1
trigger2 = stateno = [100,101]
trigger3 = time <= 1
trigger3 = movetype = A
trigger3 = stateno = [200,640]
trigger3 = prevstateno != [200,640]

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
value = 3100
triggerall = var(59) != 1
triggerall = var(25) = 0
triggerall = power >= 1000
triggerall = command = "インペリアルレイ"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(3) = 0
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(anim = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)

[State -1, 3000]
type = ChangeState
value = 3000
triggerall = var(59) != 1
triggerall = var(25) = 0
triggerall = power >= 2000
triggerall = command = "ガンマレイ"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(3) = 0
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(anim = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)

[State -1, 3000]
type = ChangeState
value = 3200
triggerall = var(59) != 1
triggerall = var(25) = 0
triggerall = power >= 1000
triggerall = command = "ミカエルブレード"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(3) = 0
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(anim = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
;---------------------------------------------------------------------------
[State -1, 3000]
type = ChangeState
value = 4001

triggerall = var(59) != 1
triggerall = var(25) = 0
triggerall = var(40) = 1
;triggerall = enemy,teammode = single || enemy,teammode = turns
triggerall = command = "イグゼレイザー"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 40
trigger5 = stateno = [195, 197]
trigger5 = time > ifelse(anim = 196,18,64)
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
trigger5 = time > ifelse(anim = 196,18,64)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1000
triggerall = var(59) != 1
triggerall = var(25) = 0
triggerall = command = "ミカエルソード"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(3) = 0
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(anim = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1100
triggerall = var(59) != 1
triggerall = var(25) = 0
triggerall = command = "ヴァルキリーアーク"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(3) = 0
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(anim = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1200
triggerall = var(58) = 0
triggerall = var(59) != 1
triggerall = var(25) = 0
triggerall = command = "S.B.T."
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(3) = 0
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(anim = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 1205
triggerall = var(58) = 1
triggerall = var(59) != 1
triggerall = var(25) = 0
triggerall = command = "S.B.T."
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(3) = 0
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(anim = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 1300
triggerall = var(59) != 1
triggerall = var(25) = 0
triggerall = command = "N.B.S"
triggerall = numhelper(1350) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(3) = 0
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(anim = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 1310
triggerall = var(59) != 1
triggerall = var(25) = 0
triggerall = command = "N.B.HS"
triggerall = numhelper(1350) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = var(3) = 0
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(anim = 196,18,64)

trigger7 = (stateno = [200,451]) && var(29)

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State 空中投げ]
type = ChangeState
value = 850
triggerall = var(59) != 1
triggerall = statetype = A
triggerall = ctrl
triggerall = p2bodydist X < 55
triggerall = p2bodydist Y > -80
triggerall = p2bodydist Y < 20
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"
;---------------------------------------------------------------------------
[State 投げ]
type = ChangeState
value = 800
triggerall = var(59) != 1
triggerall = statetype = S
triggerall = stateno != 100
triggerall = p2bodydist X < 25
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = p2stateno != 40
triggerall = command = "fwd_b"
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = [195, 197]
trigger3 = time > ifelse(anim = 196,18,64)
[State 投げ]
type = ChangeState
value = 805
triggerall = var(59) != 1
triggerall = statetype = S
triggerall = stateno != 100
triggerall = p2bodydist X < 25
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
triggerall = p2stateno != 40
triggerall = command = "back_b"
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = [195, 197]
trigger3 = time > ifelse(anim = 196,18,64)
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
trigger5 = time > ifelse(anim = 196,18,64)
;===========================================================================
[State -1]
type = ChangeState
value = 450
triggerall = var(59) != 1
triggerall = command = "down_z"
triggerall = var(3) = 0
trigger1 = (stateno = [200, 431])
trigger1 = movecontact
trigger1 = stateno != 205
trigger1 = stateno != [235, 240]

[State -1]
type = ChangeState
value = 450
triggerall = var(59) != 1
triggerall = command = "holddown"
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 197]
trigger3 = time > ifelse(anim = 196,18,64)
trigger4 = stateno = 52

trigger5 = var(29)
trigger5 = (stateno = [200, 431])
trigger5 = stateno != 205
trigger5 = stateno != [235, 240]
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 240
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = var(3) = 0
trigger1 = (stateno = [200, 431])
trigger1 = movecontact
trigger1 = stateno != [235, 240]

[State -1]
type = ChangeState
value = 240
triggerall = var(59) != 1
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 197]
trigger3 = time > ifelse(anim = 196,18,64)
trigger4 = stateno = 52

trigger5 = var(29)
trigger5 = (stateno = [200, 431])
trigger5 = stateno != [235, 240]
;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "down_x"
triggerall = var(3) = 0
trigger1 = (stateno = [200,201])
trigger1 = movecontact
trigger2 = stateno = 400
trigger2 = movecontact

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) != 1
triggerall = command = "holddown"
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 197]
trigger3 = time > ifelse(anim = 196,18,64)
trigger4 = stateno = 52
trigger5 = stateno = 200
trigger5 = animelemtime(2) >= 2
trigger6 = stateno = 201
trigger7 = stateno = 400
trigger7 = animelemtime(3) >= 1

trigger8 = var(29)
trigger8 = (stateno = [200,201])
trigger9 = var(29)
trigger9 = stateno = 400
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 205
triggerall = var(59) != 1
triggerall = command = "back_x"
triggerall = p2dist x < 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100, 101]

[State -1]
type = ChangeState
value = 205
triggerall = var(59) != 1
triggerall = command = "fwd_x"
triggerall = p2dist x >= 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [200,201]
trigger2 = movecontact&&var(3) = 0
trigger3 = stateno = [210,220]
trigger3 = movecontact&&var(3) = 0
trigger4 = stateno = [400,410]
trigger4 = movecontact&&var(3) = 0
trigger5 = stateno = [100, 101]
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(anim = 196,18,64)
trigger7 = stateno = 52
trigger8 = stateno = 200
trigger8 = animelemtime(2) >= 2
trigger9 = stateno = 201
trigger10 = stateno = 400
trigger10 = animelemtime(3) >= 1

trigger11 = stateno = [200,201]
trigger11 = var(29)
trigger12 = stateno = [210,220]
trigger12 = var(29)
trigger13 = stateno = [400,410]
trigger13 = var(29)


[State -1]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = var(3) = 0
trigger1 = (stateno = [200,201])&&stateno = 400
trigger1 = movecontact

[State -1]
type = ChangeState
value = 200
triggerall = var(59) != 1
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 197]
trigger3 = time > ifelse(anim = 196,18,64)
trigger4 = stateno = 200
trigger4 = animelemtime(2) >= 2
trigger5 = stateno = 201
trigger6 = stateno = 52
trigger7 = stateno = 400
trigger7 = animelemtime(3) >= 1

trigger8 = (stateno = [200,201])&&stateno = 400
trigger8 = var(29)

[State -1]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = command = "down_a"
triggerall = var(3) = 0
trigger1 = stateno = 200||stateno = 400
trigger1 = movecontact

[State -1]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = command = "holddown"
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(anim = 196,20,63)
trigger4 = stateno = 52
trigger5 = stateno = 200
trigger5 = animelemtime(2) >= 2
trigger6 = stateno = 201
trigger7 = stateno = 400
trigger7 = animelemtime(3) >= 1
trigger8 = stateno = 200||stateno = 400
trigger8 = var(29)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = var(3) = 0
trigger1 = stateno = 200||stateno = 400
trigger1 = movecontact

[State -1]
type = ChangeState
value = 210
triggerall = var(59) != 1
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 197]
trigger3 = time > ifelse(anim = 196,18,64)
trigger4 = stateno = 52
trigger5 = stateno = 200
trigger5 = animelemtime(2) >= 1
trigger6 = stateno = 201
trigger7 = stateno = 400
trigger7 = animelemtime(3) >= 1
trigger8 = stateno = 200||stateno = 400
trigger8 = var(29)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = command = "down_y"
triggerall = var(3) = 0
trigger1 = stateno = [200,228]
trigger1 = movecontact
trigger2 = stateno = [400, 410]
trigger2 = movecontact

[State -1]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = command = "holddown"
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(anim = 196,20,63)
trigger4 = stateno = 52
trigger5 = (stateno = [200,228])
trigger5 = var(29)
trigger5 = !movecontact
trigger6 = stateno = 52

trigger7 = stateno = [400, 410]
trigger7 = var(29)
trigger7 = !movecontact

[State -1]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = p2bodydist X = [-30,32]
triggerall = var(3) = 0
trigger1 = stateno = [200,210]
trigger1 = movecontact
trigger2 = stateno = [400,410]
trigger2 = movecontact

[State -1]
type = ChangeState
value = 220
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = p2bodydist X = [-30,32]
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 197]
trigger3 = time > ifelse(anim = 196,18,64)
trigger4 = stateno = 52

trigger5 = stateno = [200,210]
trigger5 = var(29)
trigger6 = stateno = [400,410]
trigger6 = var(29)
;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 225
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = var(3) = 0
trigger1 = p2bodydist X > 32
trigger1 = stateno = [200,206]
trigger1 = movecontact
trigger2 = p2bodydist X > 32
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = p2bodydist X > 32
trigger4 = stateno = [400,410]
trigger4 = movecontact


[State -1]
type = ChangeState
value = 225
triggerall = var(59) != 1
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = p2bodydist X > 32
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 197]
trigger3 = time > ifelse(anim = 196,18,64)
trigger4 = stateno = 52

trigger5 = p2bodydist X > 32
trigger5 = stateno = [200,206]
trigger5 = var(29)
trigger6 = p2bodydist X > 32
trigger6 = stateno = 210
trigger6 = var(29)
trigger7 = stateno = 220
trigger7 = var(29)
trigger8 = p2bodydist X > 32
trigger8 = stateno = [400,410]
trigger8 = var(29)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = command = "down_b"
triggerall = var(3) = 0
trigger1 = (stateno = [200,228])
trigger1 = movecontact
trigger2 = (stateno = [400, 420])
trigger2 = movecontact


[State -1]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(anim = 196,18,64)
trigger4 = stateno = 52

trigger5 = (stateno = [200,228])
trigger5 = var(29)
trigger6 = (stateno = [400, 420])
trigger6 = var(29)

[State -1]
type = ChangeState
value = 235
triggerall = var(59) != 1
triggerall = command = "back_b"
triggerall = p2dist x < 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100, 101]

[State -1]
type = ChangeState
value = 235
triggerall = var(59) != 1
triggerall = command = "fwd_b"
triggerall = p2dist x >= 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,206])
trigger2 = movecontact && var(3) = 0
trigger3 = stateno = [100, 101]
trigger4 = stateno = [195, 197]
trigger4 = time > ifelse(anim = 196,18,64)
trigger5 = stateno = 52

trigger6 = (stateno = [200,206])
trigger6 = var(29)

[State -1]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = var(3) = 0
trigger1 = (stateno = [200, 228])
trigger1 = movecontact
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 420
trigger3 = movecontact

[State -1]
type = ChangeState
value = 230
triggerall = var(59) != 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 197]
trigger3 = time > ifelse(anim = 196,18,64)
trigger4 = stateno = 52

trigger5 = (stateno = [200, 228])
trigger5 = var(29)
trigger6 = stateno = 400
trigger6 = var(29)
trigger7 = stateno = 420
trigger7 = var(29)
;---------------------------------------------------------------------------
[State -1, Taunt];敬意
type = ChangeState
value = 196
triggerall = var(59) != 1
triggerall = command = "fwd_s"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(anim = 196,18,64)
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) != 1
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40
trigger6 = stateno = [195, 197]
trigger6 = time > ifelse(anim = 196,18,64)

;---------------------------------------------------------------------------
[State ２段ジャンプ]
type = ChangeState
value = 99
triggerall = var(59) != 1
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) < 2
triggerall = var(12) = 0
triggerall = fvar(15) <= 0
triggerall = fvar(16) <= 1
triggerall = fvar(20) <= 1
trigger1 = var(13) = 2 || var(13) = 5
trigger1 = ctrl
trigger1 = stateno != [120,155]
trigger2 = var(13) = 2 || var(13) = 5;(var(13) = [1,2]) || (var(13) = [4,5])
trigger2 = stateno = 600 && movecontact
trigger3 = var(13) = 2 || var(13) = 5;(var(13) = [1,2]) || (var(13) = [4,5])
trigger3 = stateno = 610 && movecontact
trigger4 = var(13) = 2 || var(13) = 5;(var(13) = [1,2]) || (var(13) = [4,5])
trigger4 = (stateno = [620,621]) && movecontact
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 41
triggerall = var(59) != 1
triggerall = command = "highjump" && var(17) = 1
triggerall = statetype != A
trigger1 = (stateno = [200, 201]) && movecontact
trigger2 = (stateno = [210, 228]) && movecontact
trigger3 = stateno = 236 && movecontact
trigger4 = stateno = 420 && movecontact
;ignorehitpause = 1
[State -1]
type = ChangeState
value = 41
triggerall = var(59) != 1
triggerall = command = "highjumpcancel" && var(17) = 0
triggerall = statetype != A
trigger1 = (stateno = [200, 201]) && movecontact
trigger2 = (stateno = [210, 228]) && movecontact
trigger3 = stateno = 236 && movecontact
trigger4 = stateno = 420 && movecontact
ignorehitpause = 1
[State -1];ジャンプ属性テスト
type = varset
triggerall = var(59) != 1
triggerall = command = "holdup" && command != "holddown" 
triggerall = statetype != A
trigger1 = (stateno = [200, 201]) && movecontact
trigger2 = (stateno = [210, 228]) && movecontact
trigger3 = stateno = 236 && movecontact
trigger4 = stateno = 420 && movecontact
var(17) = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 40
triggerall = var(59) != 1
triggerall = command = "holdup"
triggerall = statetype != A
trigger1 = (stateno = [200, 201]) && movecontact
trigger2 = (stateno = [210, 228]) && movecontact
trigger3 = stateno = 236 && movecontact
trigger4 = stateno = 420 && movecontact
trigger5 = stateno = 201||stateno = 206||(stateno = [226,228])
trigger5 = var(29)
trigger5 = !movecontact
;---------------------------------------------------------------------------
[State 空中ダッシュ]
type = ChangeState
value = 110
triggerall = var(59) != 1
triggerall = var(11) <= 2
triggerall = fvar(22) = 0
triggerall = fvar(15) <= 1
triggerall = statetype = A
triggerall = command = "FF"
;triggerall = pos y <= ifelse(vel y < 0,-15,0)
trigger1 = (stateno = [50,59]) && ctrl
trigger2 = stateno = [5200,5210]
trigger3 = stateno = 241
;---------------------------------------------------------------------------
[State 空中ダッシュ]
type = ChangeState
value = 115
triggerall = var(59) != 1
triggerall = var(11) <= 2
triggerall = fvar(22) = 0
triggerall = fvar(15) <= 1
triggerall = statetype = A
triggerall = command = "BB"
triggerall = pos y <= -15
trigger1 = (stateno = [50,59]) && ctrl
trigger2 = stateno = [5200,5210]
trigger3 = stateno = 241
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 640
triggerall = var(59) != 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 110 || stateno = 115
trigger2 = time >= 6
;trigger3 = stateno = 99; && prevstateno = 610
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 600
triggerall = var(59) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,621]
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 6
trigger4 = stateno = 99 && (prevstateno = [600,621])
;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 610
triggerall = var(59) != 1
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 6
trigger4 = stateno = 99 && prevstateno = 600
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 620
triggerall = var(59) != 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 6
trigger4 = stateno = 99 && (prevstateno = [600,610])
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 630
triggerall = var(59) != 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,621]
trigger2 = stateno != 610
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 6
trigger4 = stateno = 99 && (prevstateno = [600,621])
;---------------------------------------------------------------------------