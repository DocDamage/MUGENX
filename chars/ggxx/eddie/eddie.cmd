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
name = "ブラック・イン・マインド"
command = ~D, F, D, F, b
time = 25

[Command]
name = "アモルファス"
command = ~F, DF, D, DB, B, F, b
time = 30

[Command]
name = "メガリスヘッド"
command = ~F, DF, D, DB, B, F, y
time = 30

[Command]
name = "イグゼキューター"
command = ~D, F, D, F, y
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "シャドウギャラリー"
command = ~B, $D, F, y

[Command]
name = "ダムドファング"
command = ~F, D, DF, y

[Command]
name = "エディ召喚_P"
command = ~D, DF, F, x

[Command]
name = "エディ召喚_K"
command = ~D, DF, F, a

[Command]
name = "エディ召喚_S"
command = ~D, DF, F, y

[Command]
name = "エディ召喚_HS"
command = ~D, DF, F, b

[Command]
name = "転移"
command = ~D, DB, B, x

[Command]
name = "ブレイク・ザ・ロウ"
command = ~D, DB, B, a

[Command]
name = "インヴァイトヘル_S"
command = ~D,D,y
time = 12

[Command]
name = "インヴァイトヘル_HS"
command = ~D,D,b
time = 12

[Command]
name = "ドランカーシェイド"
command = ~D, DB, B, y

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
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "!hold_x"
command = ~x
time = 1

[Command]
name = "!hold_a"
command = ~a
time = 1

[Command]
name = "!hold_y"
command = ~y
time = 1

[Command]
name = "!hold_b"
command = ~b
time = 1

[Command]
name = "!hold_z"
command = ~z
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
triggerall = command = "rc"
triggerall = Power >= 500
trigger1 = numhelper(1298) >= 1
trigger1 = stateno = 215 || stateno = 1050
value = 955
ignorehitpause = 1

[State -1]
type = ChangeState
triggerall = command = "rc"
triggerall = Power >= 500
trigger1 = numhelper(1299) >= 1
trigger1 = stateno = 1401
value = 956
ignorehitpause = 1

[State -1]
type = ChangeState
value = 950
triggerall = command = "rc"
triggerall = movecontact
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = (stateno = [200,899])
trigger2 = (stateno = [1000,3999])

[State -1]
type = ChangeState
value = 951
triggerall = command = "rc"
triggerall = Power >= 1000
triggerall = statetype = A
trigger1 = (stateno = [200,899]) && movecontact
trigger2 = (stateno = [1000,3999]) && movecontact

[State -2]
type = ChangeState
value = 750
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
value = 4001
triggerall = var(25) = 0
triggerall = var(40) = 1
triggerall = command = "ブラック・イン・マインド"
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
triggerall = var(25) = 0
triggerall = var(40) < 2
triggerall = command = "一撃必殺準備"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 40
trigger5 = stateno = [195, 197]
trigger5 = time > ifelse(anim = 197,20,61)
;---------------------------------------------------------------------------
;===========================================================================
[State -1]
type = ChangeState
value = 3300
triggerall = power >= 1000
triggerall = command = "イグゼキューター"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 8

[State -1, 3000]
type = ChangeState
value = 3400
triggerall = var(59) = 1
triggerall = power >= 1000
triggerall = command = "アモルファス"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 236
trigger2 = stateno != 235
trigger2 = stateno != 215
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

[State -1, 3000]
type = ChangeState
value = 3000
triggerall = var(59) != 1
triggerall = power >= 1000
triggerall = command = "アモルファス"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 232
trigger2 = stateno != 236
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

[State -1, 3000]
type = ChangeState
value = 3500
triggerall = numhelper(3680) = 0
triggerall = var(59) = 1
triggerall = var(32) = 0
triggerall = var(34) <= 1
triggerall = power >= 1000
triggerall = command = "メガリスヘッド"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 236
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

