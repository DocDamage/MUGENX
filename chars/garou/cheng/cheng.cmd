[Command]
name = "AI"
command = z,z,z,z,z,s,s,s,a,a,a,a
time = 1

[Command]
name = "AI0"
command = ~U, U, U, U, U,U,U,U
time = 1

[Command]
name = "AI1"
command = ~D, D, D, D, D,D,D,D
time = 1

[Command]
name = "AI2"
command = ~D, F, D, F, D, F,U
time = 1

[Command]
name = "AI3"
command = ~D, F, D, F, D, B, x
time = 1

[Command]
name = "AI4"
command = ~D, F, D, F, U , D
time = 1

[Command]
name = "AI5"
command = F, F, F, F, F, F
time = 1

[Command]
name = "AI6"
command = B, B, B, B, B, B
time = 1

[Command]
name = "AI7"
command = U, U, U, U, U, U
time = 1

[Command]
name = "AI8"
command = D, D, D, D, D, D
time = 1

[Command]
name = "AI9"
command = F, x, F, y, F, z
time = 1

[Command]
name = "AI10"
command = F, a, F, b, F, c
time = 1

[Command]
name = "AI11"
command = F, a, F, b, F, c,D,D,D,D
time = 1

[Command]
name = "AI12"
command = F, a, F, b, F, c,a,s,s,s,s,s
time = 1

[Command]
name = "AI13"
command = F, a, F, b, F, c,F,F,F,F,D,D,D
time = 1


;-| 超必殺技 |------------------------------------------------------

[Command]
name = "hoehoe"
command = ~B,DB,D,DF,F, x+y
time = 25

[Command]
name = "bakurai"
command = ~40$DB,D,F, a+y
time = 25

;-| 必殺技 |------------------------------------------------------

[Command]
name = "manpuku"
command = ~F, DF, D, DB, B, b

[Command]
name = "hagan"
command = ~32$B, F, a

[Command]
name = "hagan2"
command = ~32$B, F, b

[Command]
name = "taiko"
command = ~31$D, $U, x

[Command]
name = "taiko2"
command = ~31$D, $U, y

[Command]
name = "kiraiue"
command = ~F, D, DF, x

[Command]
name = "kirai"
command = ~D, DF, F, x

[Command]
name = "kirai2ue"
command = ~F, D, DF, y

[Command]
name = "kirai2"
command = ~D, DF, F, y

[Command]
name = "kussame"
command = ~D, DB, B, y

[Command]
name = "nantai"
command = ~D, DB, B, a

[Command]
name = "46_x"
command = ~$B, F, x
time = 15

[Command]
name = "F_y"
command = /$F,y
time = 5

[Command]
name = "B_y"
command = /$B,y
time = 5

[Command]
name = "F_b"
command = /$F,b
time = 5

[Command]
name = "B_b"
command = /$B,b
time = 5

[Command]
name = "rakugeki"
command = /$F,x+a
time = 1

[Command]
name = "BBa"
command = B, B, a
time = 18
;-| ２回押し技 |-----------------------------------------------------------

[Command]
name = "xx"     
command = x, x
time = 10

[Command]
name = "yy"     
command = y, y
time = 10

