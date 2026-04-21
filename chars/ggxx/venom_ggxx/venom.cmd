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
name = "ダークエンジェル"
command = ~D, DB, B, DB, D, DF, F, y
time = 45

[Command]
name = "メガリスヘッド"
command = ~F, DF, D, DB, B, F, y
time = 30

[Command]
name = "イグゼキューター"
command = ~D, DF, F, D, DF, F, y
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "瞬間移動"
command = ~F, D, DF, a

[Command]
name = "ダブルヘッドモービット_S"
command = ~F, D, DF, y

[Command]
name = "ダブルヘッドモービット_HS"
command = ~F, D, DF, b

[Command]
name = "マッドストラグル_S"
command = ~D, DF, F, y
time = 20

[Command]
name = "マッドストラグル_HS"
command = ~D, DF, F, b

[Command]
name = "ボール生成_P"
command = ~D, DB, B, x

[Command]
name = "ボール生成_K"
command = ~D, DB, B, a

[Command]
name = "ボール生成_S"
command = ~D, DB, B, y

[Command]
name = "ボール生成_HS"
command = ~D, DB, B, b

[Command]
name = "デュービスカーブ_P"
command = ~B, D, DB, x

[Command]
name = "デュービスカーブ_K"
command = ~B, D, DB, a

[Command]
name = "デュービスカーブ_S"
command = ~B, D, DB, y

[Command]
name = "デュービスカーブ_HS"
command = ~B, D, DB, b

[Command]
name = "カーカスライド_S"
command = ~40$D, $U, y

[Command]
name = "カーカスライド_HS"
command = ~40$D, $U, b

[Command]
name = "スティンガーエイム_S"
command = ~45$B, F, y

[Command]
name = "スティンガーエイム_HS"
command = ~45$B, F, b

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
value = 960
ignorehitpause = 1

[State -1]
type = ChangeState
value = 950
triggerall = var(59) = 0
triggerall = command = "rc"
;triggerall = movecontact
triggerall = Power >= 1000
triggerall = statetype != A
trigger1 = (stateno = [200,899])&&movecontact
trigger2 = (stateno = [1000,3999])&&movecontact

trigger3 = (stateno = [200,451]) && var(29)

trigger4 = var(6)

[State -1]
type = ChangeState
value = 951
triggerall = var(59) = 0
triggerall = command = "rc"
triggerall = Power >= 1000
triggerall = statetype = A
trigger1 = (stateno = [200,899]) && movecontact
trigger2 = (stateno = [1000,3999]) && movecontact
trigger3 = var(6)

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
;===========================================================================
[State -1]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = command = "ダークエンジェル"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

trigger7 = (stateno = [200,451]) && var(29)

;===========================================================================
[State -1]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = command = "ダブルヘッドモービット_S"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 1310
triggerall = var(59) = 0
triggerall = command = "ダブルヘッドモービット_HS"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = command = "瞬間移動"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 2200
triggerall = var(59) = 0
triggerall = command = "カーカスライド_S"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 2250
triggerall = var(59) = 0
triggerall = command = "カーカスライド_HS"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = command = "スティンガーエイム_S"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 1250
triggerall = var(59) = 0
triggerall = command = "スティンガーエイム_HS"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 1050
triggerall = var(59) = 0
triggerall = command = "デュービスカーブ_P"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 1051
triggerall = var(59) = 0
triggerall = command = "デュービスカーブ_K"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 1052
triggerall = var(59) = 0
triggerall = command = "デュービスカーブ_S"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 1053
triggerall = var(59) = 0
triggerall = command = "デュービスカーブ_HS"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 1005
triggerall = var(59) = 0
triggerall = command = "ボール生成_P"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 8

[State -1]
type = ChangeState
value = 1006
triggerall = var(59) = 0
triggerall = command = "ボール生成_K"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 8

[State -1]
type = ChangeState
value = 1007
triggerall = var(59) = 0
triggerall = command = "ボール生成_S"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 8

[State -1]
type = ChangeState
value = 1008
triggerall = var(59) = 0
triggerall = command = "ボール生成_HS"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 8

[State -1]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = command = "ボール生成_P"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 1001
triggerall = var(59) = 0
triggerall = command = "ボール生成_K"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 1002
triggerall = var(59) = 0
triggerall = command = "ボール生成_S"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 1003
triggerall = var(59) = 0
triggerall = command = "ボール生成_HS"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,451]) && movecontact
trigger2 = stateno != 240
trigger3 = stateno = 100
trigger4 = stateno = 101
trigger5 = stateno = 40 || stateno = 52
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)