[State -1, 3000]
type = ChangeState
value = 3200
triggerall = var(59) = 0
triggerall = var(32) = 1
triggerall = var(33) >= 1
triggerall = var(34) = 2
triggerall = power >= 1000
triggerall = command = "メガリスヘッド"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 232
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
;===========================================================================
[State -1]
type = ChangeState
value = 1300
triggerall = command = "ダムドファング"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 232
trigger2 = stateno != 236
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1400
triggerall = command = "シャドウギャラリー"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 8
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1800
triggerall = var(59) = 1
triggerall = var(30) = 0
triggerall = numhelper(1001) = 0
triggerall = command = "インヴァイトヘル_S"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 8
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1850
triggerall = var(59) = 1
triggerall = var(31) = 0
triggerall = numhelper(1002) = 0
triggerall = command = "インヴァイトヘル_HS"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 8
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1580
;triggerall = numhelper(1600) = 1
triggerall = var(34) = 2
triggerall = var(32) = 1
;triggerall = var(33) > 0
triggerall = command = "エディ召喚_P"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 232
trigger2 = stateno != 236
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
[State -1]
type = ChangeState
value = 1580
;triggerall = numhelper(1601) = 1
triggerall = var(34) = 2
triggerall = var(32) = 1
;triggerall = var(33) > 0
triggerall = command = "エディ召喚_K"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 232
trigger2 = stateno != 236
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
[State -1]
type = ChangeState
value = 1580
;triggerall = numhelper(1602) = 1
triggerall = var(34) = 2
triggerall = var(32) = 1
;triggerall = var(33) > 0
triggerall = command = "エディ召喚_S"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 232
trigger2 = stateno != 236
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
[State -1]
type = ChangeState
value = 1580
;triggerall = numhelper(1603) = 1
triggerall = var(34) = 2
triggerall = var(32) = 1
;triggerall = var(33) > 0
triggerall = command = "エディ召喚_HS"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 232
trigger2 = stateno != 236
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

[State -1]
type = ChangeState
value = 1500
triggerall = numhelper(3680) = 0
triggerall = var(32) = 0
triggerall = var(34) <= 1
triggerall = command = "エディ召喚_P"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 232
trigger2 = stateno != 236
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
[State -1]
type = ChangeState
value = 1510
triggerall = numhelper(3680) = 0
triggerall = var(32) = 0
triggerall = var(34) <= 1
triggerall = command = "エディ召喚_K"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 232
trigger2 = stateno != 236
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
[State -1]
type = ChangeState
value = 1520
triggerall = numhelper(3680) = 0
triggerall = var(32) = 0
triggerall = var(34) <= 1
triggerall = command = "エディ召喚_S"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 232
trigger2 = stateno != 236
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
[State -1]
type = ChangeState
value = 1530
triggerall = numhelper(3680) = 0
triggerall = var(32) = 0
triggerall = var(34) <= 1
triggerall = command = "エディ召喚_HS"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 232
trigger2 = stateno != 236
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1700
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = var(32) = 1
;triggerall = var(33) >= 1
triggerall = var(34) = 2
triggerall = var(35) = 0
triggerall = command = "転移"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 236
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1710
triggerall = roundstate = 2
triggerall = var(59) = 1
triggerall = var(32) = 1
;triggerall = var(33) >= 1
triggerall = var(34) = 2
triggerall = var(35) = 0
triggerall = command = "ブレイク・ザ・ロウ"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 236
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = command = "ブレイク・ザ・ロウ"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 232
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1200
triggerall = command = "ドランカーシェイド"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 232
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1000
triggerall = command = "インヴァイトヘル_S"
triggerall = numhelper(1001) = 0
triggerall = var(30) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 232
trigger2 = stateno != 236
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