[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "F1"
command = $D,x+y
time = 8

[Command]
name = "F2"
command = $F,x+y
time = 8

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "raikou"
command = /$B,a
time = 3

;-| ボタン設定（いじらない）|---------------------------------------------------------
[Command]
name = "a"
command = a
time = 30

[Command]
name = "b"
command = b
time = 30

[Command]
name = "c"
command = c
time = 30

[Command]
name = "x"
command = x
time = 30

[Command]
name = "y"
command = y
time = 30

[Command]
name = "z"
command = z
time = 7

[Command]
name = "start"
command = s
time =30

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------

[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holda"
command = /$a
time = 1

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
name = "walk_c"
command = /DF
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holddownF"
command = /DF
time = 1

[Command]
name = "holddownB"
command = /DB
time = 1
; 下の記述↓は絶対に消さないでください。
[Statedef -1]

[State -1]
type = ChangeState
value = 3000
triggerall = command = "hoehoe"
triggerall = life <= 400
triggerall = Var(10) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = [600,699])||stateno = 410
trigger2 = stateno != 605 
trigger2 = stateno != 635
trigger2 = stateno != 615 
trigger2 = stateno != 645
trigger3 = Pos Y >= -35
trigger3 = (stateno = [600,699])||stateno = 410
trigger4= (stateno = [600,605]) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger5= (stateno = [610,615]) && AnimElem = 1,>= 0 && AnimElem = 4,< 0
trigger6= (stateno = [630,635]) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger7= (stateno = [640,645]) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
;=======================================================
[State -1]
type = ChangeState
value = 2000
triggerall = command = "bakurai"
triggerall = statetype != A
triggerall = NumHelper(2010) = 0
triggerall = life <= 400
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = [200,299]) || (stateno = [400,499])|| (stateno = [700,799])
trigger2 = stateno != 240 
trigger2 = stateno != 210 
trigger2 = stateno != 410
trigger2 = (stateno != [770,772])
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5= (stateno = 500) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger6 = stateno = 52 && time > 5
trigger7= (stateno = 200) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger8= (stateno = 205) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger9= (stateno = 230) && AnimElem = 1,>= 0 && AnimElem = 7,< 0
trigger10= (stateno = 235) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger11= (stateno = 210) && AnimElem = 1,>= 0 && AnimElem = 6,< 0
trigger12= (stateno = 215) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger13= (stateno = 240) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger14= (stateno = 245) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger15= (stateno = 400) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger16= (stateno = 410) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger17= (stateno = 430) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger18= (stateno = 440) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger19= (stateno = 499) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger20 = stateno = 40

[State -1]
type = ChangeState
value = 2000
triggerall = command = "bakurai"
triggerall = statetype != A
triggerall = NumHelper(2010) = 0
triggerall = Var(10) = 1
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = [200,299]) || (stateno = [400,499])|| (stateno = [700,799])
trigger2 = stateno != 240 
trigger2 = stateno != 210 
trigger2 = stateno != 410
trigger2 = (stateno != [770,772])
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5= (stateno = 500) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger6 = stateno = 52 && time > 5
trigger7= (stateno = 200) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger8= (stateno = 205) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger9= (stateno = 230) && AnimElem = 1,>= 0 && AnimElem = 7,< 0
trigger10= (stateno = 235) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger11= (stateno = 210) && AnimElem = 1,>= 0 && AnimElem = 6,< 0
trigger12= (stateno = 215) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger13= (stateno = 240) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger14= (stateno = 245) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger15= (stateno = 400) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger16= (stateno = 410) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger17= (stateno = 430) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger18= (stateno = 440) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger19= (stateno = 499) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger20 = stateno = 40
;ブレイクショット
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 4700
triggerall = command = "bakurai"
triggerall = statetype != A
trigger1 = Var(11) >= 400
trigger1 = life <= 400
trigger2 = Var(10) = 1
trigger1 = stateno = 150 && time <16 ||stateno = 152 && time <17
trigger2 = stateno = 150 && time <16 ||stateno = 152 && time <17
;=======================================================
;気雷砲
[State -1]
type = ChangeState
value = 1000
triggerall = command = "kirai"
triggerall = statetype != A
triggerall = NumHelper(1010) = 0
triggerall = NumHelper(1110) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = [200,299]) || (stateno = [400,499])|| (stateno = [700,799])
trigger2 = stateno != 240 
trigger2 = stateno != 210 
trigger2 = stateno != 410
trigger2 = (stateno != [770,772])
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5= (stateno = 500) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger6 = stateno = 52 && time > 5
trigger7= (stateno = 200) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger8= (stateno = 205) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger9= (stateno = 230) && AnimElem = 1,>= 0 && AnimElem = 7,< 0
trigger10= (stateno = 235) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger11= (stateno = 210) && AnimElem = 1,>= 0 && AnimElem = 6,< 0
trigger12= (stateno = 215) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger13= (stateno = 240) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger14= (stateno = 245) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger15= (stateno = 400) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger16= (stateno = 410) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger17= (stateno = 430) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger18= (stateno = 440) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger19= (stateno = 499) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger20 = stateno = 40
;ブレイクショット
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 4500
triggerall = command = "kirai"
triggerall = NumHelper(1010) = 0
triggerall = NumHelper(1110) = 0
triggerall = statetype != A
trigger1 = Var(11) >= 400
trigger2 = Var(10) = 1
trigger1 = stateno = 150 && time <16 ||stateno = 152 && time <17
trigger2 = stateno = 150 && time <16 ||stateno = 152 && time <17