trigger7 = (stateno = [200,451]) && var(29)

[State -1]
type = ChangeState
value = 1400
triggerall = command = "マッドストラグル_S"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 8

[State -1]
type = ChangeState
value = 1410
triggerall = command = "マッドストラグル_HS"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 8
;===========================================================================
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State 空中投げ]
type = ChangeState
value = 850
triggerall = var(59) = 0
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
triggerall = var(59) = 0
triggerall = statetype = S
triggerall = stateno != 100
triggerall = p2bodydist X < 25
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
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
triggerall = var(59) = 0
triggerall = statetype = S
triggerall = stateno != 100
triggerall = p2bodydist X < 25
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = p2movetype != H
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
triggerall = var(59) = 0
triggerall = command = "down_z"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200, 225])
trigger2 = movecontact

trigger3 = (stateno = [400, 431])
trigger3 = movecontact

trigger4 = stateno = [100, 101]
trigger5 = stateno = [195, 196]
trigger5 = time > ifelse(anim = 196,20,63)
trigger6 = stateno = 52

trigger7 = stateno = 222
trigger7 = var(29)
trigger7 = !movecontact
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 240
triggerall = var(59) = 0
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200, 225])
trigger2 = movecontact

trigger3 = (stateno = [400, 431])
trigger3 = movecontact

trigger4 = stateno = [100, 101]
trigger5 = stateno = [195, 196]
trigger5 = time > ifelse(anim = 196,20,63)
trigger6 = stateno = 52
;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = command = "down_x"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200||stateno = 400
trigger2 = movecontact
trigger3 = stateno = [100, 101]
trigger4 = stateno = [195, 196]
trigger4 = time > ifelse(anim = 196,20,63)
trigger5 = stateno = 52

[State -1]
type = ChangeState
value = 205
triggerall = command = "back_x"
triggerall = p2dist x < 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100, 101]

[State -1]
type = ChangeState
value = 205
triggerall = var(59) = 0
triggerall = command = "fwd_x"
triggerall = p2dist x >= 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200, 224])
trigger2 = stateno != 205
trigger2 = movecontact

trigger3 = stateno = 400||stateno = 410
trigger3 = movecontact

trigger4 = stateno = [100, 101]
trigger5 = stateno = [195, 196]
trigger5 = time > ifelse(anim = 196,20,63)
trigger6 = stateno = 52

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200||stateno = 400
trigger2 = movecontact
trigger3 = stateno = [100, 101]
trigger4 = stateno = [195, 196]
trigger4 = time > ifelse(anim = 196,20,63)
trigger5 = stateno = 52
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = command = "down_a"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200||stateno = 400
trigger2 = movecontact
trigger3 = stateno = [100, 101]
trigger4 = stateno = [195, 196]
trigger4 = time > ifelse(anim = 196,20,63)
trigger5 = stateno = 52

[State -1]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "a"
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
value = 420
triggerall = var(59) = 0

triggerall = command = "down_y"

trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = [200,225]
trigger2 = movecontact
trigger3 = stateno = [400, 410]
trigger3 = movecontact
trigger4 = stateno = [100, 101]
trigger5 = stateno = [195, 196]
trigger5 = time > ifelse(anim = 196,20,63)
trigger6 = stateno = 52
trigger7 = stateno = 222
trigger7 = var(29)
trigger7 = !movecontact

[State -1]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = command = "y"

triggerall = p2bodydist X = [-28,30]
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,210]
trigger2 = movecontact
trigger3 = stateno = 400||stateno = 410
trigger3 = movecontact
trigger4 = stateno = [100, 101]
trigger5 = stateno = [195, 196]
trigger5 = time > ifelse(anim = 196,20,63)
trigger6 = stateno = 52