[State -1]
type = ChangeState
value = 1050
triggerall = command = "インヴァイトヘル_HS"
triggerall = numhelper(1002) = 0
triggerall = var(31) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,450]) && movecontact
trigger2 = stateno != 215
trigger2 = stateno != 232
trigger2 = stateno != 236
trigger2 = stateno != 235
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
;===========================================================================
[State -1, Run Fwd]
type = ChangeState
value = 100
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
triggerall = p2bodydist X < 55
triggerall = p2bodydist Y > -50
triggerall = p2bodydist Y < 20
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
triggerall = p2bodydist X < 25
triggerall = p2statetype = S || p2statetype = C
triggerall = IsHelper = 0
triggerall = p2stateno != 40
triggerall = command = "fwd_b"
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(anim = 196,20,63)
trigger4 = stateno = 52
[State 投げ]
type = ChangeState
value = 805
triggerall = statetype = S
triggerall = stateno != 100
triggerall = p2bodydist X < 25
triggerall = p2statetype = S || p2statetype = C
triggerall = IsHelper = 0
triggerall = p2stateno != 40
triggerall = command = "back_b"
trigger1 = ctrl
trigger2 = stateno = 101 && command = "back_b"
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(anim = 196,20,63)
trigger4 = stateno = 52
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
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = (stateno = [225, 228])
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 430
trigger6 = movecontact
trigger7 = stateno = [100, 101]
trigger8 = stateno = [195, 196]
trigger8 = time > ifelse(anim = 196,20,63)
trigger9 = stateno = 52
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
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = (stateno = [230, 231])
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = (stateno = [410, 415]) 
trigger8 = movecontact
trigger9 = stateno = 420
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = [100, 101]
trigger12 = stateno = [195, 196]
trigger12 = time > ifelse(anim = 196,20,63)
trigger13 = stateno = 52
trigger14 = (stateno = [233, 234])
trigger14 = movecontact
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 205
triggerall = command = "back_x"
triggerall = command != "holddown"
triggerall = p2dist x < 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100, 101]

[State -1]
type = ChangeState
value = 205
triggerall = command = "fwd_x"
triggerall = command != "holddown"
triggerall = p2dist x >= 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200||stateno = 400
trigger2 = movecontact
trigger3 = stateno = [100, 101]
trigger4 = stateno = [195, 196]
trigger4 = time > ifelse(anim = 196,20,63)
trigger5 = stateno = 52
trigger6 = stateno = 220
trigger6 = movecontact
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200||stateno = 400
trigger2 = movecontact
trigger2 = animelemtime(4) >= 0
trigger3 = stateno = [100, 101]
trigger4 = stateno = [195, 196]
trigger4 = time > ifelse(anim = 196,20,63)
trigger5 = stateno = 52
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 215
triggerall = command = "back_a"
triggerall = command != "holddown"
triggerall = p2dist x < 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100, 101]

[State -1]
type = ChangeState
value = 215
triggerall = command = "fwd_a"
triggerall = command != "holddown"
triggerall = p2dist x >= 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100, 101]
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
trigger2 = stateno = 200||stateno = 400
trigger2 = movecontact
trigger3 = stateno = [100, 101]
trigger4 = stateno = [195, 196]
trigger4 = time > ifelse(anim = 196,20,63)
trigger5 = stateno = 52
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X = [-26,28]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,210]
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = [100, 101]
trigger5 = stateno = [195, 196]
trigger5 = time > ifelse(anim = 196,20,63)
trigger6 = stateno = 52
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 225
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = p2bodydist X > 28
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = p2bodydist X > 28
trigger3 = (stateno = [200,210])
trigger3 = movecontact
trigger4 = p2bodydist X > 28
trigger4 = stateno = 400||stateno = 410
trigger4 = movecontact
trigger5 = stateno = [100, 101]
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
trigger7 = stateno = 52
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 235
triggerall = command = "back_b"
triggerall = command != "holddown"
triggerall = p2dist x < 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100, 101]

