
;=========================================
;Mugen_2_TsMugen added this commands
;=========================================

[Command]
name    = "call-st"
command = s
time    = 1

;AIフラグ
[Command]
name    = "AI"
command = B,B,B,B,a+b+s
time    = 0
[Command]
name    = "AI1"
command = B,B,B,B,a+b+c+s
time    = 0
[Command]
name    = "AI2"
command = B,B,B,B,a+b+c
time    = 0
[Command]
name    = "AI3"
command = B,B,B,B,a+c
time    = 0
[Command]
name    = "AI4"
command = B,B,B,a+b+c
time    = 0
[Command]
name    = "AI5"
command = B,B,B,F,a+b+c
time    = 0
[Command]
name    = "AI6"
command = B,B,B,U,a+b+c
time    = 0
[Command]
name    = "AI7"
command = B,B,B,D,a+b+c
time    = 0
[Command]
name    = "AI8"
command = B,B,D,B,a+b+c
time    = 0
[Command]
name    = "AI9"
command = B,U,B,B,a+b+c
time    = 0
[Command]
name    = "AI10"
command = B,D,B,B,a+b+c
time    = 0
[Command]
name    = "AI11"
command = F,B,B,B,a+b+c
time    = 0
[Command]
name    = "AI12"
command = B,B,F,B,a+b+c
time    = 0
[Command]
name    = "AI13"
command = B,F,B,F,a+b+c
time    = 0
[Command]
name    = "AI14"
command = B,B,D,B,a+b+s
time    = 0
[Command]
name    = "AI15"
command = F,B,B,B,a+b+c
time    = 0
[Command]
name    = "AI16"
command = B,B,D,F,a+b+c+s
time    = 0
[Command]
name    = "AI17"
command = B,B,D,F,x+y+b+s
time    = 0
[Command]
name    = "AI18"
command = B,B,D,F,x+y+b+s
time    = 0
[Command]
name    = "AI19"
command = B,B,D,F,x+a+b+s
time    = 0
[Command]
name    = "AI20"
command = B,B,D,F,x+y+s
time    = 0
[Command]
name    = "AI21"
command = B,B,D,F,x+y+c+s
time    = 0
[Command]
name    = "AI22"
command = U,F,B,B,B,a+b+c+s
time    = 0
[Command]
name    = "AI23"
command = U,B,B,D,F,a+b+c+s
time    = 0
[Command]
name    = "AI24"
command = U,B,B,D,F,x+y+b+s
time    = 0
[Command]
name    = "AI25"
command = U,B,B,D,F,x+y+b
time    = 0
[Command]
name    = "AI26"
command = U,B,B,D,F,x+a+b+s
time    = 0
[Command]
name    = "AI27"
command = U,B,B,D,F,x+y+s
time    = 0
[Command]
name    = "AI28"
command = U,B,B,D,F,x+y+c+s
time    = 0

;-| Super Motions |--------------------------------------------------------

[Command]
name = "無空"
command = ~F, DF, D, B, c
time = 35

[Command]
name = "あれ……？"
command = ~B, DB, D, F, c
time = 35

[Command]
name = "リバース"
command = ~F, D, B, c
time = 35

[Command]
name = "死の予感"
command = ~B, D, F, z
time = 40


;-| Special Motions |------------------------------------------------------

[Command]
name = "強制開放"
command = ~D, D, D, z
time = 30

[Command]
name = "強制"
command = ~D, D, D, s
time = 30

[Command]
name = "閃走c"
command = ~B, D, DB, c
time = 20

[Command]
name = "閃走a"
command = ~B, D, DB, a

[Command]
name = "閃走b"
command = ~B, D, DB, b

[Command]
name = "六兎EX"
command = ~F, D, DF, c
time = 24

[Command]
name = "六兎弱"
command = ~F, D, DF, a
time = 24

[Command]
name = "六兎強"
command = ~F, D, DF, b
time = 24

[Command]
name = "シールドカウンター"
command = ~D, DF, F, z

[Command]
name = "シールドバンカー"
command = ~D, DB, B, z

[Command]
name = "アッパーEX"
command = ~D, DF, F, c
time = 14

[Command]
name = "アッパー弱"
command = ~D, DF, F, a

[Command]
name = "アッパー強"
command = ~D, DF, F, b

[Command]
name = "生の直感 瞬"
command = ~D, DB, B, c

[Command]
name = "生の直感 進"
command = ~D, DB, B, a

[Command]
name = "生の直感 退"
command = ~D, DB, B, b

[Command]
name = "移動投げ"
command = ~D, D, c

[Command]
name = "移動技a"
command = ~D, D, a

[Command]
name = "移動技b"
command = ~D, D, b

[Command]
name = "ダッシュ"
command = ~F, D, DF, F
time = 6

[Command]
name = "ダッシュ"
command = ~F, B, D, F
time = 16

[Command]
name = "FF"
command = ~F, UF, F
time = 23

[Command]
name = "デバッグ"
command = x
time = 35

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 11

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 11

[Command]
name = "UU"
command = U,U
time = 13

[Command]
name = "DD"
command = D,D
time = 13

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+a
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z
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

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
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
name = "holdfu";Required (do not remove)
command = /$FU
time = 1

[Command]
name = "holdbu";Required (do not remove)
command = /$BU
time = 1