;-------------------------------
;気雷砲　対空
[State -1]
type = ChangeState
value = 1100
triggerall = command = "kirai2"
triggerall = statetype != A
triggerall = NumHelper(1010) = 0
triggerall = NumHelper(1110) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = [200,299]) || (stateno = [400,499])|| (stateno = [700,799])
trigger2 = stateno != 240 
trigger2 = stateno != 210 
trigger2 = stateno != 410
trigger2 = (stateno != [770,772])
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5= (stateno = 500) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger6 = stateno = 52 && time > 5
trigger7= (stateno = 200) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger8= (stateno = 205) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger9= (stateno = 230) && AnimElem = 1,>= 0 && AnimElem = 7,< 0
trigger10= (stateno = 235) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger11= (stateno = 210) && AnimElem = 1,>= 0 && AnimElem = 6,< 0
trigger12= (stateno = 215) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger13= (stateno = 240) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger14= (stateno = 245) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger15= (stateno = 400) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger16= (stateno = 410) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger17= (stateno = 430) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger18= (stateno = 440) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger19= (stateno = 499) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger20 = stateno = 40
;ブレイクショット
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 4550
triggerall = command = "kirai2"
triggerall = NumHelper(1010) = 0
triggerall = NumHelper(1110) = 0
triggerall = statetype != A
trigger1 = Var(11) >= 400
trigger2 = Var(10) = 1
trigger1 = stateno = 150 && time <16 ||stateno = 152 && time <17
trigger2 = stateno = 150 && time <16 ||stateno = 152 && time <17
;=======================================================

[State -1]
type = ChangeState
value = 1500
triggerall = command = "manpuku"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = [200,299]) || (stateno = [400,499])|| (stateno = [700,799])
trigger2 = stateno != 240 
trigger2 = stateno != 210 
trigger2 = stateno != 410
trigger2 = (stateno != [770,772])
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5= (stateno = 500) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger6 = stateno = 52 && time > 5
trigger7= (stateno = 200) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger8= (stateno = 205) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger9= (stateno = 230) && AnimElem = 1,>= 0 && AnimElem = 7,< 0
trigger10= (stateno = 235) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger11= (stateno = 210) && AnimElem = 1,>= 0 && AnimElem = 6,< 0
trigger12= (stateno = 215) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger13= (stateno = 240) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger14= (stateno = 245) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger15= (stateno = 400) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger16= (stateno = 410) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger17= (stateno = 430) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger18= (stateno = 440) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger19= (stateno = 499) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger20 = stateno = 40
;=======================================================