[State -1]
type = ChangeState
value = 235
triggerall = command = "fwd_b"
triggerall = command != "holddown"
triggerall = p2dist x >= 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(anim = 196,20,63)
trigger4 = stateno = 52
trigger5 = stateno = 410
trigger5 = movecontact
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 233
triggerall = var(59) = 1
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = [200,210])
trigger2 = movecontact
trigger3 = (stateno = [220,228])
trigger3 = movecontact
trigger4 = stateno = 400||stateno = 420
trigger4 = movecontact
trigger5 = stateno = [100, 101]
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
trigger7 = stateno = 52
[State -1]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = [200,210])
trigger2 = movecontact
trigger3 = (stateno = [220,228])
trigger3 = movecontact
trigger4 = stateno = 400||stateno = 420
trigger4 = movecontact
trigger5 = stateno = [100, 101]
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
trigger7 = stateno = 52
;---------------------------------------------------------------------------
[State -1, Taunt];敬意
type = ChangeState
value = 196
triggerall = command = "fwd_s"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(anim = 196,20,63)
trigger4 = stateno = 52
;---------------------------------------------------------------------------
[State -1, Taunt];
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(anim = 196,20,63)
trigger4 = stateno = 52
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
trigger3 = stateno = [100, 101]
trigger4 = stateno = [195, 196]
trigger4 = time > ifelse(anim = 196,20,63)
trigger5 = stateno = 52
trigger6 = stateno = 400
trigger6 = movecontact
trigger6 = animelemtime(4) >= 0
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200||stateno = 400
trigger2 = movecontact
trigger3 = stateno = [100, 101]
trigger4 = stateno = [195, 196]
trigger4 = time > ifelse(anim = 196,20,63)
trigger5 = stateno = 52
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,210])
trigger2 = movecontact
trigger3 = (stateno = [220,228])
trigger3 = movecontact
trigger4 = (stateno = [400, 410])
trigger4 = movecontact
trigger5 = stateno = [100, 101]
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
trigger7 = stateno = 52
--------------------------------------------------
[State -1]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,210])
trigger2 = movecontact
trigger3 = (stateno = [220,228])
trigger3 = movecontact
trigger4 = (stateno = [400, 420])
trigger4 = movecontact
trigger5 = stateno = [100, 101]
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
trigger7 = stateno = 52
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
trigger2 = (stateno = [205,206]) && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 450 && movecontact
;ignorehitpause = 1
[State -1]
type = ChangeState
value = 41
triggerall = command = "highjumpcancel" && var(17) = 0
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger2 = (stateno = [205,206]) && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 450 && movecontact
ignorehitpause = 1
[State -1];ジャンプ属性テスト
type = varset
triggerall = command = "holdup" && command != "holddown" 
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger2 = (stateno = [205,206]) && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 450 && movecontact
var(17) = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 40
triggerall = command = "holdup"
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger2 = (stateno = [205,206]) && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 450 && movecontact
trigger6 = stateno = 206
trigger6 = var(29)
trigger6 = !movecontact
;---------------------------------------------------------------------------
[State 空中ダッシュ]
type = ChangeState
value = 110
triggerall = var(11) = 0
triggerall = statetype = A
triggerall = command = "FF"
triggerall = pos y <= -25
trigger1 = stateno = [50,59]
trigger1 = var(13) < 2
trigger1 = prevstateno != 1310
trigger2 = stateno = [5200,5210]
;---------------------------------------------------------------------------
[State 空中ダッシュ]
type = ChangeState
value = 115
triggerall = var(11) = 0
triggerall = statetype = A
triggerall = command = "BB"
triggerall = pos y <= -25
trigger1 = stateno = [50,59]
trigger1 = var(13) < 2
trigger1 = prevstateno != 1310
trigger2 = stateno = [5200,5210]
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 640
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1101
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 8
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 8
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
trigger3 = time >= 8
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
trigger3 = time >= 8
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 8
;---------------------------------------------------------------------------