[Command]
name = "holdfd" ;Required (do not remove)
command = /$FD
time = 1

[Command]
name = "holdbd";Required (do not remove)
command = /$BD
time = 1

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

;---------------------------------------------------------------------------
; 2. State entry
; --------------------------------------------------------------------------

;=========================================
;Mugen_2_TsMugen added this commands
;=========================================

[Command]
name    = "longjump"
command = D,/$U+F
time    = 17

;=========================================


[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;AI VarSet
[State -1, AI]
type = VarSet
triggerall = var(55) != 1
trigger1  = command = "AI"
trigger2  = command = "AI1"
trigger3  = command = "AI2"
trigger4  = command = "AI3"
trigger5  = command = "AI4"
trigger6  = command = "AI5"
trigger7  = command = "AI6"
trigger8  = command = "AI7"
trigger9  = command = "AI8"
trigger10  = command = "AI9"
trigger11  = command = "AI10"
trigger12  = command = "AI11"
trigger13  = command = "AI12"
trigger14  = command = "AI13"
trigger15  = command = "AI14"
trigger16  = command = "AI15"
trigger17  = command = "AI16"
trigger18  = command = "AI17"
trigger19  = command = "AI18"
trigger20  = command = "AI19"
trigger21  = command = "AI20"
trigger22  = command = "AI21"
trigger23  = command = "AI22"
trigger24  = command = "AI23"
trigger25  = command = "AI24"
trigger26  = command = "AI25"
trigger27  = command = "AI26"
trigger28  = command = "AI27"
trigger29  = command = "AI28"
v =  55
value = 1

;---------------------------------------------------------------------------

;極死・無空
[State -1]
type = ChangeState
value = 24502
triggerall = command = "無空"
triggerall = var(45) = 3
triggerall = var(54) = 1
triggerall = TeamMode = Single
triggerall = enemy,TeamMode = Single
triggerall = statetype != A
triggerall = PalNo = 12
trigger1 = p1name = "shiki_nanaya"
trigger1 = ctrl

;---------------------------------------------------------------------------

;極死・無空
[State -1]
type = ChangeState
value = 24500
triggerall = command = "無空"
triggerall = var(45) = 3
triggerall = var(54) = 1
triggerall = var(42) <= 9
triggerall = TeamMode = Single
triggerall = enemy,TeamMode = Single
triggerall = statetype != A
triggerall = Var(0) = 2
trigger1 = ctrl


;---------------------------------------------------------------------------
;BH全力の体当たり

[State -1]
type = ChangeState
value = 3900
triggerall = command = "あれ……？"
triggerall = var(42) >= 10
triggerall = var(45) = 3
triggerall = statetype != A
triggerall = Var(0) = 0
triggerall = TeamMode = Single
trigger1 = ctrl
trigger2 = (stateno = [4001,4049])
trigger3 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger3 = time >= 15
;---------------------------------------------------------------------------
;全力の体当たり
[State -1]
type = ChangeState
value = 3800
triggerall = command = "あれ……？"
triggerall = var(42) >= 10
triggerall =(var(45) = 1 || var(45) = 2)
triggerall = statetype != A
triggerall = Var(0) = 0
triggerall = TeamMode = Single
trigger1 = ctrl
trigger2 = (stateno = [4001,4049])
trigger3 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger3 = time >= 15
;---------------------------------------------------------------------------
;BH全力の体当たり

[State -1]
type = ChangeState
value = 3900
triggerall = command = "あれ……？"
triggerall = var(42) >= 10
triggerall = var(45) = 3
triggerall = statetype != A
triggerall = Var(0) = 0
triggerall = teammode = turns
trigger1 = ctrl
trigger2 = (stateno = [4001,4049])
trigger3 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger3 = time >= 15
;---------------------------------------------------------------------------
;全力の体当たり
[State -1]
type = ChangeState
value = 3800
triggerall = command = "あれ……？"
triggerall = var(42) >= 10
triggerall =(var(45) = 1 || var(45) = 2)
triggerall = statetype != A
triggerall = Var(0) = 0
triggerall = teammode = turns
trigger1 = ctrl
trigger2 = (stateno = [4001,4049])
trigger3 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger3 = time >= 15
;---------------------------------------------------------------------------
;BH全力の体当たり

[State -1]
type = ChangeState
value = 3900
triggerall = command = "あれ……？"
triggerall = TeamMode = simul
triggerall = var(45) = 3
triggerall = statetype != A
triggerall = Var(0) = 0
trigger1 = ctrl
trigger2 = (stateno = [4001,4049])
trigger3 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger3 = time >= 15
;---------------------------------------------------------------------------
;全力の体当たり
[State -1]
type = ChangeState
value = 3800
triggerall = command = "あれ……？"
triggerall = TeamMode = simul
triggerall =(var(45) = 1 || var(45) = 2)
triggerall = statetype != A
triggerall = Var(0) = 0
trigger1 = ctrl
trigger2 = (stateno = [4001,4049])
trigger3 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger3 = time >= 15
;---------------------------------------------------------------------------
;BHあれ……？
[State -1]
type = ChangeState
value = 3100
triggerall = command = "あれ……？"
triggerall = var(45) = 3
triggerall = var(42) <= 9
triggerall = statetype != A
triggerall = Var(0) = 0
triggerall = TeamMode = Single
trigger1 = ctrl
trigger2 = (stateno = [4001,4049])

;---------------------------------------------------------------------------
;あれ……？
[State -1]
type = ChangeState
value = 3000
triggerall = command = "あれ……？"
triggerall =(var(45) = 1 || var(45) = 2)
triggerall = statetype != A
triggerall = Var(0) = 0
triggerall = var(42) <= 9
triggerall = TeamMode = Single
trigger1 = ctrl
trigger2 = (stateno = [4001,4049])

;---------------------------------------------------------------------------
;BHあれ……？
[State -1]
type = ChangeState
value = 3100
triggerall = command = "あれ……？"
triggerall = var(45) = 3
triggerall = var(42) <= 9
triggerall = statetype != A
triggerall = Var(0) = 0
triggerall = teammode = turns
trigger1 = ctrl
trigger2 = (stateno = [4001,4049])

;---------------------------------------------------------------------------
;あれ……？
[State -1]
type = ChangeState
value = 3000
triggerall = command = "あれ……？"
triggerall =(var(45) = 1 || var(45) = 2)
triggerall = statetype != A
triggerall = Var(0) = 0
triggerall = var(42) <= 9
triggerall = teammode = turns
trigger1 = ctrl
trigger2 = (stateno = [4001,4049])

;---------------------------------------------------------------------------
;直死の魔眼・地面を殺す
[State -1]
type = ChangeState
value = 14000
triggerall = command = "あれ……？"
triggerall =(var(45) = 1 || var(45) = 2)
triggerall = var(41) != 19
triggerall = var(41) != 20
triggerall = statetype != A
triggerall = Var(0) = 1
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger6 = time >= 15
;---------------------------------------------------------------------------
;アナザー直死の魔眼・地面を殺す
[State -1]
type = ChangeState
value = 14500
triggerall = command = "あれ……？"
triggerall = var(41) != 19
triggerall = var(41) != 20
triggerall = var(45) = 3
triggerall = statetype != A
triggerall = Var(0) = 1
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = var(41) != 19
trigger6 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger6 = time >= 15
;---------------------------------------------------------------------------
;閃鎖・迷獄・直死
[State -1]
type = ChangeState
value = 24000
triggerall = command = "あれ……？"
triggerall =(var(45) = 1 || var(45) = 2)
triggerall = statetype != A
triggerall = Var(0) = 2
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger6 = time >= 15

;---------------------------------------------------------------------------
;直死の魔眼・死線を絶つ
[State -1]
type = ChangeState
value = 14800
triggerall = command = "あれ……？"
triggerall =(var(45) = 1 || var(45) = 2)
triggerall = var(41) = 20
triggerall = statetype != A
triggerall = Var(0) = 1
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger6 = time >= 15

;---------------------------------------------------------------------------
;17分割
[State -1]
type = ChangeState
value = 13006
triggerall = command = "あれ……？"
triggerall =var(45) = 3
triggerall =var(41) = 20
triggerall = statetype != A
triggerall = Var(0) = 1
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger6 = time >= 15


;---------------------------------------------------------------------------
;直死の魔眼・死線を絶つ
[State -1]
type = ChangeState
value = 14800
triggerall = command = "あれ……？"
triggerall =(var(45) = 1 || var(45) = 2)
triggerall = var(41) = 19
triggerall = statetype != A
triggerall = Var(0) = 1
trigger1 = ctrl
trigger2 = (stateno = [200,219]) || (stateno = [221,299])  || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = stateno != 220
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger6 = time >= 15

;---------------------------------------------------------------------------
;finaltuned17分割
[State -1]
type = ChangeState
value = 13007
triggerall = command = "あれ……？"
triggerall =var(45) = 3
triggerall =var(41) = 19
triggerall = statetype != A
triggerall = Var(0) = 1
trigger1 = ctrl
trigger2 = (stateno = [200,219]) || (stateno = [221,299])  || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger6 = time >= 15
;---------------------------------------------------------------------------
;17分割
[State -1]
type = ChangeState
value = 13006
triggerall = command = "あれ……？"
triggerall =var(45) = 3
triggerall = statetype != A
triggerall = Var(0) = 2
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger6 = time >= 15

;----------------------------------------------------------------------------
;死の予感
[State -1]
type = ChangeState
value = 4000
triggerall = command = "死の予感"
triggerall = var(41) != 19
triggerall = var(40) = 0
triggerall = statetype != A
triggerall = var(0) <= 1
triggerall = var(55) = 0
trigger1 = ctrl
trigger2 = stateno = [100,102]
trigger3 = (stateno = [200,299]) || (stateno = [400,499])
trigger4 = (stateno = [150,159])

;===========================================================================

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;------------------------------------------------------------------------------------

;EX閃走
[State -1]
type = ChangeState
value = 21000
triggerall = power >= 1000 || Var(45) != 0
triggerall = command = "閃走c"
triggerall = Var(0) = 2
triggerall = Var(55) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = stateno = 720
trigger4 = movecontact
trigger5 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger5 = time >= 15
trigger6 = (stateno = [4001,4049])
trigger7 = anim = 12110
trigger7 = animelemtime(6) >= 0
trigger7 = movecontact

;---------------------------------------------------------------------------
;EX閃走（ゲージ無し）
[State -1]
type = ChangeState
value = 21010
triggerall = power <= 1000
triggerall = var(45) = 0
triggerall = command = "閃走c"
triggerall = Var(0) = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger6 = time >= 15

;---------------------------------------------------------------------------
;閃走弱
[State -1,]
type = ChangeState
value = 21000
triggerall = command = "閃走a"
triggerall = Var(0) = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger6 = time >= 15

;---------------------------------------------------------------------------
;閃走強
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 21010
triggerall = command = "閃走b"
triggerall = Var(0) = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger5 = time >= 15


;------------------------------------------------------------------------------------

;EX六鴉
[State -1]
type = ChangeState
value = 22200
triggerall = power >= 1000 || Var(45) != 0
triggerall = command = "六兎EX"
triggerall = Var(0) = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = stateno = 720
trigger4 = movecontact
trigger5 = stateno = [11000,12199]
trigger5 = movecontact
trigger5 = statetype != A
trigger5 = stateno !=11010
trigger6 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger6 = time >= 15
trigger7 = (stateno = [4001,4049])
trigger8 = stateno =11010
trigger8 = movecontact
trigger8 = animelemtime(5) >= 3

;---------------------------------------------------------------------------
;EX六鴉（ゲージ無し）
[State -1]
type = ChangeState
value = 21210
triggerall = power <= 1000
triggerall = var(45) = 0
triggerall = command = "六兎EX"
triggerall = Var(0) = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger5 = time >= 15

;---------------------------------------------------------------------------
;六鴉弱
[State -1,]
type = ChangeState
value = 21200
triggerall = command = "六兎弱"
triggerall = Var(0) = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger5 = time >= 15


;---------------------------------------------------------------------------
;六鴉強
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 21210
triggerall = command = "六兎強"
triggerall = Var(0) = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger5 = time >= 15

;------------------------------------------------------------------------------------

;EX六兎
[State -1]
type = ChangeState
value = 12200
triggerall = power >= 1000 || Var(45) != 0
triggerall = command = "六兎EX"
triggerall = Var(0) = 1
triggerall = var(55) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219]) || (stateno = [221,299])  || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = stateno = 720
trigger4 = movecontact
trigger5 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger5 = time >= 15
trigger6 = (stateno = [4001,4049])
trigger7 = anim = 12110
trigger7 = animelemtime(6) >= 0
trigger7 = movecontact
trigger8 = stateno =11010
trigger8 = movecontact
trigger8 = animelemtime(5) >= 3
trigger8 = (stateno = [11000,11999])
trigger8 = movecontact
trigger9 = stateno = 220
trigger9 = var(41) != 19
trigger9 = movecontact
;---------------------------------------------------------------------------
;EX六兎（ゲージ無し）
[State -1]
type = ChangeState
value = 11210
triggerall = power <= 1000
triggerall = var(45) = 0
triggerall = command = "六兎EX"
triggerall = Var(0) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219]) || (stateno = [221,299])  || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = var(41) != 19
trigger7 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger7 = time >= 15
;---------------------------------------------------------------------------
;六兎弱
[State -1,]
type = ChangeState
value = 11200
triggerall = command = "六兎弱"
triggerall = Var(0) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219]) || (stateno = [221,299])  || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = var(41) != 19
trigger6 = movecontact
trigger7 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger7 = time >= 15
;---------------------------------------------------------------------------
;六兎強
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 11210
triggerall = command = "六兎強"
triggerall = Var(0) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219]) || (stateno = [221,299])  || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = var(41) != 19
trigger6 = movecontact
trigger7 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger7 = time >= 15
;--------------------------------------------------------
;EXきりふだいち
[State -1]
type = ChangeState
value = 12000
triggerall = power >= 1000 || Var(45) != 0
triggerall = command = "アッパーEX"
triggerall = Var(0) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219]) || (stateno = [221,299])  || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = stateno = [11000,11999]
trigger4 = movecontact
trigger4 = statetype != A
trigger4 = stateno != 11010
trigger5 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger5 = time >= 15
trigger6 = (stateno = [14001,14049])
trigger7 = anim = 12110
trigger7 = animelemtime(6) >= 1
trigger7 = movecontact
trigger8 = stateno =11010
trigger8 = movecontact
trigger8 = animelemtime(5) >= 3
trigger9 = stateno = 220
trigger9 = var(41) != 19
trigger9 = movecontact