[State -1]
type = ChangeState
value = 1600
triggerall = command = "kussame"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = [200,299]) || (stateno = [400,499])|| (stateno = [700,799])
trigger2 = stateno != 240 
trigger2 = stateno != 210 
trigger2 = stateno != 410
trigger2 = (stateno != [770,772])
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5= (stateno = 500) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger6 = stateno = 52 && time > 5
trigger7= (stateno = 200) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger8= (stateno = 205) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger9= (stateno = 230) && AnimElem = 1,>= 0 && AnimElem = 7,< 0
trigger10= (stateno = 235) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger11= (stateno = 210) && AnimElem = 1,>= 0 && AnimElem = 6,< 0
trigger12= (stateno = 215) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger13= (stateno = 240) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger14= (stateno = 245) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger15= (stateno = 400) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger16= (stateno = 410) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger17= (stateno = 430) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger18= (stateno = 440) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger19= (stateno = 499) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger20 = stateno = 40
;=======================================================
;-------------------------------
[State -1]
type = ChangeState
value = 1400
triggerall = command = "nantai"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = [200,299]) || (stateno = [400,499])|| (stateno = [700,799])
trigger2 = stateno != 240 
trigger2 = stateno != 210 
trigger2 = stateno != 410
trigger2 = (stateno != [770,772])
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5= (stateno = 500) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger6 = stateno = 52 && time > 5
trigger7= (stateno = 200) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger8= (stateno = 205) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger9= (stateno = 230) && AnimElem = 1,>= 0 && AnimElem = 7,< 0
trigger10= (stateno = 235) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger11= (stateno = 210) && AnimElem = 1,>= 0 && AnimElem = 6,< 0
trigger12= (stateno = 215) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger13= (stateno = 240) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger14= (stateno = 245) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger15= (stateno = 400) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger16= (stateno = 410) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger17= (stateno = 430) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger18= (stateno = 440) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger19= (stateno = 499) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger20 = stateno = 40
;=======================================================
[State -1]
type = ChangeState
value = 1200
triggerall = command = "hagan"
triggerall = command != "x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = [200,299]) || (stateno = [400,499])|| (stateno = [700,799])
trigger2 = stateno != 240 
trigger2 = stateno != 210 
trigger2 = stateno != 410
trigger2 = (stateno != [770,772])
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5= (stateno = 500) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger6 = stateno = 52 && time > 5
trigger7= (stateno = 200) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger8= (stateno = 205) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger9= (stateno = 230) && AnimElem = 1,>= 0 && AnimElem = 7,< 0
trigger10= (stateno = 235) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger11= (stateno = 210) && AnimElem = 1,>= 0 && AnimElem = 6,< 0
trigger12= (stateno = 215) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger13= (stateno = 240) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger14= (stateno = 245) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger15= (stateno = 400) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger16= (stateno = 410) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger17= (stateno = 430) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger18= (stateno = 440) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger19= (stateno = 499) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger20 = stateno = 40
;ブレイクショット
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 4600
triggerall = command = "hagan"
triggerall = statetype != A
trigger1 = Var(11) >= 400
trigger2 = Var(10) = 1
trigger1 = stateno = 150 && time <16 ||stateno = 152 && time <17
trigger2 = stateno = 150 && time <16 ||stateno = 152 && time <17
;-------------------------------
[State -1]
type = ChangeState
value = 1250
triggerall = command = "hagan2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = [200,299]) || (stateno = [400,499])|| (stateno = [700,799])
trigger2 = stateno != 240 
trigger2 = stateno != 210 
trigger2 = stateno != 410
trigger2 = (stateno != [770,772])
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5= (stateno = 500) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger6 = stateno = 52 && time > 5
trigger7= (stateno = 200) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger8= (stateno = 205) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger9= (stateno = 230) && AnimElem = 1,>= 0 && AnimElem = 7,< 0
trigger10= (stateno = 235) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger11= (stateno = 210) && AnimElem = 1,>= 0 && AnimElem = 6,< 0
trigger12= (stateno = 215) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger13= (stateno = 240) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger14= (stateno = 245) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger15= (stateno = 400) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger16= (stateno = 410) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger17= (stateno = 430) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger18= (stateno = 440) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger19= (stateno = 499) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger20 = stateno = 40
;ブレイクショット
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 4650
triggerall = command = "hagan2"
triggerall = statetype != A
trigger1 = Var(11) >= 400
trigger2 = Var(10) = 1
trigger1 = stateno = 150 && time <16 ||stateno = 152 && time <17
trigger2 = stateno = 150 && time <16 ||stateno = 152 && time <17
;----------------------------------------------
[State -1]
type = ChangeState
value = 1350
triggerall = command = "taiko2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = [200,299]) || (stateno = [400,499])|| (stateno = [700,799])
trigger2 = stateno != 240 
trigger2 = stateno != 210 
trigger2 = stateno != 410
trigger2 = (stateno != [770,772])
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5= (stateno = 500) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger6 = stateno = 52 && time > 5
trigger7= (stateno = 200) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger8= (stateno = 205) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger9= (stateno = 230) && AnimElem = 1,>= 0 && AnimElem = 7,< 0
trigger10= (stateno = 235) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger11= (stateno = 210) && AnimElem = 1,>= 0 && AnimElem = 6,< 0
trigger12= (stateno = 215) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger13= (stateno = 240) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger14= (stateno = 245) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger15= (stateno = 400) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger16= (stateno = 410) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger17= (stateno = 430) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger18= (stateno = 440) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger19= (stateno = 499) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger20 = stateno = 40
;-------------------------------
;----------------------------------------------
[State -1]
type = ChangeState
value = 1300
triggerall = command = "taiko"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = [200,299]) || (stateno = [400,499])|| (stateno = [700,799])
trigger2 = stateno != 240 
trigger2 = stateno != 210 
trigger2 = stateno != 410
trigger2 = (stateno != [770,772])
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5= (stateno = 500) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger6 = stateno = 52 && time > 5
trigger7= (stateno = 200) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger8= (stateno = 205) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger9= (stateno = 230) && AnimElem = 1,>= 0 && AnimElem = 7,< 0
trigger10= (stateno = 235) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger11= (stateno = 210) && AnimElem = 1,>= 0 && AnimElem = 6,< 0
trigger12= (stateno = 215) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger13= (stateno = 240) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger14= (stateno = 245) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger15= (stateno = 400) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger16= (stateno = 410) && AnimElem = 1,>= 0 && AnimElem = 2,< 0
trigger17= (stateno = 430) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger18= (stateno = 440) && AnimElem = 1,>= 0 && AnimElem = 3,< 0
trigger19= (stateno = 499) && AnimElem = 1,>= 0 && AnimElem = 5,< 0
trigger20 = stateno = 40
;-------------------------------
;==============================================================
;----------------------------------------------
[State -1]
type = ChangeState
value = 4000
triggerall = command = "F1"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = [200,299]) || (stateno = [400,499])|| (stateno = [700,799])
trigger2 = stateno != 240 
trigger2 = stateno != 210 
trigger2 = stateno != 410
trigger2 = (stateno != [770,772])
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5 = stateno = 52 && time > 5
trigger6 = stateno = 40