;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 225
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = p2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [220,222]
trigger2 = movecontact
trigger3 = p2bodydist X > 30
trigger3 = (stateno = [200,224])
trigger3 = stateno != [220,222]
trigger3 = movecontact
trigger4 = p2bodydist X > 30
trigger4 = stateno = 400||stateno = 410
trigger4 = movecontact
trigger5 = stateno = [100, 101]
trigger6 = stateno = [195, 196]
trigger6 = time > ifelse(anim = 196,20,63)
trigger7 = stateno = 52
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = command = "down_b"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,225])
trigger2 = movecontact
trigger3 = (stateno = [400, 420])
trigger3 = movecontact
trigger4 = stateno = [100, 101]
trigger5 = stateno = [195, 196]
trigger5 = time > ifelse(anim = 196,20,63)
trigger6 = stateno = 52

[State -1]
type = ChangeState
value = 235
triggerall = command = "back_b"
triggerall = p2dist x < 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100, 101]

[State -1]
type = ChangeState
value = 235
triggerall = var(59) = 0
triggerall = command = "fwd_b"
triggerall = p2dist x >= 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = [100, 101]
trigger4 = stateno = [195, 196]
trigger4 = time > ifelse(anim = 196,20,63)
trigger5 = stateno = 52
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = [200,225])
trigger2 = movecontact
trigger3 = stateno = 400||stateno = 420
trigger3 = movecontact
trigger4 = stateno = [100, 101]
trigger5 = stateno = [195, 196]
trigger5 = time > ifelse(anim = 196,20,63)
trigger6 = stateno = 52
;---------------------------------------------------------------------------
[State -1, Taunt];敬意
type = ChangeState
value = 196
triggerall = var(59) = 0
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
triggerall = var(59) = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100, 101]
trigger3 = stateno = [195, 196]
trigger3 = time > ifelse(anim = 196,20,63)
trigger4 = stateno = 52
;---------------------------------------------------------------------------




;---------------------------------------------------------------------------
[State ２段ジャンプ]
type = ChangeState
value = 99
triggerall = var(59) = 0
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(11) != 1
triggerall = var(12) = 0
trigger1 = var(13) = 2
trigger1 = ctrl
trigger2 = var(13) = 2
trigger2 = stateno = 620 && movecontact
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 41
triggerall = var(59) = 0
triggerall = command = "highjump" && var(17) = 1
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger2 = stateno = 210 && movecontact
trigger3 = (stateno = [220,222]) && movecontact
;ignorehitpause = 1
[State -1]
type = ChangeState
value = 41
triggerall = var(59) = 0
triggerall = command = "highjumpcancel" && var(17) = 0
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger2 = stateno = 210 && movecontact
trigger3 = (stateno = [220,222]) && movecontact
ignorehitpause = 1
[State -1];ジャンプ属性テスト
type = varset
triggerall = var(59) = 0
triggerall = command = "holdup" && command != "holddown" 
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger2 = stateno = 210 && movecontact
trigger3 = (stateno = [220,222]) && movecontact
var(17) = 1
ignorehitpause = 1
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 40
triggerall = var(59) = 0
triggerall = command = "holdup"
triggerall = statetype != A
trigger1 = stateno = 200 && movecontact
trigger2 = stateno = 210 && movecontact
trigger3 = (stateno = [220,222]) && movecontact
trigger4 = stateno = 222
trigger4 = var(29)
trigger4 = !movecontact
;---------------------------------------------------------------------------
[State 空中ダッシュ]
type = ChangeState
value = 110
triggerall = var(59) = 0
triggerall = var(11) = 0
triggerall = statetype = A
triggerall = command = "FF"
triggerall = pos y <= -25
trigger1 = stateno = [50,59]
trigger1 = var(13) < 2
trigger2 = stateno = [5200,5210]
trigger3 = stateno = [1100,1101]
trigger3 = var(35) = 2
;---------------------------------------------------------------------------
[State 空中ダッシュ]
type = ChangeState
value = 115
triggerall = var(59) = 0
triggerall = var(11) = 0
triggerall = statetype = A
triggerall = command = "BB"
triggerall = pos y <= -25
trigger1 = stateno = [50,59]
trigger1 = var(13) < 2
trigger2 = stateno = [5200,5210]
trigger3 = stateno = [1100,1101]
trigger3 = var(35) = 2
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 640
triggerall = var(59) = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != 1101
trigger2 = (stateno = [600,630])
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 8
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 8
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 610
triggerall = var(59) = 0
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
triggerall = var(59) = 0
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
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 620
trigger2 = movecontact
trigger3 = stateno = 110 || stateno = 115
trigger3 = time >= 8
;---------------------------------------------------------------------------