;----------------------------------------------------------
;EXきりふだいち（ゲージ無し）
[State -1]
type = ChangeState
value = 11010
triggerall = power <= 1000
triggerall = var(45) = 0
triggerall = command = "アッパーEX"
triggerall = Var(0) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219]) || (stateno = [221,299])  || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger4 = time >= 15
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = var(41) != 19
trigger6 = movecontact

;---------------------------------------------------------------------------
;きりふだいち（弱）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 11000
triggerall = command = "アッパー弱"
triggerall = Var(0) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219]) || (stateno = [221,299])  || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger4 = time >= 15
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = var(41) != 19
trigger6 = movecontact
;---------------------------------------------------------------------------
;きりふだいち（強）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 11010
triggerall = command = "アッパー強"
triggerall = Var(0) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219]) || (stateno = [221,299])  || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger4 = time >= 15
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = var(41) != 19
trigger6 = movecontact
;---------------------------------------------------------------------------
;閃鎖強
[State -1]
type = ChangeState
value = 21180
triggerall = command = "生の直感 瞬"
triggerall = Var(0) = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger5 = time >= 15
;---------------------------------------------------------------------------
;閃鎖弱
[State -1,]
type = ChangeState
value = 21100
triggerall = command = "生の直感 進"
triggerall = Var(0) = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger5 = time >= 15
;---------------------------------------------------------------------------
;閃鎖強
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 21150
triggerall = command = "生の直感 退"
triggerall = Var(0) = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger5 = time >= 15
;--------------------------------------------------------
;EXきりふだに
[State -1]
type = ChangeState
value = 12100
triggerall = power >= 1000 || Var(45) != 0
triggerall = command = "生の直感 瞬"
triggerall = Var(0) = 1
triggerall = var(55) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219]) || (stateno = [221,299])  || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger2 = var(55) = 0
trigger3 = stateno = [100,102]
trigger4 = stateno = [11000,11999]
trigger4 = movecontact
trigger4 = statetype != A
trigger4 = stateno != 11010
trigger5 = stateno = 950
trigger5 = animelemtime(4) >= 0
trigger5 = movecontact
trigger6 = (stateno = [14001,14049])
trigger7 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger7 = time >= 15
trigger8 = anim = 12110
trigger8 = animelemtime(6) >= 1
trigger8 = movecontact
trigger9 = stateno =11010
trigger9 = movecontact
trigger9 = animelemtime(5) >= 3
trigger10 = stateno = 220
trigger10 = var(41) != 19
trigger10 = movecontact