[State -1]
type = ChangeState
value = 4100
triggerall = command = "F2"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = [200,299]) || (stateno = [400,499])|| (stateno = [700,799])
trigger2 = stateno != 240 
trigger2 = stateno != 210 
trigger2 = stateno != 410
trigger2 = (stateno != [770,772])
trigger3 = stateno = 101
trigger4 = stateno = 102
trigger5 = stateno = 52 && time > 5
trigger6 = stateno = 40
;==============================================================
;-------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 106) && time >2
;-------------------------------------------------------------
;バックダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;しゃがみ歩き
[State -1]
type = ChangeState
value = 30
triggerall = command = "walk_c"
triggerall = stateno != 30
trigger1 = statetype = C
trigger1 = ctrl

; 空中振り向き
[State -1]
type = ChangeState
value = 70
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = stateno != 60
trigger1 = ctrl

;落撃双拳
[State -1, Stand Strong Punch]
type = ChangeState
value = 500
triggerall = command = "rakugeki"
triggerall = command != "holddown"
;triggerall=Palno=4||PalNo=5||PalNo=6||PalNo=10||PalNo=11||PalNo=12
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102
trigger6 = stateno = 52 && time > 5

;避け攻撃
[State -1]
type = ChangeState
value = 499
triggerall = command = "46_x"
triggerall = p2movetype = A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102
trigger4 = stateno = 52 && time > 5

;避け攻撃
[State -1]
type = ChangeState
value = 499
triggerall = command = "46_x"
triggerall = (PrevStateNo = [130,151])
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102
trigger4 = stateno = 52 && time > 5

;===================投げ====投げ====投げ====================

;
[State -1]
type = ChangeState
value = 800
triggerall = statetype = S  
triggerall = ctrl
triggerall = p2bodydist X < 7 
triggerall = p2stateno !=[130,155]
triggerall = p2stateno != 5120
trigger1 = (command = "B_y" || command = "F_y") && stateno != 100 && (p2statetype = S || p2statetype = C) && p2movetype != H

;
[State -1]
type = ChangeState
value = 850
triggerall = statetype = S  
triggerall = ctrl
triggerall = p2bodydist X < 7 
triggerall = p2stateno !=[130,155]
triggerall = p2stateno != 5120
trigger1 = (command = "B_b" || command = "F_b") && stateno != 100 && (p2statetype = S || p2statetype = C) && p2movetype != H

;■■■■■■コンビネーション■■■■■■
;打ち上げ強キック
[State -1]
type = ChangeState
value = 700
triggerall = command = "b"
triggerall = command = "holddownF"
trigger1 = stateno = 205
triggerall = AnimElem = 2,> 0; && AnimElem = 3,< 0

;打ち上げ強キック
[State -1]
type = ChangeState
value = 705
triggerall = command = "b"
triggerall = command = "holddownF"
trigger1 = stateno = 200
triggerall = AnimElem = 4,> 0; && AnimElem = 3,< 0

;避けモーションY
[State -1]
type = ChangeState
value = 710
triggerall = command = "y"
trigger1 = stateno = 200
triggerall = AnimElem = 4,> 0; && AnimElem = 3,< 0

;スキップキック
[State -1]
type = ChangeState
value = 720
triggerall = command = "b"
trigger1 = stateno = 205
triggerall = AnimElem = 2,> 0; && AnimElem = 3,< 0