;---------------------------------------------------------------------------
;EXきりふだそのに（ゲージ無し）
[State -1]
type = ChangeState
value = 11110
triggerall = power <= 1000
triggerall = var(45) = 0
triggerall = command = "生の直感 瞬"
triggerall = Var(0) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219]) || (stateno = [221,299])  || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger2 = var(55) = 0
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = var(41) != 19
trigger6 = movecontact
trigger7 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger7 = time >= 15
;---------------------------------------------------------------------------
;きりふだそのに弱
[State -1,]
type = ChangeState
value = 11100
triggerall = command = "生の直感 進"
triggerall = Var(0) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219]) || (stateno = [221,299])  || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger2 = var(55) = 0
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = var(41) != 19
trigger6 = movecontact
trigger7 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger7 = time >= 15
;---------------------------------------------------------------------------
;きりふだそのに強
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 11110
triggerall = command = "生の直感 退"
triggerall = Var(0) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219]) || (stateno = [221,299])  || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger2 = var(55) = 0
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = stateno = 220
trigger6 = var(41) != 19
trigger6 = movecontact
trigger7 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger7 = time >= 15
;--------------------------------------------------------
;移動投げ
[State -1]
type = ChangeState
value = 2300+var(0)*10000
triggerall = var(41) != 19
triggerall = power >= 1000 || Var(45) != 0
triggerall = command = "移動投げ"
triggerall = Var(0) >= 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger2 = var(55) = 0
trigger3 = stateno = [100,102]
trigger4 = stateno = [11000,11999]
trigger4 = movecontact
trigger4 = statetype != A
trigger4 = stateno != 11010
trigger5 = stateno = 950
trigger5 = animelemtime(4) >= 0
trigger5 = movecontact
trigger6 = (stateno = [14001,14049])
trigger7 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger7 = time >= 15
trigger8 = anim = 12110
trigger8 = animelemtime(6) >= 1
trigger8 = movecontact
trigger9 = stateno =11010
trigger9 = movecontact
trigger9 = animelemtime(5) >= 3
;----------------------------------------------------------
;フェイント水月
[State -1]
type = ChangeState
value = 2300+var(0)*10000
triggerall = var(41) != 19
triggerall = power <= 1000
triggerall = var(45) = 0
triggerall = command = "移動投げ"
triggerall = Var(0) = 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger2 = var(55) = 0
trigger3 = stateno = [100,102]
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact
trigger6 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger6 = time >= 15
;----------------------------------------------------------
;移動投げ（ゲージ無し）
[State -1]
type = ChangeState
value = 1350+var(0)*10000
triggerall = var(41) != 19
triggerall = power <= 1000
triggerall = var(45) = 0
triggerall = command = "移動投げ"
triggerall = Var(0) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger2 = var(55) = 0
trigger3 = stateno = [100,102]
trigger4 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger4 = time >= 15
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 0
trigger5 = movecontact

;---------------------------------------------------------------------------
;移動技a
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1300+var(0)*10000
triggerall = var(41) != 19
triggerall = command = "移動技a"
triggerall = Var(0) >= 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger2 = var(55) = 0
trigger3 = stateno = [100,102]
trigger4 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger4 = time >= 15
trigger5 = anim = 12110
trigger5 = animelemtime(6) >= 1
trigger5 = movecontact

;---------------------------------------------------------------------------
;移動技b
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1350+var(0)*10000
triggerall = var(41) != 19
triggerall = command = "移動技b"
triggerall = Var(0) >= 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger2 = var(55) = 0
trigger3 = stateno = [100,102]
trigger4 = anim = 12110
trigger4 = animelemtime(6) >= 1
trigger4 = movecontact
trigger5 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger5 = time >= 15
;------------------------------------------------------------------------------------

;EX生の直感 瞬
[State -1]
type = ChangeState
value = 2100
triggerall = power >= 1000 || Var(45) != 0
triggerall = Var(0) = 0
triggerall = command = "生の直感 瞬"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = var(55) = 0
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger2 = var(55) = 0
trigger3 = stateno = [100,102]
trigger4 = stateno = 720
trigger4 = movecontact
trigger5 = stateno = [1000,2999]
trigger5 = movecontact
trigger6 = stateno = 950
trigger6 = animelemtime(4) >= 0
trigger6 = movecontact
trigger7 = (stateno = [4001,4049])
trigger8 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger8 = time >= 15
trigger9 = var(55) = 1
trigger9 = enemy,stateno = 1020
trigger9 = stateno = 1010
trigger9 = movecontact