;大足
[State -1]
type = ChangeState
value = 730
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = stateno = 400
trigger1 = AnimElem = 2,> 0; && AnimElem = 3,< 0
trigger2 = stateno = 430
trigger2 = AnimElem = 3,> 0

;気でバック
[State -1]
type = ChangeState
value = 740
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = stateno = 210
trigger1 = AnimElem = 6,> 0 && AnimElem = 10,< 0
trigger2 = stateno = 245
trigger2 = AnimElem = 5,> 0 && AnimElem = 6,< 0

;前ハイハイ
[State -1]
type = ChangeState
value = 750
triggerall = command = "y"
triggerall = command = "holddownF"
trigger1 = stateno = 500
triggerall =  AnimElem = 5,< 0

;後ろハイハイ
[State -1]
type = ChangeState
value = 760
triggerall = command = "y"
triggerall = command = "holddownB"
trigger1 = stateno = 500
triggerall =  AnimElem = 5,< 0
;------------------------------------------------
;近弱P
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x < 16
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102
trigger4 = stateno = 205
trigger4 = AnimElem = 2,>= 3 && AnimElem = 3,< 0

;--------------------------------------------------

;弱P
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102
trigger4 = stateno = 200
trigger4 = AnimElem = 2,>= 3 && AnimElem = 3,< 0
trigger5 = stateno = 205
trigger5 = AnimElem = 2,>= 3 && AnimElem = 3,< 0
trigger6 = stateno = 52 && time > 5
;-----------------------------------------------------
;近強P
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x < 24
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102
trigger6 = stateno = 52 && time > 5
;----------------------------------------------------
;強P
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
;triggerall=Palno=4||PalNo=5||PalNo=6||PalNo=10||PalNo=11||PalNo=12
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102
trigger6 = stateno = 52 && time > 5