;---------------------------------------------------------------------------
;EX生の直感 瞬（ゲージ無し）
[State -1]
type = ChangeState
value = 1110
triggerall = power <= 1000
triggerall = Var(0) = 0
triggerall = command = "生の直感 瞬"
triggerall = Var(0) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger2 = var(55) = 0
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger5 = time >= 15
trigger6 = stateno = [900,911]
trigger6 = movecontact
;---------------------------------------------------------------------------
;生の直感（進）
[State -1,]
type = ChangeState
value = 1100
triggerall = command = "生の直感 進"
triggerall = Var(0) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger2 = var(55) = 0
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger5 = time >= 15
trigger6 = stateno = [900,911]
trigger6 = movecontact
;---------------------------------------------------------------------------
;生の直感（退）
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 1110
triggerall = command = "生の直感 退"
triggerall = Var(0) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger2 = var(55) = 0
trigger3 = stateno = [100,102]
trigger4 = (stateno = [4001,4049])
trigger5 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger5 = time >= 15
trigger6 = stateno = [900,911]
trigger6 = movecontact
;--------------------------------------------------------
;EX友を仕留めた技（EX）
[State -1]
type = ChangeState
value = 2000
triggerall = power >= 1000 || Var(45) != 0
triggerall = command = "アッパーEX"
triggerall = Var(0) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger2 = var(55) = 0
trigger3 = stateno = [100,102]
trigger4 = stateno = [1000,1999]
trigger4 = movecontact
trigger5 = stateno = 950
trigger5 = animelemtime(4) >= 0
trigger5 = movecontact
trigger6 = (stateno = [4001,4049])
trigger7 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger7 = time >= 15
;----------------------------------------------------------
;EX友を仕留めた技（EX無し）
[State -1]
type = ChangeState
value = 1010
triggerall = power <= 1000
triggerall = Var(0) = 0
triggerall = command = "アッパーEX"
triggerall = Var(0) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger4 = time >= 15
;---------------------------------------------------------------------------
;友を仕留めた技（弱）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "アッパー弱"
triggerall = Var(0) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger4 = time >= 15
;---------------------------------------------------------------------------
;友を仕留めた技（強）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = command = "アッパー強"
triggerall = Var(0) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [700,739])
trigger2 = movecontact
trigger3 = stateno = [100,102]
trigger4 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger4 = time >= 15
trigger5 = var(55) = 1
trigger5 = enemy,statetype = A
trigger5 = stateno = 220
trigger5 = movecontact
;------------------------------------------------------------------
[State Blood Heat (強制開放)]
type = ChangeState
value = 990
triggerall = var(45) = 0 && power>= 1000 || var(45) = 2 && power > 0
triggerall = command = "強制開放"
triggerall = roundstate = 2
trigger1 = statetype!= A && ctrl

;---------------------------------------------------------------------------
;シールドバンカー
[State -1,]
type = ChangeState
value = 950+var(0)*10000
triggerall = command = "シールドバンカー"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,219]) || (stateno = [300,399]) || (stateno = [700,739])
trigger2 = movecontact
trigger2 = var(55) = 0
trigger3 = stateno = [100,102]
trigger4 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger4 = time >= 15
trigger5 = anim = 12110
trigger5 = movecontact
trigger6 = stateno = 22300

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "ダッシュ"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = stateno != 102
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;キャンセル後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerAll = command = "BB"
trigger1 = statetype = S
trigger1 = (stateno = [200,299]) || (stateno = [300,399]) 
trigger1 = movecontact
trigger1 = var(55) = 0 
trigger2 = stateno = 22300

;---------------------------------------------------------------------------
;空中ダッシュ
[State -1, Air_Dash]
type = ChangeState
value = 110
triggerall = var(11) = 0
triggerall = command = "FF"
triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl
trigger1 = Pos Y < -9
trigger2 = Stateno = stateno = 600 || stateno = 610 || stateno = 620
trigger2 = movecontact

;---------------------------------------------------------------------------
;空中バックダッシュ
[State -1, Air_back_dash]
type = ChangeState
value = 115
triggerall = var(11) = 0
trigger1 = command = "BB"
trigger1 = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Pos Y < -30

;---------------------------------------------------------------------------
;急降下
[State -1, Air_back_dash]
type = ChangeState
value = 20110
triggerall = var(0) = 2
trigger1 = command = "DD"
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Pos Y < -30


;---------------------------------------------------------------------------
;ハイジャンプ
[State -1, Air H.Attack]
type = ChangeState
value = 41
triggerall = command = "longjump"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;キャンセルジャンプ
[State -1]
type = ChangeState
value = 40
triggerall = RoundState = 2
triggerall = command = "holdup"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || (stateno = [400,420])
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 225 || stateno = 230 
trigger3 = movecontact
trigger4 = stateno = 1010
trigger4 = animelemtime(11) >= 0
trigger4 = movecontact
trigger5 = stateno = 2910
trigger5 = movecontact
trigger6 = stateno = 215 || stateno = 216
trigger6 = movecontact
trigger7 = anim = 12110
trigger7 = movecontact
;---------------------------------------------------------------------------
;空中キャンセルジャンプ
[State -1]
type = ChangeState
value = 46
triggerall = RoundState = 2
triggerall = var(10) = 0
triggerall = statetype = A
triggerall = command = "holdup"
trigger1 = stateno = [600,620]
trigger1 = movecontact = 1

;---------------------------------------------------------------------------
;避け
[State -1, sake]
type = ChangeState
value = 700
triggerall = p2statetype != C
triggerall = p2movetype = A
triggerall = statetype != A
triggerall = ctrl
triggerall = var(31) = 1
trigger1 = p2bodydist X < 50
trigger1 = command = "holdback"

;---------------------------------------------------------------------------
;下段避け
[State -1, sake]
type = ChangeState
value = 730
triggerall = p2statetype = C
triggerall = p2movetype = A
triggerall = statetype != A
triggerall = ctrl
triggerall = var(31) = 1
trigger1 = p2bodydist X < 50
trigger1 = command = "holddown"

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = command = "a"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"


;---------------------------------------------------------------------------
;空中投げ
[State -1, Air Throw]
type = ChangeState
value = 621
triggerall = command = "c"
triggerall = statetype = A
triggerall = command = "holdfwd"
triggerall = p2statetype = A
triggerall = p2bodydist X < 5
trigger1 = ctrl
trigger2 = ((StateNo = 600) && (MoveContact))
trigger3 = ((StateNo = 610) && (MoveContact))
trigger4 = ((StateNo = 620) && (MoveContact))
trigger5 = ((StateNo = 621) && (MoveContact)) 
trigger5 = time >= 5

;---------------------------------------------------------------------------
;空中投げ
[State -1, Air Throw]
type = ChangeState
value = 621
triggerall = command = "a"
triggerall = command = "z"
triggerall = statetype = A
triggerall = command = "holdfwd"
triggerall = p2statetype = A
triggerall = p2bodydist X < 5
trigger1 = ctrl
trigger2 = ((StateNo = 600) && (MoveContact))
trigger3 = ((StateNo = 610) && (MoveContact))
trigger4 = ((StateNo = 620) && (MoveContact))
trigger5 = ((StateNo = 621) && (MoveContact)) 
trigger5 = time >= 5


;===========================================================================

;メガネを外す
[State Shield_S]
type = ChangeState
value = 195
triggerall = RoundState = 2
triggerall = command = "start"
triggerall = command!= "holddown"
triggerall = var(0) = 0
trigger1 = statetype = S && ctrl

;===========================================================================

;===========================================================================
;---------------------------------------------------------------------------
;シールド
[State Shield_S]
type = ChangeState
value = 900
triggerall = command = "z"
triggerall = command!= "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 101
trigger3 = stateno = [900,911]
trigger3 = movecontact
trigger4 = time >= 14
trigger4 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger5 = stateno = 22300

[State Shield_C]
type = ChangeState
value = 910
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 101
trigger3 = stateno = [900,911]
trigger3 = movecontact
trigger4 = time >= 15
trigger4 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000

[State Shield_A]
type = ChangeState
value = 920
triggerall = command = "z"
trigger1 = statetype = A && ctrl