;-----------------------------------------------------
;近弱K
[State -1, Standing Strong Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x < 16
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102
trigger6 = stateno = 52 && time > 5
;------------------------------------------------------
;弱K
[State -1, Standing Strong Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = stateno = 101
trigger3 = stateno = 102
trigger6 = stateno = 52 && time > 5
;------------------------------------------------------
;近強K
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x < 24
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102
trigger6 = stateno = 52 && time > 5
;-------------------
;強K
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102
trigger6 = stateno = 52 && time > 5
;-----------------------------------
;■■■■■■しゃがみ■■■■■■

;屈み弱P
[State -1, Stand Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102
trigger4 = stateno = 400
trigger4 = AnimElem = 2,>= 3 && AnimElem = 3,< 0
trigger6 = stateno = 52 && time > 5
;---------------------------------------------------------------------------
;屈み強P
[State -1, Stand Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102
trigger6 = stateno = 52 && time > 5
;---------------------------------------------------------------------------
;屈み弱K
[State -1, Standing Strong Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102
trigger6 = stateno = 52 && time > 5
;---------------------------------------------------------------------------
;屈み強K
[State -1, Standing Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = stateno = 102
trigger6 = stateno = 52 && time > 5
;---------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl

;--------------------------------------------------------------
;小ジャンプ空中弱P
[State -1, Jump Light Punch]
type = ChangeState
value = 605
triggerall = command = "x"
triggerall = stateno = 60
trigger1 = statetype = A
trigger1 = ctrl

;空中弱P
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------
;小ジャンプ空中強P
[State -1, Jump Strong Punch]
type = ChangeState
value = 615
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
triggerall = stateno = 60

;空中強P
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time <12 
trigger2 = movecontact
trigger3 =(stateno = 630)&& time <12
trigger3 = movecontact

;----------------------------------------------------------
;小ジャンプ空中弱K
[State -1, Jump light Kick]
type = ChangeState
value = 635
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
triggerall = stateno = 60

;空中弱K
[State -1, Jump light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;------------------------------------------------------
;小ジャンプ空中強K
[State -1, Jump Strong Kick]
type = ChangeState
value = 645
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
triggerall = stateno = 60

;空中強K
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time <12 
trigger2 = movecontact
trigger3 =(stateno = 630)&& time <12
trigger3 = movecontact

;------------------------------------------------------

[State -1, 1]
type = ChangeState
value = Var(0)
triggerall = (Var(0) > 200) && (Var(0) != 200) && (Var(0) != 230)&& (Var(0) != 210) && (Var(0) != 240)
trigger1 = statetype = S||statetype = C
trigger1 = ctrl

[State -1, 1]
type = ChangeState
value = Var(0)
trigger1 = Var(0) = 200
trigger2 = Var(0) = 230
trigger3 = Var(0) = 210
trigger4 = Var(0) = 240
trigger1 = p2bodydist x > 14
trigger2 = p2bodydist x > 16
trigger3 = p2bodydist x > 36
trigger4 = p2bodydist x > 32
triggerall = statetype = S||statetype = C
triggerall = ctrl

[State -1, 1]
type = ChangeState
value = 5+(Var(0))
trigger1 = Var(0) = 200
trigger2 = Var(0) = 230
trigger3 = Var(0) = 210
trigger4 = Var(0) = 240
trigger1 = p2bodydist x < 14
trigger2 = p2bodydist x < 16
trigger3 = p2bodydist x < 36
trigger4 = p2bodydist x < 32
triggerall = statetype = S||statetype = C
triggerall = ctrl

;-------------

[State -1, 1]
type = ChangeState
value = Var(0)
triggerall = statetype = S||statetype = C
triggerall = anim = 48
triggerall = time = 4
trigger1 = Var(0) = 200
trigger2 = Var(0) = 230
trigger3 = Var(0) = 210
trigger4 = Var(0) = 240
trigger1 = p2bodydist x > 14
trigger2 = p2bodydist x > 16
trigger3 = p2bodydist x > 36
trigger4 = p2bodydist x > 32

[State -1, 1]
type = ChangeState
value = 5+(Var(0))
triggerall = statetype = S||statetype = C
triggerall = anim = 48
triggerall = time = 4
trigger1 = Var(0) = 200
trigger2 = Var(0) = 230
trigger3 = Var(0) = 210
trigger4 = Var(0) = 240
trigger1 = p2bodydist x < 14
trigger2 = p2bodydist x < 16
trigger3 = p2bodydist x < 36
trigger4 = p2bodydist x < 32
;----------------

[State -1, 1]
type = ChangeState
value = Var(0)
triggerall = statetype = S||statetype = C
triggerall = p2Dist X > 0
triggerall = anim = 49
triggerall = time = 5
trigger1 = Var(0) = 200
trigger2 = Var(0) = 230
trigger3 = Var(0) = 210
trigger4 = Var(0) = 240
trigger1 = p2bodydist x > 14
trigger2 = p2bodydist x > 16
trigger3 = p2bodydist x > 36
trigger4 = p2bodydist x > 32

[State -1, 1]
type = ChangeState
value = 5+(Var(0))
triggerall = statetype = S||statetype = C
triggerall = p2Dist X > 0
triggerall = anim = 49
triggerall = time = 5
trigger1 = Var(0) = 200
trigger2 = Var(0) = 230
trigger3 = Var(0) = 210
trigger4 = Var(0) = 240
trigger1 = p2bodydist x < 14
trigger2 = p2bodydist x < 16
trigger3 = p2bodydist x < 36
trigger4 = p2bodydist x < 32

[State -1, 1]
type = ChangeState
value = Var(0)
triggerall = statetype = S||statetype = C
triggerall = p2Dist X > 0
triggerall = anim = 48
triggerall = time = 4
trigger1 = Var(0) = 200
trigger2 = Var(0) = 230
trigger3 = Var(0) = 210
trigger4 = Var(0) = 240
trigger1 = p2bodydist x > 14
trigger2 = p2bodydist x > 16
trigger3 = p2bodydist x > 36
trigger4 = p2bodydist x > 32

[State -1, 1]
type = ChangeState
value = 5+(Var(0))
triggerall = statetype = S||statetype = C
triggerall = p2Dist X > 0
triggerall = anim = 48
triggerall = time = 4
trigger1 = Var(0) = 200
trigger2 = Var(0) = 230
trigger3 = Var(0) = 210
trigger4 = Var(0) = 240
trigger1 = p2bodydist x < 14
trigger2 = p2bodydist x < 16
trigger3 = p2bodydist x < 36
trigger4 = p2bodydist x < 32
;--------------------
[State -1, 1]
type = VarAdd
trigger1 = Var(6) < 10
v = 6
value = 1

[State -1, 1]
type = Varset
trigger1 = Var(6) = 10
v = 0
value = 0

[State -1, 1]
type = Varset
trigger1 = Var(6) = 10
v = 6
value = 0