;------------------------------------------------------------------------------
;弱攻撃
[State -1, L.Attack]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((StateNo = 200) && (!MoveContact) && (AnimElemTime(4) > 0))
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = ((var(17) = 0) && (StateNo = 210) && (MoveContact))
trigger5 = ((var(17) = 0) && (StateNo = 220+var(0)*5) && (MoveContact))
trigger6 = ((var(17) = 0) && (StateNo = 400) && (MoveContact))
trigger7 = ((var(17) = 0) && (StateNo = 410) && (MoveContact))
trigger8 = ((var(17) = 0) && (StateNo = 420) && (MoveContact))
trigger9 = statetype = S
trigger9 = stateno = [3500,3540]
trigger9 = movecontact
trigger10 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger10 = time >= 15
;==============================================================================
;中攻撃
[State -1, M.Attack]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((var(18) = 0) && (StateNo = 200) && (MoveContact))
trigger3 = ((var(18) = 0) && (StateNo = 220+var(0)*5) && (MoveContact))
trigger4 = ((var(18) = 0) && (StateNo = 400) && (MoveContact))
trigger5 = ((var(18) = 0) && (StateNo = 410) && (MoveContact))
trigger6 = ((var(18) = 0) && (StateNo = 420) && (MoveContact))
trigger7 = statetype = S
trigger7 = stateno = [3500,3540]
trigger7 = movecontact
trigger8 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger8 = time >= 15
;==============================================================================
;---------------------------------------------------------------------------
;強攻撃
[State -1, H.Attack]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = ((var(19) = 0) && (StateNo = 200) && (MoveContact))
trigger3 = ((var(19) = 0) && (StateNo = 210) && (MoveContact))
trigger4 = ((var(19) = 0) && (StateNo = 400) && (MoveContact))
trigger5 = ((var(19) = 0) && (StateNo = 410) && (MoveContact))
trigger6 = ((var(19) = 0) && (StateNo = 420) && (MoveContact))
trigger7 = statetype = S
trigger7 = stateno = [3500,3540]
trigger7 = movecontact
trigger8 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger8 = time >= 15
;==============================================================================
;------------------------------------------------------------------------------
;しゃがみ弱攻撃
[State -1, Crouch L.Attack]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((StateNo = 300) && (!MoveContact) && (AnimElemTime(4) > 0))
trigger3 = ((var(20) = 0) && (StateNo = 200) && (MoveContact))
trigger4 = ((var(20) = 0) && (StateNo = 210) && (MoveContact))
trigger5 = ((var(20) = 0) && (StateNo = 220+var(0)*5) && (MoveContact))
trigger6 = ((var(20) = 0) && (StateNo = 410) && (MoveContact))
trigger7 = ((var(20) = 0) && (StateNo = 420) && (MoveContact))
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = statetype = S
trigger9 = stateno = [3500,3540]
trigger9 = movecontact
trigger10 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger10 = time >= 15
;---------------------------------------------------------------------------
;しゃがみ中攻撃
[State -1, Crouch M.Attack]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((var(21) = 0) && (StateNo = 200) && (MoveContact))
trigger3 = ((var(21) = 0) && (StateNo = 210) && (MoveContact))
trigger4 = ((var(21) = 0) && (StateNo = 220+var(0)*5) && (MoveContact))
trigger5 = ((var(21) = 0) && (StateNo = 400) && (MoveContact))
trigger6 = ((var(21) = 0) && (StateNo = 420) && (MoveContact))
trigger7 = statetype = S
trigger7 = stateno = [3500,3540]
trigger7 = movecontact
trigger8 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger8 = time >= 15
;---------------------------------------------------------------------------
;足払い
[State -1, Crouch H.Attack]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = ((var(22) = 0) && (StateNo = 200) && (MoveContact))
trigger3 = ((var(22) = 0) && (StateNo = 210) && (MoveContact))
trigger4 = ((var(22) = 0) && (StateNo = 220+var(0)*5) && (MoveContact))
trigger5 = ((var(22) = 0) && (StateNo = 400) && (MoveContact))
trigger6 = ((var(22) = 0) && (StateNo = 410) && (MoveContact))
trigger7 = statetype = S
trigger7 = stateno = [3500,3540]
trigger7 = movecontact
trigger8 = anim = 901+var(0)*10000 || anim = 911+var(0)*10000
trigger8 = time >= 15
;==============================================================================
;------------------------------------------------------------------------------
;ジャンプ弱攻撃
[State -1, Air L.Attack]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = var(41) != 19
trigger2 = var(0) <= 1
trigger2 = ((StateNo = 600) && (!MoveContact) && (AnimElemTime(5) > 0))
trigger3 = ((StateNo = 600) && (MoveContact))
trigger4 = ((var(23) = 0) && (StateNo = 610) && (MoveContact))
trigger5 = ((var(23) = 0) && (StateNo = 620) && (MoveContact))
trigger6 = statetype = A
trigger6 = stateno = [3500,3540]
trigger6 = movecontact
trigger7 = stateno = 921
trigger7 = time >= 15
;---------------------------------------------------------------------------
;ジャンプ中攻撃
[State -1, Air M.Attack]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((var(24) = 0) && (StateNo = 600) && (MoveContact))
trigger3 = ((var(24) = 0) && (StateNo = 620) && (MoveContact))
trigger4 = statetype = A
trigger4 = stateno = [3500,3540]
trigger4 = movecontact
trigger5 = stateno = 921
trigger5 = time >= 15
;---------------------------------------------------------------------------
;ジャンプ強攻撃
[State -1, Air H.Attack]
type = ChangeState
value = 625
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = ((var(25) = 0) && (StateNo = 600) && (MoveContact))
trigger3 = ((var(25) = 0) && (StateNo = 610) && (MoveContact))
trigger4 = statetype = A
trigger4 = stateno = [3500,3540]
trigger4 = movecontact
trigger5 = stateno = 921
trigger5 = time >= 15
;---------------------------------------------------------------
;秋葉用
[State var]
type = varset
trigger1 = command!= "holdup" && command!= "holddown" && command!= "start"
trigger1 = enemynear,name = "Akiha_Tohno" && enemynear,stateno = [9900,9909]
sysvar(1) = 0
[State var]
type = varset
trigger1 = command = "holdup" || command = "holddown"
trigger1 = enemynear,name = "Akiha_Tohno" && enemynear,stateno = [9900,9909]
sysvar(1) = ifelse(command="holddown",-1,1)
[State var]
type = varset
trigger1 = command = "start"
trigger1 = enemynear,name = "Akiha_Tohno" && enemynear,stateno = [9900,9909]
sysvar(1) = 2

